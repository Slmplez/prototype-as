/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IWorkbenchPage;

public interface IPerspectiveListener {
    public void perspectiveActivated(IWorkbenchPage var1, IPerspectiveDescriptor var2);

    public void perspectiveChanged(IWorkbenchPage var1, IPerspectiveDescriptor var2, String var3);
}

