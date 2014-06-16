package grailschool.stuff.school

class Staff extends Employee {

    static constraints = {
    }
	static mapping = {
		discriminator: 'teacher'
	}
}

enum EmployeeRole
{
	CUSTODIAN,
	ENGINEER,
	OFFICE_ASSISTANT,
	TEACHING_ASSISTANT,
	PLAYGROUND_SUPERVISOR
}