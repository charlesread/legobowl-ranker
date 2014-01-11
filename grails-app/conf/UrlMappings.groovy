class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"(view:"/index")
		"500"(view:'/error')
        "/timer"(controller: 'robotDemoMax', action: 'presentation')
        "/scoreboard" {
            controller = 'robotDemoMax'
            action = 'presentation'
            scoreboard = true
        }
	}
}
