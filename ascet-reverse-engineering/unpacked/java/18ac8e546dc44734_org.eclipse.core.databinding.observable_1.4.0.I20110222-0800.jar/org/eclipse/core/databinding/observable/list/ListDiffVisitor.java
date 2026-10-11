/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

public abstract class ListDiffVisitor {
    public abstract void handleAdd(int var1, Object var2);

    public abstract void handleRemove(int var1, Object var2);

    public void handleMove(int oldIndex, int newIndex, Object element) {
        this.handleRemove(oldIndex, element);
        this.handleAdd(newIndex, element);
    }

    public void handleReplace(int index, Object oldElement, Object newElement) {
        this.handleRemove(index, oldElement);
        this.handleAdd(index, newElement);
    }
}

