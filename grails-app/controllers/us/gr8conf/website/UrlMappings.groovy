package us.gr8conf.website

class UrlMappings {

    static mappings = {
        "/talks/$id?"(controller: "data", action: "talks")
        "/speakers/$id?"(controller: "data", action: "speakers")
        "/agenda/$id?"(controller: "data", action: "agenda")
        "/tags/$id?"(controller: "data", action: "tags")
        "/coc/"(controller: "home", action: "coc")
        "/sponsors/"(controller: "home", action: "sponsors")
        "/venue/"(controller: "home", action: "venue")
        "/hotel/"(controller: "home", action: "hotel")

        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "home", action: "index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
