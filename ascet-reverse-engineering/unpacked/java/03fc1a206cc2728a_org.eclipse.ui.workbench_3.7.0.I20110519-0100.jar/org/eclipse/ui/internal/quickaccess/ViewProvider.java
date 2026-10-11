/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.IViewReference;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;
import org.eclipse.ui.internal.quickaccess.ViewElement;
import org.eclipse.ui.views.IViewDescriptor;
import org.eclipse.ui.views.IViewRegistry;

public class ViewProvider
extends QuickAccessProvider {
    private QuickAccessElement[] cachedElements;
    private Map idToElement = new HashMap();
    private Collection multiInstanceViewIds = new HashSet(0);

    public String getId() {
        return "org.eclipse.ui.views";
    }

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (ViewElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage() == null) {
            this.cachedElements = null;
            return new QuickAccessElement[0];
        }
        if (this.cachedElements == null) {
            IViewDescriptor[] views = PlatformUI.getWorkbench().getViewRegistry().getViews();
            HashSet elements = new HashSet(views.length);
            int i = 0;
            while (i < views.length) {
                if (!WorkbenchActivityHelper.filterItem(views[i])) {
                    this.addElement(views[i], elements, null, null);
                }
                ++i;
            }
            this.addOpenViews(elements);
            this.markMultiInstance(elements);
            this.cachedElements = elements.toArray(new QuickAccessElement[elements.size()]);
        }
        return this.cachedElements;
    }

    private void addElement(IViewDescriptor viewDesc, Collection elements, String secondaryId, String desc) {
        ViewElement viewElement = new ViewElement(viewDesc, this);
        viewElement.setSecondaryId(secondaryId);
        viewElement.setContentDescription(desc);
        boolean added = elements.add(viewElement);
        if (added) {
            this.idToElement.put(viewElement.getId(), viewElement);
        } else {
            this.multiInstanceViewIds.add(viewDesc.getId());
        }
    }

    public void addOpenViews(Collection elements) {
        IWorkbenchPage page = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage();
        IViewRegistry viewRegistry = PlatformUI.getWorkbench().getViewRegistry();
        IViewReference[] refs = page.getViewReferences();
        int i = 0;
        while (i < refs.length) {
            IViewDescriptor viewDescriptor = viewRegistry.find(refs[i].getId());
            this.addElement(viewDescriptor, elements, refs[i].getSecondaryId(), refs[i].getContentDescription());
            ++i;
        }
    }

    protected void markMultiInstance(Collection elements) {
        Iterator i = this.multiInstanceViewIds.iterator();
        while (i.hasNext()) {
            String viewId = (String)i.next();
            ViewElement firstInstance = null;
            Iterator j = elements.iterator();
            while (j.hasNext()) {
                ViewElement viewElement = (ViewElement)j.next();
                if (!viewElement.getPrimaryId().equals(viewId)) continue;
                if (firstInstance == null) {
                    firstInstance = viewElement;
                    continue;
                }
                firstInstance.setMultiInstance(true);
                viewElement.setMultiInstance(true);
            }
        }
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_VIEW_DEFAULTVIEW_MISC");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_Views;
    }
}

