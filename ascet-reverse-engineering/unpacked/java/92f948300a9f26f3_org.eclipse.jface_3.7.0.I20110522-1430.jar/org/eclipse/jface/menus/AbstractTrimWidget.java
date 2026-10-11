/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.jface.menus;

import org.eclipse.jface.menus.IWidget;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;

public abstract class AbstractTrimWidget
implements IWidget {
    public abstract void fill(Composite var1, int var2, int var3);

    public abstract void dispose();

    public void fill(Composite parent) {
    }

    public void fill(Menu parent, int index) {
    }

    public void fill(ToolBar parent, int index) {
    }

    public void fill(CoolBar parent, int index) {
    }
}

