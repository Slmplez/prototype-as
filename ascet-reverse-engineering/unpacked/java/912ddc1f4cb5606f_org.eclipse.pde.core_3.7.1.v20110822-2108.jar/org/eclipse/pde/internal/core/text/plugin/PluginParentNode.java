/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.text.plugin;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.IPluginParent;
import org.eclipse.pde.internal.core.text.IDocumentElementNode;
import org.eclipse.pde.internal.core.text.plugin.PluginObjectNode;

public class PluginParentNode
extends PluginObjectNode
implements IPluginParent {
    private static final long serialVersionUID = 1L;

    public void add(int index, IPluginObject child) throws CoreException {
        this.addChildNode((IDocumentElementNode)((Object)child), index);
        this.fireStructureChanged(child, 1);
    }

    public void add(IPluginObject child) throws CoreException {
        this.add(this.getChildCount(), child);
        child.setInTheModel(true);
        ((PluginObjectNode)child).setModel(this.getModel());
    }

    public int getChildCount() {
        return this.getChildNodes().length;
    }

    public int getIndexOf(IPluginObject child) {
        return this.indexOf((IDocumentElementNode)((Object)child));
    }

    public void swap(IPluginObject child1, IPluginObject child2) throws CoreException {
        this.swap((IDocumentElementNode)((Object)child1), (IDocumentElementNode)((Object)child2));
        this.firePropertyChanged(this, "sibling_order", child1, child2);
    }

    public IPluginObject[] getChildren() {
        ArrayList<IDocumentElementNode> result = new ArrayList<IDocumentElementNode>();
        IDocumentElementNode[] nodes = this.getChildNodes();
        int i = 0;
        while (i < nodes.length) {
            result.add(nodes[i]);
            ++i;
        }
        return result.toArray(new IPluginObject[result.size()]);
    }

    public void remove(IPluginObject child) throws CoreException {
        this.removeChildNode((IDocumentElementNode)((Object)child));
        child.setInTheModel(false);
        this.fireStructureChanged(child, 2);
    }
}

