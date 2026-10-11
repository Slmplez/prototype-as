/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui;

import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IWorkbenchPage;

public interface IEditorActionBarContributor {
    public void init(IActionBars var1, IWorkbenchPage var2);

    public void setActiveEditor(IEditorPart var1);

    public void dispose();
}

