/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.debug;

public class FrameworkDebugTraceEntry {
    public static final String DEFAULT_OPTION_PATH = "/debug";
    private final String threadName = Thread.currentThread().getName();
    private final long timestamp;
    private final String optionPath;
    private final String bundleSymbolicName;
    private final String className;
    private final String methodName;
    private final int lineNumber;
    private String message;
    private final Throwable throwable;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public FrameworkDebugTraceEntry(String bundleSymbolicName, String optionPath, String message, String traceClass) {
        this(bundleSymbolicName, optionPath, message, null, traceClass);
    }

    public FrameworkDebugTraceEntry(String bundleSymbolicName, String optionPath, String message, Throwable error, String traceClass) {
        this.optionPath = optionPath == null ? DEFAULT_OPTION_PATH : optionPath;
        this.timestamp = System.currentTimeMillis();
        this.bundleSymbolicName = bundleSymbolicName;
        this.message = message;
        this.throwable = error;
        String determineClassName = null;
        String determineMethodName = null;
        int determineLineNumber = 0;
        StackTraceElement[] stackElements = new Exception().getStackTrace();
        int i = 0;
        while (i < stackElements.length) {
            String fullClassName = stackElements[i].getClassName();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = Class.forName("java.lang.Thread");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (!fullClassName.equals(clazz.getName())) {
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = Class.forName("org.eclipse.osgi.framework.debug.FrameworkDebugTraceEntry");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (!fullClassName.equals(clazz2.getName())) {
                    Class<?> clazz3 = class$2;
                    if (clazz3 == null) {
                        try {
                            clazz3 = Class.forName("org.eclipse.osgi.framework.debug.EclipseDebugTrace");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if (!(fullClassName.equals(clazz3.getName()) || traceClass != null && fullClassName.equals(traceClass))) {
                        determineClassName = stackElements[i].getClassName();
                        determineMethodName = stackElements[i].getMethodName();
                        determineLineNumber = stackElements[i].getLineNumber();
                        break;
                    }
                }
            }
            ++i;
        }
        this.className = determineClassName;
        this.methodName = determineMethodName;
        this.lineNumber = determineLineNumber;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(this.threadName);
        buffer.append(" ");
        buffer.append(this.timestamp);
        buffer.append(" ");
        buffer.append(this.bundleSymbolicName);
        buffer.append(" ");
        buffer.append(this.optionPath);
        buffer.append(" ");
        buffer.append(this.className);
        buffer.append(" ");
        buffer.append(this.methodName);
        buffer.append(" ");
        buffer.append(this.lineNumber);
        if (this.message != null) {
            buffer.append(": ");
            buffer.append(this.message);
        }
        if (this.throwable != null) {
            buffer.append(this.throwable);
        }
        return buffer.toString();
    }

    public final String getThreadName() {
        return this.threadName;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public final String getBundleSymbolicName() {
        return this.bundleSymbolicName;
    }

    public final String getMessage() {
        return this.message;
    }

    public final Throwable getThrowable() {
        return this.throwable;
    }

    public final String getClassName() {
        return this.className;
    }

    public final String getMethodName() {
        return this.methodName;
    }

    public final String getOptionPath() {
        return this.optionPath;
    }

    public final int getLineNumber() {
        return this.lineNumber;
    }

    void setMessage(String newMessage) {
        this.message = newMessage;
    }
}

