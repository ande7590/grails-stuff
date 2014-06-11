package grails.stuff.school

class Classroom {
	static mapping = {
		table schema: 'SCHOOL'
	}
    static constraints = {
    }
	
	String roomNumber
}
