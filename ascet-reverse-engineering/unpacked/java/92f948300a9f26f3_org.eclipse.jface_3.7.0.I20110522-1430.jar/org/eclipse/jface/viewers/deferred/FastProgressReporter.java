/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jface.viewers.deferred;

import org.eclipse.core.runtime.IProgressMonitor;

final class FastProgressReporter {
    private IProgressMonitor monitor;
    private volatile boolean canceled = false;
    private int cancelCheck = 0;
    private static int CANCEL_CHECK_PERIOD = 40;

    public FastProgressReporter() {
    }

    public FastProgressReporter(IProgressMonitor monitor, int totalProgress) {
        this.monitor = monitor;
        this.canceled = monitor.isCanceled();
    }

    public boolean isCanceled() {
        if (this.monitor == null) {
            return this.canceled;
        }
        ++this.cancelCheck;
        if (this.cancelCheck > CANCEL_CHECK_PERIOD) {
            this.canceled = this.monitor.isCanceled();
            this.cancelCheck = 0;
        }
        return this.canceled;
    }

    public void cancel() {
        this.canceled = true;
        if (this.monitor == null) {
            return;
        }
        this.monitor.setCanceled(true);
    }
}

