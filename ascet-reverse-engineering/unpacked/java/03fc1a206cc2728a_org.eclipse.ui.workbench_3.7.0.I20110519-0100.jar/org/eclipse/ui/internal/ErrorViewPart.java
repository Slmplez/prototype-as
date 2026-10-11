/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.internal.part.StatusPart;
import org.eclipse.ui.part.ViewPart;

public class ErrorViewPart
extends ViewPart {
    private IStatus error;
    private Composite parentControl;

    public ErrorViewPart() {
    }

    public ErrorViewPart(IStatus error) {
        this.error = error;
    }

    public void createPartControl(Composite parent) {
        this.parentControl = parent;
        if (this.error != null) {
            new StatusPart(parent, this.error);
        }
    }

    public void setPartName(String newName) {
        super.setPartName(newName);
    }

    public void setFocus() {
        this.parentControl.setFocus();
    }

    public void dispose() {
        super.dispose();
        this.parentControl = null;
    }
}

