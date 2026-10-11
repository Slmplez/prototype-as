/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal;

import org.eclipse.ui.PartInitException;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.misc.StatusUtil;

public final class StartupThreading {
    static Workbench workbench;

    static void setWorkbench(Workbench wb) {
        workbench = wb;
    }

    public static void runWithWorkbenchExceptions(StartupRunnable r) throws WorkbenchException {
        workbench.getDisplay().syncExec((Runnable)r);
        Throwable throwable = r.getThrowable();
        if (throwable != null) {
            if (throwable instanceof Error) {
                throw (Error)throwable;
            }
            if (throwable instanceof RuntimeException) {
                throw (RuntimeException)throwable;
            }
            if (throwable instanceof WorkbenchException) {
                throw (WorkbenchException)((Object)throwable);
            }
            throw new WorkbenchException(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, throwable));
        }
    }

    public static void runWithPartInitExceptions(StartupRunnable r) throws PartInitException {
        workbench.getDisplay().syncExec((Runnable)r);
        Throwable throwable = r.getThrowable();
        if (throwable != null) {
            if (throwable instanceof Error) {
                throw (Error)throwable;
            }
            if (throwable instanceof RuntimeException) {
                throw (RuntimeException)throwable;
            }
            if (throwable instanceof WorkbenchException) {
                throw (PartInitException)((Object)throwable);
            }
            throw new PartInitException(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, throwable));
        }
    }

    public static void runWithThrowable(StartupRunnable r) throws Throwable {
        workbench.getDisplay().syncExec((Runnable)r);
        Throwable throwable = r.getThrowable();
        if (throwable != null) {
            throw throwable;
        }
    }

    public static void runWithoutExceptions(StartupRunnable r) throws RuntimeException {
        workbench.getDisplay().syncExec((Runnable)r);
        Throwable throwable = r.getThrowable();
        if (throwable != null) {
            if (throwable instanceof Error) {
                throw (Error)throwable;
            }
            if (throwable instanceof RuntimeException) {
                throw (RuntimeException)throwable;
            }
            throw new RuntimeException(throwable);
        }
    }

    public static abstract class StartupRunnable
    implements Runnable {
        private Throwable throwable;

        public final void run() {
            try {
                this.runWithException();
            }
            catch (Throwable t) {
                this.throwable = t;
            }
        }

        public abstract void runWithException() throws Throwable;

        public Throwable getThrowable() {
            return this.throwable;
        }
    }
}

