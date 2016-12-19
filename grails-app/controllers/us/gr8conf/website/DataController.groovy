package us.gr8conf.website

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

    def agenda() {
        List agenda = apiService.agenda
        respond agenda, [model: [agenda: agenda]]
    }
}
