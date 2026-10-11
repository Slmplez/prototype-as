/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  com.ibm.icu.text.SimpleDateFormat
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.ui.internal.views.log;

import com.ibm.icu.text.DateFormat;
import com.ibm.icu.text.SimpleDateFormat;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.ui.internal.views.log.AbstractEntry;
import org.eclipse.ui.internal.views.log.LogSession;
import org.eclipse.ui.internal.views.log.Messages;

public class LogEntry
extends AbstractEntry {
    public static final String SPACE = " ";
    public static final String F_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss.SSS";
    private static final DateFormat GREGORIAN_SDF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.ENGLISH);
    private static final DateFormat LOCAL_SDF = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    private String pluginId;
    private int severity;
    private int code;
    private String fDateString;
    private Date fDate;
    private String message;
    private String stack;
    private LogSession session;

    public LogEntry() {
    }

    public LogEntry(IStatus status) {
        this.processStatus(status);
    }

    public LogSession getSession() {
        if (this.session == null && this.parent != null && this.parent instanceof LogEntry) {
            return ((LogEntry)((Object)this.parent)).getSession();
        }
        return this.session;
    }

    void setSession(LogSession session) {
        this.session = session;
    }

    public int getSeverity() {
        return this.severity;
    }

    public boolean isOK() {
        return this.severity == 0;
    }

    public int getCode() {
        return this.code;
    }

    public String getPluginId() {
        return this.pluginId;
    }

    public String getMessage() {
        return this.message;
    }

    public String getStack() {
        return this.stack;
    }

    public String getFormattedDate() {
        if (this.fDateString == null) {
            this.fDateString = LOCAL_SDF.format(this.getDate());
        }
        return this.fDateString;
    }

    public Date getDate() {
        if (this.fDate == null) {
            this.fDate = new Date(0L);
        }
        return this.fDate;
    }

    public String getSeverityText() {
        switch (this.severity) {
            case 4: {
                return Messages.LogView_severity_error;
            }
            case 2: {
                return Messages.LogView_severity_warning;
            }
            case 1: {
                return Messages.LogView_severity_info;
            }
            case 0: {
                return Messages.LogView_severity_ok;
            }
        }
        return "?";
    }

    public String toString() {
        return this.getSeverityText();
    }

    public String getLabel(Object obj) {
        return this.getSeverityText();
    }

    public void processEntry(String line) throws ParseException {
        StringTokenizer stok = new StringTokenizer(line, SPACE);
        this.severity = 0;
        this.code = 0;
        StringBuffer dateBuffer = new StringBuffer();
        int tokens = stok.countTokens();
        String token = null;
        int i = 0;
        while (i < tokens) {
            token = stok.nextToken();
            switch (i) {
                case 0: {
                    break;
                }
                case 1: {
                    this.pluginId = token;
                    break;
                }
                case 2: {
                    try {
                        this.severity = Integer.parseInt(token);
                    }
                    catch (NumberFormatException numberFormatException) {
                        this.appendToken(dateBuffer, token);
                    }
                    break;
                }
                case 3: {
                    try {
                        this.code = Integer.parseInt(token);
                    }
                    catch (NumberFormatException numberFormatException) {
                        this.appendToken(dateBuffer, token);
                    }
                    break;
                }
                default: {
                    this.appendToken(dateBuffer, token);
                }
            }
            ++i;
        }
        Date date = GREGORIAN_SDF.parse(dateBuffer.toString());
        if (date != null) {
            this.fDate = date;
            this.fDateString = LOCAL_SDF.format(this.fDate);
        }
    }

    void appendToken(StringBuffer buffer, String token) {
        if (buffer.length() > 0) {
            buffer.append(SPACE);
        }
        buffer.append(token);
    }

    public int processSubEntry(String line) throws ParseException {
        StringTokenizer stok = new StringTokenizer(line, SPACE);
        StringBuffer dateBuffer = new StringBuffer();
        int depth = 0;
        String token = null;
        int tokens = stok.countTokens();
        int i = 0;
        while (i < tokens) {
            token = stok.nextToken();
            switch (i) {
                case 0: {
                    break;
                }
                case 1: {
                    depth = Integer.parseInt(token);
                    break;
                }
                case 2: {
                    this.pluginId = token;
                    break;
                }
                case 3: {
                    try {
                        this.severity = Integer.parseInt(token);
                    }
                    catch (NumberFormatException numberFormatException) {
                        this.appendToken(dateBuffer, token);
                    }
                    break;
                }
                case 4: {
                    try {
                        this.code = Integer.parseInt(token);
                    }
                    catch (NumberFormatException numberFormatException) {
                        this.appendToken(dateBuffer, token);
                    }
                    break;
                }
                default: {
                    this.appendToken(dateBuffer, token);
                }
            }
            ++i;
        }
        Date date = GREGORIAN_SDF.parse(dateBuffer.toString());
        if (date != null) {
            this.fDate = date;
            this.fDateString = LOCAL_SDF.format(this.fDate);
        }
        return depth;
    }

    void setStack(String stack) {
        this.stack = stack;
    }

    void setMessage(String message) {
        this.message = message;
    }

    private void processStatus(IStatus status) {
        IStatus[] schildren;
        this.pluginId = status.getPlugin();
        this.severity = status.getSeverity();
        this.code = status.getCode();
        this.fDate = new Date();
        this.fDateString = LOCAL_SDF.format(this.fDate);
        this.message = status.getMessage();
        Throwable throwable = status.getException();
        if (throwable != null) {
            StringWriter swriter = new StringWriter();
            PrintWriter pwriter = new PrintWriter(swriter);
            throwable.printStackTrace(pwriter);
            pwriter.flush();
            pwriter.close();
            this.stack = swriter.toString();
        }
        if ((schildren = status.getChildren()).length > 0) {
            int i = 0;
            while (i < schildren.length) {
                this.addChild(new LogEntry(schildren[i]));
                ++i;
            }
        }
    }

    public void write(PrintWriter writer) {
        if (this.session != null) {
            writer.println(this.session.getSessionData());
        }
        writer.println(this.getSeverityText());
        if (this.fDate != null) {
            writer.println(this.getDate());
        }
        if (this.message != null) {
            writer.println(this.getMessage());
        }
        if (this.stack != null) {
            writer.println();
            writer.println(this.stack);
        }
    }
}

