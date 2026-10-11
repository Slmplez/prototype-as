/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt;

import org.eclipse.swt.SWT;
import org.eclipse.swt.internal.Library;

public class SWTError
extends Error {
    public int code;
    public Throwable throwable;
    static final long serialVersionUID = 3833467327105808433L;

    public SWTError() {
        this(1);
    }

    public SWTError(String message) {
        this(1, message);
    }

    public SWTError(int code) {
        this(code, SWT.findErrorText(code));
    }

    public SWTError(int code, String message) {
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
            System.err.println("*** Stack trace of contained error ***");
            this.throwable.printStackTrace();
        }
    }
}

