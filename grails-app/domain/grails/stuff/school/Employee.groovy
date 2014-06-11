package grails.stuff.school

class Employee {
	static mapping = {
		table schema: 'SCHOOL'
	}
	
	ParkingPass parkingPass		
	String firstName
	String lastName
	Integer salary
}
