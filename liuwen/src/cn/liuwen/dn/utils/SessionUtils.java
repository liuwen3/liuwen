package cn.liuwen.dn.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class SessionUtils {

	  public static HttpSession getSession(HttpServletRequest request) {
	    return request.getSession();
	  }

	  public static void setSessionAttribute(HttpServletRequest request, String key, String value) {
	    getSession(request).setAttribute(key, value);
	  }
	  public static String getSessionAttribute(HttpServletRequest request, String key) {
	    return (String) getSession(request).getAttribute(key);
	  }
	  
	  /**
	   * @return yyyyMMddHHmmss
	   */
	  public static String getSystemTime() {
	    return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
	  }
}
