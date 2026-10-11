/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.wizards;

import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

public interface IWizardRegistry {
    public IWizardDescriptor findWizard(String var1);

    public IWizardDescriptor[] getPrimaryWizards();

    public IWizardCategory findCategory(String var1);

    public IWizardCategory getRootCategory();
}

