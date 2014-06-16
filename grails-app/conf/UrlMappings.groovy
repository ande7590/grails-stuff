class UrlMappings {

	static mappings = {
       "/admin/$controller/$action?/$id?(.$format)?"{
            namespace = 'admin'
        }
	   "/teacher/$controller/$action?/$id?(.$format)?"{
		   namespace = 'teacher'
	   }
	   "/parent/$controller/$action?/$id?(.$format)?"{
		   namespace = 'parent'
	   }
	   "/shared/$controller/$action?/$id?(.$format)?"{
		   namespace = 'shared'
	   }	   
	   "/$controller/$action?/$id?(.$format)?"{
		   constraints {
		   	controller(matches:/login/)
		   }
	   }
        "/"(controller:'index', action:'index')
        "500"(view:'/error')
	}
}
