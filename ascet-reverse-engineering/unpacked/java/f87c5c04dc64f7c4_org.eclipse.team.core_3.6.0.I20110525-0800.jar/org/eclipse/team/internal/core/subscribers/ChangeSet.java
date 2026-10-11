/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 */
package org.eclipse.team.internal.core.subscribers;

import org.eclipse.core.resources.IResource;

public abstract class ChangeSet {
    private String name;

    protected ChangeSet() {
    }

    public ChangeSet(String name) {
        this.name = name;
    }

    public abstract IResource[] getResources();

    public abstract boolean isEmpty();

    public abstract boolean contains(IResource var1);

    public abstract void remove(IResource var1);

    public void remove(IResource[] resources) {
        int i = 0;
        while (i < resources.length) {
            IResource resource = resources[i];
            this.remove(resource);
            ++i;
        }
    }

    public abstract void rootRemoved(IResource var1, int var2);

    public abstract String getComment();

    public String getName() {
        return this.name;
    }

    protected void setName(String name) {
        this.name = name;
    }

    public abstract boolean containsChildren(IResource var1, int var2);
}

