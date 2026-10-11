/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.util.Util;

public final class HashSetOfCharArrayArray
implements Cloneable {
    public char[][][] set;
    public int elementSize = 0;
    int threshold;

    public HashSetOfCharArrayArray() {
        this(13);
    }

    public HashSetOfCharArrayArray(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.set = new char[extraRoom][][];
    }

    public Object clone() throws CloneNotSupportedException {
        HashSetOfCharArrayArray result = (HashSetOfCharArrayArray)super.clone();
        result.elementSize = this.elementSize;
        result.threshold = this.threshold;
        int length = this.set.length;
        result.set = new char[length][][];
        System.arraycopy(this.set, 0, result.set, 0, length);
        return result;
    }

    public boolean contains(char[][] array) {
        char[][] currentArray;
        int length = this.set.length;
        int index = this.hashCode(array) % length;
        int arrayLength = array.length;
        while ((currentArray = this.set[index]) != null) {
            if (currentArray.length == arrayLength && CharOperation.equals(currentArray, array)) {
                return true;
            }
            if (++index != length) continue;
            index = 0;
        }
        return false;
    }

    private int hashCode(char[][] element) {
        return this.hashCode(element, element.length);
    }

    private int hashCode(char[][] element, int length) {
        int hash = 0;
        int i = length - 1;
        while (i >= 0) {
            hash = Util.combineHashCodes(hash, CharOperation.hashCode(element[i]));
            --i;
        }
        return hash & Integer.MAX_VALUE;
    }

    public char[][] add(char[][] array) {
        char[][] currentArray;
        int length = this.set.length;
        int index = this.hashCode(array) % length;
        int arrayLength = array.length;
        while ((currentArray = this.set[index]) != null) {
            if (currentArray.length == arrayLength && CharOperation.equals(currentArray, array)) {
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

    public char[][] remove(char[][] array) {
        char[][] currentArray;
        int length = this.set.length;
        int index = this.hashCode(array) % length;
        int arrayLength = array.length;
        while ((currentArray = this.set[index]) != null) {
            if (currentArray.length == arrayLength && CharOperation.equals(currentArray, array)) {
                char[][] existing = this.set[index];
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
        HashSetOfCharArrayArray newHashSet = new HashSetOfCharArrayArray(this.elementSize * 2);
        int i = this.set.length;
        while (--i >= 0) {
            char[][] currentArray = this.set[i];
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
            char[][] arrayArray = this.set[i];
            if (arrayArray != null) {
                buffer.append("{");
                int j = 0;
                int length2 = arrayArray.length;
                while (j < length2) {
                    char[] array = arrayArray[j];
                    buffer.append('{');
                    int k = 0;
                    int length3 = array.length;
                    while (k < length3) {
                        buffer.append('\'');
                        buffer.append(array[k]);
                        buffer.append('\'');
                        if (k != length3 - 1) {
                            buffer.append(", ");
                        }
                        ++k;
                    }
                    buffer.append('}');
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

