package grailschool.stuff.admin

import grailschool.stuff.school.Teacher;
import grailschool.stuff.school.TeacherRole;

class TeacherController extends AbstractAdminController {

	protected final viewDirectory = '/admin/teacher/'
	
	def index() {
		render(view:'.index', model:[
			teachers: Teacher.list(),
			teacherRoles: TeacherRole.values()])		
	}
		
	def create() {
		def teacher = new Teacher(params)
		if (teacher.hasErrors() || !teacher.validate()) {
			response.status = errorResponseCode
			render(template: viewDirectory + 'error',
				model: [teacher: teacher])
		} else {
			Teacher.withTransaction {status ->
				teacher.save(flush: true)
			}
			renderUpdatedTeacherList()
		}
	}
	
	def show() {
		def formData = Teacher.get(params.id)
		render(template: viewDirectory + 'create',
			model: [formData: formData, teacherRoles: TeacherRole.values()])		
	}
	
	def delete() {
		Teacher.withTransaction { status ->
			Teacher.get(params.id).delete(flush: true)
		}
		renderUpdatedTeacherList()
	}	
	
	def update() {
		def teacher = Teacher.get(params.entityId)
		bindData(teacher, params, [exclude: ['id']])
		Teacher.withTransaction { status ->
			teacher.save(flush: true)
		}
		renderUpdatedTeacherList()
	}
	
	protected renderUpdatedTeacherList() {
		render(template: viewDirectory + 'list', model: [
			teachers: Teacher.list()])
	}

}
