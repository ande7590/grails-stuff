import grails.stuff.auth.authentication.PlainTextPasswordEncoder
import grails.stuff.taglib.RowEvaluatorFactoryImpl;

// Place your Spring DSL code here
beans = {
	/* I fully understand how dangerous a PlainTextPasswordEncoder is, 
	 * I would NEVER use this for an actual production application */
	passwordEncoder(PlainTextPasswordEncoder)
	rowEvaluatorFactory(RowEvaluatorFactoryImpl)
}
