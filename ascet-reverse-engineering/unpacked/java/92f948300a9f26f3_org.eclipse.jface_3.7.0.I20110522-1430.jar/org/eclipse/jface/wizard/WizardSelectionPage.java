/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.wizard;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.wizard.IWizard;
import org.eclipse.jface.wizard.IWizardNode;
import org.eclipse.jface.wizard.IWizardPage;
import org.eclipse.jface.wizard.WizardPage;

public abstract class WizardSelectionPage
extends WizardPage {
    private IWizardNode selectedNode = null;
    private List selectedWizardNodes = new ArrayList();

    protected WizardSelectionPage(String pageName) {
        super(pageName);
        this.setPageComplete(false);
    }

    private void addSelectedNode(IWizardNode node) {
        if (node == null) {
            return;
        }
        if (this.selectedWizardNodes.contains(node)) {
            return;
        }
        this.selectedWizardNodes.add(node);
    }

    public boolean canFlipToNextPage() {
        return this.selectedNode != null;
    }

    public void dispose() {
        super.dispose();
        int i = 0;
        while (i < this.selectedWizardNodes.size()) {
            ((IWizardNode)this.selectedWizardNodes.get(i)).dispose();
            ++i;
        }
    }

    public IWizardPage getNextPage() {
        if (this.selectedNode == null) {
            return null;
        }
        boolean isCreated = this.selectedNode.isContentCreated();
        IWizard wizard = this.selectedNode.getWizard();
        if (wizard == null) {
            this.setSelectedNode(null);
            return null;
        }
        if (!isCreated) {
            wizard.addPages();
        }
        return wizard.getStartingPage();
    }

    public IWizardNode getSelectedNode() {
        return this.selectedNode;
    }

    protected void setSelectedNode(IWizardNode node) {
        this.addSelectedNode(node);
        this.selectedNode = node;
        if (this.isCurrentPage()) {
            this.getContainer().updateButtons();
        }
    }
}

