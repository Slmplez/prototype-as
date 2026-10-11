/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.osgi.framework.log.FrameworkLog
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.FrameworkEvent
 */
package org.eclipse.sphinx.platform.stats;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.util.Calendar;
import java.util.Date;
import java.util.Properties;
import java.util.PropertyPermission;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.osgi.framework.log.FrameworkLog;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.framework.FrameworkEvent;

public class PerformanceStatsLog
implements FrameworkLog {
    private static final String PASSWORD = "-password";
    protected static final String SESSION = "!SESSION";
    protected static final String ENTRY = "!ENTRY";
    protected static final String SUBENTRY = "!SUBENTRY";
    protected static final String MESSAGE = "!MESSAGE";
    protected static final String STACK = "!STACK";
    protected static final String LINE_SEPARATOR;
    protected static final String TAB_STRING = "\t";
    private static final String USING_SYSTEM_PROPERTIES_KEY = "osgi.framework.useSystemProperties";
    public static final int DEFAULT_LOG_SIZE = 1000000;
    public static final int DEFAULT_LOG_FILES = 10;
    public static final int LOG_SIZE_MIN = 1000000;
    public static final String PROP_LOG_LEVEL = "eclipse.log.level";
    public static final String PROP_LOG_SIZE_MAX = "eclipse.log.size.max";
    public static final String PROP_LOG_FILE_MAX = "eclipse.log.backup.max";
    public static final String LOG_EXT = ".log";
    public static final String BACKUP_MARK = ".bak_";
    private static Properties properties;
    public static final String PROP_LOGFILE = "osgi.logfile";
    protected boolean consoleLog = false;
    protected boolean newSession = true;
    protected File outFile;
    protected Writer writer;
    int maxLogSize = 1000000;
    int maxLogFiles = 10;
    int backupIdx = 0;
    private int logLevel = 0;

    static {
        String s = System.getProperty("line.separator");
        LINE_SEPARATOR = s == null ? "\n" : s;
        Properties systemProperties = System.getProperties();
        String usingSystemProperties = systemProperties.getProperty(USING_SYSTEM_PROPERTIES_KEY);
        if (usingSystemProperties == null || usingSystemProperties.equalsIgnoreCase(Boolean.TRUE.toString())) {
            properties = systemProperties;
        } else {
            properties = new Properties();
            properties.putAll(systemProperties);
        }
    }

    public PerformanceStatsLog(File outFile) {
        this.outFile = outFile;
        this.writer = null;
        this.readLogProperties();
    }

    public PerformanceStatsLog(Writer writer) {
        this.writer = writer == null ? this.logForStream(System.err) : writer;
    }

    private Throwable getRoot(Throwable t) {
        Throwable deeplyNested;
        Throwable root = null;
        if (t instanceof BundleException) {
            root = ((BundleException)t).getNestedException();
        }
        if (t instanceof InvocationTargetException) {
            root = ((InvocationTargetException)t).getTargetException();
        }
        if ((root instanceof InvocationTargetException || root instanceof BundleException) && (deeplyNested = this.getRoot(root)) != null) {
            root = deeplyNested;
        }
        return root;
    }

    protected void writeArgs(String header, String[] args) throws IOException {
        if (args == null || args.length == 0) {
            return;
        }
        this.write(header);
        int i = 0;
        while (i < args.length) {
            if (i > 0 && PASSWORD.equals(args[i - 1])) {
                this.write(" (omitted)");
            } else {
                this.write(" " + args[i]);
            }
            ++i;
        }
        this.writeln();
    }

    protected String getSessionTimestamp() {
        String ts = PerformanceStatsLog.getProperty("eclipse.startTime");
        if (ts != null) {
            try {
                return this.getDate(new Date(Long.parseLong(ts)));
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return this.getDate(new Date());
    }

    public void close() {
        try {
            if (this.writer != null) {
                Writer tmpWriter = this.writer;
                this.writer = null;
                tmpWriter.close();
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void openFile() {
        if (this.writer == null) {
            if (this.outFile != null) {
                try {
                    this.writer = this.logForStream(new FileOutputStream(this.outFile, true));
                }
                catch (IOException iOException) {
                    this.writer = this.logForStream(System.err);
                }
            } else {
                this.writer = this.logForStream(System.err);
            }
        }
    }

    protected void closeFile() {
        if (this.outFile != null && this.writer != null) {
            try {
                this.writer.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            this.writer = null;
        }
    }

    public void log(FrameworkEvent frameworkEvent) {
        int severity;
        Bundle b = frameworkEvent.getBundle();
        Throwable t = frameworkEvent.getThrowable();
        String entry = b.getSymbolicName() == null ? b.getLocation() : b.getSymbolicName();
        switch (frameworkEvent.getType()) {
            case 32: {
                severity = 1;
                break;
            }
            case 2: {
                severity = 4;
                break;
            }
            case 16: {
                severity = 2;
                break;
            }
            default: {
                severity = 0;
            }
        }
        FrameworkLogEntry logEntry = new FrameworkLogEntry(entry, severity, 0, "", 0, t, null);
        this.log(logEntry);
    }

    public synchronized void log(FrameworkLogEntry logEntry) {
        if (logEntry == null) {
            return;
        }
        if (!this.isLoggable(logEntry)) {
            return;
        }
        try {
            try {
                this.checkLogFileSize();
                this.openFile();
                if (this.newSession) {
                    this.newSession = false;
                }
                this.writeLog(0, logEntry);
                this.writer.flush();
            }
            catch (Exception e) {
                PlatformLogUtil.logAsError((Plugin)ResourcesPlugin.getPlugin(), e);
                try {
                    this.writer = this.logForStream(System.err);
                    this.writeLog(0, logEntry);
                    this.writer.flush();
                }
                catch (Exception exception) {
                    PlatformLogUtil.logAsError((Plugin)ResourcesPlugin.getPlugin(), e);
                }
                this.closeFile();
            }
        }
        finally {
            this.closeFile();
        }
    }

    public synchronized void setWriter(Writer newWriter, boolean append) {
        this.setOutput(null, newWriter, append);
    }

    public synchronized void setFile(File newFile, boolean append) throws IOException {
        if (newFile != null && !newFile.equals(this.outFile)) {
            this.readLogProperties();
            this.backupIdx = 0;
        }
        this.setOutput(newFile, null, append);
        PerformanceStatsLog.setProperty(PROP_LOGFILE, newFile.getAbsolutePath());
    }

    public synchronized File getFile() {
        return this.outFile;
    }

    public void setConsoleLog(boolean consoleLog) {
        this.consoleLog = consoleLog;
    }

    private void setOutput(File newOutFile, Writer newWriter, boolean append) {
        if (newOutFile == null || !newOutFile.equals(this.outFile)) {
            if (this.writer != null) {
                try {
                    this.writer.close();
                }
                catch (IOException e) {
                    e.printStackTrace();
                }
                this.writer = null;
            }
            File oldOutFile = this.outFile;
            this.outFile = newOutFile;
            this.writer = newWriter;
            boolean copyFailed = false;
            if (append && oldOutFile != null && oldOutFile.isFile()) {
                Reader fileIn = null;
                try {
                    try {
                        this.openFile();
                        fileIn = new InputStreamReader((InputStream)new FileInputStream(oldOutFile), "UTF-8");
                        this.copyReader(fileIn, this.writer);
                    }
                    catch (IOException e) {
                        copyFailed = true;
                        e.printStackTrace();
                        if (fileIn != null) {
                            try {
                                fileIn.close();
                            }
                            catch (IOException e2) {
                                e2.printStackTrace();
                            }
                            if (!copyFailed) {
                                oldOutFile.delete();
                            }
                        }
                        this.closeFile();
                    }
                }
                finally {
                    if (fileIn != null) {
                        try {
                            fileIn.close();
                        }
                        catch (IOException e) {
                            e.printStackTrace();
                        }
                        if (!copyFailed) {
                            oldOutFile.delete();
                        }
                    }
                    this.closeFile();
                }
            }
        }
    }

    private void copyReader(Reader reader, Writer aWriter) throws IOException {
        int count;
        char[] buffer = new char[1024];
        while ((count = reader.read(buffer, 0, buffer.length)) > 0) {
            aWriter.write(buffer, 0, count);
        }
    }

    protected String getDate(Date date) {
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        StringBuffer sb = new StringBuffer();
        this.appendPaddedInt(c.get(1), 4, sb).append('-');
        this.appendPaddedInt(c.get(2) + 1, 2, sb).append('-');
        this.appendPaddedInt(c.get(5), 2, sb).append(' ');
        this.appendPaddedInt(c.get(11), 2, sb).append(':');
        this.appendPaddedInt(c.get(12), 2, sb).append(':');
        this.appendPaddedInt(c.get(13), 2, sb).append('.');
        this.appendPaddedInt(c.get(14), 3, sb);
        return sb.toString();
    }

    /*
     * Unable to fully structure code
     */
    private StringBuffer appendPaddedInt(int value, int pad, StringBuffer buffer) {
        if (--pad == 0) {
            return buffer.append(Integer.toString(value));
        }
        padding = (int)Math.pow(10.0, pad);
        if (value < padding) ** GOTO lbl9
        return buffer.append(Integer.toString(value));
lbl-1000:
        // 1 sources

        {
            buffer.append('0');
            padding /= 10;
lbl9:
            // 2 sources

            ** while (padding > value && padding > 1)
        }
lbl10:
        // 1 sources

        buffer.append(value);
        return buffer;
    }

    protected String getStackTrace(Throwable t) {
        if (t == null) {
            return null;
        }
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        t.printStackTrace(pw);
        Throwable root = this.getRoot(t);
        if (root != null) {
            pw.println("Root exception:");
            root.printStackTrace(pw);
        }
        return sw.toString();
    }

    protected Writer logForStream(OutputStream output) {
        try {
            return new BufferedWriter(new OutputStreamWriter(output, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return new BufferedWriter(new OutputStreamWriter(output));
        }
    }

    protected void writeLog(int depth, FrameworkLogEntry entry) throws IOException {
        this.writeEntry(depth, entry);
        this.writeMessage(entry);
        this.writeStack(entry);
        FrameworkLogEntry[] children = entry.getChildren();
        if (children != null) {
            FrameworkLogEntry[] frameworkLogEntryArray = children;
            int n = children.length;
            int n2 = 0;
            while (n2 < n) {
                FrameworkLogEntry element = frameworkLogEntryArray[n2];
                this.writeLog(depth + 1, element);
                ++n2;
            }
        }
    }

    protected void writeEntry(int depth, FrameworkLogEntry entry) throws IOException {
        if (depth == 0) {
            this.writeln();
            this.write(ENTRY);
        } else {
            this.write(SUBENTRY);
            this.writeSpace();
            this.write(Integer.toString(depth));
        }
        this.writeSpace();
        this.write(entry.getEntry());
        this.writeSpace();
        this.write(Integer.toString(entry.getSeverity()));
        this.writeSpace();
        this.write(Integer.toString(entry.getBundleCode()));
        this.writeSpace();
        this.write(this.getDate(new Date()));
        this.writeln();
    }

    protected void writeMessage(FrameworkLogEntry entry) throws IOException {
        this.write(MESSAGE);
        this.writeSpace();
        this.writeln(entry.getMessage());
    }

    protected void writeStack(FrameworkLogEntry entry) throws IOException {
        Throwable t = entry.getThrowable();
        if (t != null) {
            String stack = this.getStackTrace(t);
            this.write(STACK);
            this.writeSpace();
            this.write(Integer.toString(entry.getStackCode()));
            this.writeln();
            this.write(stack);
        }
    }

    protected void write(String message) throws IOException {
        if (message != null) {
            this.writer.write(message);
            if (this.consoleLog) {
                System.out.print(message);
            }
        }
    }

    protected void writeln(String s) throws IOException {
        this.write(s);
        this.writeln();
    }

    protected void writeln() throws IOException {
        this.write(LINE_SEPARATOR);
    }

    protected void writeSpace() throws IOException {
        this.write(" ");
    }

    protected boolean checkLogFileSize() {
        if (this.maxLogSize == 0) {
            return true;
        }
        boolean isBackupOK = true;
        if (this.outFile != null && this.outFile.length() >> 10 > (long)this.maxLogSize) {
            boolean isRenameOK;
            String logFilename = this.outFile.getAbsolutePath();
            String backupFilename = "";
            backupFilename = logFilename.toLowerCase().endsWith(LOG_EXT) ? String.valueOf(logFilename.substring(0, logFilename.length() - LOG_EXT.length())) + BACKUP_MARK + this.backupIdx + LOG_EXT : String.valueOf(logFilename) + BACKUP_MARK + this.backupIdx;
            File backupFile = new File(backupFilename);
            if (backupFile.exists() && !backupFile.delete() && !backupFile.renameTo(new File(String.valueOf(backupFile.getAbsolutePath()) + System.currentTimeMillis()))) {
                isBackupOK = false;
            }
            if (!(isRenameOK = this.outFile.renameTo(backupFile))) {
                isBackupOK = false;
            }
            File newFile = new File(logFilename);
            this.setOutput(newFile, null, false);
            this.openFile();
            try {
                this.writeln();
                this.writeln("This is a continuation of log file " + backupFile.getAbsolutePath());
                this.writeln("Created Time: " + this.getDate(new Date(System.currentTimeMillis())));
                this.writer.flush();
            }
            catch (IOException ioe) {
                PlatformLogUtil.logAsError((Plugin)ResourcesPlugin.getPlugin(), ioe);
            }
            this.closeFile();
            ++this.backupIdx;
            this.backupIdx %= this.maxLogFiles;
        }
        return isBackupOK;
    }

    public static String getProperty(String key) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPropertyAccess(key);
        }
        return properties.getProperty(key, null);
    }

    public static String setProperty(String key, String value) {
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkPermission(new PropertyPermission(key, "write"));
        }
        return properties.put(key, value);
    }

    protected void readLogProperties() {
        String newLogLevel;
        String newMaxLogFiles;
        String newMaxLogSize = PerformanceStatsLog.getProperty(PROP_LOG_SIZE_MAX);
        if (newMaxLogSize != null) {
            this.maxLogSize = Integer.parseInt(newMaxLogSize);
            if (this.maxLogSize != 0 && this.maxLogSize < 1000000) {
                this.maxLogSize = 1000000;
            }
        }
        if ((newMaxLogFiles = PerformanceStatsLog.getProperty(PROP_LOG_FILE_MAX)) != null) {
            this.maxLogFiles = Integer.parseInt(newMaxLogFiles);
            if (this.maxLogFiles < 1) {
                this.maxLogFiles = 10;
            }
        }
        if ((newLogLevel = PerformanceStatsLog.getProperty(PROP_LOG_LEVEL)) != null) {
            this.logLevel = newLogLevel.equals("ERROR") ? 4 : (newLogLevel.equals("WARNING") ? 6 : (newLogLevel.equals("INFO") ? 15 : 0));
        }
    }

    private boolean isLoggable(FrameworkLogEntry entry) {
        if (this.logLevel == 0) {
            return true;
        }
        return (entry.getSeverity() & this.logLevel) != 0;
    }
}

