/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.IWizard
 */
package org.eclipse.ui;

import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.ui.IWorkbench;

public interface IWorkbenchWizard
extends IWizard {
    public void init(IWorkbench var1, IStructuredSelection var2);
}

