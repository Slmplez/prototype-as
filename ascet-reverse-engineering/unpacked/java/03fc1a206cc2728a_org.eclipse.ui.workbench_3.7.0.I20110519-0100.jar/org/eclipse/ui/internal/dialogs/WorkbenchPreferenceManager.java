/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.jface.preference.IPreferenceNode
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.jface.preference.PreferenceNode
 */
package org.eclipse.ui.internal.dialogs;

import java.util.Collection;
import java.util.Iterator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.jface.preference.IPreferenceNode;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.preference.PreferenceNode;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.dialogs.WorkbenchPreferenceNode;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExpressionNode;
import org.eclipse.ui.internal.registry.PreferencePageRegistryReader;

public class WorkbenchPreferenceManager
extends PreferenceManager
implements IExtensionChangeHandler {
    public WorkbenchPreferenceManager(char separatorChar) {
        super(separatorChar, (PreferenceNode)new WorkbenchPreferenceExpressionNode(""));
        IExtensionTracker tracker = PlatformUI.getWorkbench().getExtensionTracker();
        tracker.registerHandler((IExtensionChangeHandler)this, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)this.getExtensionPointFilter()));
        Platform.getExtensionRegistry().addRegistryChangeListener(new IRegistryChangeListener(){

            public void registryChanged(IRegistryChangeEvent event) {
                if (event.getExtensionDeltas("org.eclipse.ui", "keywords").length > 0) {
                    Iterator j = WorkbenchPreferenceManager.this.getElements(1).iterator();
                    while (j.hasNext()) {
                        ((WorkbenchPreferenceNode)j.next()).clearKeywords();
                    }
                }
            }
        });
    }

    public void addPages(Collection pageContributions) {
        Iterator iterator = pageContributions.iterator();
        while (iterator.hasNext()) {
            Object next = iterator.next();
            if (!(next instanceof WorkbenchPreferenceNode)) continue;
            WorkbenchPreferenceNode wNode = (WorkbenchPreferenceNode)next;
            this.addToRoot((IPreferenceNode)wNode);
            this.registerNode(wNode);
        }
    }

    private void registerNode(WorkbenchPreferenceNode node) {
        PlatformUI.getWorkbench().getExtensionTracker().registerObject(node.getConfigurationElement().getDeclaringExtension(), (Object)node, 2);
        IPreferenceNode[] subNodes = node.getSubNodes();
        int i = 0;
        while (i < subNodes.length) {
            this.registerNode((WorkbenchPreferenceNode)subNodes[i]);
            ++i;
        }
    }

    public void addExtension(IExtensionTracker tracker, IExtension extension) {
        IConfigurationElement[] elements = extension.getConfigurationElements();
        int i = 0;
        while (i < elements.length) {
            WorkbenchPreferenceNode node = PreferencePageRegistryReader.createNode(elements[i]);
            if (node != null) {
                this.registerNode(node);
                String category = node.getCategory();
                if (category == null) {
                    this.addToRoot((IPreferenceNode)node);
                } else {
                    IPreferenceNode parent = null;
                    Iterator j = this.getElements(1).iterator();
                    while (j.hasNext()) {
                        IPreferenceNode element = (IPreferenceNode)j.next();
                        if (!category.equals(element.getId())) continue;
                        parent = element;
                        break;
                    }
                    if (parent == null) {
                        WorkbenchPlugin.log("Invalid preference page path: " + category);
                        this.addToRoot((IPreferenceNode)node);
                    } else {
                        parent.add((IPreferenceNode)node);
                    }
                }
            }
            ++i;
        }
    }

    private IExtensionPoint getExtensionPointFilter() {
        return Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "preferencePages");
    }

    public void removeExtension(IExtension extension, Object[] objects) {
        int i = 0;
        while (i < objects.length) {
            if (objects[i] instanceof IPreferenceNode) {
                IPreferenceNode wNode = (IPreferenceNode)objects[i];
                wNode.disposeResources();
                this.deepRemove(this.getRoot(), wNode);
            }
            ++i;
        }
    }

    private boolean deepRemove(IPreferenceNode parent, IPreferenceNode nodeToRemove) {
        if (parent == nodeToRemove && parent == this.getRoot()) {
            this.removeAll();
            return true;
        }
        if (parent.remove(nodeToRemove)) {
            return true;
        }
        IPreferenceNode[] subNodes = parent.getSubNodes();
        int i = 0;
        while (i < subNodes.length) {
            if (this.deepRemove(subNodes[i], nodeToRemove)) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

