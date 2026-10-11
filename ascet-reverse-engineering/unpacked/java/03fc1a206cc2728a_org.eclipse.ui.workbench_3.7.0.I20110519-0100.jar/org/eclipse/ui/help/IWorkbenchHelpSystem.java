/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.help.IContext
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.MenuItem
 */
package org.eclipse.ui.help;

import java.net.URL;
import org.eclipse.help.IContext;
import org.eclipse.jface.action.IAction;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.MenuItem;

public interface IWorkbenchHelpSystem {
    public boolean hasHelpUI();

    public void displayHelp();

    public void displaySearch();

    public void displayDynamicHelp();

    public void search(String var1);

    public void displayContext(IContext var1, int var2, int var3);

    public void displayHelpResource(String var1);

    public void displayHelp(String var1);

    public void displayHelp(IContext var1);

    public boolean isContextHelpDisplayed();

    public void setHelp(IAction var1, String var2);

    public void setHelp(Control var1, String var2);

    public void setHelp(Menu var1, String var2);

    public void setHelp(MenuItem var1, String var2);

    public URL resolve(String var1, boolean var2);
}

