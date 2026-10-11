/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.ui.wizards;

import org.eclipse.core.runtime.IPath;
import org.eclipse.ui.wizards.IWizardDescriptor;

public interface IWizardCategory {
    public IWizardCategory findCategory(IPath var1);

    public IWizardDescriptor findWizard(String var1);

    public IWizardCategory[] getCategories();

    public String getId();

    public String getLabel();

    public IWizardCategory getParent();

    public IPath getPath();

    public IWizardDescriptor[] getWizards();
}

