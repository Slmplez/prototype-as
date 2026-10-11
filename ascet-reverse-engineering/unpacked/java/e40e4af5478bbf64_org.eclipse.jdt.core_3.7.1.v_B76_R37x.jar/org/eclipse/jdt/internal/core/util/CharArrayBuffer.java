/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.internal.compiler.util.Util;

public class CharArrayBuffer {
    protected char[][] buffer;
    public static final int DEFAULT_BUFFER_SIZE = 10;
    protected int end;
    protected int size;
    protected int[][] ranges;

    public CharArrayBuffer() {
        this(null, 10);
    }

    public CharArrayBuffer(char[] first) {
        this(first, 10);
    }

    public CharArrayBuffer(char[] first, int size) {
        this.size = size > 0 ? size : 10;
        this.buffer = new char[this.size][];
        this.ranges = new int[this.size][];
        this.end = 0;
        if (first != null) {
            this.append(first, 0, first.length);
        }
    }

    public CharArrayBuffer(int size) {
        this(null, size);
    }

    public CharArrayBuffer append(char[] src) {
        if (src != null) {
            this.append(src, 0, src.length);
        }
        return this;
    }

    public CharArrayBuffer append(char[] src, int start, int length) {
        if (start < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        if (src != null) {
            int srcLength = src.length;
            if (start > srcLength) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (length + start > srcLength) {
                throw new ArrayIndexOutOfBoundsException();
            }
            if (length > 0) {
                if (this.end == this.size) {
                    int size2 = this.size * 2;
                    char[][] cArrayArray = new char[size2][];
                    this.buffer = cArrayArray;
                    System.arraycopy(this.buffer, 0, cArrayArray, 0, this.size);
                    int[][] nArrayArray = new int[size2][];
                    this.ranges = nArrayArray;
                    System.arraycopy(this.ranges, 0, nArrayArray, 0, this.size);
                    this.size *= 2;
                }
                this.buffer[this.end] = src;
                this.ranges[this.end] = new int[]{start, length};
                ++this.end;
            }
        }
        return this;
    }

    public CharArrayBuffer append(char c) {
        this.append(new char[]{c}, 0, 1);
        return this;
    }

    public CharArrayBuffer append(String src) {
        if (src != null) {
            this.append(src.toCharArray(), 0, src.length());
        }
        return this;
    }

    public char[] getContents() {
        if (this.end == 0) {
            return null;
        }
        int length = 0;
        int i = 0;
        while (i < this.end) {
            length += this.ranges[i][1];
            ++i;
        }
        if (length > 0) {
            char[] result = new char[length];
            int current = 0;
            int i2 = 0;
            while (i2 < this.end) {
                int[] range = this.ranges[i2];
                int length2 = range[1];
                System.arraycopy(this.buffer[i2], range[0], result, current, length2);
                current += length2;
                ++i2;
            }
            return result;
        }
        return null;
    }

    public String toString() {
        char[] contents = this.getContents();
        return contents != null ? new String(contents) : Util.EMPTY_STRING;
    }
}

