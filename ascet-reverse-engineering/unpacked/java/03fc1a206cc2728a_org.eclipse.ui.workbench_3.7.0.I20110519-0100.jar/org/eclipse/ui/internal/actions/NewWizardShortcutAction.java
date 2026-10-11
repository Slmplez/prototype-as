/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.WizardDialog
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.actions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.INewWizard;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class NewWizardShortcutAction
extends Action
implements IPluginContribution {
    private IWizardDescriptor wizardElement;
    private static final int SIZING_WIZARD_WIDTH = 500;
    private static final int SIZING_WIZARD_HEIGHT = 500;
    private IWorkbenchWindow window;
    static /* synthetic */ Class class$0;

    public NewWizardShortcutAction(IWorkbenchWindow window, IWizardDescriptor wizardDesc) {
        super(wizardDesc.getLabel());
        this.setToolTipText(wizardDesc.getDescription());
        this.setImageDescriptor(wizardDesc.getImageDescriptor());
        this.setId(ActionFactory.NEW.getId());
        this.wizardElement = wizardDesc;
        this.window = window;
    }

    public IWizardDescriptor getWizardDescriptor() {
        return this.wizardElement;
    }

    public void run() {
        INewWizard wizard;
        try {
            wizard = (INewWizard)this.wizardElement.createWizard();
        }
        catch (CoreException e) {
            ErrorDialog.openError((Shell)this.window.getShell(), (String)WorkbenchMessages.NewWizardShortcutAction_errorTitle, (String)WorkbenchMessages.NewWizardShortcutAction_errorMessage, (IStatus)e.getStatus());
            return;
        }
        ISelection selection = this.window.getSelectionService().getSelection();
        StructuredSelection selectionToPass = StructuredSelection.EMPTY;
        if (selection instanceof IStructuredSelection) {
            selectionToPass = this.wizardElement.adaptedSelection((IStructuredSelection)selection);
        } else {
            IWorkbenchPart part = this.window.getPartService().getActivePart();
            if (part instanceof IEditorPart) {
                Object file;
                IEditorInput input = ((IEditorPart)part).getEditorInput();
                Class fileClass = LegacyResourceSupport.getFileClass();
                if (input != null && fileClass != null && (file = Util.getAdapter(input, fileClass)) != null) {
                    selectionToPass = new StructuredSelection(file);
                }
            }
        }
        wizard.init(this.window.getWorkbench(), (IStructuredSelection)selectionToPass);
        Shell parent = this.window.getShell();
        WizardDialog dialog = new WizardDialog(parent, (IWizard)wizard);
        dialog.create();
        Point defaultSize = dialog.getShell().getSize();
        dialog.getShell().setSize(Math.max(500, defaultSize.x), Math.max(500, defaultSize.y));
        this.window.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.new_wizard_shortcut_context");
        if (this.wizardElement.canFinishEarly() && !this.wizardElement.hasPages()) {
            wizard.performFinish();
            dialog.close();
        } else {
            dialog.open();
        }
    }

    public String getLocalId() {
        IPluginContribution contribution = this.getPluginContribution();
        if (contribution != null) {
            return contribution.getLocalId();
        }
        return this.wizardElement.getId();
    }

    public String getPluginId() {
        IPluginContribution contribution = this.getPluginContribution();
        if (contribution != null) {
            return contribution.getPluginId();
        }
        return null;
    }

    private IPluginContribution getPluginContribution() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.IPluginContribution");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IPluginContribution)Util.getAdapter(this.wizardElement, clazz);
    }
}

