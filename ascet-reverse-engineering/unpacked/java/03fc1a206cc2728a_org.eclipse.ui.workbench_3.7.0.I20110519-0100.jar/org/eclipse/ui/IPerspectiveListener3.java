/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener2;
import org.eclipse.ui.IWorkbenchPage;

public interface IPerspectiveListener3
extends IPerspectiveListener2 {
    public void perspectiveOpened(IWorkbenchPage var1, IPerspectiveDescriptor var2);

    public void perspectiveClosed(IWorkbenchPage var1, IPerspectiveDescriptor var2);

    public void perspectiveDeactivated(IWorkbenchPage var1, IPerspectiveDescriptor var2);

    public void perspectiveSavedAs(IWorkbenchPage var1, IPerspectiveDescriptor var2, IPerspectiveDescriptor var3);
}

