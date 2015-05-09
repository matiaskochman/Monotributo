package constants;

import java.util.ArrayList;
import java.util.List;

public class TipoDeDocumentoConstants {
	public static final String DNI = "DNI";
	public static final String CEDULA = "CEDULA";
	public static final String PASAPORTE = "PASAPORTE";

	private static List<String> tipoDeDocumento = null;

	public static List<String> getTipoDeDocumento(){
		if(tipoDeDocumento ==null){
			tipoDeDocumento  = new ArrayList<String>();
			tipoDeDocumento.add(0,DNI);
			tipoDeDocumento.add(1,CEDULA);
			tipoDeDocumento.add(1,PASAPORTE);
			
		}
		return tipoDeDocumento;
	}

}
