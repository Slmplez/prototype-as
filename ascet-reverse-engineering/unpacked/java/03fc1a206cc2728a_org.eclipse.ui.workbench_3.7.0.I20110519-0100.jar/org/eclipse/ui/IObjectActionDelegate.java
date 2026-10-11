/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.IAction
 */
package org.eclipse.ui;

import org.eclipse.jface.action.IAction;
import org.eclipse.ui.IActionDelegate;
import org.eclipse.ui.IWorkbenchPart;

public interface IObjectActionDelegate
extends IActionDelegate {
    public void setActivePart(IAction var1, IWorkbenchPart var2);
}

