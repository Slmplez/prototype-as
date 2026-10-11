/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.plugin;

import java.util.ArrayList;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.core.plugin.IPluginElement;
import org.eclipse.pde.core.plugin.IPluginObject;
import org.eclipse.pde.core.plugin.IPluginParent;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.plugin.IdentifiablePluginObject;
import org.eclipse.pde.internal.core.plugin.PluginObject;

public abstract class PluginParent
extends IdentifiablePluginObject
implements IPluginParent {
    private static final long serialVersionUID = 1L;
    protected ArrayList fChildren = null;

    public void add(int index, IPluginObject child) throws CoreException {
        this.ensureModelEditable();
        this.getChildrenList().add(index, child);
        this.postAdd(child);
    }

    public void add(IPluginObject child) throws CoreException {
        this.ensureModelEditable();
        this.getChildrenList().add(child);
        this.postAdd(child);
    }

    void appendChild(IPluginElement child) {
        this.getChildrenList().add(child);
    }

    protected void postAdd(IPluginObject child) {
        ((PluginObject)child).setInTheModel(true);
        ((PluginObject)child).setParent(this);
        this.fireStructureChanged(child, 1);
    }

    public int getChildCount() {
        return this.getChildrenList().size();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof IPluginParent) {
            IPluginParent target = (IPluginParent)obj;
            if (target.getChildCount() != this.getChildCount()) {
                return false;
            }
            IPluginObject[] tchildren = target.getChildren();
            int i = 0;
            while (i < tchildren.length) {
                IPluginObject tchild = tchildren[i];
                IPluginObject child = (IPluginObject)this.getChildrenList().get(i);
                if (child == null || !child.equals(tchild)) {
                    return false;
                }
                ++i;
            }
            return true;
        }
        return false;
    }

    public int getIndexOf(IPluginObject child) {
        return this.getChildrenList().indexOf(child);
    }

    public void swap(IPluginObject child1, IPluginObject child2) throws CoreException {
        this.ensureModelEditable();
        int index1 = this.getChildrenList().indexOf(child1);
        int index2 = this.getChildrenList().indexOf(child2);
        if (index1 == -1 || index2 == -1) {
            this.throwCoreException(PDECoreMessages.PluginParent_siblingsNotFoundException);
        }
        this.getChildrenList().set(index2, child1);
        this.getChildrenList().set(index1, child2);
        this.firePropertyChanged(this, "sibling_order", child1, child2);
    }

    public IPluginObject[] getChildren() {
        return this.getChildrenList().toArray(new IPluginObject[this.getChildrenList().size()]);
    }

    public void remove(IPluginObject child) throws CoreException {
        this.ensureModelEditable();
        this.getChildrenList().remove(child);
        ((PluginObject)child).setInTheModel(false);
        this.fireStructureChanged(child, 2);
    }

    protected ArrayList getChildrenList() {
        if (this.fChildren == null) {
            this.fChildren = new ArrayList(1);
        }
        return this.fChildren;
    }
}

