package constants;

import java.util.ArrayList;
import java.util.List;

public class MesConstants {
	private static final Integer enero = 1;
	private static final Integer febrero = 2;
	private static final Integer marzo = 3;
	private static final Integer abril = 4;
	private static final Integer mayo = 5;
	private static final Integer junio = 6;
	private static final Integer julio = 7;
	private static final Integer agosto = 8;
	private static final Integer septiembre = 9;
	private static final Integer octubre = 10;
	private static final Integer noviembre = 11;
	private static final Integer diciembre = 12;

	private static List<Integer> meses = null;
	
	public static List<Integer> getMeses(){
		if(meses ==null){
			meses  = new ArrayList<Integer>();
			meses.add(0,enero);
			meses.add(1,febrero);
			meses.add(2,marzo);
			meses.add(3,abril);
			meses.add(4,mayo);
			meses.add(5,junio);
			meses.add(6,julio);
			meses.add(7,agosto);
			meses.add(8,septiembre);
			meses.add(9,octubre);
			meses.add(10,noviembre);
			meses.add(11,diciembre);
			
		}
		return meses;
	}	
}
