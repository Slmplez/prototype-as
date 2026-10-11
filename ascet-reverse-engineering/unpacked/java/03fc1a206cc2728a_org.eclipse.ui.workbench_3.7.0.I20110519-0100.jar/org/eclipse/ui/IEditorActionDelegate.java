/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui;

import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IEditorPart;

public interface IEditorActionDelegate
extends IActionDelegate {
    public void setActiveEditor(IAction var1, IEditorPart var2);
}

