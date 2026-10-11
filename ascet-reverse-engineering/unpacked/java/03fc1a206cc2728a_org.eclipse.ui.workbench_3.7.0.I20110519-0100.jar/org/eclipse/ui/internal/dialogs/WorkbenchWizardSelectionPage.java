/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredSelection
 *  org.eclipse.jface.viewers.TableViewer
 *  org.eclipse.jface.wizard.IWizardNode
 *  org.eclipse.jface.wizard.IWizardPage
 *  org.eclipse.jface.wizard.WizardSelectionPage
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.TableViewer;
import org.eclipse.jface.wizard.IWizardNode;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.WizardSelectionPage;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.activities.ITriggerPoint;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.model.AdaptableList;

public abstract class WorkbenchWizardSelectionPage
extends WizardSelectionPage {
    protected IWorkbench workbench;
    protected AdaptableList wizardElements;
    public TableViewer wizardSelectionViewer;
    protected IStructuredSelection currentResourceSelection;
    protected String triggerPointId;

    public WorkbenchWizardSelectionPage(String name, IWorkbench aWorkbench, IStructuredSelection currentSelection, AdaptableList elements, String triggerPointId) {
        super(name);
        this.wizardElements = elements;
        this.currentResourceSelection = currentSelection;
        this.workbench = aWorkbench;
        this.triggerPointId = triggerPointId;
        this.setTitle(WorkbenchMessages.Select);
    }

    protected WorkbenchWizardElement findWizard(String searchId) {
        Object[] children = this.wizardElements.getChildren();
        int i = 0;
        while (i < children.length) {
            WorkbenchWizardElement currentWizard = (WorkbenchWizardElement)children[i];
            if (currentWizard.getId().equals(searchId)) {
                return currentWizard;
            }
            ++i;
        }
        return null;
    }

    public IStructuredSelection getCurrentResourceSelection() {
        return this.currentResourceSelection;
    }

    public IWorkbench getWorkbench() {
        return this.workbench;
    }

    public void selectWizardNode(IWizardNode node) {
        this.setSelectedNode(node);
    }

    public IWizardPage getNextPage() {
        ITriggerPoint triggerPoint = this.getWorkbench().getActivitySupport().getTriggerPointManager().getTriggerPoint(this.triggerPointId);
        if (triggerPoint == null || WorkbenchActivityHelper.allowUseOf(triggerPoint, this.getSelectedNode())) {
            return super.getNextPage();
        }
        return null;
    }
}

