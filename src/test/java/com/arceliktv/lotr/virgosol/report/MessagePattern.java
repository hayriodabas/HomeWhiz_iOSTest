package com.arceliktv.lotr.virgosol.report;

import com.arceliktv.lotr.virgosol.report.DatePattern;

public class MessagePattern {

    private final static String LINK = "${link}";
    private final static String TOTAL = "${total}";
    private final static String PASSED = "${passed}";
    private final static String FAIL = "${fail}";
    private final static String SKIP = "${skip}";

    public static String formatMessage(String message, String link, long total, long pass, long fail,
                                       long skip) {
        if (message.contains(LINK)) {
            message = message.replace(LINK, link);
        }
        if (message.contains(TOTAL)) {
            message = message.replace(TOTAL, String.valueOf(total));
        }
        if (message.contains(PASSED)) {
            message = message.replace(PASSED, String.valueOf(pass));
        }
        if (message.contains(FAIL)) {
            message = message.replace(FAIL, String.valueOf(fail));
        }
        if (message.contains(SKIP)) {
            message = message.replace(SKIP, String.valueOf(skip));
        }
        message = DatePattern.parse(message);
        return message;
    }
}
