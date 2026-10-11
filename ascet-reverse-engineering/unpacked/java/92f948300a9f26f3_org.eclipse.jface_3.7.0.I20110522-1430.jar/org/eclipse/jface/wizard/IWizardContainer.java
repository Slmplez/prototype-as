/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.wizard;

import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.swt.widgets.Shell;

public interface IWizardContainer
extends IRunnableContext {
    public IWizardPage getCurrentPage();

    public Shell getShell();

    public void showPage(IWizardPage var1);

    public void updateButtons();

    public void updateMessage();

    public void updateTitleBar();

    public void updateWindowTitle();
}

