package grails.stuff.school

class ClassAssignment {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static belongsTo = [teacher: Teacher]
	static hasMany = [classEnrollments: ClassEnrollment]
    static constraints = {
    }
}
