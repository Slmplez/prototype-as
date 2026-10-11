/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.framework;

public class InvalidSyntaxException
extends Exception {
    static final long serialVersionUID = -4295194420816491875L;
    private final String filter;

    public InvalidSyntaxException(String msg, String filter) {
        super(msg);
        this.filter = filter;
    }

    public InvalidSyntaxException(String msg, String filter, Throwable cause) {
        super(msg, cause);
        this.filter = filter;
    }

    public String getFilter() {
        return this.filter;
    }

    public Throwable getCause() {
        return super.getCause();
    }

    public Throwable initCause(Throwable cause) {
        return super.initCause(cause);
    }
}

