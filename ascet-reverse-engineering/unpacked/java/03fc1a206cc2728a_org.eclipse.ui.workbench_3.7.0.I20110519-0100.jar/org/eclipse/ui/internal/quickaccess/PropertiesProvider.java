/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal.quickaccess;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.dialogs.PropertyPageContributorManager;
import org.eclipse.ui.internal.dialogs.PropertyPageManager;
import org.eclipse.ui.internal.quickaccess.PropertiesElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessElement;
import org.eclipse.ui.internal.quickaccess.QuickAccessMessages;
import org.eclipse.ui.internal.quickaccess.QuickAccessProvider;

public class PropertiesProvider
extends QuickAccessProvider {
    private Map idToElement;

    public QuickAccessElement getElementForId(String id) {
        this.getElements();
        return (PropertiesElement)this.idToElement.get(id);
    }

    public QuickAccessElement[] getElements() {
        if (this.idToElement == null) {
            this.idToElement = new HashMap();
            IWorkbenchPage activePage = PlatformUI.getWorkbench().getActiveWorkbenchWindow().getActivePage();
            if (activePage != null) {
                PropertyPageManager pageManager = new PropertyPageManager();
                ISelection selection = activePage.getSelection();
                if (selection instanceof IStructuredSelection && !selection.isEmpty()) {
                    Object element = ((IStructuredSelection)selection).getFirstElement();
                    PropertyPageContributorManager.getManager().contribute(pageManager, element);
                    List list = pageManager.getElements(0);
                    IPreferenceNode[] properties = list.toArray(new IPreferenceNode[list.size()]);
                    int i = 0;
                    while (i < properties.length) {
                        PropertiesElement propertiesElement = new PropertiesElement(element, properties[i], this);
                        this.idToElement.put(propertiesElement.getId(), propertiesElement);
                        ++i;
                    }
                }
            }
        }
        return this.idToElement.values().toArray(new QuickAccessElement[this.idToElement.values().size()]);
    }

    public String getId() {
        return "org.eclipse.ui.properties";
    }

    public ImageDescriptor getImageDescriptor() {
        return WorkbenchImages.getImageDescriptor("IMG_OBJ_NODE");
    }

    public String getName() {
        return QuickAccessMessages.QuickAccess_Properties;
    }
}

