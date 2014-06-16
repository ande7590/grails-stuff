package grailschool.stuff.school

class ParkingLot {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static hasMany = [parkingPasses: ParkingPass]	
	static constraints = {
		identifier column: 'identifier', sqlType: 'char', length: 16, unique: true
		parkingPasses joinTable: [
			name: 'ParkingLot_has_ParkingPass',
			key: 'ParkingLotIdentifier',
			column: 'ParkingPassIdentifier']
    }
	
	String identifier
	String name
}
