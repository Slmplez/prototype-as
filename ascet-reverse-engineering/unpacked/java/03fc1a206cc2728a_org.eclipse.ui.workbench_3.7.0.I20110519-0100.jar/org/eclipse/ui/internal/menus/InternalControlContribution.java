/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.ControlContribution
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.jface.action.ControlContribution;
import org.eclipse.ui.IWorkbenchWindow;

public abstract class InternalControlContribution
extends ControlContribution {
    private IWorkbenchWindow wbw;
    private int curSide;

    protected InternalControlContribution(String id) {
        super(id);
    }

    public InternalControlContribution() {
        this("unknown ID");
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.wbw;
    }

    public void setWorkbenchWindow(IWorkbenchWindow wbw) {
        this.wbw = wbw;
    }

    public int getCurSide() {
        return this.curSide;
    }

    public void setCurSide(int curSide) {
        this.curSide = curSide;
    }

    public int getOrientation() {
        if (this.getCurSide() == 16384 || this.getCurSide() == 131072) {
            return 512;
        }
        return 256;
    }
}

