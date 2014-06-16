package grailschool.stuff

abstract class AbstractController {
	protected final viewDirectory = '/'
	protected final static int ERROR_RESPONSE_CODE = 400
	
	def afterInterceptor = {model, modelAndView ->
		// view names that start '.' should use their controller's viewDirectory
		def viewDirectoryMatch = modelAndView?.viewName =~ /^.*?\/?\.(.*)$/
		if (viewDirectoryMatch) {
			modelAndView.viewName = viewDirectory + viewDirectoryMatch[0][1]
		}
		if (model && !model.viewDirectory) {
			model.viewDirectory = viewDirectory
		}
	}
	
	protected int getErrorResponseCode() {
		return ERROR_RESPONSE_CODE
	}
}
