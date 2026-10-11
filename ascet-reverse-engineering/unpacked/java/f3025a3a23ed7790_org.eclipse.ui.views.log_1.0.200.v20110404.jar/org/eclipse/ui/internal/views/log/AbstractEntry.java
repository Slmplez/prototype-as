/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.model.IWorkbenchAdapter
 */
package org.eclipse.ui.internal.views.log;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.model.IWorkbenchAdapter;

public abstract class AbstractEntry
extends PlatformObject
implements IWorkbenchAdapter {
    private List children = new ArrayList();
    protected Object parent;

    public void addChild(AbstractEntry child) {
        if (child != null) {
            this.children.add(0, child);
            child.setParent(this);
        }
    }

    public Object[] getChildren(Object parent) {
        return this.children.toArray();
    }

    public boolean hasChildren() {
        return this.children.size() > 0;
    }

    public int size() {
        return this.children.size();
    }

    public ImageDescriptor getImageDescriptor(Object object) {
        return null;
    }

    public String getLabel(Object o) {
        return null;
    }

    public Object getParent(Object o) {
        return this.parent;
    }

    public void setParent(AbstractEntry parent) {
        this.parent = parent;
    }

    public void removeChildren(List list) {
        this.children.removeAll(list);
    }

    public void removeAllChildren() {
        this.children.clear();
    }

    public abstract void write(PrintWriter var1);
}

