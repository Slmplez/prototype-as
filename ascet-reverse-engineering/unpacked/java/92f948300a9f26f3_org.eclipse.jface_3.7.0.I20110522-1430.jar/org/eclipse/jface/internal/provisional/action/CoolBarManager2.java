/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.CoolBar
 */
package org.eclipse.jface.internal.provisional.action;

import org.eclipse.jface.action.CoolBarManager;
import org.eclipse.jface.internal.provisional.action.ICoolBarManager2;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.CoolBar;

public class CoolBarManager2
extends CoolBarManager
implements ICoolBarManager2 {
    public CoolBarManager2() {
    }

    public CoolBarManager2(CoolBar coolBar) {
        super(coolBar);
    }

    public CoolBarManager2(int style) {
        super(style);
    }

    public Control createControl2(Composite parent) {
        return this.createControl(parent);
    }

    public Control getControl2() {
        return this.getControl();
    }
}

