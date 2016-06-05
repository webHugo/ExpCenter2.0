package org.expc.util;

import java.util.Date;

public class CommonUtil {
	public static final String fLTLC(String s)
	{
		s=s.substring(0,1).toLowerCase()+s.substring(1,s.length());
		return s;
	}
}
