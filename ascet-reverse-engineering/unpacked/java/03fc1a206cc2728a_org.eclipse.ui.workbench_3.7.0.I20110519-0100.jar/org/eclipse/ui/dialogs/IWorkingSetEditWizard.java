/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.wizard.IWizard
 */
package org.eclipse.ui.dialogs;

import org.eclipse.jface.wizard.IWizard;
import org.eclipse.ui.IWorkingSet;

public interface IWorkingSetEditWizard
extends IWizard {
    public IWorkingSet getSelection();
}

