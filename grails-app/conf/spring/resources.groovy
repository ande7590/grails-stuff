import grails.stuff.auth.authentication.PlainTextPasswordEncoder

// Place your Spring DSL code here
beans = {
	passwordEncoder(PlainTextPasswordEncoder)
}
