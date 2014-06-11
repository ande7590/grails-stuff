package grails.stuff.school

class StudentSchoolYear {
	static belongsTo = [student: Student]
	static mapping = {
		table schema: 'SCHOOL'
	}
	static hasMany = [classEnrollment: ClassEnrollment]
	static constraints = {
		
	}
	
	Student student
	int gradeNumber	
	int schoolYear
}