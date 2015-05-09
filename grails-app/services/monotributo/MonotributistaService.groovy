package monotributo


class MonotributistaService {

    static transactional = true


	
	def saveObj(Monotributista obj){
		
		try{
			if(obj.save(flush: true)){
				return obj
			}
			
		}catch(Exception e){
			e.printStackTrace()
		}
		
	}
	
	def showObj(Integer id){
		def instance = Monotributista.get(id)
		return instance
	}
	
	def deleteObj(Monotributista obj){
		obj.delete(flush: true)
		
	}
	
	def  eliminarEstablecimiento(Establecimiento e, Integer monotributistaId){
		def monotributista = showObj(monotributistaId)
		
		removerEstablecimiento(monotributista , e)
		
		
		saveObj(monotributista)
	}
	
	public boolean removerEstablecimiento(Monotributista m, Establecimiento e){
		Establecimiento e2
		for(e1 in m.listaEstablecimientos){
			if(e1.id == e.id){
				e2=e1
				break;
			}
		}
		
		return m.listaEstablecimientos.remove(e2)
		
	}
	
	def  eliminarDomicilio(Domicilio e, Integer monotributistaId){
		def monotributista = showObj(monotributistaId)
		
		removerDomicilio(monotributista , e)
		
		
		saveObj(monotributista)
	}
	
	public boolean removerDomicilio(Monotributista m, Domicilio e){
		Domicilio d
		for(e1 in m.listaDomicilios){
			if(e1.id == e.id){
				d=e1
				break;
			}
		}
		
		return m.listaDomicilios.remove(d)
		
	}

	def  eliminarGrupoFamiliar(GrupoFamiliar e, Integer monotributistaId){
		def monotributista = showObj(monotributistaId)
		
		removerGrupoFamiliar(monotributista , e)
		
		
		saveObj(monotributista)
	}
	
	public boolean removerGrupoFamiliar(Monotributista m, GrupoFamiliar e){
		GrupoFamiliar a
		for(e1 in m.listaGrupoFamiliar){
			if(e1.id == e.id){
				a=e1
				break;
			}
		}
		return m.listaGrupoFamiliar.remove(a)
			
	}
	
	public generarMonotributista(){
		def m1 = new Monotributista()
		m1.celular1 = "1530874455"
		m1.celular2 = "1531234455"
		m1.contacto = "Martin pepe" 
		m1.cuitCui = "3045613244"
		m1.descripcion = "bla"
		m1.email1 = "monotributista1@gmail.com"
		m1.email2 = "monotributista1_1@gmail.com"
		m1.fechaDeNacimiento = new Date()
		m1.nombre = "Marcos pepe"
		m1.tel1 = "42417788"
		m1.tel2 = "42496655"
		m1.tipoActividad = "a1"
		m1.tipoContribuyente = "c1"
		m1.web = "www.hh.com"
		
		saveObj(m1)
		
		def m2 = new Monotributista()
		m2.nombre = "Matias pepe"
		m2.descripcion = "sarlanga"
		m2.celular1 = "1530874455"
		m2.celular2 = "1531234455"
		m2.contacto = "Matias Koch"
		m2.cuitCui = "305556666"
		m2.email1 = "monotributista2@gmail.com"
		m2.email2 = "monotributista2_1@gmail.com"
		m2.fechaDeNacimiento = new Date()
		m2.tel1 = "42417788"
		m2.tel2 = "42496655"
		m2.tipoActividad = "a1"
		m2.tipoContribuyente = "c1"
		m2.web = "www.hhgg.com"
		
		saveObj(m2)

	}

}