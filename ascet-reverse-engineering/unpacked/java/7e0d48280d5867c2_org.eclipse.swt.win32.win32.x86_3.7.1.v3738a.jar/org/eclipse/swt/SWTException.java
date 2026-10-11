/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Library;

public class SWTException
extends RuntimeException {
    public int code;
    public Throwable throwable;
    static final long serialVersionUID = 3257282552304842547L;

    public SWTException() {
        this(1);
    }

    public SWTException(String message) {
        this(1, message);
    }

    public SWTException(int code) {
        this(code, SWT.findErrorText(code));
    }

    public SWTException(int code, String message) {
        super(message);
        this.code = code;
    }

    public Throwable getCause() {
        return this.throwable;
    }

    public String getMessage() {
        if (this.throwable == null) {
            return super.getMessage();
        }
        return String.valueOf(super.getMessage()) + " (" + this.throwable.toString() + ")";
    }

    public void printStackTrace() {
        super.printStackTrace();
        if (Library.JAVA_VERSION < Library.JAVA_VERSION(1, 4, 0) && this.throwable != null) {
            System.err.println("*** Stack trace of contained exception ***");
            this.throwable.printStackTrace();
        }
    }
}

