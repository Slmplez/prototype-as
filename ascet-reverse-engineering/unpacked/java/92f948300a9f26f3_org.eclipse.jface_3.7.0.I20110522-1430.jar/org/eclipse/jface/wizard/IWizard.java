/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Composite
 */
package org.eclipse.jface.wizard;

import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Composite;

public interface IWizard {
    public void addPages();

    public boolean canFinish();

    public void createPageControls(Composite var1);

    public void dispose();

    public IWizardContainer getContainer();

    public Image getDefaultPageImage();

    public IDialogSettings getDialogSettings();

    public IWizardPage getNextPage(IWizardPage var1);

    public IWizardPage getPage(String var1);

    public int getPageCount();

    public IWizardPage[] getPages();

    public IWizardPage getPreviousPage(IWizardPage var1);

    public IWizardPage getStartingPage();

    public RGB getTitleBarColor();

    public String getWindowTitle();

    public boolean isHelpAvailable();

    public boolean needsPreviousAndNextButtons();

    public boolean needsProgressMonitor();

    public boolean performCancel();

    public boolean performFinish();

    public void setContainer(IWizardContainer var1);
}

