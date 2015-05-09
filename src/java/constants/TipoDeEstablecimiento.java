package constants;

import java.util.ArrayList;
import java.util.List;

public class TipoDeEstablecimiento {
	public static final String INQUILINO = "INQUILINO";
	public static final String PROPIETARIO = "PROPIETARIO";
	public static final String SIN_LOCAL_O_ESTABLECIMIENTO = "SIN LOCAL O ESTABLECIMIENTO";

	private static List<String> tipoDeEstablecimiento = null;

	public static List<String> getTipoDeEstablecimiento(){
		if(tipoDeEstablecimiento ==null){
			tipoDeEstablecimiento  = new ArrayList<String>();
			tipoDeEstablecimiento.add(0,INQUILINO);
			tipoDeEstablecimiento.add(1,PROPIETARIO);
			tipoDeEstablecimiento.add(2,SIN_LOCAL_O_ESTABLECIMIENTO);
		}
		return tipoDeEstablecimiento;
	}

}
