/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.util;

import org.eclipse.jdt.core.compiler.CharOperation;

public final class CompoundNameVector {
    static int INITIAL_SIZE = 10;
    public int size = 0;
    int maxSize = INITIAL_SIZE;
    char[][][] elements = new char[this.maxSize][][];

    public void add(char[][] newElement) {
        if (this.size == this.maxSize) {
            char[][][] cArrayArray = new char[this.maxSize *= 2][][];
            this.elements = cArrayArray;
            System.arraycopy(this.elements, 0, cArrayArray, 0, this.size);
        }
        this.elements[this.size++] = newElement;
    }

    public void addAll(char[][][] newElements) {
        if (this.size + newElements.length >= this.maxSize) {
            this.maxSize = this.size + newElements.length;
            char[][][] cArrayArray = new char[this.maxSize][][];
            this.elements = cArrayArray;
            System.arraycopy(this.elements, 0, cArrayArray, 0, this.size);
        }
        System.arraycopy(newElements, 0, this.elements, this.size, newElements.length);
        this.size += newElements.length;
    }

    public boolean contains(char[][] element) {
        int i = this.size;
        while (--i >= 0) {
            if (!CharOperation.equals(element, this.elements[i])) continue;
            return true;
        }
        return false;
    }

    public char[][] elementAt(int index) {
        return this.elements[index];
    }

    public char[][] remove(char[][] element) {
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
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < this.size) {
            buffer.append(CharOperation.toString(this.elements[i])).append("\n");
            ++i;
        }
        return buffer.toString();
    }
}

