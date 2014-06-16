package grailschool.stuff.school

class ClassStudentEnrollment {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static belongsTo = [studentSchoolYear: StudentSchoolYear]
		
	AssessmentGrade assessmentGrade
	ClassTeacherAssignment classTeacherAssignment
	SchoolYear schoolYear
}

enum SchoolYear
{
	Kindergarten,
	FIRST,
	SECOND,
	THIRD,
	FOURTH,
	FIFTH,
	SIXTH	
}

enum AssessmentGrade
{
	A,
	B_PLUS,
	B,
	B_MINUS,
	C_PLUS,
	C,
	C_MINUS,
	D_PLUS,
	D,
	D_MINUS,
	F,
	I
}


