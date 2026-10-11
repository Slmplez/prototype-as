/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime.internal.adaptor;

import java.io.BufferedWriter;
import java.io.File;
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
import java.security.AccessController;
import java.util.Calendar;
import java.util.Date;
import org.eclipse.core.runtime.internal.adaptor.EclipseEnvironmentInfo;
import org.eclipse.equinox.log.ExtendedLogEntry;
import org.eclipse.equinox.log.LogFilter;
import org.eclipse.equinox.log.SynchronousLogListener;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.framework.util.SecureAction;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleException;
import org.osgi.service.log.LogEntry;

public class EclipseLogWriter
implements SynchronousLogListener,
LogFilter {
    private static final String PASSWORD = "-password";
    private static final String SESSION = "!SESSION";
    private static final String ENTRY = "!ENTRY";
    private static final String SUBENTRY = "!SUBENTRY";
    private static final String MESSAGE = "!MESSAGE";
    private static final String STACK = "!STACK";
    private static final String LINE_SEPARATOR;
    private static final int DEFAULT_LOG_SIZE = 1000;
    private static final int DEFAULT_LOG_FILES = 10;
    private static final int LOG_SIZE_MIN = 10;
    private static final String PROP_LOG_LEVEL = "eclipse.log.level";
    private static final String PROP_LOG_SIZE_MAX = "eclipse.log.size.max";
    private static final String PROP_LOG_FILE_MAX = "eclipse.log.backup.max";
    private static final String LOG_EXT = ".log";
    private static final String BACKUP_MARK = ".bak_";
    private static final SecureAction secureAction;
    private boolean consoleLog = false;
    private boolean newSession = true;
    private File outFile;
    private Writer writer;
    private final String loggerName;
    private final boolean enabled;
    int maxLogSize = 1000;
    int maxLogFiles = 10;
    int backupIdx = 0;
    private int logLevel = 0;

    static {
        String s = System.getProperty("line.separator");
        LINE_SEPARATOR = s == null ? "\n" : s;
        secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
    }

    public EclipseLogWriter(File outFile, String loggerName, boolean enabled) {
        this.outFile = outFile;
        this.writer = null;
        this.loggerName = loggerName;
        this.enabled = enabled;
        this.readLogProperties();
    }

    public EclipseLogWriter(Writer writer, String loggerName, boolean enabled) {
        this.writer = writer == null ? this.logForStream(System.err) : writer;
        this.loggerName = loggerName;
        this.enabled = enabled;
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

    private void writeArgs(String header, String[] args) throws IOException {
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

    private String getSessionTimestamp() {
        String ts = FrameworkProperties.getProperty("eclipse.startTime");
        if (ts != null) {
            try {
                return this.getDate(new Date(Long.parseLong(ts)));
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return this.getDate(new Date());
    }

    private void writeSession() throws IOException {
        this.write(SESSION);
        this.writeSpace();
        String date = this.getSessionTimestamp();
        this.write(date);
        this.writeSpace();
        int i = SESSION.length() + date.length();
        while (i < 78) {
            this.write("-");
            ++i;
        }
        this.writeln();
        try {
            String key = "eclipse.buildId";
            String value = FrameworkProperties.getProperty(key, "unknown");
            this.writeln(String.valueOf(key) + "=" + value);
            key = "java.fullversion";
            value = System.getProperty(key);
            if (value == null) {
                key = "java.version";
                value = System.getProperty(key);
                this.writeln(String.valueOf(key) + "=" + value);
                key = "java.vendor";
                value = System.getProperty(key);
                this.writeln(String.valueOf(key) + "=" + value);
            } else {
                this.writeln(String.valueOf(key) + "=" + value);
            }
        }
        catch (Exception exception) {}
        this.write("BootLoader constants: OS=" + EclipseEnvironmentInfo.getDefault().getOS());
        this.write(", ARCH=" + EclipseEnvironmentInfo.getDefault().getOSArch());
        this.write(", WS=" + EclipseEnvironmentInfo.getDefault().getWS());
        this.writeln(", NL=" + EclipseEnvironmentInfo.getDefault().getNL());
        this.writeArgs("Framework arguments: ", EclipseEnvironmentInfo.getDefault().getNonFrameworkArgs());
        this.writeArgs("Command-line arguments: ", EclipseEnvironmentInfo.getDefault().getCommandLineArgs());
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

    private void openFile() {
        if (this.writer == null) {
            if (this.outFile != null) {
                try {
                    this.writer = this.logForStream(secureAction.getFileOutputStream(this.outFile, true));
                }
                catch (IOException iOException) {
                    this.writer = this.logForStream(System.err);
                }
            } else {
                this.writer = this.logForStream(System.err);
            }
        }
    }

    private void closeFile() {
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

    private synchronized void log(FrameworkLogEntry logEntry) {
        if (logEntry == null) {
            return;
        }
        if (!this.isLoggable(logEntry.getSeverity())) {
            return;
        }
        try {
            try {
                this.checkLogFileSize();
                this.openFile();
                if (this.newSession) {
                    this.writeSession();
                    this.newSession = false;
                }
                this.writeLog(0, logEntry);
                this.writer.flush();
            }
            catch (Exception e) {
                System.err.println("An exception occurred while writing to the platform log:");
                e.printStackTrace(System.err);
                System.err.println("Logging to the console instead.");
                try {
                    this.writer = this.logForStream(System.err);
                    this.writeLog(0, logEntry);
                    this.writer.flush();
                }
                catch (Exception e2) {
                    System.err.println("An exception occurred while logging to the console:");
                    e2.printStackTrace(System.err);
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
        FrameworkProperties.setProperty("osgi.logfile", newFile == null ? "" : newFile.getAbsolutePath());
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
                        fileIn = new InputStreamReader((InputStream)secureAction.getFileInputStream(oldOutFile), "UTF-8");
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

    private String getDate(Date date) {
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

    private String getStackTrace(Throwable t) {
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

    private Writer logForStream(OutputStream output) {
        try {
            return new BufferedWriter(new OutputStreamWriter(output, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return new BufferedWriter(new OutputStreamWriter(output));
        }
    }

    private void writeLog(int depth, FrameworkLogEntry entry) throws IOException {
        this.writeEntry(depth, entry);
        this.writeMessage(entry);
        this.writeStack(entry);
        FrameworkLogEntry[] children = entry.getChildren();
        if (children != null) {
            int i = 0;
            while (i < children.length) {
                this.writeLog(depth + 1, children[i]);
                ++i;
            }
        }
    }

    private void writeEntry(int depth, FrameworkLogEntry entry) throws IOException {
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

    private void writeMessage(FrameworkLogEntry entry) throws IOException {
        this.write(MESSAGE);
        this.writeSpace();
        this.writeln(entry.getMessage());
    }

    private void writeStack(FrameworkLogEntry entry) throws IOException {
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

    private void write(String message) throws IOException {
        if (message != null) {
            this.writer.write(message);
            if (this.consoleLog) {
                System.out.print(message);
            }
        }
    }

    private void writeln(String s) throws IOException {
        this.write(s);
        this.writeln();
    }

    private void writeln() throws IOException {
        this.write(LINE_SEPARATOR);
    }

    private void writeSpace() throws IOException {
        this.write(" ");
    }

    private boolean checkLogFileSize() {
        if (this.maxLogSize == 0) {
            return true;
        }
        boolean isBackupOK = true;
        if (this.outFile != null && secureAction.length(this.outFile) >> 10 > (long)this.maxLogSize) {
            boolean isRenameOK;
            String logFilename = this.outFile.getAbsolutePath();
            String backupFilename = "";
            backupFilename = logFilename.toLowerCase().endsWith(LOG_EXT) ? String.valueOf(logFilename.substring(0, logFilename.length() - LOG_EXT.length())) + BACKUP_MARK + this.backupIdx + LOG_EXT : String.valueOf(logFilename) + BACKUP_MARK + this.backupIdx;
            File backupFile = new File(backupFilename);
            if (backupFile.exists() && !backupFile.delete()) {
                System.err.println("Error when trying to delete old log file: " + backupFile.getName());
                if (backupFile.renameTo(new File(String.valueOf(backupFile.getAbsolutePath()) + System.currentTimeMillis()))) {
                    System.err.println("So we rename it to filename: " + backupFile.getName());
                } else {
                    System.err.println("And we also cannot rename it!");
                    isBackupOK = false;
                }
            }
            if (!(isRenameOK = this.outFile.renameTo(backupFile))) {
                System.err.println("Error when trying to rename log file to backup one.");
                isBackupOK = false;
            }
            File newFile = new File(logFilename);
            this.setOutput(newFile, null, false);
            this.openFile();
            try {
                this.writeSession();
                this.writeln();
                this.writeln("This is a continuation of log file " + backupFile.getAbsolutePath());
                this.writeln("Created Time: " + this.getDate(new Date(System.currentTimeMillis())));
                this.writer.flush();
            }
            catch (IOException ioe) {
                ioe.printStackTrace(System.err);
            }
            this.closeFile();
            ++this.backupIdx;
            this.backupIdx %= this.maxLogFiles;
        }
        return isBackupOK;
    }

    private void readLogProperties() {
        String newLogLevel;
        String newMaxLogFiles;
        String newMaxLogSize = secureAction.getProperty(PROP_LOG_SIZE_MAX);
        if (newMaxLogSize != null) {
            this.maxLogSize = Integer.parseInt(newMaxLogSize);
            if (this.maxLogSize != 0 && this.maxLogSize < 10) {
                this.maxLogSize = 10;
            }
        }
        if ((newMaxLogFiles = secureAction.getProperty(PROP_LOG_FILE_MAX)) != null) {
            this.maxLogFiles = Integer.parseInt(newMaxLogFiles);
            if (this.maxLogFiles < 1) {
                this.maxLogFiles = 10;
            }
        }
        if ((newLogLevel = secureAction.getProperty(PROP_LOG_LEVEL)) != null) {
            this.logLevel = newLogLevel.equals("ERROR") ? 4 : (newLogLevel.equals("WARNING") ? 6 : (newLogLevel.equals("INFO") ? 15 : 0));
        }
    }

    private boolean isLoggable(int fwkEntrySeverity) {
        if (this.logLevel == 0) {
            return true;
        }
        return (fwkEntrySeverity & this.logLevel) != 0;
    }

    public boolean isLoggable(Bundle bundle, String loggableName, int loggableLevel) {
        if (!this.enabled) {
            return false;
        }
        if (this.loggerName.equals(loggableName)) {
            return this.isLoggable(EclipseLogWriter.convertSeverity(loggableLevel));
        }
        if ("org.eclipse.performance.logger".equals(loggableName)) {
            return false;
        }
        if (!"org.eclipse.equinox.logger".equals(this.loggerName)) {
            return false;
        }
        return loggableLevel == 1;
    }

    public void logged(LogEntry entry) {
        if (!(entry instanceof ExtendedLogEntry)) {
            return;
        }
        ExtendedLogEntry extended = (ExtendedLogEntry)entry;
        Object context = extended.getContext();
        if (context instanceof FrameworkLogEntry) {
            this.log((FrameworkLogEntry)context);
            return;
        }
        this.log(new FrameworkLogEntry(EclipseLogWriter.getFwkEntryTag(entry), EclipseLogWriter.convertSeverity(entry.getLevel()), 0, entry.getMessage(), 0, entry.getException(), null));
    }

    private static String getFwkEntryTag(LogEntry entry) {
        Bundle b = entry.getBundle();
        if (b != null && b.getSymbolicName() != null) {
            return b.getSymbolicName();
        }
        return "unknown";
    }

    private static int convertSeverity(int entryLevel) {
        switch (entryLevel) {
            case 1: {
                return 4;
            }
            case 2: {
                return 2;
            }
            case 3: {
                return 1;
            }
            case 4: {
                return 0;
            }
        }
        return 32;
    }

    public String getLoggerName() {
        return this.loggerName;
    }
}

