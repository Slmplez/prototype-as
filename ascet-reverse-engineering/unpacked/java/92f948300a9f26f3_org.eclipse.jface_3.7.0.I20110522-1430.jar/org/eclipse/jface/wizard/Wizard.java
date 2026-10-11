/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.wizard;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Shell;

public abstract class Wizard
implements IWizard {
    public static final String DEFAULT_IMAGE = "org.eclipse.jface.wizard.Wizard.pageImage";
    private IWizardContainer container = null;
    private List pages = new ArrayList();
    private boolean needsProgressMonitor = false;
    private boolean forcePreviousAndNextButtons = false;
    private boolean isHelpAvailable = false;
    private Image defaultImage = null;
    private ImageDescriptor defaultImageDescriptor = JFaceResources.getImageRegistry().getDescriptor("org.eclipse.jface.wizard.Wizard.pageImage");
    private RGB titleBarColor = null;
    private String windowTitle = null;
    private IDialogSettings dialogSettings = null;

    protected Wizard() {
    }

    public void addPage(IWizardPage page) {
        this.pages.add(page);
        page.setWizard(this);
    }

    public void addPages() {
    }

    public boolean canFinish() {
        int i = 0;
        while (i < this.pages.size()) {
            if (!((IWizardPage)this.pages.get(i)).isPageComplete()) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public void createPageControls(Composite pageContainer) {
        int i = 0;
        while (i < this.pages.size()) {
            IWizardPage page = (IWizardPage)this.pages.get(i);
            page.createControl(pageContainer);
            Assert.isNotNull((Object)page.getControl());
            ++i;
        }
    }

    public void dispose() {
        int i = 0;
        while (i < this.pages.size()) {
            try {
                ((IWizardPage)this.pages.get(i)).dispose();
            }
            catch (Exception e) {
                Status status = new Status(4, "org.eclipse.jface", 4, e.getMessage(), (Throwable)e);
                Policy.getLog().log((IStatus)status);
            }
            ++i;
        }
        if (this.defaultImage != null) {
            JFaceResources.getResources().destroyImage(this.defaultImageDescriptor);
            this.defaultImage = null;
        }
    }

    public IWizardContainer getContainer() {
        return this.container;
    }

    public Image getDefaultPageImage() {
        if (this.defaultImage == null) {
            this.defaultImage = JFaceResources.getResources().createImageWithDefault(this.defaultImageDescriptor);
        }
        return this.defaultImage;
    }

    public IDialogSettings getDialogSettings() {
        return this.dialogSettings;
    }

    public IWizardPage getNextPage(IWizardPage page) {
        int index = this.pages.indexOf(page);
        if (index == this.pages.size() - 1 || index == -1) {
            return null;
        }
        return (IWizardPage)this.pages.get(index + 1);
    }

    public IWizardPage getPage(String name) {
        int i = 0;
        while (i < this.pages.size()) {
            IWizardPage page = (IWizardPage)this.pages.get(i);
            String pageName = page.getName();
            if (pageName.equals(name)) {
                return page;
            }
            ++i;
        }
        return null;
    }

    public int getPageCount() {
        return this.pages.size();
    }

    public IWizardPage[] getPages() {
        return this.pages.toArray(new IWizardPage[this.pages.size()]);
    }

    public IWizardPage getPreviousPage(IWizardPage page) {
        int index = this.pages.indexOf(page);
        if (index == 0 || index == -1) {
            return null;
        }
        return (IWizardPage)this.pages.get(index - 1);
    }

    public Shell getShell() {
        if (this.container == null) {
            return null;
        }
        return this.container.getShell();
    }

    public IWizardPage getStartingPage() {
        if (this.pages.size() == 0) {
            return null;
        }
        return (IWizardPage)this.pages.get(0);
    }

    public RGB getTitleBarColor() {
        return this.titleBarColor;
    }

    public String getWindowTitle() {
        return this.windowTitle;
    }

    public boolean isHelpAvailable() {
        return this.isHelpAvailable;
    }

    public boolean needsPreviousAndNextButtons() {
        return this.forcePreviousAndNextButtons || this.pages.size() > 1;
    }

    public boolean needsProgressMonitor() {
        return this.needsProgressMonitor;
    }

    public boolean performCancel() {
        return true;
    }

    public abstract boolean performFinish();

    public void setContainer(IWizardContainer wizardContainer) {
        this.container = wizardContainer;
    }

    public void setDefaultPageImageDescriptor(ImageDescriptor imageDescriptor) {
        this.defaultImageDescriptor = imageDescriptor;
    }

    public void setDialogSettings(IDialogSettings settings) {
        this.dialogSettings = settings;
    }

    public void setForcePreviousAndNextButtons(boolean b) {
        this.forcePreviousAndNextButtons = b;
    }

    public void setHelpAvailable(boolean b) {
        this.isHelpAvailable = b;
    }

    public void setNeedsProgressMonitor(boolean b) {
        this.needsProgressMonitor = b;
    }

    public void setTitleBarColor(RGB color) {
        this.titleBarColor = color;
    }

    public void setWindowTitle(String newTitle) {
        this.windowTitle = newTitle;
        if (this.container != null) {
            this.container.updateWindowTitle();
        }
    }
}

