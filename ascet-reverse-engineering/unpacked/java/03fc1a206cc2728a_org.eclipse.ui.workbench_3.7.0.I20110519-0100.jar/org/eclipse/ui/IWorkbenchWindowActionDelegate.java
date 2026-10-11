/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IWorkbenchWindow;

public interface IWorkbenchWindowActionDelegate
extends IActionDelegate {
    public void dispose();

    public void init(IWorkbenchWindow var1);
}

