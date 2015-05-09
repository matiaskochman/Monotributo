package monotributo

class TituloProfesional {
	String titulo
	ColegioProfesional colegioProfesional
	Date fechaMatriculacion
	
    static constraints = {
		titulo(blank:false)
		colegioProfesional(nullable:true)
		fechaMatriculacion(nullable:true)
    }
	static belongsTo = [Monotributista]
	
}
