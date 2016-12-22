package us.gr8conf.website

import grails.config.Config
import grails.core.GrailsApplication
import grails.plugin.cache.Cacheable
import grails.plugins.rest.client.RestBuilder

class ApiService {
    GrailsApplication grailsApplication
    def grailsLinkGenerator
    def EMPTY_LIST = [:]

    private Config getConfig() {
        grailsApplication.config
    }

    private String getUrl() {
        config.gr8conf.cfp.url
    }

    private String getConfId() {
        config.gr8conf.cfp.confId
    }

    @Cacheable(value = "speakers")
    List getSpeakers(Integer id) {
        List data = getData('speakers')
        if(id) {
            data = [data.find { it.id == id } ?: EMPTY_LIST]
        }
        data
    }

    @Cacheable(value = "talks")
    List getTalks(Integer id) {
        List data = getData('talks')
        if(id) {
            data = [data.find { it.id == id } ?: EMPTY_LIST]
        }
        data
    }

    @Cacheable(value = "agenda")
    List getAgenda(String day = null) {
        List data = getData('agenda')
        if(day) {
            data = [data.find { it.day == day } ?: EMPTY_LIST]
        }
        data
    }

    /**
     * FullCalendar.js requires the data to be listed in events rather than by tracks as the gr8conf api provides.
     * This maps the data to fullCalendar's format.
     * @return jsonMap compatible with fullCalendar.js
     */
    @Cacheable(value = "calendar")
    List getCalendar() {
        List data = getData('agenda')
        List jsonMap = []

        data.each { date ->
            def agendaDay = date.day
            date.tracks.each { track ->
                def room = track.name
                if(!track.allColumns) {
                    track.slots.each {slot->
                        jsonMap.add([
                            id: slot.talk.id,
                            resourceId: room,
                            start: "${agendaDay}T${slot.start}",
                            end: "${agendaDay}T${slot.end}",
                            title: slot.talk.title,
                            url: grailsLinkGenerator.link(controller: "data", action: "talks", params: [id: slot.talk.id])
                        ])
                    }
                } else {
                    track.slots.each { slot ->
                        jsonMap.add([
                            id: "${slot.name}",
                            resourceId: "Schulze Hall Auditorium",
                            start: "${agendaDay}T${slot.start}",
                            end: "${agendaDay}T${slot.end}",
                            title: slot.name,
                            className: "allColumns"
                        ])
                    }
                }
            }
        }
        jsonMap
    }

    @Cacheable(value = "tags")
    List getTags(String tag) {
        List data = getData('tags')
        if(tag) {
            data = [data.find { it.tag == tag } ?: EMPTY_LIST]
        }
        data
    }

    private List getData(String type) {
        RestBuilder rest = new RestBuilder()

        def response = rest.get("${url}/${type}/${confId}") {
            accept 'application/json'
        }

        if (response.status == 200) {
            return response.json
        } else {
            log.error "Error communicating with API for ${type}"
            return null
        }
    }
}
