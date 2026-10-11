/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.menus;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.internal.menus.InternalControlContribution;

public abstract class WorkbenchWindowControlContribution
extends InternalControlContribution {
    public WorkbenchWindowControlContribution() {
        this("unknown ID");
    }

    public WorkbenchWindowControlContribution(String id) {
        super(id);
    }

    public final IWorkbenchWindow getWorkbenchWindow() {
        return super.getWorkbenchWindow();
    }

    public final int getCurSide() {
        return super.getCurSide();
    }

    public final int getOrientation() {
        if (this.getCurSide() == 16384 || this.getCurSide() == 131072) {
            return 512;
        }
        return 256;
    }

    public Control delegateCreateControl(Composite parent) {
        return this.createControl(parent);
    }
}

