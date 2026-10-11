/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPartReference;

public interface IPerspectiveListener2
extends IPerspectiveListener {
    public void perspectiveChanged(IWorkbenchPage var1, IPerspectiveDescriptor var2, IWorkbenchPartReference var3, String var4);
}

