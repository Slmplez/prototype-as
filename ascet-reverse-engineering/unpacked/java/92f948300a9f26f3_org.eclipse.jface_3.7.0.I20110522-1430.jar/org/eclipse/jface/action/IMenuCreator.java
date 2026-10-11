/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.jface.action;

import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;

public interface IMenuCreator {
    public void dispose();

    public Menu getMenu(Control var1);

    public Menu getMenu(Menu var1);
}

