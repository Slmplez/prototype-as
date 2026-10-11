/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IType;

public final class TypeVector {
    static int INITIAL_SIZE = 10;
    public int size;
    int maxSize;
    IType[] elements;
    public static final IType[] NoElements = new IType[0];

    public TypeVector() {
        this.maxSize = INITIAL_SIZE;
        this.size = 0;
        this.elements = new IType[this.maxSize];
    }

    public TypeVector(IType[] types) {
        this.size = types.length;
        this.maxSize = this.size + 1;
        this.elements = new IType[this.maxSize];
        System.arraycopy(types, 0, this.elements, 0, this.size);
    }

    public TypeVector(IType type) {
        this.maxSize = INITIAL_SIZE;
        this.size = 1;
        this.elements = new IType[this.maxSize];
        this.elements[0] = type;
    }

    public void add(IType newElement) {
        if (this.size == this.maxSize) {
            this.elements = new IType[this.maxSize *= 2];
            System.arraycopy(this.elements, 0, this.elements, 0, this.size);
        }
        this.elements[this.size++] = newElement;
    }

    public void addAll(IType[] newElements) {
        if (this.size + newElements.length >= this.maxSize) {
            this.maxSize = this.size + newElements.length;
            this.elements = new IType[this.maxSize];
            System.arraycopy(this.elements, 0, this.elements, 0, this.size);
        }
        System.arraycopy(newElements, 0, this.elements, this.size, newElements.length);
        this.size += newElements.length;
    }

    public boolean contains(IType element) {
        int i = this.size;
        while (--i >= 0) {
            if (!element.equals(this.elements[i])) continue;
            return true;
        }
        return false;
    }

    public TypeVector copy() {
        TypeVector clone = new TypeVector();
        int length = this.elements.length;
        clone.elements = new IType[length];
        System.arraycopy(this.elements, 0, clone.elements, 0, length);
        clone.size = this.size;
        clone.maxSize = this.maxSize;
        return clone;
    }

    public IType elementAt(int index) {
        return this.elements[index];
    }

    public IType[] elements() {
        if (this.size == 0) {
            return NoElements;
        }
        if (this.size < this.maxSize) {
            this.maxSize = this.size;
            this.elements = new IType[this.maxSize];
            System.arraycopy(this.elements, 0, this.elements, 0, this.size);
        }
        return this.elements;
    }

    public IType find(IType element) {
        int i = this.size;
        while (--i >= 0) {
            if (element != this.elements[i]) continue;
            return this.elements[i];
        }
        return null;
    }

    public IType remove(IType element) {
        int i = this.size;
        while (--i >= 0) {
            if (element != this.elements[i]) continue;
            System.arraycopy(this.elements, i + 1, this.elements, i, --this.size - i);
            this.elements[this.size] = null;
            return element;
        }
        return null;
    }

    public void removeAll() {
        int i = this.size;
        while (--i >= 0) {
            this.elements[i] = null;
        }
        this.size = 0;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer("[");
        int i = 0;
        while (i < this.size) {
            buffer.append("\n");
            buffer.append(this.elements[i]);
            ++i;
        }
        buffer.append("\n]");
        return buffer.toString();
    }
}

