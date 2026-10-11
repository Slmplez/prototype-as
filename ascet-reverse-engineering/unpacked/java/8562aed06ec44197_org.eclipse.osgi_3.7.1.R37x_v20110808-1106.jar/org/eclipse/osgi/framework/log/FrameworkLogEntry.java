/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.log;

public class FrameworkLogEntry {
    public static final int OK = 0;
    public static final int INFO = 1;
    public static final int WARNING = 2;
    public static final int ERROR = 4;
    public static final int CANCEL = 8;
    private final String entry;
    private final String message;
    private final int stackCode;
    private final Throwable throwable;
    private final FrameworkLogEntry[] children;
    private final int severity;
    private final int bundleCode;
    private final Object context;

    public FrameworkLogEntry(String entry, String message, int stackCode, Throwable throwable, FrameworkLogEntry[] children) {
        this(null, entry, 0, 0, message, stackCode, throwable, children);
    }

    public FrameworkLogEntry(String entry, int severity, int bundleCode, String message, int stackCode, Throwable throwable, FrameworkLogEntry[] children) {
        this(null, entry, severity, bundleCode, message, stackCode, throwable, children);
    }

    public FrameworkLogEntry(Object context, String entry, int severity, int bundleCode, String message, int stackCode, Throwable throwable, FrameworkLogEntry[] children) {
        this.context = context;
        this.entry = entry;
        this.message = message;
        this.stackCode = stackCode;
        this.throwable = throwable;
        this.children = children;
        this.severity = severity;
        this.bundleCode = bundleCode;
    }

    public FrameworkLogEntry[] getChildren() {
        return this.children;
    }

    public String getEntry() {
        return this.entry;
    }

    public String getMessage() {
        return this.message;
    }

    public int getStackCode() {
        return this.stackCode;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public int getSeverity() {
        return this.severity;
    }

    public int getBundleCode() {
        return this.bundleCode;
    }

    public Object getContext() {
        return this.context;
    }
}

