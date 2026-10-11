/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jface.util;

import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.ISafeRunnableRunner;
import org.eclipse.jface.util.Policy;

public abstract class SafeRunnable
implements ISafeRunnable {
    private static boolean ignoreErrors = false;
    private static ISafeRunnableRunner runner;
    private String message;

    public SafeRunnable() {
    }

    public SafeRunnable(String message) {
        this.message = message;
    }

    public void handleException(Throwable e) {
        if (ignoreErrors) {
            return;
        }
        if (this.message == null) {
            this.message = JFaceResources.getString("SafeRunnable.errorMessage");
        }
        Policy.getStatusHandler().show((IStatus)new Status(4, "org.eclipse.jface", this.message, e), JFaceResources.getString("SafeRunnable.errorMessage"));
    }

    public static boolean getIgnoreErrors(boolean flag) {
        return ignoreErrors;
    }

    public static boolean getIgnoreErrors() {
        return ignoreErrors;
    }

    public static void setIgnoreErrors(boolean flag) {
        ignoreErrors = flag;
    }

    public static ISafeRunnableRunner getRunner() {
        if (runner == null) {
            runner = SafeRunnable.createDefaultRunner();
        }
        return runner;
    }

    private static ISafeRunnableRunner createDefaultRunner() {
        return new ISafeRunnableRunner(){

            public void run(ISafeRunnable code) {
                try {
                    code.run();
                }
                catch (Exception e) {
                    this.handleException(code, e);
                }
                catch (LinkageError e) {
                    this.handleException(code, e);
                }
            }

            private void handleException(ISafeRunnable code, Throwable e) {
                if (!(e instanceof OperationCanceledException)) {
                    try {
                        Policy.getLog().log((IStatus)new Status(4, "org.eclipse.jface", 4, "Exception occurred", e));
                    }
                    catch (Exception exception) {
                        e.printStackTrace();
                    }
                }
                code.handleException(e);
            }
        };
    }

    public static void setRunner(ISafeRunnableRunner runner) {
        SafeRunnable.runner = runner;
    }

    public static void run(ISafeRunnable runnable) {
        SafeRunnable.getRunner().run(runnable);
    }
}

