/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.wizard;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.DialogPage;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Shell;

public abstract class WizardPage
extends DialogPage
implements IWizardPage {
    private String name;
    private IWizard wizard = null;
    private boolean isPageComplete = true;
    private IWizardPage previousPage = null;

    protected WizardPage(String pageName) {
        this(pageName, null, null);
    }

    protected WizardPage(String pageName, String title, ImageDescriptor titleImage) {
        super(title, titleImage);
        Assert.isNotNull((Object)pageName);
        this.name = pageName;
    }

    public boolean canFlipToNextPage() {
        return this.isPageComplete() && this.getNextPage() != null;
    }

    protected IWizardContainer getContainer() {
        if (this.wizard == null) {
            return null;
        }
        return this.wizard.getContainer();
    }

    protected IDialogSettings getDialogSettings() {
        if (this.wizard == null) {
            return null;
        }
        return this.wizard.getDialogSettings();
    }

    public Image getImage() {
        Image result = super.getImage();
        if (result == null && this.wizard != null) {
            return this.wizard.getDefaultPageImage();
        }
        return result;
    }

    public String getName() {
        return this.name;
    }

    public IWizardPage getNextPage() {
        if (this.wizard == null) {
            return null;
        }
        return this.wizard.getNextPage(this);
    }

    public IWizardPage getPreviousPage() {
        if (this.previousPage != null) {
            return this.previousPage;
        }
        if (this.wizard == null) {
            return null;
        }
        return this.wizard.getPreviousPage(this);
    }

    public Shell getShell() {
        IWizardContainer container = this.getContainer();
        if (container == null) {
            return null;
        }
        return container.getShell();
    }

    public IWizard getWizard() {
        return this.wizard;
    }

    protected boolean isCurrentPage() {
        return this.getContainer() != null && this == this.getContainer().getCurrentPage();
    }

    public boolean isPageComplete() {
        return this.isPageComplete;
    }

    public void setDescription(String description) {
        super.setDescription(description);
        if (this.isCurrentPage()) {
            this.getContainer().updateTitleBar();
        }
    }

    public void setErrorMessage(String newMessage) {
        super.setErrorMessage(newMessage);
        if (this.isCurrentPage()) {
            this.getContainer().updateMessage();
        }
    }

    public void setImageDescriptor(ImageDescriptor image) {
        super.setImageDescriptor(image);
        if (this.isCurrentPage()) {
            this.getContainer().updateTitleBar();
        }
    }

    public void setMessage(String newMessage, int newType) {
        super.setMessage(newMessage, newType);
        if (this.isCurrentPage()) {
            this.getContainer().updateMessage();
        }
    }

    public void setPageComplete(boolean complete) {
        this.isPageComplete = complete;
        if (this.isCurrentPage()) {
            this.getContainer().updateButtons();
        }
    }

    public void setPreviousPage(IWizardPage page) {
        this.previousPage = page;
    }

    public void setTitle(String title) {
        super.setTitle(title);
        if (this.isCurrentPage()) {
            this.getContainer().updateTitleBar();
        }
    }

    public void setWizard(IWizard newWizard) {
        this.wizard = newWizard;
    }

    public String toString() {
        return this.name;
    }
}

