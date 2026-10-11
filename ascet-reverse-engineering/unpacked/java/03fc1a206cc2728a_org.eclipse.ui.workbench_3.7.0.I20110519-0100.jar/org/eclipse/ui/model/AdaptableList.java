/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 */
package org.eclipse.ui.model;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.ui.model.WorkbenchAdapter;

public class AdaptableList
extends WorkbenchAdapter
implements IAdaptable {
    protected List children = null;
    static /* synthetic */ Class class$0;

    public AdaptableList() {
        this.children = new ArrayList();
    }

    public AdaptableList(int initialCapacity) {
        this.children = new ArrayList(initialCapacity);
    }

    public AdaptableList(IAdaptable[] newChildren) {
        this(newChildren.length);
        int i = 0;
        while (i < newChildren.length) {
            this.children.add(newChildren[i]);
            ++i;
        }
    }

    public AdaptableList(Collection c) {
        this(c.size());
        this.children.addAll(c);
    }

    public AdaptableList add(IAdaptable adaptable) {
        Assert.isNotNull((Object)adaptable);
        this.children.add(adaptable);
        return this;
    }

    public void remove(IAdaptable adaptable) {
        Assert.isNotNull((Object)adaptable);
        this.children.remove(adaptable);
    }

    public int size() {
        return this.children.size();
    }

    public Object getAdapter(Class adapter) {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.model.IWorkbenchAdapter");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (adapter == clazz) {
            return this;
        }
        return null;
    }

    public Object[] getChildren(Object o) {
        return this.children.toArray();
    }

    public Object[] getChildren() {
        return this.children.toArray();
    }

    public Object[] getTypedChildren(Class type) {
        return this.children.toArray((Object[])Array.newInstance(type, this.children.size()));
    }

    public String toString() {
        return this.children.toString();
    }
}

