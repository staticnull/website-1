package us.gr8conf.website

import grails.converters.JSON

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
        List calendar = apiService.getCalendar()
        respond calendar, [model: [calendar: calendar]]
    }

    def tags(String tag) {
        List tags = apiService.getTags(tag)
        respond tags, [model: [tags: tags]]
    }
}
