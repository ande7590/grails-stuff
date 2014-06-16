package grailschool.stuff.admin

import grailschool.stuff.school.StudentSchoolYear;

class DashboardController extends AbstractAdminController {
	
	protected final viewDirectory = '/admin/'
	
	def index() {
		render(view: '.dashboard')
	}

}
