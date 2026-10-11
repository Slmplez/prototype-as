/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.wizard.IWizard
 *  org.eclipse.jface.wizard.IWizardNode
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardNode;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.IPluginContribution;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWizard;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardSelectionPage;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.wizards.IWizardDescriptor;

public abstract class WorkbenchWizardNode
implements IWizardNode,
IPluginContribution {
    protected WorkbenchWizardSelectionPage parentWizardPage;
    protected IWizard wizard;
    protected IWizardDescriptor wizardElement;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public WorkbenchWizardNode(WorkbenchWizardSelectionPage aWizardPage, IWizardDescriptor element) {
        this.parentWizardPage = aWizardPage;
        this.wizardElement = element;
    }

    public abstract IWorkbenchWizard createWizard() throws CoreException;

    public void dispose() {
    }

    protected IStructuredSelection getCurrentResourceSelection() {
        return this.parentWizardPage.getCurrentResourceSelection();
    }

    public Point getExtent() {
        return new Point(-1, -1);
    }

    public String getLocalId() {
        IPluginContribution contribution;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.IPluginContribution");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((contribution = (IPluginContribution)Util.getAdapter(this.wizardElement, clazz)) != null) {
            return contribution.getLocalId();
        }
        return this.wizardElement.getId();
    }

    public String getPluginId() {
        IPluginContribution contribution;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.IPluginContribution");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((contribution = (IPluginContribution)Util.getAdapter(this.wizardElement, clazz)) != null) {
            return contribution.getPluginId();
        }
        return null;
    }

    public IWizard getWizard() {
        if (this.wizard != null) {
            return this.wizard;
        }
        final IWorkbenchWizard[] workbenchWizard = new IWorkbenchWizard[1];
        final IStatus[] statuses = new IStatus[1];
        BusyIndicator.showWhile((Display)this.parentWizardPage.getShell().getDisplay(), (Runnable)new Runnable(){

            public void run() {
                SafeRunner.run((ISafeRunnable)new SafeRunnable(this, statuses, workbenchWizard){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ IStatus[] val$statuses;
                    private final /* synthetic */ IWorkbenchWizard[] val$workbenchWizard;
                    {
                        this.this$1 = var1_1;
                        this.val$statuses = iStatusArray;
                        this.val$workbenchWizard = iWorkbenchWizardArray;
                    }

                    public void handleException(Throwable e) {
                        IPluginContribution contribution;
                        IWizardDescriptor iWizardDescriptor = 1.access$0(this.this$1).wizardElement;
                        Class<?> clazz = class$0;
                        if (clazz == null) {
                            try {
                                clazz = class$0 = Class.forName("org.eclipse.ui.IPluginContribution");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        this.val$statuses[0] = new Status(4, (contribution = (IPluginContribution)Util.getAdapter(iWizardDescriptor, clazz)) != null ? contribution.getPluginId() : WorkbenchPlugin.PI_WORKBENCH, 0, WorkbenchMessages.WorkbenchWizard_errorMessage, e);
                    }

                    public void run() {
                        try {
                            this.val$workbenchWizard[0] = 1.access$0(this.this$1).createWizard();
                        }
                        catch (CoreException e) {
                            IPluginContribution contribution;
                            IWizardDescriptor iWizardDescriptor = 1.access$0(this.this$1).wizardElement;
                            Class<?> clazz = class$0;
                            if (clazz == null) {
                                try {
                                    clazz = class$0 = Class.forName("org.eclipse.ui.IPluginContribution");
                                }
                                catch (ClassNotFoundException classNotFoundException) {
                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                }
                            }
                            this.val$statuses[0] = new Status(4, (contribution = (IPluginContribution)Util.getAdapter(iWizardDescriptor, clazz)) != null ? contribution.getPluginId() : WorkbenchPlugin.PI_WORKBENCH, 0, WorkbenchMessages.WorkbenchWizard_errorMessage, (Throwable)e);
                        }
                    }
                });
            }

            static /* synthetic */ WorkbenchWizardNode access$0(1 var0) {
                return var0.WorkbenchWizardNode.this;
            }
        });
        if (statuses[0] != null) {
            this.parentWizardPage.setErrorMessage(WorkbenchMessages.WorkbenchWizard_errorMessage);
            StatusAdapter statusAdapter = new StatusAdapter(statuses[0]);
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.swt.widgets.Shell");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            statusAdapter.addAdapter(clazz, this.parentWizardPage.getShell());
            statusAdapter.setProperty(StatusAdapter.TITLE_PROPERTY, WorkbenchMessages.WorkbenchWizard_errorTitle);
            StatusManager.getManager().handle(statusAdapter, 2);
            return null;
        }
        IStructuredSelection currentSelection = this.getCurrentResourceSelection();
        currentSelection = this.wizardElement.adaptedSelection(currentSelection);
        workbenchWizard[0].init(this.getWorkbench(), currentSelection);
        this.wizard = workbenchWizard[0];
        return this.wizard;
    }

    public IWizardDescriptor getWizardElement() {
        return this.wizardElement;
    }

    protected IWorkbench getWorkbench() {
        return this.parentWizardPage.getWorkbench();
    }

    public boolean isContentCreated() {
        return this.wizard != null;
    }
}

