package grails.stuff.school

class ParkingPass {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static belongsTo = [owner: Employee, parkingLots: ParkingLot]
	static hasMany = [parkingLots: ParkingLot]
    static constraints = {
    	identifier column: 'identifier', sqlType: 'char', length: 16, unique: true
		parkingLots joinTable: [
			name: 'ParkingLot_has_ParkingPass',
			key: 'ParkingPassIdentifier',
			column: 'ParkingLotIdentifier']
	}
	
	String identifier	
}
