package grails.stuff.auth

class Person {
	static transients = ['springSecurityService']	
	static constraints = {
		username blank: false, unique: true
		password blank: false
	}
	static mapping = {
		table schema: 'auth'
		password column: '`password`'
	}

	transient springSecurityService
	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	Set<Authority> getAuthorities() {
		PersonAuthority.findAllByPerson(this).collect { it.authority }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? 
			springSecurityService.encodePassword(password) 
			: password
	}

}
