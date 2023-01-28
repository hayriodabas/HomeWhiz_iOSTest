package com.arceliktv.lotr.virgosol.report;

import com.arceliktv.lotr.virgosol.common.date.DateAndTimeHelper;
import com.arceliktv.lotr.virgosol.common.helper.StringHelper;
import com.arceliktv.lotr.virgosol.common.helper.SystemPropertyHelper;

public class ReportPattern {

  private final static String DATE_FORMAT = "dd-MM-yyyy_HH-mm-ss-SSS";

  private ReportPattern() {

  }

  public static String parse(String pattern) {
    String reportPattern =
        StringHelper.isEmpty(SystemPropertyHelper.getProperty("reportPattern")) ? ""
            : SystemPropertyHelper.getProperty("reportPattern");
    pattern = pattern.replace("%rp", reportPattern);
    if (pattern.contains("%date")) {
      pattern = pattern.replace("%date",
          DateAndTimeHelper.formatDate(DateAndTimeHelper.getNowDate(), DATE_FORMAT));
    }
    return pattern;
  }

}
