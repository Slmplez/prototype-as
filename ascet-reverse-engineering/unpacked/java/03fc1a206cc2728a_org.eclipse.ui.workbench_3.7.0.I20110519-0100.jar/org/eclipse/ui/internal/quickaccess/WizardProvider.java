/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;
import org.eclipse.ui.internal.quickaccess.WizardElement;
import org.eclipse.ui.wizards.IWizardCategory;
import org.eclipse.ui.wizards.IWizardDescriptor;

public class WizardProvider
extends QuickAccessProvider {
    private QuickAccessElement[] cachedElements;
    private Map idToElement = new HashMap();

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (WizardElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (this.cachedElements == null) {
            IWizardCategory rootCategory = WorkbenchPlugin.getDefault().getNewWizardRegistry().getRootCategory();
            ArrayList result = new ArrayList();
            this.collectWizards(rootCategory, result);
            IWizardDescriptor[] wizards = result.toArray(new IWizardDescriptor[result.size()]);
            int i = 0;
            while (i < wizards.length) {
                if (!WorkbenchActivityHelper.filterItem(wizards[i])) {
                    WizardElement wizardElement = new WizardElement(wizards[i], this);
                    this.idToElement.put(wizardElement.getId(), wizardElement);
                }
                ++i;
            }
            this.cachedElements = this.idToElement.values().toArray(new QuickAccessElement[this.idToElement.size()]);
        }
        return this.cachedElements;
    }

    private void collectWizards(IWizardCategory category, List result) {
        result.addAll(Arrays.asList(category.getWizards()));
        IWizardCategory[] childCategories = category.getCategories();
        int i = 0;
        while (i < childCategories.length) {
            this.collectWizards(childCategories[i], result);
            ++i;
        }
    }

    public String getId() {
        return "org.eclipse.ui.wizards";
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_NODE");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_New;
    }
}

