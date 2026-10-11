/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.quickaccess.PerspectiveElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public class PerspectiveProvider
extends QuickAccessProvider {
    private QuickAccessElement[] cachedElements;
    private Map idToElement = new HashMap();

    public String getId() {
        return "org.eclipse.ui.perspectives";
    }

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (PerspectiveElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (this.cachedElements == null) {
            IPerspectiveDescriptor[] perspectives = PlatformUI.getWorkbench().getPerspectiveRegistry().getPerspectives();
            int i = 0;
            while (i < perspectives.length) {
                if (!WorkbenchActivityHelper.filterItem(perspectives[i])) {
                    PerspectiveElement perspectiveElement = new PerspectiveElement(perspectives[i], this);
                    this.idToElement.put(perspectiveElement.getId(), perspectiveElement);
                }
                ++i;
            }
            this.cachedElements = this.idToElement.values().toArray(new QuickAccessElement[this.idToElement.size()]);
        }
        return this.cachedElements;
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_ETOOL_DEF_PERSPECTIVE");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_Perspectives;
    }
}

