/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers.deferred;

import java.util.Collection;
import java.util.HashSet;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.deferred.AbstractConcurrentModel;
import org.eclipse.jface.viewers.deferred.IConcurrentModelListener;

public class SetModel
extends AbstractConcurrentModel {
    private HashSet data = new HashSet();

    public Object[] getElements() {
        return this.data.toArray();
    }

    public void set(Object[] newContents) {
        Assert.isNotNull((Object)newContents);
        this.data.clear();
        int i = 0;
        while (i < newContents.length) {
            Object object = newContents[i];
            this.data.add(object);
            ++i;
        }
        IConcurrentModelListener[] listeners = this.getListeners();
        int i2 = 0;
        while (i2 < listeners.length) {
            IConcurrentModelListener listener = listeners[i2];
            listener.setContents(newContents);
            ++i2;
        }
    }

    public void clear() {
        Object[] removed = this.data.toArray();
        this.data.clear();
        this.fireRemove(removed);
    }

    public void addAll(Object[] toAdd) {
        Assert.isNotNull((Object)toAdd);
        int i = 0;
        while (i < toAdd.length) {
            Object object = toAdd[i];
            this.data.add(object);
            ++i;
        }
        this.fireAdd(toAdd);
    }

    public void addAll(Collection toAdd) {
        Assert.isNotNull((Object)toAdd);
        this.addAll(toAdd.toArray());
    }

    public void changeAll(Object[] changed) {
        Assert.isNotNull((Object)changed);
        this.fireUpdate(changed);
    }

    public void removeAll(Object[] toRemove) {
        Assert.isNotNull((Object)toRemove);
        int i = 0;
        while (i < toRemove.length) {
            Object object = toRemove[i];
            this.data.remove(object);
            ++i;
        }
        this.fireRemove(toRemove);
    }

    public void requestUpdate(IConcurrentModelListener listener) {
        Assert.isNotNull((Object)listener);
        listener.setContents(this.getElements());
    }
}

