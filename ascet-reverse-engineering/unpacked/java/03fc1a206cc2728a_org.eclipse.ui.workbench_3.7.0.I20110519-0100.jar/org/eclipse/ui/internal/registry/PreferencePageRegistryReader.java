/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.jface.preference.IPreferenceNode
 */
package org.eclipse.ui.internal.registry;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.activities.WorkbenchActivityHelper;
import org.eclipse.ui.internal.Workbench;
import org.eclipse.ui.internal.dialogs.WorkbenchPreferenceNode;
import org.eclipse.ui.internal.registry.CategorizedPageRegistryReader;

public class PreferencePageRegistryReader
extends CategorizedPageRegistryReader {
    private static final String TAG_PAGE = "page";
    private List nodes;
    private IWorkbench workbench;

    public PreferencePageRegistryReader(IWorkbench newWorkbench) {
        this.workbench = newWorkbench;
    }

    Object findNode(String id) {
        int i = 0;
        while (i < this.nodes.size()) {
            WorkbenchPreferenceNode node = (WorkbenchPreferenceNode)this.nodes.get(i);
            if (node.getId().equals(id)) {
                return node;
            }
            ++i;
        }
        return null;
    }

    Object findNode(Object parent, String currentToken) {
        IPreferenceNode[] subNodes = ((WorkbenchPreferenceNode)parent).getSubNodes();
        int i = 0;
        while (i < subNodes.length) {
            WorkbenchPreferenceNode node = (WorkbenchPreferenceNode)subNodes[i];
            if (node.getId().equals(currentToken)) {
                return node;
            }
            ++i;
        }
        return null;
    }

    void add(Object parent, Object node) {
        ((IPreferenceNode)parent).add((IPreferenceNode)node);
    }

    CategorizedPageRegistryReader.CategoryNode createCategoryNode(CategorizedPageRegistryReader reader, Object object) {
        return new PreferencesCategoryNode(reader, (WorkbenchPreferenceNode)object);
    }

    String getCategory(Object node) {
        return ((WorkbenchPreferenceNode)node).getCategory();
    }

    Collection getNodes() {
        return this.nodes;
    }

    public void loadFromRegistry(IExtensionRegistry registry) {
        this.nodes = new ArrayList();
        this.readRegistry(registry, "org.eclipse.ui", "preferencePages");
        this.processNodes();
    }

    protected boolean readElement(IConfigurationElement element) {
        if (!element.getName().equals(TAG_PAGE)) {
            return false;
        }
        WorkbenchPreferenceNode node = PreferencePageRegistryReader.createNode(element);
        if (node != null) {
            if (this.workbench instanceof Workbench && node.getId().equals(((Workbench)this.workbench).getMainPreferencePageId())) {
                node.setPriority(-1);
            }
            this.nodes.add(node);
        }
        return true;
    }

    public static WorkbenchPreferenceNode createNode(IConfigurationElement element) {
        boolean classMissing;
        boolean nameMissing = element.getAttribute("name") == null;
        String id = element.getAttribute("id");
        boolean bl = classMissing = PreferencePageRegistryReader.getClassValue(element, "class") == null;
        if (nameMissing) {
            PreferencePageRegistryReader.logMissingAttribute(element, "name");
        }
        if (id == null) {
            PreferencePageRegistryReader.logMissingAttribute(element, "id");
        }
        if (classMissing) {
            PreferencePageRegistryReader.logMissingAttribute(element, "class");
        }
        if (nameMissing || id == null || classMissing) {
            return null;
        }
        WorkbenchPreferenceNode node = new WorkbenchPreferenceNode(id, element);
        return node;
    }

    public Collection getTopLevelNodes() {
        return WorkbenchActivityHelper.restrictCollection(this.topLevelNodes, new ArrayList());
    }

    class PreferencesCategoryNode
    extends CategorizedPageRegistryReader.CategoryNode {
        WorkbenchPreferenceNode node;

        public PreferencesCategoryNode(CategorizedPageRegistryReader reader, WorkbenchPreferenceNode nodeToCategorize) {
            super(reader);
            this.node = nodeToCategorize;
        }

        String getLabelText() {
            return this.node.getLabelText();
        }

        String getLabelText(Object element) {
            return ((WorkbenchPreferenceNode)element).getLabelText();
        }

        Object getNode() {
            return this.node;
        }
    }
}

