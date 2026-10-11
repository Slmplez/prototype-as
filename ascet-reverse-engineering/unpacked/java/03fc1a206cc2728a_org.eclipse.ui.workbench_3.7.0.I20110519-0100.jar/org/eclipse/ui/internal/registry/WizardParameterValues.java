/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.IParameterValues
 */
package org.eclipse.ui.internal.registry;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.commands.IParameterValues;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;
import org.eclipse.ui.wizards.IWizardRegistry;

public abstract class WizardParameterValues
implements IParameterValues {
    private void addParameterValues(Map values, IWizardCategory wizardCategory) {
        IWizardDescriptor[] wizardDescriptors = wizardCategory.getWizards();
        int i = 0;
        while (i < wizardDescriptors.length) {
            IWizardDescriptor wizardDescriptor = wizardDescriptors[i];
            String name = wizardDescriptor.getLabel();
            String id = wizardDescriptor.getId();
            String value = (String)values.get(name);
            if (value != null && !value.equals(id)) {
                name = String.valueOf(name) + " (" + id + ")";
            }
            values.put(name, id);
            ++i;
        }
        IWizardCategory[] childCategories = wizardCategory.getCategories();
        int i2 = 0;
        while (i2 < childCategories.length) {
            IWizardCategory childCategory = childCategories[i2];
            this.addParameterValues(values, childCategory);
            ++i2;
        }
    }

    public Map getParameterValues() {
        HashMap values = new HashMap();
        IWizardRegistry wizardRegistry = this.getWizardRegistry();
        this.addParameterValues(values, wizardRegistry.getRootCategory());
        return values;
    }

    protected abstract IWizardRegistry getWizardRegistry();

    public static final class Export
    extends WizardParameterValues {
        protected IWizardRegistry getWizardRegistry() {
            return PlatformUI.getWorkbench().getExportWizardRegistry();
        }
    }

    public static final class Import
    extends WizardParameterValues {
        protected IWizardRegistry getWizardRegistry() {
            return PlatformUI.getWorkbench().getImportWizardRegistry();
        }
    }

    public static final class New
    extends WizardParameterValues {
        protected IWizardRegistry getWizardRegistry() {
            return PlatformUI.getWorkbench().getNewWizardRegistry();
        }
    }
}

