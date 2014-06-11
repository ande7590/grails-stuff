package grails.stuff.school

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
}

enum StudentProgram
{
	NONE,
	GIFTED,
	SPECIAL_NEEDS
}