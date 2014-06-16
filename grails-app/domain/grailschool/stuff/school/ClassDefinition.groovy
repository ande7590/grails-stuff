package grailschool.stuff.school

class ClassDefinition {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static hasMany = [classTeacherAssignments: ClassTeacherAssignment]
    static constraints = {
    }
	
	String name
	Department department
}

enum Department
{
	SCIENCE,
	MATH,
	SOCIAL_STUDIES,
	PHYSICAL_EDUCATION,
	MUSIC,
	ENGLISH
}
