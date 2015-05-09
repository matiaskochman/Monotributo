package constants;

import java.util.ArrayList;
import java.util.List;

public class ParentescoConstants {
	public static final String PADRE = "PADRE";
	public static final String MADRE = "MADRE";
	public static final String HIJO = "HIJO/HIJA";
	public static final String CONYUJE = "CONYUJE";

	private static List<String> tipoDeParentesco = null;

	public static List<String> getTipoDeParentesco(){
		if(tipoDeParentesco ==null){
			tipoDeParentesco  = new ArrayList<String>();
			tipoDeParentesco.add(0,PADRE);
			tipoDeParentesco.add(1,MADRE);
			tipoDeParentesco.add(2,HIJO);
			tipoDeParentesco.add(3,CONYUJE);
			
		}
		return tipoDeParentesco;
	}

}
