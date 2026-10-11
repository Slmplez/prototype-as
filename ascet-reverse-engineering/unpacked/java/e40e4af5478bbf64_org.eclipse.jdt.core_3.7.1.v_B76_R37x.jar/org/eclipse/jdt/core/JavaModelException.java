/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.jdt.core;

import java.io.PrintStream;
import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jdt.core.IJavaModelStatus;
import org.eclipse.jdt.internal.core.JavaModelStatus;

public class JavaModelException
extends CoreException {
    private static final long serialVersionUID = -760398656505871287L;
    CoreException nestedCoreException;

    public JavaModelException(Throwable e, int code) {
        this(new JavaModelStatus(code, e));
    }

    public JavaModelException(CoreException exception) {
        super(exception.getStatus());
        this.nestedCoreException = exception;
    }

    public JavaModelException(IJavaModelStatus status) {
        super((IStatus)status);
    }

    public Throwable getException() {
        if (this.nestedCoreException == null) {
            return this.getStatus().getException();
        }
        return this.nestedCoreException;
    }

    public IJavaModelStatus getJavaModelStatus() {
        IStatus status = this.getStatus();
        if (status instanceof IJavaModelStatus) {
            return (IJavaModelStatus)status;
        }
        return new JavaModelStatus(this.nestedCoreException);
    }

    public boolean isDoesNotExist() {
        IJavaModelStatus javaModelStatus = this.getJavaModelStatus();
        return javaModelStatus != null && javaModelStatus.isDoesNotExist();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void printStackTrace(PrintStream output) {
        PrintStream printStream = output;
        synchronized (printStream) {
            super.printStackTrace(output);
            Throwable throwable = this.getException();
            if (throwable != null) {
                output.print("Caused by: ");
                throwable.printStackTrace(output);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void printStackTrace(PrintWriter output) {
        PrintWriter printWriter = output;
        synchronized (printWriter) {
            super.printStackTrace(output);
            Throwable throwable = this.getException();
            if (throwable != null) {
                output.print("Caused by: ");
                throwable.printStackTrace(output);
            }
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append("Java Model Exception: ");
        if (this.getException() != null) {
            if (this.getException() instanceof CoreException) {
                CoreException c = (CoreException)this.getException();
                buffer.append("Core Exception [code ");
                buffer.append(c.getStatus().getCode());
                buffer.append("] ");
                buffer.append(c.getStatus().getMessage());
            } else {
                buffer.append(this.getException().toString());
            }
        } else {
            buffer.append(this.getStatus().toString());
        }
        return buffer.toString();
    }
}

