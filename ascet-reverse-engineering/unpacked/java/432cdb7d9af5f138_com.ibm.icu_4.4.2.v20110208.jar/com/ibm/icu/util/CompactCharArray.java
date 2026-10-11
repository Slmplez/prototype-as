/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.util;

import com.ibm.icu.impl.Utility;

public final class CompactCharArray
implements Cloneable {
    public static final int UNICODECOUNT = 65536;
    public static final int BLOCKSHIFT = 5;
    static final int BLOCKCOUNT = 32;
    static final int INDEXSHIFT = 11;
    static final int INDEXCOUNT = 2048;
    static final int BLOCKMASK = 31;
    private char[] values;
    private char[] indices;
    private int[] hashes;
    private boolean isCompact;
    char defaultValue;

    public CompactCharArray() {
        this('\u0000');
    }

    public CompactCharArray(char defaultValue) {
        this.values = new char[65536];
        this.indices = new char[2048];
        this.hashes = new int[2048];
        int i = 0;
        while (i < 65536) {
            this.values[i] = defaultValue;
            ++i;
        }
        i = 0;
        while (i < 2048) {
            this.indices[i] = (char)(i << 5);
            this.hashes[i] = 0;
            ++i;
        }
        this.isCompact = false;
        this.defaultValue = defaultValue;
    }

    public CompactCharArray(char[] indexArray, char[] newValues) {
        if (indexArray.length != 2048) {
            throw new IllegalArgumentException("Index out of bounds.");
        }
        int i = 0;
        while (i < 2048) {
            char index = indexArray[i];
            if (index < '\u0000' || index >= newValues.length + 32) {
                throw new IllegalArgumentException("Index out of bounds.");
            }
            ++i;
        }
        this.indices = indexArray;
        this.values = newValues;
        this.isCompact = true;
    }

    public CompactCharArray(String indexArray, String valueArray) {
        this(Utility.RLEStringToCharArray(indexArray), Utility.RLEStringToCharArray(valueArray));
    }

    public char elementAt(char index) {
        int ix = (this.indices[index >> 5] & 0xFFFF) + (index & 0x1F);
        return ix >= this.values.length ? this.defaultValue : this.values[ix];
    }

    public void setElementAt(char index, char value) {
        if (this.isCompact) {
            this.expand();
        }
        this.values[index] = value;
        this.touchBlock(index >> 5, value);
    }

    public void setElementAt(char start, char end, char value) {
        if (this.isCompact) {
            this.expand();
        }
        int i = start;
        while (i <= end) {
            this.values[i] = value;
            this.touchBlock(i >> 5, value);
            ++i;
        }
    }

    public void compact() {
        this.compact(true);
    }

    public void compact(boolean exhaustive) {
        if (!this.isCompact) {
            int iBlockStart = 0;
            int iUntouched = 65535;
            int newSize = 0;
            char[] target = exhaustive ? new char[65536] : this.values;
            int i = 0;
            while (i < this.indices.length) {
                this.indices[i] = 65535;
                boolean touched = this.blockTouched(i);
                if (!touched && iUntouched != 65535) {
                    this.indices[i] = iUntouched;
                } else {
                    int jBlockStart = 0;
                    int j = 0;
                    while (j < i) {
                        if (this.hashes[i] == this.hashes[j] && CompactCharArray.arrayRegionMatches(this.values, iBlockStart, this.values, jBlockStart, 32)) {
                            this.indices[i] = this.indices[j];
                        }
                        ++j;
                        jBlockStart += 32;
                    }
                    if (this.indices[i] == '\uffff') {
                        int dest = exhaustive ? this.FindOverlappingPosition(iBlockStart, target, newSize) : newSize;
                        int limit = dest + 32;
                        if (limit > newSize) {
                            int j2 = newSize;
                            while (j2 < limit) {
                                target[j2] = this.values[iBlockStart + j2 - dest];
                                ++j2;
                            }
                            newSize = limit;
                        }
                        this.indices[i] = (char)dest;
                        if (!touched) {
                            iUntouched = (char)jBlockStart;
                        }
                    }
                }
                ++i;
                iBlockStart += 32;
            }
            char[] result = new char[newSize];
            System.arraycopy(target, 0, result, 0, newSize);
            this.values = result;
            this.isCompact = true;
            this.hashes = null;
        }
    }

    private int FindOverlappingPosition(int start, char[] tempValues, int tempCount) {
        int i = 0;
        while (i < tempCount) {
            int currentCount = 32;
            if (i + 32 > tempCount) {
                currentCount = tempCount - i;
            }
            if (CompactCharArray.arrayRegionMatches(this.values, start, tempValues, i, currentCount)) {
                return i;
            }
            ++i;
        }
        return tempCount;
    }

    static final boolean arrayRegionMatches(char[] source, int sourceStart, char[] target, int targetStart, int len) {
        int sourceEnd = sourceStart + len;
        int delta = targetStart - sourceStart;
        int i = sourceStart;
        while (i < sourceEnd) {
            if (source[i] != target[i + delta]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private final void touchBlock(int i, int value) {
        this.hashes[i] = this.hashes[i] + (value << 1) | 1;
    }

    private final boolean blockTouched(int i) {
        return this.hashes[i] != 0;
    }

    public char[] getIndexArray() {
        return this.indices;
    }

    public char[] getValueArray() {
        return this.values;
    }

    public Object clone() {
        try {
            CompactCharArray other = (CompactCharArray)super.clone();
            other.values = (char[])this.values.clone();
            other.indices = (char[])this.indices.clone();
            if (this.hashes != null) {
                other.hashes = (int[])this.hashes.clone();
            }
            return other;
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            throw new IllegalStateException();
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (this.getClass() != obj.getClass()) {
            return false;
        }
        CompactCharArray other = (CompactCharArray)obj;
        int i = 0;
        while (i < 65536) {
            if (this.elementAt((char)i) != other.elementAt((char)i)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    public int hashCode() {
        int result = 0;
        int increment = Math.min(3, this.values.length / 16);
        int i = 0;
        while (i < this.values.length) {
            result = result * 37 + this.values[i];
            i += increment;
        }
        return result;
    }

    private void expand() {
        if (this.isCompact) {
            this.hashes = new int[2048];
            char[] tempArray = new char[65536];
            int i = 0;
            while (i < 65536) {
                tempArray[i] = this.elementAt((char)i);
                ++i;
            }
            i = 0;
            while (i < 2048) {
                this.indices[i] = (char)(i << 5);
                ++i;
            }
            this.values = null;
            this.values = tempArray;
            this.isCompact = false;
        }
    }
}

