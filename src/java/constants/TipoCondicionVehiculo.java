package constants;

import java.util.ArrayList;
import java.util.List;

public class TipoCondicionVehiculo {
	public static final String TITULAR = "TITULAR";
	public static final String OTRO = "OTRO";

	private static List<String> tipoCondicionVehiculo = null;

	public static List<String> getTiposCondicionVehiculo(){
		if(tipoCondicionVehiculo ==null){
			tipoCondicionVehiculo  = new ArrayList<String>();
			tipoCondicionVehiculo.add(0,TITULAR);
			tipoCondicionVehiculo.add(1,OTRO);
		}
		return tipoCondicionVehiculo;
	}
}
