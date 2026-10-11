/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.WizardDialog
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.actions;

import org.eclipse.jface.action.Action;
import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.WizardDialog;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.PerspectiveTracker;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.NewWizard;
import org.eclipse.ui.internal.util.Util;

public class NewWizardAction
extends Action
implements ActionFactory.IWorkbenchAction {
    private static final int SIZING_WIZARD_WIDTH = 500;
    private static final int SIZING_WIZARD_HEIGHT = 500;
    private String categoryId = null;
    private String windowTitle = null;
    private IWorkbenchWindow workbenchWindow;
    private PerspectiveTracker tracker;

    public NewWizardAction(IWorkbenchWindow window) {
        super(WorkbenchMessages.NewWizardAction_text);
        if (window == null) {
            throw new IllegalArgumentException();
        }
        this.workbenchWindow = window;
        this.tracker = new PerspectiveTracker(window, this);
        ISharedImages images = PlatformUI.getWorkbench().getSharedImages();
        this.setImageDescriptor(images.getImageDescriptor("IMG_TOOL_NEW_WIZARD"));
        this.setDisabledImageDescriptor(images.getImageDescriptor("IMG_TOOL_NEW_WIZARD_DISABLED"));
        this.setToolTipText(WorkbenchMessages.NewWizardAction_toolTip);
        PlatformUI.getWorkbench().getHelpSystem().setHelp(this, "org.eclipse.ui.new_action_context");
    }

    public NewWizardAction() {
        this(PlatformUI.getWorkbench().getActiveWorkbenchWindow());
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public void setCategoryId(String id) {
        this.categoryId = id;
    }

    public void setWizardWindowTitle(String windowTitle) {
        this.windowTitle = windowTitle;
    }

    public void run() {
        if (this.workbenchWindow == null) {
            return;
        }
        NewWizard wizard = new NewWizard();
        wizard.setCategoryId(this.categoryId);
        wizard.setWindowTitle(this.windowTitle);
        ISelection selection = this.workbenchWindow.getSelectionService().getSelection();
        StructuredSelection selectionToPass = StructuredSelection.EMPTY;
        if (selection instanceof IStructuredSelection) {
            selectionToPass = (IStructuredSelection)selection;
        } else {
            IEditorInput input;
            Object resource;
            IWorkbenchPart part;
            Class resourceClass = LegacyResourceSupport.getResourceClass();
            if (resourceClass != null && (part = this.workbenchWindow.getPartService().getActivePart()) instanceof IEditorPart && (resource = Util.getAdapter(input = ((IEditorPart)part).getEditorInput(), resourceClass)) != null) {
                selectionToPass = new StructuredSelection(resource);
            }
        }
        wizard.init(this.workbenchWindow.getWorkbench(), (IStructuredSelection)selectionToPass);
        IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
        IDialogSettings wizardSettings = workbenchSettings.getSection("NewWizardAction");
        if (wizardSettings == null) {
            wizardSettings = workbenchSettings.addNewSection("NewWizardAction");
        }
        wizard.setDialogSettings(wizardSettings);
        wizard.setForcePreviousAndNextButtons(true);
        Shell parent = this.workbenchWindow.getShell();
        WizardDialog dialog = new WizardDialog(parent, (IWizard)wizard);
        dialog.create();
        dialog.getShell().setSize(Math.max(500, dialog.getShell().getSize().x), 500);
        PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.new_wizard_context");
        dialog.open();
    }

    public void dispose() {
        if (this.workbenchWindow == null) {
            return;
        }
        this.tracker.dispose();
        this.workbenchWindow = null;
    }
}

