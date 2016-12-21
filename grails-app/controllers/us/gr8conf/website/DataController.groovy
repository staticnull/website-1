package us.gr8conf.website

import grails.converters.JSON
import org.hibernate.id.GUIDGenerator

class DataController {
    ApiService apiService

    def speakers(Integer id) {
        List speakers = apiService.getSpeakers(id)
        respond speakers, [model: [speakers: speakers]]
    }

    def talks(Integer id) {
        List talks = apiService.getTalks(id)
        respond talks, [model: [talks: talks]]
    }

    def agenda(String day) {
        List agenda = apiService.getAgenda(day)
        respond agenda, [model: [agenda: agenda]]
    }

    def fullCalendar() {
        List agenda = apiService.getAgenda()
        def result = []
        agenda.each { date ->
            def agendaDay = date.day
            date.tracks.each { track ->
                def room = track.name
                if(!track.allColumns) {
                    track.slots.each {slot->
                        result.add([
                            id: slot.talk.id,
                            resourceId: room,
                            start: "${agendaDay}T${slot.start}",
                            end: "${agendaDay}T${slot.end}",
                            title: slot.talk.title,
                            url: createLink(controller: "data", action: "talks", params: [id: slot.talk.id])
                        ])
                    }
                } else {
                    track.slots.each { slot ->
                        result.add([
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

        render result as JSON
    }

    def tags(String tag) {
        List tags = apiService.getTags(tag)
        respond tags, [model: [tags: tags]]
    }
}
