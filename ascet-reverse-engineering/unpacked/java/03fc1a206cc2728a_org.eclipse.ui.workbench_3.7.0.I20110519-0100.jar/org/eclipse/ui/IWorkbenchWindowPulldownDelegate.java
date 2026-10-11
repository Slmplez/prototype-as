/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui;

import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.IWorkbenchWindowActionDelegate;

public interface IWorkbenchWindowPulldownDelegate
extends IWorkbenchWindowActionDelegate {
    public Menu getMenu(Control var1);
}

