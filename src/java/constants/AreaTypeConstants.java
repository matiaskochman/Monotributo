package constants;

import java.util.ArrayList;
import java.util.List;

public class AreaTypeConstants {
	public static final String PAIS = "PAIS";
	public static final String PROVINCIA = "PROVINCIA";
	public static final String PARTIDO = "PARTIDO";
	public static final String LOCALIDAD = "LOCALIDAD";

	private static List<String> typeList = null;
	//private static ArrayList<String> typeList = new ArrayList<String>();		
	
	public static List<String> getAreaTypes(){
		if(typeList ==null){
			typeList  = new ArrayList<String>();
			typeList.add(0,PAIS);
			typeList.add(1,PROVINCIA);
			typeList.add(2,PARTIDO);
			typeList.add(3,LOCALIDAD);
			
		}
		return typeList;
	}

}
