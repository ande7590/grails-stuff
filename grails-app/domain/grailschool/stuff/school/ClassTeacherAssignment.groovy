package grailschool.stuff.school

class ClassTeacherAssignment {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static belongsTo = [teacher: Teacher]
	static hasMany = [classStudentEnrollments: ClassStudentEnrollment]
    static constraints = {
    }
	ClassDefinition clazz
}
