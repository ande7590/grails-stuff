package grailschool.stuff.shared

class StudentController extends AbstractSharedController {
	
	static namespace = 'shared'
	
	protected final viewDirectory = '/shared/student/'
	
	def index() {
		render(view: '.index')
	}
	
	def list() {
		
	}
	
	def enroll() {
		render(view: '.edit')
	}
	
	def show() {
		
	}
}
