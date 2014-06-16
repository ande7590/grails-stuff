package grailschool.stuff

import grails.plugin.springsecurity.SpringSecurityUtils;

class IndexController {
	public final static String ROLE_ADMIN = 'ROLE_ADMIN'
	public final static String ROLE_TEACHER = 'ROLE_TEACHER'
	public final static String ROLE_PARENT = 'ROLE_PARENT'
	
	def index() {
		if (SpringSecurityUtils.ifAllGranted(ROLE_ADMIN)) {
			redirect(controller: 'dashboard', action: 'index', namespace: 'admin')			
		} else if (SpringSecurityUtils.ifAllGranted(ROLE_TEACHER)) {
			redirect(controller: 'dashboard', action: 'index', namespace: 'teacher')
		} else if (SpringSecurityUtils.ifAllGranted(ROLE_PARENT)) { 
			redirect(controller: 'dashboard', action: 'index', namespace: 'parent')
		} else {
			redirect(view:'/error')
		} 		
	}
	
}
