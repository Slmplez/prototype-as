/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.menus.AbstractTrimWidget
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.menus;

import org.eclipse.jface.menus.AbstractTrimWidget;
import org.eclipse.swt.graphics.Point;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.menus.IWorkbenchWidget;

public abstract class AbstractWorkbenchTrimWidget
extends AbstractTrimWidget
implements IWorkbenchWidget {
    private IWorkbenchWindow wbWindow;

    public void init(IWorkbenchWindow workbenchWindow) {
        this.wbWindow = workbenchWindow;
    }

    public IWorkbenchWindow getWorkbenchWindow() {
        return this.wbWindow;
    }

    public Point getPreferredSize() {
        return null;
    }
}

