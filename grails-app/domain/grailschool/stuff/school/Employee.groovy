package grailschool.stuff.school

class Employee {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static constraints = {
		parkingPass nullable: true
	}
	
	ParkingPass parkingPass		
	String firstName
	String lastName
	Integer salary
}
