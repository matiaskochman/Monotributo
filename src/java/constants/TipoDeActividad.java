package constants;

import java.util.ArrayList;
import java.util.List;

public class TipoDeActividad {
	public static final String PRESTACIONES_DE_SERVICIOS = "PRESTACIONES DE SERVICIOS";
	public static final String VENTA_DE_COSAS_MUEBLES = "VENTA DE COSAS MUEBLES";

	private static List<String> tipoDeActividad = null;

	public static List<String> getTipoDeActividad(){
		if(tipoDeActividad ==null){
			tipoDeActividad  = new ArrayList<String>();
			tipoDeActividad.add(0,PRESTACIONES_DE_SERVICIOS);
			tipoDeActividad.add(1,VENTA_DE_COSAS_MUEBLES);
		}
		return tipoDeActividad;
	}

}
