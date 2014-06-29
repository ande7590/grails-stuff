package grailschool.stuff.school

class Class {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static hasMany = [classAssignments: ClassAssignment]
    static constraints = {
    }
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
