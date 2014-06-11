package grails.stuff.school

class Teacher extends Employee {

	static hasMany = [classesTaught: ClassAssignment]	
    static constraints = {
    }
	static mapping = {
		discriminator: 'teacher'
	}
	
	TeacherRole role
}

enum TeacherRole
{
	TENURED,
	SPECIAL_EDUCATION,
	STUDENT,
	SUBSTITUTE
}