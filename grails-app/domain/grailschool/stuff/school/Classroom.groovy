package grailschool.stuff.school

class Classroom {
	static mapping = {
		table schema: 'SCHOOL'
	}
    static constraints = {
		roomNumber unique: true, matches: /^[A-C]-[0-9]{3}$/
    }
	
	String roomNumber
}