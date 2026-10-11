/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.databinding.observable.list;

public abstract class ListDiffEntry {
    public abstract int getPosition();

    public abstract boolean isAddition();

    public abstract Object getElement();

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        buffer.append(this.getClass().getName()).append("{position [").append(this.getPosition()).append("], isAddition [").append(this.isAddition()).append("], element [").append(this.getElement() != null ? this.getElement().toString() : "null").append("]}");
        return buffer.toString();
    }
}

