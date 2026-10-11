/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.dialogs.IMessageProvider
 *  org.eclipse.jface.dialogs.ProgressMonitorDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.IWizardContainer
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.preferences;

import java.lang.reflect.InvocationTargetException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.IMessageProvider;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardContainer;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.dialogs.PropertyPage;

public abstract class WizardPropertyPage
extends PropertyPage {
    private IWizard fWizard;
    private Composite fWizardPageContainer;

    public IWizard getWizard() {
        return this.fWizard;
    }

    protected abstract IWizard createWizard();

    protected abstract void applyChanges();

    protected Control createContents(Composite parent) {
        this.fWizardPageContainer = new Composite(parent, 0);
        this.fWizardPageContainer.setFont(parent.getFont());
        this.fWizardPageContainer.setLayoutData((Object)new GridData(4, 4, true, true));
        GridLayout layout = new GridLayout(1, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.fWizardPageContainer.setLayout((Layout)layout);
        this.createWizardPageContent(this.fWizardPageContainer);
        return this.fWizardPageContainer;
    }

    private void createWizardPageContent(Composite parent) {
        this.fWizard = this.createWizard();
        if (this.fWizard == null) {
            return;
        }
        this.fWizard.addPages();
        PropertyPageWizardContainer wizardContainer = new PropertyPageWizardContainer(this, this.fWizard);
        wizardContainer.updateButtons();
        wizardContainer.updateMessage();
        this.fWizard.setContainer((IWizardContainer)wizardContainer);
        Composite messageComposite = new Composite(parent, 0);
        messageComposite.setFont(parent.getFont());
        messageComposite.setLayoutData((Object)new GridData(4, 128, true, false));
        GridLayout layout = new GridLayout(1, false);
        layout.marginHeight = 0;
        messageComposite.setLayout((Layout)layout);
        Label messageLabel = new Label(messageComposite, 64);
        messageLabel.setFont(messageComposite.getFont());
        messageLabel.setLayoutData((Object)new GridData(4, 4, true, true));
        this.fWizard.createPageControls(parent);
        IWizardPage page = this.fWizard.getPages()[0];
        if (page.getControl() == null) {
            page.createControl(parent);
        }
        Control pageControl = page.getControl();
        pageControl.setLayoutData((Object)new GridData(4, 4, true, true));
        this.setPageName(page);
        this.setDescription(page, messageLabel);
        page.setVisible(true);
        this.setValid(this.fWizard.canFinish());
    }

    private void setPageName(IWizardPage page) {
        String name = page.getTitle();
        if (name == null) {
            name = page.getName();
        }
        this.setMessage(name);
    }

    private void setDescription(IWizardPage page, Label messageLabel) {
        IMessageProvider messageProvider;
        String description = null;
        if (page.getDescription() != null) {
            description = page.getDescription();
        } else if (page instanceof IMessageProvider && (messageProvider = (IMessageProvider)page).getMessageType() == 0) {
            description = messageProvider.getMessage();
        }
        if (description != null) {
            messageLabel.setText(description);
        } else {
            messageLabel.setVisible(false);
        }
    }

    public boolean performOk() {
        this.fWizard.performFinish();
        this.applyChanges();
        this.fWizard.dispose();
        return super.performOk();
    }

    public boolean performCancel() {
        this.fWizard.performCancel();
        this.fWizard.dispose();
        return super.performCancel();
    }

    protected void performApply() {
        this.fWizard.performFinish();
        this.applyChanges();
        this.fWizard.dispose();
        this.rebuildWizardPage();
        super.performApply();
    }

    protected void performDefaults() {
        this.fWizard.performCancel();
        this.fWizard.dispose();
        this.rebuildWizardPage();
        super.performDefaults();
    }

    private void rebuildWizardPage() {
        Control[] children = this.fWizardPageContainer.getChildren();
        int i = 0;
        while (i < children.length) {
            children[i].dispose();
            ++i;
        }
        this.createWizardPageContent(this.fWizardPageContainer);
        this.fWizardPageContainer.getParent().layout(true, true);
    }

    private static final class PropertyPageWizardContainer
    implements IWizardContainer {
        private final IWizard fWizard;
        private final PropertyPage fPage;
        private String fMessage;

        private PropertyPageWizardContainer(PropertyPage page, IWizard wizard) {
            Assert.isLegal((wizard.getPageCount() == 1 ? 1 : 0) != 0);
            this.fPage = page;
            this.fWizard = wizard;
        }

        public IWizardPage getCurrentPage() {
            return this.fWizard.getPages()[0];
        }

        public Shell getShell() {
            return this.fPage.getShell();
        }

        public void showPage(IWizardPage page) {
        }

        public void updateButtons() {
            this.fPage.setValid(this.fWizard.canFinish());
        }

        public void updateMessage() {
            IWizardPage page = this.getCurrentPage();
            String message = this.fPage.getMessage();
            if (message != null && this.fMessage == null) {
                this.fMessage = message;
            }
            if (page.getErrorMessage() != null) {
                this.fPage.setMessage(page.getErrorMessage(), 3);
            } else if (page instanceof IMessageProvider) {
                IMessageProvider messageProvider = (IMessageProvider)page;
                if (messageProvider.getMessageType() != 0) {
                    this.fPage.setMessage(messageProvider.getMessage(), messageProvider.getMessageType());
                } else {
                    if (messageProvider.getMessage() != null && this.fMessage == null) {
                        this.fMessage = messageProvider.getMessage();
                    }
                    this.fPage.setMessage(this.fMessage, 0);
                }
            } else {
                this.fPage.setErrorMessage(null);
            }
        }

        public void updateTitleBar() {
            IWizardPage page = this.getCurrentPage();
            String name = page.getTitle();
            if (name == null) {
                name = page.getName();
            }
            this.fPage.setMessage(name);
        }

        public void updateWindowTitle() {
        }

        public void run(boolean fork, boolean cancelable, IRunnableWithProgress runnable) throws InvocationTargetException, InterruptedException {
            ProgressMonitorDialog dialog = new ProgressMonitorDialog(this.getShell());
            dialog.run(fork, cancelable, runnable);
        }
    }
}

