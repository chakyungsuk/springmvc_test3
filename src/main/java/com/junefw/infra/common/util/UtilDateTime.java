package com.junefw.infra.common.util;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import com.junefw.infra.common.constants.Constants;




public class UtilDateTime {
	
	public static LocalDateTime nowLocalDateTime () throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		return localDateTime;
	}
	

	public static Date nowDate () throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(Constants.DATETIME_FORMAT_BASIC);
        Date date = simpleDateFormat.parse(localDateTimeString);
		return date;
	}
	
	
	public static String nowString () throws Exception {
		LocalDateTime localDateTime = LocalDateTime.now();
		String localDateTimeString = localDateTime.format(DateTimeFormatter.ofPattern(Constants.DATETIME_FORMAT_BASIC));
		return localDateTimeString;
	}
	
	public static String calculateDayString (LocalDateTime localDateTime, int day) throws Exception {
		LocalDateTime localDateTimeNew;
		
		if(day >= 0) {
				localDateTimeNew = localDateTime.plusDays(Math.abs(day)); 
		} else {
			localDateTimeNew = localDateTime.minusDays(Math.abs(day));
		}

		String localDateTimeNewString = localDateTimeNew.format(DateTimeFormatter.ofPattern(Constants.DATE_FORMAT_BASIC));
		return localDateTimeNewString;
	}
}

	

