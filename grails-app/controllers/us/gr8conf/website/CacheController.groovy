package us.gr8conf.website

import grails.plugin.cache.GrailsCacheAdminService
import org.springframework.beans.factory.annotation.Value

class CacheController {
    GrailsCacheAdminService grailsCacheAdminService

    @Value('${gr8conf.cache.token}')
    String cacheToken

    def clear(String token) {
        if (token == cacheToken) {
            grailsCacheAdminService.clearAllCaches()
            log.info "Cleared all caches."
        } else {
            log.info "Did not clear caches, invalid token."
        }

       render ''
    }
}
