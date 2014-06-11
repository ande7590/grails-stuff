package grails.stuff.auth

class Authority {
	static mapping = {
		table schema: 'auth'
		cache true
	}
	static constraints = {
		authority blank: false, unique: true
	}
	
	String authority
}
