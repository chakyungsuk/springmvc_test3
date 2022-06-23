package com.junefw.infra.common.constants;

public final class Constants {

public static final String DATETIME_FORMAT_BASIC = "yyyy-MM-dd HH:mm:ss";
public static final String DATE_FORMAT_BASIC = "yyyy-MM-dd";

public static final Integer DATE_INTERVAL = -365;
public static final Integer SESSION_MINUTE = 300;
public static final String TIME_FORMAT_BASIC = "HH:mm:ss";


//insert 또는 update 후 페이지 전환 타입: 1:form, 2:list	
public static final int INSERT_AFTER_TYPE = 1;		
public static final int UPDATE_AFTER_TYPE = 1;

public static final String UPLOAD_PATH_PREFIX = "/factory/workspace/springmvc_test3/resources/uploaded";

/*
 * public static final String UPLOAD_PATH_PREFIX =
 * "D:/factory/ws_sts_4130/springmvc_test3/src/main/webapp/resources/uploaded/";
 */
}
