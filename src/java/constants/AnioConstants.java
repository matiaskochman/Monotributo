package constants;

import java.util.ArrayList;
import java.util.List;

public class AnioConstants {
	private static final Integer a2010 = 2010;
	private static final Integer a2011 = 2011;
	private static final Integer a2012 = 2012;
	private static final Integer a2013 = 2013;
	private static final Integer a2014 = 2014;
	private static final Integer a2015 = 2015;
	private static final Integer a2016 = 2016;
	private static final Integer a2017 = 2017;
	private static final Integer a2018 = 2018;
	private static final Integer a2019 = 2019;
	private static final Integer a2020 = 2020;
	
	private static List<Integer> anios = null;
	
	public static List<Integer> getMeses(){
		if(anios ==null){
			anios  = new ArrayList<Integer>();
			anios.add(0,a2010);
			anios.add(1,a2011);
			anios.add(2,a2012);
			anios.add(3,a2013);
			anios.add(4,a2014);
			anios.add(5,a2015);
			anios.add(6,a2016);
			anios.add(7,a2017);
			anios.add(8,a2018);
			anios.add(9,a2019);
			anios.add(10,a2020);
		}
		return anios;
	}	
	
}
