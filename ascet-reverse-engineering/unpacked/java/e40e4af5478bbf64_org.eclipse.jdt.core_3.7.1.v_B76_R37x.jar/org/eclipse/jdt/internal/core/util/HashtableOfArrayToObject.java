/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.core.util.Util;

public final class HashtableOfArrayToObject
implements Cloneable {
    public Object[][] keyTable;
    public Object[] valueTable;
    public int elementSize = 0;
    int threshold;

    public HashtableOfArrayToObject() {
        this(13);
    }

    public HashtableOfArrayToObject(int size) {
        this.threshold = size;
        int extraRoom = (int)((float)size * 1.75f);
        if (this.threshold == extraRoom) {
            ++extraRoom;
        }
        this.keyTable = new Object[extraRoom][];
        this.valueTable = new Object[extraRoom];
    }

    public Object clone() throws CloneNotSupportedException {
        HashtableOfArrayToObject result = (HashtableOfArrayToObject)super.clone();
        result.elementSize = this.elementSize;
        result.threshold = this.threshold;
        int length = this.keyTable.length;
        result.keyTable = new Object[length][];
        System.arraycopy(this.keyTable, 0, result.keyTable, 0, length);
        length = this.valueTable.length;
        result.valueTable = new Object[length];
        System.arraycopy(this.valueTable, 0, result.valueTable, 0, length);
        return result;
    }

    public boolean containsKey(Object[] key) {
        Object[] currentKey;
        int length = this.keyTable.length;
        int index = this.hashCode(key) % length;
        int keyLength = key.length;
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length == keyLength && Util.equalArraysOrNull(currentKey, key)) {
                return true;
            }
            if (++index != length) continue;
            index = 0;
        }
        return false;
    }

    public Object get(Object[] key) {
        Object[] currentKey;
        int length = this.keyTable.length;
        int index = this.hashCode(key) % length;
        int keyLength = key.length;
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length == keyLength && Util.equalArraysOrNull(currentKey, key)) {
                return this.valueTable[index];
            }
            if (++index != length) continue;
            index = 0;
        }
        return null;
    }

    public int getIndex(Object[] key) {
        Object[] currentKey;
        int length = this.keyTable.length;
        int index = this.hashCode(key) % length;
        int keyLength = key.length;
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length == keyLength && Util.equalArraysOrNull(currentKey, key)) {
                return index;
            }
            if (++index != length) continue;
            index = 0;
        }
        return -1;
    }

    public Object[] getKey(Object[] key, int keyLength) {
        Object[] currentKey;
        int length = this.keyTable.length;
        int index = this.hashCode(key, keyLength) % length;
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length == keyLength && Util.equalArrays(currentKey, key, keyLength)) {
                return currentKey;
            }
            if (++index != length) continue;
            index = 0;
        }
        return null;
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

    public Object put(Object[] key, Object value) {
        Object[] currentKey;
        int length = this.keyTable.length;
        int index = this.hashCode(key) % length;
        int keyLength = key.length;
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length == keyLength && Util.equalArraysOrNull(currentKey, key)) {
                this.valueTable[index] = value;
                return this.valueTable[index];
            }
            if (++index != length) continue;
            index = 0;
        }
        this.keyTable[index] = key;
        this.valueTable[index] = value;
        if (++this.elementSize > this.threshold) {
            this.rehash();
        }
        return value;
    }

    public Object removeKey(Object[] key) {
        Object[] currentKey;
        int length = this.keyTable.length;
        int index = this.hashCode(key) % length;
        int keyLength = key.length;
        while ((currentKey = this.keyTable[index]) != null) {
            if (currentKey.length == keyLength && Util.equalArraysOrNull(currentKey, key)) {
                Object value = this.valueTable[index];
                --this.elementSize;
                this.keyTable[index] = null;
                this.valueTable[index] = null;
                this.rehash();
                return value;
            }
            if (++index != length) continue;
            index = 0;
        }
        return null;
    }

    private void rehash() {
        HashtableOfArrayToObject newHashtable = new HashtableOfArrayToObject(this.elementSize * 2);
        int i = this.keyTable.length;
        while (--i >= 0) {
            Object[] currentKey = this.keyTable[i];
            if (currentKey == null) continue;
            newHashtable.put(currentKey, this.valueTable[i]);
        }
        this.keyTable = newHashtable.keyTable;
        this.valueTable = newHashtable.valueTable;
        this.threshold = newHashtable.threshold;
    }

    public int size() {
        return this.elementSize;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        int length = this.keyTable.length;
        while (i < length) {
            Object[] element = this.keyTable[i];
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
                buffer.append("} -> ");
                buffer.append(this.valueTable[i]);
                if (i != length - 1) {
                    buffer.append('\n');
                }
            }
            ++i;
        }
        return buffer.toString();
    }
}

