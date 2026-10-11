/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IElementComparer
 */
package org.eclipse.jface.internal.databinding.viewers;

import org.eclipse.jface.viewers.IElementComparer;

public class ViewerElementWrapper {
    private final Object element;
    private final IElementComparer comparer;

    public ViewerElementWrapper(Object element, IElementComparer comparer) {
        if (comparer == null) {
            throw new NullPointerException();
        }
        this.element = element;
        this.comparer = comparer;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ViewerElementWrapper)) {
            return false;
        }
        return this.comparer.equals(this.element, ((ViewerElementWrapper)obj).element);
    }

    public int hashCode() {
        return this.comparer.hashCode(this.element);
    }

    Object unwrap() {
        return this.element;
    }
}

