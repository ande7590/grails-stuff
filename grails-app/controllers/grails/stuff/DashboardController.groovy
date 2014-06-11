package grails.stuff

import grails.stuff.school.StudentSchoolYear;

class DashboardController {
	
	def index() {}
	
	def admin() {
		
	}
	
	def teacher() {
		
	}
	
	/*private getStudentProgressSummary(int gradeYear, int ) {		
		def studentGrades = StudentSchoolYear.findByGradeYear(gradeYear)
		
		// bin the students by their classEnrollment (teacher, classroom, hour), 
		// and then by 
		studentGrades.groupBy({
			it.classEnrollment
		}, {
		
		})
	}*/
}
