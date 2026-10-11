/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IViewPart;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public abstract class InterceptContributions {
    public static Tweaklets.TweakKey KEY;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.tweaklets.InterceptContributions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = new Tweaklets.TweakKey(clazz);
        Tweaklets.setDefault(KEY, new InterceptContributions(){

            public IViewPart tweakView(Object viewContribution) {
                return (IViewPart)viewContribution;
            }

            public IEditorPart tweakEditor(Object editorContribution) {
                return (IEditorPart)editorContribution;
            }
        });
    }

    public abstract IViewPart tweakView(Object var1);

    public abstract IEditorPart tweakEditor(Object var1);
}

