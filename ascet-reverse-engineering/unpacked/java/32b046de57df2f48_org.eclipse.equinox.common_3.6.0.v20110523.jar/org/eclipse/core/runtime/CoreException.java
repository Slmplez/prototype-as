/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.runtime;

import java.io.PrintStream;
import java.io.PrintWriter;
import org.eclipse.core.internal.runtime.PrintStackUtil;
import org.eclipse.core.runtime.IStatus;

public class CoreException
extends Exception {
    private static final long serialVersionUID = 1L;
    private final IStatus status;

    public CoreException(IStatus status) {
        super(status.getMessage());
        this.status = status;
    }

    public Throwable getCause() {
        return this.status.getException();
    }

    public final IStatus getStatus() {
        return this.status;
    }

    public void printStackTrace() {
        this.printStackTrace(System.err);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void printStackTrace(PrintStream output) {
        PrintStream printStream = output;
        synchronized (printStream) {
            super.printStackTrace(output);
            PrintStackUtil.printChildren(this.status, output);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void printStackTrace(PrintWriter output) {
        PrintWriter printWriter = output;
        synchronized (printWriter) {
            super.printStackTrace(output);
            PrintStackUtil.printChildren(this.status, output);
        }
    }
}

