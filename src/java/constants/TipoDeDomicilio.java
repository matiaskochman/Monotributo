package constants;

import java.util.ArrayList;
import java.util.List;

public class TipoDeDomicilio {
	public static final String FISCAL = "FISCAL";
	public static final String REAL = "REAL";

	private static List<String> tipoDeDomicilio = null;

	public static List<String> getTipoDeDomicilio(){
		if(tipoDeDomicilio ==null){
			tipoDeDomicilio  = new ArrayList<String>();
			tipoDeDomicilio.add(0,FISCAL);
			tipoDeDomicilio.add(1,REAL);
		}
		return tipoDeDomicilio;
	}
}
