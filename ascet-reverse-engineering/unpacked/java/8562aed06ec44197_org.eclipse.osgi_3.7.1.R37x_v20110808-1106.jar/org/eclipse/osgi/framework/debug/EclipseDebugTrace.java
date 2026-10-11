/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.debug;

import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.security.AccessController;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.debug.FrameworkDebugTraceEntry;
import org.eclipse.osgi.framework.util.SecureAction;
import org.eclipse.osgi.service.debug.DebugTrace;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
class EclipseDebugTrace
implements DebugTrace {
    private static final String PROP_TRACE_SIZE_MAX = "eclipse.trace.size.max";
    private static final String PROP_TRACE_FILE_MAX = "eclipse.trace.backup.max";
    private static final String MESSAGE_THREAD_DUMP = "Thread Stack dump: ";
    private static final String MESSAGE_EXIT_METHOD_WITH_RESULTS = "Exiting method {0}with result: ";
    private static final String MESSAGE_EXIT_METHOD_NO_RESULTS = "Exiting method {0}with a void return";
    private static final String MESSAGE_ENTER_METHOD_WITH_PARAMS = "Entering method {0}with parameters: (";
    private static final String MESSAGE_ENTER_METHOD_NO_PARAMS = "Entering method {0}with no parameters";
    private static final String TRACE_FILE_VERSION_COMMENT = "version: ";
    private static final String TRACE_FILE_VERBOSE_COMMENT = "verbose: ";
    private static final String TRACE_FILE_VERSION = "1.1";
    private static final String TRACE_NEW_SESSION = "!SESSION ";
    private static final String TRACE_FILE_DATE = "Time of creation: ";
    private static final SimpleDateFormat TRACE_FILE_DATE_FORMATTER = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
    private static final String TRACE_COMMENT = "#";
    private static final String TRACE_ELEMENT_DELIMITER = "|";
    private static final String TRACE_ELEMENT_DELIMITER_ENCODED = "&#124;";
    private static final String LINE_SEPARATOR;
    private static final String NULL_VALUE = "<null>";
    private static final SecureAction secureAction;
    private static final Object writeLock;
    private static final int DEFAULT_TRACE_FILE_SIZE = 1000;
    private static final int DEFAULT_TRACE_FILES = 10;
    private static final int DEFAULT_TRACE_FILE_MIN_SIZE = 10;
    private static final String TRACE_FILE_EXTENSION = ".trace";
    private static final String BACKUP_MARK = ".bak_";
    private int maxTraceFileSize = 1000;
    private int maxTraceFiles = 10;
    private int backupTraceFileIndex = 0;
    private String traceClass = null;
    private String bundleSymbolicName = null;
    static boolean newSession;
    private FrameworkDebugOptions debugOptions = null;

    static {
        String s = System.getProperty("line.separator");
        LINE_SEPARATOR = s == null ? "\n" : s;
        secureAction = AccessController.doPrivileged(SecureAction.createSecureAction());
        writeLock = new Object();
        newSession = true;
    }

    EclipseDebugTrace(String bundleSymbolicName, FrameworkDebugOptions debugOptions) {
        this(bundleSymbolicName, debugOptions, null);
    }

    EclipseDebugTrace(String bundleSymbolicName, FrameworkDebugOptions debugOptions, Class<?> traceClass) {
        this.traceClass = traceClass != null ? traceClass.getName() : null;
        this.debugOptions = debugOptions;
        this.bundleSymbolicName = bundleSymbolicName;
        this.readLogProperties();
    }

    private final boolean isDebuggingEnabled(String optionPath) {
        if (optionPath == null) {
            return true;
        }
        boolean debugEnabled = false;
        if (this.debugOptions.isDebugEnabled()) {
            String option = new StringBuffer(String.valueOf(this.bundleSymbolicName)).append(optionPath).toString();
            debugEnabled = this.debugOptions.getBooleanOption(option, false);
        }
        return debugEnabled;
    }

    @Override
    public void trace(String optionPath, String message) {
        if (this.isDebuggingEnabled(optionPath)) {
            FrameworkDebugTraceEntry record = new FrameworkDebugTraceEntry(this.bundleSymbolicName, optionPath, message, this.traceClass);
            this.writeRecord(record);
        }
    }

    @Override
    public void trace(String optionPath, String message, Throwable error) {
        if (this.isDebuggingEnabled(optionPath)) {
            FrameworkDebugTraceEntry record = new FrameworkDebugTraceEntry(this.bundleSymbolicName, optionPath, message, error, this.traceClass);
            this.writeRecord(record);
        }
    }

    @Override
    public void traceEntry(String optionPath) {
        if (this.isDebuggingEnabled(optionPath)) {
            FrameworkDebugTraceEntry record = new FrameworkDebugTraceEntry(this.bundleSymbolicName, optionPath, null, this.traceClass);
            this.setMessage(record, MESSAGE_ENTER_METHOD_NO_PARAMS);
            this.writeRecord(record);
        }
    }

    @Override
    public void traceEntry(String optionPath, Object methodArgument) {
        if (this.isDebuggingEnabled(optionPath)) {
            this.traceEntry(optionPath, new Object[]{methodArgument});
        }
    }

    @Override
    public void traceEntry(String optionPath, Object[] methodArguments) {
        if (this.isDebuggingEnabled(optionPath)) {
            StringBuffer messageBuffer = new StringBuffer(MESSAGE_ENTER_METHOD_WITH_PARAMS);
            if (methodArguments != null) {
                int i = 0;
                while (i < methodArguments.length) {
                    if (methodArguments[i] != null) {
                        messageBuffer.append(methodArguments[i].toString());
                    } else {
                        messageBuffer.append(NULL_VALUE);
                    }
                    if (++i >= methodArguments.length) continue;
                    messageBuffer.append(" ");
                }
                messageBuffer.append(")");
            }
            FrameworkDebugTraceEntry record = new FrameworkDebugTraceEntry(this.bundleSymbolicName, optionPath, null, this.traceClass);
            this.setMessage(record, messageBuffer.toString());
            this.writeRecord(record);
        }
    }

    @Override
    public void traceExit(String optionPath) {
        if (this.isDebuggingEnabled(optionPath)) {
            FrameworkDebugTraceEntry record = new FrameworkDebugTraceEntry(this.bundleSymbolicName, optionPath, null, this.traceClass);
            this.setMessage(record, MESSAGE_EXIT_METHOD_NO_RESULTS);
            this.writeRecord(record);
        }
    }

    @Override
    public void traceExit(String optionPath, Object result) {
        if (this.isDebuggingEnabled(optionPath)) {
            StringBuffer messageBuffer = new StringBuffer(MESSAGE_EXIT_METHOD_WITH_RESULTS);
            if (result == null) {
                messageBuffer.append(NULL_VALUE);
            } else {
                messageBuffer.append(result.toString());
            }
            FrameworkDebugTraceEntry record = new FrameworkDebugTraceEntry(this.bundleSymbolicName, optionPath, null, this.traceClass);
            this.setMessage(record, messageBuffer.toString());
            this.writeRecord(record);
        }
    }

    @Override
    public void traceDumpStack(String optionPath) {
        if (this.isDebuggingEnabled(optionPath)) {
            StringBuffer messageBuffer = new StringBuffer(MESSAGE_THREAD_DUMP);
            StackTraceElement[] elements = new Exception().getStackTrace();
            int firstIndex = this.traceClass == null ? 1 : 2;
            int endIndex = elements.length - firstIndex;
            StackTraceElement[] newElements = new StackTraceElement[endIndex];
            int i = 0;
            while (i < endIndex) {
                newElements[i] = elements[firstIndex];
                ++i;
                ++firstIndex;
            }
            messageBuffer.append(this.convertStackTraceElementsToString(newElements));
            FrameworkDebugTraceEntry record = new FrameworkDebugTraceEntry(this.bundleSymbolicName, optionPath, messageBuffer.toString(), this.traceClass);
            this.writeRecord(record);
        }
    }

    private final void setMessage(FrameworkDebugTraceEntry record, String originalMessage) {
        String argument = null;
        if (!this.debugOptions.isVerbose()) {
            StringBuffer classMethodName = new StringBuffer(record.getClassName());
            classMethodName.append(TRACE_COMMENT);
            classMethodName.append(record.getMethodName());
            classMethodName.append(" ");
            argument = classMethodName.toString();
        } else {
            argument = "";
        }
        String newMessage = MessageFormat.format(originalMessage, argument);
        record.setMessage(newMessage);
    }

    private final String convertStackTraceElementsToString(StackTraceElement[] elements) {
        StringBuffer buffer = new StringBuffer();
        if (elements != null) {
            buffer.append("java.lang.Throwable: ");
            buffer.append(LINE_SEPARATOR);
            int i = 0;
            while (i < elements.length) {
                if (elements[i] != null) {
                    buffer.append("\tat ");
                    buffer.append(elements[i].toString());
                    buffer.append(LINE_SEPARATOR);
                }
                ++i;
            }
        }
        return buffer.toString();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void writeRecord(FrameworkDebugTraceEntry entry) {
        if (entry != null) {
            Object object = writeLock;
            synchronized (object) {
                block13: {
                    File tracingFile = this.debugOptions.getFile();
                    Writer traceWriter = null;
                    try {
                        try {
                            this.checkTraceFileSize(tracingFile, entry.getTimestamp());
                            traceWriter = this.openWriter(tracingFile);
                            if (newSession) {
                                this.writeSession(traceWriter, entry.getTimestamp());
                                newSession = false;
                            }
                            this.writeMessage(traceWriter, entry);
                            traceWriter.flush();
                        }
                        catch (Exception ex) {
                            System.err.println("An exception occurred while writing to the platform trace file: ");
                            ex.printStackTrace(System.err);
                            if (tracingFile != null) {
                                this.closeWriter(traceWriter);
                            }
                            break block13;
                        }
                    }
                    catch (Throwable throwable) {
                        if (tracingFile != null) {
                            this.closeWriter(traceWriter);
                        }
                        throw throwable;
                    }
                    if (tracingFile != null) {
                        this.closeWriter(traceWriter);
                    }
                }
            }
        }
    }

    private void readLogProperties() {
        String newMaxLogFiles;
        String newMaxTraceFileSize = secureAction.getProperty(PROP_TRACE_SIZE_MAX);
        if (newMaxTraceFileSize != null) {
            this.maxTraceFileSize = Integer.parseInt(newMaxTraceFileSize);
            if (this.maxTraceFileSize != 0 && this.maxTraceFileSize < 10) {
                this.maxTraceFileSize = 10;
            }
        }
        if ((newMaxLogFiles = secureAction.getProperty(PROP_TRACE_FILE_MAX)) != null) {
            this.maxTraceFiles = Integer.parseInt(newMaxLogFiles);
            if (this.maxTraceFiles < 1) {
                this.maxTraceFiles = 10;
            }
        }
    }

    private boolean checkTraceFileSize(File traceFile, long timestamp) {
        boolean isBackupOK = true;
        if (this.maxTraceFileSize > 0 && traceFile != null && traceFile.exists() && traceFile.length() >> 10 > (long)this.maxTraceFileSize) {
            block13: {
                boolean isRenameOK;
                String traceFileName = traceFile.getAbsolutePath();
                String backupFilename = "";
                backupFilename = traceFileName.toLowerCase().endsWith(TRACE_FILE_EXTENSION) ? new StringBuffer(String.valueOf(traceFileName.substring(0, traceFileName.length() - TRACE_FILE_EXTENSION.length()))).append(BACKUP_MARK).append(this.backupTraceFileIndex).append(TRACE_FILE_EXTENSION).toString() : new StringBuffer(String.valueOf(traceFileName)).append(BACKUP_MARK).append(this.backupTraceFileIndex).toString();
                File backupFile = new File(backupFilename);
                if (backupFile.exists() && !backupFile.delete()) {
                    System.err.println(new StringBuffer("Error when trying to delete old trace file: ").append(backupFile.getName()).toString());
                    if (backupFile.renameTo(new File(new StringBuffer(String.valueOf(backupFile.getAbsolutePath())).append(System.currentTimeMillis()).toString()))) {
                        System.err.println(new StringBuffer("So we rename it to filename: ").append(backupFile.getName()).toString());
                    } else {
                        System.err.println("And we also cannot rename it!");
                        isBackupOK = false;
                    }
                }
                if (!(isRenameOK = traceFile.renameTo(backupFile))) {
                    System.err.println("Error when trying to rename trace file to backup one.");
                    isBackupOK = false;
                }
                Writer traceWriter = null;
                try {
                    try {
                        traceWriter = this.openWriter(traceFile);
                        this.writeComment(traceWriter, new StringBuffer("This is a continuation of trace file ").append(backupFile.getAbsolutePath()).toString());
                        this.writeComment(traceWriter, "version: 1.1");
                        this.writeComment(traceWriter, new StringBuffer(TRACE_FILE_VERBOSE_COMMENT).append(this.debugOptions.isVerbose()).toString());
                        this.writeComment(traceWriter, new StringBuffer(TRACE_FILE_DATE).append(this.getFormattedDate(timestamp)).toString());
                        traceWriter.flush();
                    }
                    catch (IOException ioEx) {
                        ioEx.printStackTrace();
                        if (traceFile != null) {
                            this.closeWriter(traceWriter);
                        }
                        break block13;
                    }
                }
                catch (Throwable throwable) {
                    if (traceFile != null) {
                        this.closeWriter(traceWriter);
                    }
                    throw throwable;
                }
                if (traceFile != null) {
                    this.closeWriter(traceWriter);
                }
            }
            ++this.backupTraceFileIndex;
            this.backupTraceFileIndex %= this.maxTraceFiles;
        }
        return isBackupOK;
    }

    private void writeComment(Writer traceWriter, String comment) throws IOException {
        StringBuffer commentText = new StringBuffer(TRACE_COMMENT);
        commentText.append(" ");
        commentText.append(comment);
        commentText.append(LINE_SEPARATOR);
        traceWriter.write(commentText.toString());
    }

    private final String getFormattedDate(long timestamp) {
        return TRACE_FILE_DATE_FORMATTER.format(new Date(timestamp));
    }

    private final String getFormattedThrowable(Throwable error) {
        String result = null;
        if (error != null) {
            PrintStream throwableStream = null;
            try {
                ByteArrayOutputStream throwableByteOutputStream = new ByteArrayOutputStream();
                throwableStream = new PrintStream(throwableByteOutputStream, false);
                error.printStackTrace(throwableStream);
                result = EclipseDebugTrace.encodeText(throwableByteOutputStream.toString());
            }
            finally {
                if (throwableStream != null) {
                    throwableStream.close();
                }
            }
        }
        return result;
    }

    private void writeSession(Writer traceWriter, long timestamp) throws IOException {
        this.writeComment(traceWriter, new StringBuffer(TRACE_NEW_SESSION).append(this.getFormattedDate(timestamp)).toString());
        this.writeComment(traceWriter, "version: 1.1");
        this.writeComment(traceWriter, new StringBuffer(TRACE_FILE_VERBOSE_COMMENT).append(this.debugOptions.isVerbose()).toString());
        this.writeComment(traceWriter, "The following option strings are specified for this debug session:");
        String[] allOptions = FrameworkDebugOptions.getDefault().getAllOptions();
        int i = 0;
        while (i < allOptions.length) {
            this.writeComment(traceWriter, new StringBuffer("\t").append(allOptions[i]).toString());
            ++i;
        }
    }

    private void writeMessage(Writer traceWriter, FrameworkDebugTraceEntry entry) throws IOException {
        StringBuffer message = new StringBuffer(TRACE_ELEMENT_DELIMITER);
        message.append(" ");
        message.append(EclipseDebugTrace.encodeText(entry.getThreadName()));
        message.append(" ");
        message.append(TRACE_ELEMENT_DELIMITER);
        message.append(" ");
        message.append(this.getFormattedDate(entry.getTimestamp()));
        message.append(" ");
        message.append(TRACE_ELEMENT_DELIMITER);
        message.append(" ");
        if (!this.debugOptions.isVerbose()) {
            message.append(EclipseDebugTrace.encodeText(entry.getMessage()));
        } else {
            message.append(entry.getBundleSymbolicName());
            message.append(" ");
            message.append(TRACE_ELEMENT_DELIMITER);
            message.append(" ");
            message.append(EclipseDebugTrace.encodeText(entry.getOptionPath()));
            message.append(" ");
            message.append(TRACE_ELEMENT_DELIMITER);
            message.append(" ");
            message.append(entry.getClassName());
            message.append(" ");
            message.append(TRACE_ELEMENT_DELIMITER);
            message.append(" ");
            message.append(entry.getMethodName());
            message.append(" ");
            message.append(TRACE_ELEMENT_DELIMITER);
            message.append(" ");
            message.append(entry.getLineNumber());
            message.append(" ");
            message.append(TRACE_ELEMENT_DELIMITER);
            message.append(" ");
            message.append(EclipseDebugTrace.encodeText(entry.getMessage()));
        }
        if (entry.getThrowable() != null) {
            message.append(" ");
            message.append(TRACE_ELEMENT_DELIMITER);
            message.append(" ");
            message.append(this.getFormattedThrowable(entry.getThrowable()));
        }
        message.append(" ");
        message.append(TRACE_ELEMENT_DELIMITER);
        message.append(LINE_SEPARATOR);
        if (traceWriter != null && message != null) {
            traceWriter.write(message.toString());
        }
    }

    private static String encodeText(String inputString) {
        if (inputString == null || inputString.indexOf(TRACE_ELEMENT_DELIMITER) < 0) {
            return inputString;
        }
        StringBuffer tempBuffer = new StringBuffer(inputString);
        int currentIndex = tempBuffer.indexOf(TRACE_ELEMENT_DELIMITER);
        while (currentIndex >= 0) {
            tempBuffer.replace(currentIndex, currentIndex + TRACE_ELEMENT_DELIMITER.length(), TRACE_ELEMENT_DELIMITER_ENCODED);
            currentIndex = tempBuffer.indexOf(TRACE_ELEMENT_DELIMITER);
        }
        return tempBuffer.toString();
    }

    private Writer logForStream(OutputStream output) {
        try {
            return new BufferedWriter(new OutputStreamWriter(output, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedEncodingException) {
            return new BufferedWriter(new OutputStreamWriter(output));
        }
    }

    private Writer openWriter(File traceFile) {
        Writer traceWriter = null;
        if (traceFile != null) {
            try {
                traceWriter = this.logForStream(secureAction.getFileOutputStream(traceFile, true));
            }
            catch (IOException iOException) {
                traceWriter = this.logForStream(System.out);
            }
        } else {
            traceWriter = this.logForStream(System.out);
        }
        return traceWriter;
    }

    private void closeWriter(Writer traceWriter) {
        if (traceWriter != null) {
            try {
                traceWriter.close();
            }
            catch (IOException ioEx) {
                ioEx.printStackTrace();
            }
            traceWriter = null;
        }
    }
}

