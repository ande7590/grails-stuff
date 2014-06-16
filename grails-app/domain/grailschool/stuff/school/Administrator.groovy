package grailschool.stuff.school

class Administrator extends Employee {
    static constraints = {
    }
	static mapping = {
		discriminator: 'teacher'
	}
	
	AdministratorRole role
}

enum AdministratorRole
{
	ASSISTANT_PRINCIPAL,
	PRINCIPAL,
	SUPERINTENDENT
}