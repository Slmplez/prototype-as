/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.tweaklets.AllowGrabFocus;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public abstract class GrabFocus {
    public static Tweaklets.TweakKey KEY;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.tweaklets.GrabFocus");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = new Tweaklets.TweakKey(clazz);
        Tweaklets.setDefault(KEY, new AllowGrabFocus());
    }

    public abstract boolean grabFocusAllowed(IWorkbenchPart var1);

    public abstract void init(Display var1);

    public abstract void dispose();
}

