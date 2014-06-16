package grailschool.stuff.school

class Student {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static hasMany = [schoolYears: StudentSchoolYear]
	static constraints = {
	}
	
	String firstName
	String lastName
	Date birthDate
	StudentProgram studentProgram
}

enum StudentProgram
{
	NONE,
	GIFTED,
	SPECIAL_NEEDS
}