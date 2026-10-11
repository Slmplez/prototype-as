/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help;

import org.eclipse.help.IContext;
import org.eclipse.help.IHelpResource;
import org.eclipse.help.IToc;

public interface IHelp {
    public void displayHelp();

    public void displayContext(IContext var1, int var2, int var3);

    public void displayContext(String var1, int var2, int var3);

    public void displayHelpResource(String var1);

    public void displayHelpResource(IHelpResource var1);

    public void displayHelp(String var1);

    public void displayHelp(String var1, String var2);

    public void displayHelp(String var1, int var2, int var3);

    public void displayHelp(IContext var1, int var2, int var3);

    public IContext getContext(String var1);

    public IToc[] getTocs();

    public boolean isContextHelpDisplayed();
}

