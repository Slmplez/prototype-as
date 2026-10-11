/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.help.IContext
 */
package org.eclipse.ui.help;

import java.net.URL;
import org.eclipse.help.IContext;

public abstract class AbstractHelpUI {
    public abstract void displayHelp();

    public void displaySearch() {
    }

    public void displayDynamicHelp() {
    }

    public void search(String expression) {
    }

    public URL resolve(String href, boolean documentOnly) {
        return null;
    }

    public abstract void displayContext(IContext var1, int var2, int var3);

    public abstract void displayHelpResource(String var1);

    public abstract boolean isContextHelpDisplayed();
}

