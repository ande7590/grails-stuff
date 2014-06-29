package grailschool.stuff.school

class ClassEnrollment {
	static mapping = {
		table schema: 'SCHOOL'
	}
	static belongsTo = [studentSchoolYear: StudentSchoolYear]
		
	AssessmentGrade assessmentGrade
	ClassAssignment classAssignment
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


