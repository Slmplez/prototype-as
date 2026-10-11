/*
 * Decompiled with CFR 0.152.
 */
package de.etas.util;

import de.etas.cebra.Cebra;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.text.DateFormat;
import java.util.Date;
import java.util.TimeZone;

public class LogFile {
    private String dateiName;
    private long startZeit;
    private static boolean logEnabled;
    private static DateFormat formatter;

    static {
        formatter = DateFormat.getDateTimeInstance();
        formatter.setTimeZone(TimeZone.getDefault());
    }

    public LogFile(String path) {
        this.dateiName = path;
        try {
            File datei = new File(path);
            if (datei.exists()) {
                datei.delete();
            }
        }
        catch (Exception e) {
            Cebra.println("Exception in " + this.getClass().getName() + ": " + e);
        }
        this.startZeit = new Date().getTime();
    }

    public static final synchronized void enableLogging(boolean t) {
        logEnabled = t;
    }

    public final String getName() {
        return this.dateiName;
    }

    protected static final String getTimeString() {
        return formatter.format(new Date());
    }

    protected static final String getTimeString(Date t) {
        return formatter.format(t);
    }

    public static final synchronized boolean loggingEnabled() {
        return logEnabled;
    }

    public synchronized void logMessage(String msg) {
        if (msg == null) {
            return;
        }
        if (logEnabled) {
            try {
                Date zeit = new Date();
                String t = LogFile.getTimeString(zeit);
                long dt = zeit.getTime() - this.startZeit;
                RandomAccessFile errorFile = new RandomAccessFile(this.dateiName, "rw");
                errorFile.seek(errorFile.length());
                errorFile.writeBytes("(" + t + " = " + dt + " ms after start):" + Cebra.LF + msg + Cebra.LF + "--------------------------------------------------------------------------------" + Cebra.LF);
                errorFile.close();
            }
            catch (IOException iOException) {}
        }
    }

    public final void setName(String fileName) {
        if (this.dateiName.equalsIgnoreCase(fileName)) {
            return;
        }
        try {
            File fpAlt = new File(this.dateiName);
            File fpNeu = new File(fileName);
            if (fpNeu.exists()) {
                fpNeu.delete();
            }
            if (!fpAlt.renameTo(fpNeu)) {
                Cebra.println("Could not rename " + this.dateiName + " to " + fileName + ".");
            } else {
                this.dateiName = fileName;
            }
        }
        catch (Exception ex) {
            Cebra.println("Could not rename " + this.dateiName + " to " + fileName + ".");
            Cebra.println("Exception :" + Cebra.LF + ex);
        }
    }
}

