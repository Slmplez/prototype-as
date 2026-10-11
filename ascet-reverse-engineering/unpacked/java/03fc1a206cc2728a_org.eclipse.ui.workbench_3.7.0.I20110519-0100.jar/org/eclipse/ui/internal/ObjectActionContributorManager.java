/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.internal.IObjectActionContributor;
import org.eclipse.ui.internal.IObjectContributor;
import org.eclipse.ui.internal.ObjectActionContributorReader;
import org.eclipse.ui.internal.ObjectContributorManager;

public class ObjectActionContributorManager
extends ObjectContributorManager {
    private static ObjectActionContributorManager sharedInstance;

    public ObjectActionContributorManager() {
        this.loadContributors();
    }

    public boolean contributeObjectActions(IWorkbenchPart part, IMenuManager popupMenu, ISelectionProvider selProv) {
        IObjectActionContributor contributor;
        ISelection selection = selProv.getSelection();
        if (selection == null) {
            return false;
        }
        ArrayList<ISelection> elements = null;
        if (selection instanceof IStructuredSelection) {
            elements = ((IStructuredSelection)selection).toList();
        } else {
            elements = new ArrayList<ISelection>(1);
            elements.add(selection);
        }
        List contributors = this.getContributors(elements);
        if (contributors.isEmpty()) {
            return false;
        }
        boolean actualContributions = false;
        ArrayList overrides = new ArrayList(4);
        Iterator it = contributors.iterator();
        while (it.hasNext()) {
            contributor = (IObjectActionContributor)it.next();
            if (!this.isApplicableTo(elements, (IObjectContributor)contributor)) {
                it.remove();
                continue;
            }
            if (contributor.contributeObjectMenus(popupMenu, selProv)) {
                actualContributions = true;
            }
            contributor.contributeObjectActionIdOverrides(overrides);
        }
        it = contributors.iterator();
        while (it.hasNext()) {
            contributor = (IObjectActionContributor)it.next();
            if (!contributor.contributeObjectActions(part, popupMenu, selProv, overrides)) continue;
            actualContributions = true;
        }
        return actualContributions;
    }

    public static ObjectActionContributorManager getManager() {
        if (sharedInstance == null) {
            sharedInstance = new ObjectActionContributorManager();
        }
        return sharedInstance;
    }

    private void loadContributors() {
        ObjectActionContributorReader reader = new ObjectActionContributorReader();
        reader.readPopupContributors(this);
    }

    public void addExtension(IExtensionTracker tracker, IExtension addedExtension) {
        IConfigurationElement[] addedElements = addedExtension.getConfigurationElements();
        int i = 0;
        while (i < addedElements.length) {
            ObjectActionContributorReader reader = new ObjectActionContributorReader();
            reader.setManager(this);
            reader.readElement(addedElements[i]);
            ++i;
        }
    }

    protected String getExtensionPointFilter() {
        return "popupMenus";
    }
}

