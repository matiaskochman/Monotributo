package constants;

import java.util.ArrayList;
import java.util.List;

public class TipoDeContribuyentes {
	public static final String MONOTRIBUTISTA = "MONOTRIBUTISTA";
	public static final String RESPONSABLE_INSCRIPTO = "RESPONSABLE_INSCRIPTO";

	private static List<String> tipoDeContribuyentes = null;

	public static List<String> getTipoDeContribuyentes(){
		if(tipoDeContribuyentes ==null){
			tipoDeContribuyentes  = new ArrayList<String>();
			tipoDeContribuyentes.add(0,MONOTRIBUTISTA);
			tipoDeContribuyentes.add(1,RESPONSABLE_INSCRIPTO);
		}
		return tipoDeContribuyentes;
	}

}
