/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.AbstractHandler
 *  org.eclipse.core.commands.ExecutionEvent
 *  org.eclipse.core.commands.ExecutionException
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.dialogs.IDialogSettings
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.WizardDialog
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.ui.internal.handlers;

import java.util.Map;
import org.eclipse.core.commands.AbstractHandler;
import org.eclipse.core.commands.ExecutionEvent;
import org.eclipse.core.commands.ExecutionException;
import org.eclipse.core.runtime.CoreException;
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
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkbenchWizard;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.commands.IElementUpdater;
import org.eclipse.ui.handlers.HandlerUtil;
import org.eclipse.ui.internal.LegacyResourceSupport;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.ImportExportWizard;
import org.eclipse.ui.internal.dialogs.NewWizard;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.menus.UIElement;
import org.eclipse.ui.wizards.IWizardDescriptor;
import org.eclipse.ui.wizards.IWizardRegistry;

public abstract class WizardHandler
extends AbstractHandler
implements IElementUpdater {
    protected abstract void executeHandler(ExecutionEvent var1);

    public Object execute(ExecutionEvent event) throws ExecutionException {
        String wizardId = event.getParameter(this.getWizardIdParameterId());
        IWorkbenchWindow activeWindow = HandlerUtil.getActiveWorkbenchWindowChecked(event);
        if (wizardId == null) {
            this.executeHandler(event);
        } else {
            IWorkbenchWizard wizard;
            block6: {
                IWizardRegistry wizardRegistry = this.getWizardRegistry();
                IWizardDescriptor wizardDescriptor = wizardRegistry.findWizard(wizardId);
                if (wizardDescriptor == null) {
                    throw new ExecutionException("unknown wizard: " + wizardId);
                }
                try {
                    wizard = wizardDescriptor.createWizard();
                    wizard.init(PlatformUI.getWorkbench(), this.getSelectionToUse(event));
                    if (!wizardDescriptor.canFinishEarly() || wizardDescriptor.hasPages()) break block6;
                    wizard.performFinish();
                    return null;
                }
                catch (CoreException ex) {
                    throw new ExecutionException("error creating wizard", (Throwable)ex);
                }
            }
            Shell parent = activeWindow.getShell();
            WizardDialog dialog = new WizardDialog(parent, (IWizard)wizard);
            dialog.create();
            dialog.open();
        }
        return null;
    }

    protected IStructuredSelection getSelectionToUse(ExecutionEvent event) {
        ISelection selection = HandlerUtil.getCurrentSelection(event);
        if (selection instanceof IStructuredSelection) {
            return (IStructuredSelection)selection;
        }
        return StructuredSelection.EMPTY;
    }

    public void updateElement(UIElement element, Map parameters) {
        String wizardId = (String)parameters.get(this.getWizardIdParameterId());
        if (wizardId == null) {
            return;
        }
        IWizardDescriptor wizard = this.getWizardRegistry().findWizard(wizardId);
        if (wizard != null) {
            element.setText(wizard.getLabel());
            element.setTooltip(wizard.getDescription());
            element.setIcon(wizard.getImageDescriptor());
        }
    }

    protected abstract String getWizardIdParameterId();

    protected abstract IWizardRegistry getWizardRegistry();

    public static final class Export
    extends WizardHandler {
        private static final int SIZING_WIZARD_WIDTH = 470;
        private static final int SIZING_WIZARD_HEIGHT = 550;

        protected String getWizardIdParameterId() {
            return "exportWizardId";
        }

        protected IWizardRegistry getWizardRegistry() {
            return PlatformUI.getWorkbench().getExportWizardRegistry();
        }

        protected void executeHandler(ExecutionEvent event) {
            IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
            if (activeWorkbenchWindow == null) {
                return;
            }
            ImportExportWizard wizard = new ImportExportWizard("export");
            IStructuredSelection selectionToPass = this.getSelectionToUse(event);
            wizard.init(activeWorkbenchWindow.getWorkbench(), selectionToPass);
            IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
            IDialogSettings wizardSettings = workbenchSettings.getSection("ImportExportAction");
            if (wizardSettings == null) {
                wizardSettings = workbenchSettings.addNewSection("ImportExportAction");
            }
            wizard.setDialogSettings(wizardSettings);
            wizard.setForcePreviousAndNextButtons(true);
            Shell parent = activeWorkbenchWindow.getShell();
            WizardDialog dialog = new WizardDialog(parent, (IWizard)wizard);
            dialog.create();
            dialog.getShell().setSize(Math.max(470, dialog.getShell().getSize().x), 550);
            activeWorkbenchWindow.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.export_wizard_context");
            dialog.open();
        }
    }

    public static final class Import
    extends WizardHandler {
        private static final int SIZING_WIZARD_WIDTH = 470;
        private static final int SIZING_WIZARD_HEIGHT = 550;

        protected String getWizardIdParameterId() {
            return "importWizardId";
        }

        protected IWizardRegistry getWizardRegistry() {
            return PlatformUI.getWorkbench().getImportWizardRegistry();
        }

        protected void executeHandler(ExecutionEvent event) {
            IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
            if (activeWorkbenchWindow == null) {
                return;
            }
            ImportExportWizard wizard = new ImportExportWizard("import");
            IStructuredSelection selectionToPass = this.getSelectionToUse(event);
            wizard.init(activeWorkbenchWindow.getWorkbench(), selectionToPass);
            IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
            IDialogSettings wizardSettings = workbenchSettings.getSection("ImportExportAction");
            if (wizardSettings == null) {
                wizardSettings = workbenchSettings.addNewSection("ImportExportAction");
            }
            wizard.setDialogSettings(wizardSettings);
            wizard.setForcePreviousAndNextButtons(true);
            Shell parent = activeWorkbenchWindow.getShell();
            WizardDialog dialog = new WizardDialog(parent, (IWizard)wizard);
            dialog.create();
            dialog.getShell().setSize(Math.max(470, dialog.getShell().getSize().x), 550);
            activeWorkbenchWindow.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.import_wizard_context");
            dialog.open();
        }
    }

    public static final class New
    extends WizardHandler {
        private static final int SIZING_WIZARD_WIDTH = 500;
        private static final int SIZING_WIZARD_HEIGHT = 500;
        private String categoryId = null;

        protected String getWizardIdParameterId() {
            return "newWizardId";
        }

        protected IWizardRegistry getWizardRegistry() {
            return PlatformUI.getWorkbench().getNewWizardRegistry();
        }

        public String getCategoryId() {
            return this.categoryId;
        }

        public void setCategoryId(String id) {
            this.categoryId = id;
        }

        protected IStructuredSelection getSelectionToUse(ExecutionEvent event) {
            ISelection selection = HandlerUtil.getCurrentSelection(event);
            StructuredSelection selectionToPass = StructuredSelection.EMPTY;
            if (selection instanceof IStructuredSelection) {
                selectionToPass = (IStructuredSelection)selection;
            } else {
                IEditorInput input;
                Object resource;
                IWorkbenchWindow activeWorkbenchWindow;
                IWorkbenchPart part;
                Class resourceClass = LegacyResourceSupport.getResourceClass();
                if (resourceClass != null && (part = (activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event)).getPartService().getActivePart()) instanceof IEditorPart && (resource = Util.getAdapter(input = ((IEditorPart)part).getEditorInput(), resourceClass)) != null) {
                    selectionToPass = new StructuredSelection(resource);
                }
            }
            return selectionToPass;
        }

        protected void executeHandler(ExecutionEvent event) {
            IWorkbenchWindow activeWorkbenchWindow = HandlerUtil.getActiveWorkbenchWindow(event);
            if (activeWorkbenchWindow == null) {
                return;
            }
            NewWizard wizard = new NewWizard();
            wizard.setCategoryId(this.categoryId);
            IStructuredSelection selectionToPass = this.getSelectionToUse(event);
            wizard.init(activeWorkbenchWindow.getWorkbench(), selectionToPass);
            IDialogSettings workbenchSettings = WorkbenchPlugin.getDefault().getDialogSettings();
            IDialogSettings wizardSettings = workbenchSettings.getSection("NewWizardAction");
            if (wizardSettings == null) {
                wizardSettings = workbenchSettings.addNewSection("NewWizardAction");
            }
            wizard.setDialogSettings(wizardSettings);
            wizard.setForcePreviousAndNextButtons(true);
            Shell parent = activeWorkbenchWindow.getShell();
            WizardDialog dialog = new WizardDialog(parent, (IWizard)wizard);
            dialog.create();
            dialog.getShell().setSize(Math.max(500, dialog.getShell().getSize().x), 500);
            activeWorkbenchWindow.getWorkbench().getHelpSystem().setHelp((Control)dialog.getShell(), "org.eclipse.ui.new_wizard_context");
            dialog.open();
        }
    }
}

