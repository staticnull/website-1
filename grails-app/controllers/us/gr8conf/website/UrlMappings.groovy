package us.gr8conf.website

class UrlMappings {
    static mappings = {
        "/agenda/$id?"(controller: "data", action: "agenda")
        "/coc/"(controller: "home", action: "coc")
        "/hotel/"(controller: "home", action: "hotel")
        "/speakers/$id?"(controller: "data", action: "speakers")
        "/sponsors/"(controller: "home", action: "sponsors")
        "/tags/$id?"(controller: "data", action: "tags")
        "/talks/$id?"(controller: "data", action: "talks")
        "/venue/"(controller: "home", action: "venue")

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
