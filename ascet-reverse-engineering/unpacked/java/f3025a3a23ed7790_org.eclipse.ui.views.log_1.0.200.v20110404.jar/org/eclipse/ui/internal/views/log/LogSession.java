/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.SimpleDateFormat
 */
package org.eclipse.ui.internal.views.log;

import com.ibm.icu.text.SimpleDateFormat;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import org.eclipse.ui.internal.views.log.Group;
import org.eclipse.ui.internal.views.log.Messages;

public class LogSession
extends Group {
    public static final String SESSION = "!SESSION";
    private String sessionData;
    private Date date;

    public LogSession() {
        super(Messages.LogViewLabelProvider_Session);
    }

    public Date getDate() {
        return this.date;
    }

    public void setDate(String dateString) {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        try {
            this.date = formatter.parse(dateString);
        }
        catch (ParseException parseException) {}
    }

    public String getSessionData() {
        return this.sessionData;
    }

    void setSessionData(String data) {
        this.sessionData = data;
    }

    public void processLogLine(String line) {
        if (line.startsWith(SESSION)) {
            int delim = (line = line.substring(SESSION.length()).trim()).indexOf("----");
            if (delim == -1) {
                return;
            }
            String dateBuffer = line.substring(0, delim).trim();
            this.setDate(dateBuffer);
        }
    }

    public void write(PrintWriter writer) {
        writer.write(this.sessionData);
        writer.println();
        super.write(writer);
    }
}

