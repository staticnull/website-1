package us.gr8conf.website

import grails.config.Config
import grails.core.GrailsApplication
import grails.plugin.cache.Cacheable
import grails.plugins.rest.client.RestBuilder

class ApiService {
    GrailsApplication grailsApplication

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
    List getSpeakers() {
        getData('speakers')
    }

    @Cacheable(value = "talks")
    List getTalks() {
        getData('talks')
    }

    @Cacheable(value = "agenda")
    List getAgenda() {
        getData('agenda')
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
