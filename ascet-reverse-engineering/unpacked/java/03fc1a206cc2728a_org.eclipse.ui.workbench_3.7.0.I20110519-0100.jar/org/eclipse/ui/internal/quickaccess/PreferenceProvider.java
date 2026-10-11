/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.quickaccess.PreferenceElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public class PreferenceProvider
extends QuickAccessProvider {
    private QuickAccessElement[] cachedElements;
    private Map idToElement = new HashMap();

    public String getId() {
        return "org.eclipse.ui.preferences";
    }

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (PreferenceElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (this.cachedElements == null) {
            ArrayList list = new ArrayList();
            this.collectElements("", PlatformUI.getWorkbench().getPreferenceManager().getRootSubNodes(), list);
            this.cachedElements = new PreferenceElement[list.size()];
            int i = 0;
            while (i < list.size()) {
                PreferenceElement preferenceElement = (PreferenceElement)list.get(i);
                this.cachedElements[i] = preferenceElement;
                this.idToElement.put(preferenceElement.getId(), preferenceElement);
                ++i;
            }
        }
        return this.cachedElements;
    }

    private void collectElements(String prefix, IPreferenceNode[] subNodes, List result) {
        int i = 0;
        while (i < subNodes.length) {
            if (!WorkbenchActivityHelper.filterItem(subNodes[i])) {
                PreferenceElement preferenceElement = new PreferenceElement(subNodes[i], prefix, this);
                result.add(preferenceElement);
                String nestedPrefix = prefix.length() == 0 ? subNodes[i].getLabelText() : String.valueOf(prefix) + "/" + subNodes[i].getLabelText();
                this.collectElements(nestedPrefix, subNodes[i].getSubNodes(), result);
            }
            ++i;
        }
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_NODE");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_Preferences;
    }
}

