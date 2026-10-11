/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.PreferenceNode
 *  org.eclipse.jface.viewers.IStructuredSelection
 */
package org.eclipse.ui.internal.dialogs;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.PreferenceNode;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.ui.internal.ObjectContributorManager;
import org.eclipse.ui.internal.dialogs.PropertyPageManager;
import org.eclipse.ui.internal.dialogs.RegistryPageContributor;
import org.eclipse.ui.internal.registry.PropertyPagesRegistryReader;

public class PropertyPageContributorManager
extends ObjectContributorManager {
    private static PropertyPageContributorManager sharedInstance = null;

    public PropertyPageContributorManager() {
        this.loadContributors();
    }

    public boolean contribute(PropertyPageManager manager, Object object) {
        CategorizedPageNode next;
        Collection result = null;
        if (object instanceof IStructuredSelection) {
            Object[] objs = ((IStructuredSelection)object).toArray();
            int i = 0;
            while (i < objs.length) {
                List contribs = this.getContributors(objs[i]);
                if (result == null) {
                    result = new LinkedHashSet(contribs);
                } else {
                    result.retainAll(contribs);
                }
                ++i;
            }
        } else {
            result = this.getContributors(object);
        }
        if (result == null || result.size() == 0) {
            return false;
        }
        List catNodes = this.buildNodeList(result);
        Iterator resultIterator = catNodes.iterator();
        HashMap<CategorizedPageNode, PreferenceNode> catPageNodeToPages = new HashMap<CategorizedPageNode, PreferenceNode>();
        boolean actualContributions = false;
        while (resultIterator.hasNext()) {
            PreferenceNode page;
            next = (CategorizedPageNode)resultIterator.next();
            RegistryPageContributor ppcont = next.contributor;
            if (!ppcont.isApplicableTo(object) || (page = ppcont.contributePropertyPage(manager, object)) == null) continue;
            catPageNodeToPages.put(next, page);
            actualContributions = true;
        }
        if (actualContributions) {
            resultIterator = catNodes.iterator();
            while (resultIterator.hasNext()) {
                next = (CategorizedPageNode)resultIterator.next();
                PreferenceNode child = (PreferenceNode)catPageNodeToPages.get(next);
                if (child == null) continue;
                PreferenceNode parent = null;
                if (next.parent != null) {
                    parent = (PreferenceNode)catPageNodeToPages.get(next.parent);
                }
                if (parent == null) {
                    manager.addToRoot((IPreferenceNode)child);
                    continue;
                }
                parent.add((IPreferenceNode)child);
            }
        }
        return actualContributions;
    }

    private List buildNodeList(Collection nodes) {
        Hashtable<String, CategorizedPageNode> mapping = new Hashtable<String, CategorizedPageNode>();
        Iterator nodesIterator = nodes.iterator();
        while (nodesIterator.hasNext()) {
            RegistryPageContributor page = (RegistryPageContributor)nodesIterator.next();
            mapping.put(page.getPageId(), new CategorizedPageNode(page));
        }
        Iterator values = mapping.values().iterator();
        ArrayList<CategorizedPageNode> returnValue = new ArrayList<CategorizedPageNode>();
        while (values.hasNext()) {
            Object parent;
            CategorizedPageNode next = (CategorizedPageNode)values.next();
            returnValue.add(next);
            if (next.contributor.getCategory() == null || (parent = mapping.get(next.contributor.getCategory())) == null) continue;
            next.setParent((CategorizedPageNode)parent);
        }
        return returnValue;
    }

    public static PropertyPageContributorManager getManager() {
        if (sharedInstance == null) {
            sharedInstance = new PropertyPageContributorManager();
        }
        return sharedInstance;
    }

    private void loadContributors() {
        PropertyPagesRegistryReader reader = new PropertyPagesRegistryReader(this);
        reader.registerPropertyPages(Platform.getExtensionRegistry());
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] addedElements = extension.getConfigurationElements();
        int i = 0;
        while (i < addedElements.length) {
            PropertyPagesRegistryReader reader = new PropertyPagesRegistryReader(this);
            reader.readElement(addedElements[i]);
            ++i;
        }
    }

    public Collection getApplicableContributors(Object element) {
        if (element instanceof IStructuredSelection) {
            return this.getApplicableContributors((IStructuredSelection)element);
        }
        List contributors = this.getContributors(element);
        ArrayList<RegistryPageContributor> result = new ArrayList<RegistryPageContributor>();
        Iterator iter = contributors.iterator();
        while (iter.hasNext()) {
            RegistryPageContributor contributor = (RegistryPageContributor)iter.next();
            if (!contributor.isApplicableTo(element)) continue;
            result.add(contributor);
        }
        return result;
    }

    public Collection getApplicableContributors(IStructuredSelection selection) {
        Iterator it = selection.iterator();
        LinkedHashSet result = null;
        while (it.hasNext()) {
            Object element = it.next();
            Collection collection = this.getApplicableContributors(element);
            if (result == null) {
                result = new LinkedHashSet(collection);
                continue;
            }
            result.retainAll(collection);
        }
        if (result != null && !result.isEmpty() && selection.size() > 1) {
            it = result.iterator();
            while (it.hasNext()) {
                RegistryPageContributor contrib = (RegistryPageContributor)it.next();
                if (contrib.supportsMultipleSelection()) continue;
                it.remove();
            }
        }
        return result;
    }

    protected String getExtensionPointFilter() {
        return "propertyPages";
    }

    private class CategorizedPageNode {
        RegistryPageContributor contributor;
        CategorizedPageNode parent;

        CategorizedPageNode(RegistryPageContributor page) {
            this.contributor = page;
        }

        void setParent(CategorizedPageNode node) {
            this.parent = node;
        }
    }
}

