/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.ui.part;

import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IActionBars;

public interface IPage {
    public void createControl(Composite var1);

    public void dispose();

    public Control getControl();

    public void setActionBars(IActionBars var1);

    public void setFocus();
}

