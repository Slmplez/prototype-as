/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.runtime.RuntimeLog
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.core.internal.filesystem;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import org.eclipse.core.internal.runtime.RuntimeLog;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;

public class Policy {
    public static boolean DEBUG = false;
    public static final String PI_FILE_SYSTEM = "org.eclipse.core.filesystem";

    public static void checkCanceled(IProgressMonitor monitor) {
        if (monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }

    public static void debug(String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append("] ");
        buffer.append(message);
        System.out.println(buffer.toString());
    }

    public static void error(int code, String message) throws CoreException {
        Policy.error(code, message, null);
    }

    public static void error(int code, String message, Throwable exception) throws CoreException {
        int severity = code == 0 ? 0 : 1 << code % 100 / 33;
        throw new CoreException((IStatus)new Status(severity, PI_FILE_SYSTEM, code, message, exception));
    }

    public static void log(int severity, String message, Throwable t) {
        if (message == null) {
            message = "";
        }
        RuntimeLog.log((IStatus)new Status(severity, PI_FILE_SYSTEM, 1, message, t));
    }

    public static IProgressMonitor monitorFor(IProgressMonitor monitor) {
        return monitor == null ? new NullProgressMonitor() : monitor;
    }

    public static void safeClose(InputStream in) {
        try {
            if (in != null) {
                in.close();
            }
        }
        catch (IOException iOException) {}
    }

    public static void safeClose(OutputStream out) {
        try {
            if (out != null) {
                out.close();
            }
        }
        catch (IOException iOException) {}
    }

    public static IProgressMonitor subMonitorFor(IProgressMonitor monitor, int ticks) {
        if (monitor == null) {
            return new NullProgressMonitor();
        }
        if (monitor instanceof NullProgressMonitor) {
            return monitor;
        }
        return new SubProgressMonitor(monitor, ticks);
    }
}

