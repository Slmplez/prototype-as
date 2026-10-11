/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.dialogs;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.widgets.Shell;

public interface IDialogBlockedHandler {
    public void clearBlocked();

    public void showBlocked(Shell var1, IProgressMonitor var2, IStatus var3, String var4);

    public void showBlocked(IProgressMonitor var1, IStatus var2, String var3);
}

