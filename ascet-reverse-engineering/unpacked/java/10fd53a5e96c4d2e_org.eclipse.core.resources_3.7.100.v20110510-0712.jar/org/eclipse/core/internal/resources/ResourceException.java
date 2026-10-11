/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 */
package org.eclipse.core.internal.resources;

import java.io.PrintStream;
import java.io.PrintWriter;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.resources.IResourceStatus;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;

public class ResourceException
extends CoreException {
    private static final long serialVersionUID = 1L;

    public ResourceException(int code, IPath path, String message, Throwable exception) {
        super((IStatus)new ResourceStatus(code, path, message, exception));
    }

    public ResourceException(IStatus status) {
        super(status);
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
            IStatus status = this.getStatus();
            if (status.getException() != null) {
                String path = "()";
                if (status instanceof IResourceStatus) {
                    path = "(" + ((IResourceStatus)status).getPath() + ")";
                }
                output.print(String.valueOf(((Object)((Object)this)).getClass().getName()) + path + "[" + status.getCode() + "]: ");
                status.getException().printStackTrace(output);
            } else {
                super.printStackTrace(output);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void printStackTrace(PrintWriter output) {
        PrintWriter printWriter = output;
        synchronized (printWriter) {
            IStatus status = this.getStatus();
            if (status.getException() != null) {
                String path = "()";
                if (status instanceof IResourceStatus) {
                    path = "(" + ((IResourceStatus)status).getPath() + ")";
                }
                output.print(String.valueOf(((Object)((Object)this)).getClass().getName()) + path + "[" + status.getCode() + "]: ");
                status.getException().printStackTrace(output);
            } else {
                super.printStackTrace(output);
            }
        }
    }
}

