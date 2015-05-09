package constants;

import java.util.ArrayList;
import java.util.List;

public class CondicionDelVehiculoConstants {
	public static final String DESTRUCCION_TOTAL = "DESTRUCCION TOTAL";
	public static final String DESTRUCCION_PARCIAL = "DESTRUCCION PARCIAL";

	private static List<String> listaCondicionVehiculo = null;

	public static List<String> getColegiosProfesionales(){
		if(listaCondicionVehiculo ==null){
			listaCondicionVehiculo  = new ArrayList<String>();
			listaCondicionVehiculo.add(0,DESTRUCCION_TOTAL);
			listaCondicionVehiculo.add(1,DESTRUCCION_PARCIAL);
		}
		return listaCondicionVehiculo;
	}
}
