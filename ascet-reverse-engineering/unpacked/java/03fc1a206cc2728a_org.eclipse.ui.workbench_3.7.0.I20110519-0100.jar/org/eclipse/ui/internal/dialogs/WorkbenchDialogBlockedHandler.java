/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.dialogs.IDialogBlockedHandler
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.dialogs.IDialogBlockedHandler;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.progress.BlockedJobsDialog;

public class WorkbenchDialogBlockedHandler
implements IDialogBlockedHandler {
    IProgressMonitor outerMonitor;
    int nestingDepth = 0;

    public void clearBlocked() {
        if (this.nestingDepth == 0) {
            return;
        }
        --this.nestingDepth;
        if (this.nestingDepth <= 0) {
            BlockedJobsDialog.clear(this.outerMonitor);
            this.outerMonitor = null;
            this.nestingDepth = 0;
        }
    }

    public void showBlocked(Shell parentShell, IProgressMonitor blockingMonitor, IStatus blockingStatus, String blockedName) {
        ++this.nestingDepth;
        if (this.outerMonitor == null) {
            this.outerMonitor = blockingMonitor;
            if (blockedName == null && parentShell != null) {
                blockedName = parentShell.getText();
            }
            BlockedJobsDialog.createBlockedDialog(parentShell, blockingMonitor, blockingStatus, blockedName);
        }
    }

    public void showBlocked(IProgressMonitor blocking, IStatus blockingStatus, String blockedName) {
        this.showBlocked(null, blocking, blockingStatus, blockedName);
    }
}

