/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.window.Window$IExceptionHandler
 */
package org.eclipse.ui.internal;

import org.eclipse.jface.window.Window;
import org.eclipse.ui.internal.Workbench;

public final class ExceptionHandler
implements Window.IExceptionHandler {
    private static final ExceptionHandler instance = new ExceptionHandler();
    private int exceptionCount = 0;

    public static ExceptionHandler getInstance() {
        return instance;
    }

    private ExceptionHandler() {
    }

    public void handleException(Throwable t) {
        try {
            if (t instanceof ThreadDeath) {
                throw (ThreadDeath)t;
            }
            ++this.exceptionCount;
            if (this.exceptionCount > 2) {
                if (t instanceof RuntimeException) {
                    throw (RuntimeException)t;
                }
                if (t instanceof Error) {
                    throw (Error)t;
                }
                throw new RuntimeException(t);
            }
            Workbench wb = Workbench.getInstance();
            if (wb != null) {
                wb.getAdvisor().eventLoopException(t);
            }
        }
        finally {
            --this.exceptionCount;
        }
    }
}

