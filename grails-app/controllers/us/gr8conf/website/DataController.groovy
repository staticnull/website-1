package us.gr8conf.website

import grails.converters.JSON

class DataController {
    ApiService apiService

    def speakers() {
        List speakers = apiService.speakers
        render speakers as JSON
    }

    def talks() {
        List talks = apiService.talks
        render talks as JSON
    }

    def agenda() {
        List agenda = apiService.agenda
        render agenda as JSON
    }
}
