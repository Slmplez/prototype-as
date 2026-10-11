/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.core.util.Util;

public final class HashSetOfArray
implements Cloneable {
    public Object[][] set;
    public int elementSize = 0;
    int threshold;

    public HashSetOfArray() {
        this(13);
    }

    public HashSetOfArray(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.set = new Object[extraRoom][];
    }

    public Object clone() throws CloneNotSupportedException {
        HashSetOfArray result = (HashSetOfArray)super.clone();
        result.elementSize = this.elementSize;
        result.threshold = this.threshold;
        int length = this.set.length;
        result.set = new Object[length][];
        System.arraycopy(this.set, 0, result.set, 0, length);
        return result;
    }

    public boolean contains(Object[] array) {
        Object[] currentArray;
        int length = this.set.length;
        int index = this.hashCode(array) % length;
        int arrayLength = array.length;
        while ((currentArray = this.set[index]) != null) {
            if (currentArray.length == arrayLength && Util.equalArraysOrNull(currentArray, array)) {
                return true;
            }
            if (++index != length) continue;
            index = 0;
        }
        return false;
    }

    private int hashCode(Object[] element) {
        return this.hashCode(element, element.length);
    }

    private int hashCode(Object[] element, int length) {
        int hash = 0;
        int i = length - 1;
        while (i >= 0) {
            hash = Util.combineHashCodes(hash, element[i].hashCode());
            --i;
        }
        return hash & Integer.MAX_VALUE;
    }

    public Object add(Object[] array) {
        Object[] currentArray;
        int length = this.set.length;
        int index = this.hashCode(array) % length;
        int arrayLength = array.length;
        while ((currentArray = this.set[index]) != null) {
            if (currentArray.length == arrayLength && Util.equalArraysOrNull(currentArray, array)) {
                this.set[index] = array;
                return array;
            }
            if (++index != length) continue;
            index = 0;
        }
        this.set[index] = array;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return array;
    }

    public Object remove(Object[] array) {
        Object[] currentArray;
        int length = this.set.length;
        int index = this.hashCode(array) % length;
        int arrayLength = array.length;
        while ((currentArray = this.set[index]) != null) {
            if (currentArray.length == arrayLength && Util.equalArraysOrNull(currentArray, array)) {
                Object[] existing = this.set[index];
                --this.elementSize;
                this.set[index] = null;
                this.rehash();
                return existing;
            }
            if (++index != length) continue;
            index = 0;
        }
        return null;
    }

    private void rehash() {
        HashSetOfArray newHashSet = new HashSetOfArray(this.elementSize * 2);
        int i = this.set.length;
        while (--i >= 0) {
            Object[] currentArray = this.set[i];
            if (currentArray == null) continue;
            newHashSet.add(currentArray);
        }
        this.set = newHashSet.set;
        this.threshold = newHashSet.threshold;
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        int length = this.set.length;
        while (i < length) {
            Object[] element = this.set[i];
            if (element != null) {
                buffer.append('{');
                int j = 0;
                int length2 = element.length;
                while (j < length2) {
                    buffer.append(element[j]);
                    if (j != length2 - 1) {
                        buffer.append(", ");
                    }
                    ++j;
                }
                buffer.append("}");
                if (i != length - 1) {
                    buffer.append('\n');
                }
            }
            ++i;
        }
        return buffer.toString();
    }
}

