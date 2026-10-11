/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.CoolBar
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.ToolBar
 */
package org.eclipse.ui.internal.menus;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.CoolBar;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.ToolBar;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.menus.IWorkbenchWidget;

public class AbstractWorkbenchWidget
implements IWorkbenchWidget {
    public void init(IWorkbenchWindow workbenchWindow) {
    }

    public void dispose() {
    }

    public void fill(Composite parent) {
    }

    public void fill(Menu parent, int index) {
    }

    public void fill(ToolBar parent, int index) {
    }

    public void fill(CoolBar parent, int index) {
    }

    public Point getPreferredSize() {
        return null;
    }
}

