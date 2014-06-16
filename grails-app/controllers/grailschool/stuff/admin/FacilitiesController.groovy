package grailschool.stuff.admin

import grailschool.stuff.school.Classroom;

class FacilitiesController extends AbstractAdminController {
	
	protected final viewDirectory = '/admin/facilities/'
	
	def index() {
		render(view:".index", model:[classrooms: Classroom.list()])
	}
	
	def delete() {	
		Classroom.withTransaction { status ->
			Classroom.get(params.id).delete(flush: true)
		}		
		renderUpdatedClassroomList()
	}
	
	def create() {		
		
		def classRoom = new Classroom(roomNumber: params.roomNumber.trim())		
		if (classRoom.hasErrors() || !classRoom.validate()) {			
			response.status = errorResponseCode
			render(template: viewDirectory + 'error', 
				model: [classRoom: classRoom])
		} else {		
			Classroom.withTransaction { status ->
				classRoom.save(flush: true)
			}
			renderUpdatedClassroomList()
		}
	}
	
	protected renderUpdatedClassroomList() {
		render(template: viewDirectory + 'list', model: [
			classrooms: Classroom.list()])
	}
}
