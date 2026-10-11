/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 *  org.eclipse.swt.widgets.ToolItem
 */
package org.eclipse.jface.action;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.action.ContributionItem;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.swt.widgets.ToolItem;

public abstract class ControlContribution
extends ContributionItem {
    protected ControlContribution(String id) {
        super(id);
    }

    protected int computeWidth(Control control) {
        return control.computeSize((int)-1, (int)-1, (boolean)true).x;
    }

    protected abstract Control createControl(Composite var1);

    public final void fill(Composite parent) {
        this.createControl(parent);
    }

    public final void fill(Menu parent, int index) {
        Assert.isTrue((boolean)false, (String)"Can't add a control to a menu");
    }

    public final void fill(ToolBar parent, int index) {
        Control control = this.createControl((Composite)parent);
        ToolItem ti = new ToolItem(parent, 2, index);
        ti.setControl(control);
        ti.setWidth(this.computeWidth(control));
    }
}

