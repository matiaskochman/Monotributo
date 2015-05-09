package monotributo

class ColegioProfesional {
	String colegioProfesional
	String cuil_cui
	
    static constraints = {
		colegioProfesional(blank:false,unique:true)
		cuil_cui(blank:false,unique:true)
    }
}
