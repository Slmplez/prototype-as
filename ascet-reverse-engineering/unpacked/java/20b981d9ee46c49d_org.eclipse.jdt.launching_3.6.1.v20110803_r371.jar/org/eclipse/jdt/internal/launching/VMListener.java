/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.launching;

import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallChangedListener;
import org.eclipse.jdt.launching.PropertyChangeEvent;

public class VMListener
implements IVMInstallChangedListener {
    private boolean fChanged = false;

    public void defaultVMInstallChanged(IVMInstall previous, IVMInstall current) {
        this.fChanged = true;
    }

    public void vmAdded(IVMInstall vm) {
        this.fChanged = true;
    }

    public void vmChanged(PropertyChangeEvent event) {
        this.fChanged = true;
    }

    public void vmRemoved(IVMInstall vm) {
        this.fChanged = true;
    }

    public boolean isChanged() {
        return this.fChanged;
    }
}

