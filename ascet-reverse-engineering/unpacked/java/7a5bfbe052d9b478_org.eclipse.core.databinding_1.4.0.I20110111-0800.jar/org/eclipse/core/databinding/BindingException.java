/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding;

import java.io.PrintStream;
import java.io.PrintWriter;

public class BindingException
extends RuntimeException {
    private static final long serialVersionUID = -4092828452936724217L;
    private Throwable cause;

    public BindingException(String message) {
        super(message);
    }

    public BindingException(String message, Throwable cause) {
        super(message);
        this.cause = cause;
    }

    public void printStackTrace(PrintStream err) {
        super.printStackTrace(err);
        if (this.cause != null) {
            err.println("caused by:");
            this.cause.printStackTrace(err);
        }
    }

    public void printStackTrace(PrintWriter err) {
        super.printStackTrace(err);
        if (this.cause != null) {
            err.println("caused by:");
            this.cause.printStackTrace(err);
        }
    }
}

