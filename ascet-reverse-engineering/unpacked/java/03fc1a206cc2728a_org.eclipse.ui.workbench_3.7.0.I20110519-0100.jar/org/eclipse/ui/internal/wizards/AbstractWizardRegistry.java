/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.wizards;

import org.eclipse.ui.internal.dialogs.WizardCollectionElement;
import org.eclipse.ui.internal.dialogs.WorkbenchWizardElement;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;
import org.eclipse.ui.wizards.IWizardRegistry;

public abstract class AbstractWizardRegistry
implements IWizardRegistry {
    private boolean initialized = false;
    private WorkbenchWizardElement[] primaryWizards;
    private WizardCollectionElement wizardElements;

    public void dispose() {
        this.primaryWizards = null;
        this.wizardElements = null;
        this.initialized = false;
    }

    protected abstract void doInitialize();

    public IWizardCategory findCategory(String id) {
        this.initialize();
        return this.wizardElements.findCategory(id);
    }

    public IWizardDescriptor findWizard(String id) {
        this.initialize();
        return this.wizardElements.findWizard(id, true);
    }

    public IWizardDescriptor[] getPrimaryWizards() {
        this.initialize();
        return this.primaryWizards;
    }

    public IWizardCategory getRootCategory() {
        this.initialize();
        return this.wizardElements;
    }

    protected WizardCollectionElement getWizardElements() {
        this.initialize();
        return this.wizardElements;
    }

    protected final synchronized void initialize() {
        if (this.isInitialized()) {
            return;
        }
        this.initialized = true;
        this.doInitialize();
    }

    private boolean isInitialized() {
        return this.initialized;
    }

    protected void setPrimaryWizards(WorkbenchWizardElement[] primaryWizards) {
        this.primaryWizards = primaryWizards;
    }

    protected void setWizardElements(WizardCollectionElement wizardElements) {
        this.wizardElements = wizardElements;
    }
}

