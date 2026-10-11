/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.window;

import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;

public class SameShellProvider
implements IShellProvider {
    private Control targetControl;

    public SameShellProvider(Control targetControl) {
        this.targetControl = targetControl;
    }

    public Shell getShell() {
        if (this.targetControl instanceof Shell) {
            return (Shell)this.targetControl;
        }
        return this.targetControl == null ? null : this.targetControl.getShell();
    }
}

