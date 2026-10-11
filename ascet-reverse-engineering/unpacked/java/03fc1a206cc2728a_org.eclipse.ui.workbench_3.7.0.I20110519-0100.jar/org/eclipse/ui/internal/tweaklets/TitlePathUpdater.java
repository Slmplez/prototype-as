/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.internal.tweaklets.DummyTitlePathUpdater;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public abstract class TitlePathUpdater {
    public static Tweaklets.TweakKey KEY;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.tweaklets.TitlePathUpdater");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = new Tweaklets.TweakKey(clazz);
        Tweaklets.setDefault(KEY, new DummyTitlePathUpdater());
    }

    public abstract void updateTitlePath(Shell var1, String var2);
}

