/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.IElementComparer;
import org.eclipse.jface.viewers.IStructuredSelection;

public class StructuredSelection
implements IStructuredSelection {
    private Object[] elements;
    private IElementComparer comparer;
    public static final StructuredSelection EMPTY = new StructuredSelection();

    public StructuredSelection() {
    }

    public StructuredSelection(Object[] elements) {
        Assert.isNotNull((Object)elements);
        this.elements = new Object[elements.length];
        System.arraycopy(elements, 0, this.elements, 0, elements.length);
    }

    public StructuredSelection(Object element) {
        Assert.isNotNull((Object)element);
        this.elements = new Object[]{element};
    }

    public StructuredSelection(List elements) {
        this(elements, null);
    }

    public StructuredSelection(List elements, IElementComparer comparer) {
        Assert.isNotNull((Object)elements);
        this.elements = elements.toArray();
        this.comparer = comparer;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof StructuredSelection)) {
            return false;
        }
        StructuredSelection s2 = (StructuredSelection)o;
        if (this.isEmpty()) {
            return s2.isEmpty();
        }
        if (s2.isEmpty()) {
            return false;
        }
        boolean useComparer = this.comparer != null && this.comparer == s2.comparer;
        int myLen = this.elements.length;
        if (myLen != s2.elements.length) {
            return false;
        }
        int i = 0;
        while (i < myLen) {
            if (useComparer ? !this.comparer.equals(this.elements[i], s2.elements[i]) : !this.elements[i].equals(s2.elements[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public Object getFirstElement() {
        return this.isEmpty() ? null : this.elements[0];
    }

    public boolean isEmpty() {
        return this.elements == null || this.elements.length == 0;
    }

    public Iterator iterator() {
        return Arrays.asList(this.elements == null ? new Object[]{} : this.elements).iterator();
    }

    public int size() {
        return this.elements == null ? 0 : this.elements.length;
    }

    public Object[] toArray() {
        return this.elements == null ? new Object[]{} : (Object[])this.elements.clone();
    }

    public List toList() {
        return Arrays.asList(this.elements == null ? new Object[]{} : this.elements);
    }

    public String toString() {
        return this.isEmpty() ? JFaceResources.getString("<empty_selection>") : this.toList().toString();
    }
}

