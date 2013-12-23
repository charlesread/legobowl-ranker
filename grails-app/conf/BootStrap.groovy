class BootStrap {

    def grailsApplication

    def init = { servletContext ->
        if (!grailsApplication.config.legoleague.createAdminUser || grailsApplication.config.legoleague.createAdminUser == true) {
            println "need to create admin user"
        }
        if (grailsApplication.config.legoleague.createAdminUser == false) {
            println "don't need to create admin user"
        }
    }
    def destroy = {
    }
}
