/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.internal.tweaklets;

import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.registry.PerspectiveDescriptor;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.tweaklets.Workbench3xImplementation;

public abstract class WorkbenchImplementation {
    public static Tweaklets.TweakKey KEY;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.tweaklets.WorkbenchImplementation");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        KEY = new Tweaklets.TweakKey(clazz);
        Tweaklets.setDefault(KEY, new Workbench3xImplementation());
    }

    public abstract WorkbenchWindow createWorkbenchWindow(int var1);

    public abstract WorkbenchPage createWorkbenchPage(WorkbenchWindow var1, String var2, IAdaptable var3) throws WorkbenchException;

    public abstract WorkbenchPage createWorkbenchPage(WorkbenchWindow var1, IAdaptable var2) throws WorkbenchException;

    public abstract Perspective createPerspective(PerspectiveDescriptor var1, WorkbenchPage var2) throws WorkbenchException;
}

