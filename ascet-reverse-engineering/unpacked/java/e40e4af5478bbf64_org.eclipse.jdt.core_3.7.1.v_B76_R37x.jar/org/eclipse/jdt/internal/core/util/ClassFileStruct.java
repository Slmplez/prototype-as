/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

public abstract class ClassFileStruct {
    protected double doubleAt(byte[] reference, int relativeOffset, int structOffset) {
        return Double.longBitsToDouble(this.i8At(reference, relativeOffset, structOffset));
    }

    protected float floatAt(byte[] reference, int relativeOffset, int structOffset) {
        return Float.intBitsToFloat(this.i4At(reference, relativeOffset, structOffset));
    }

    protected int i1At(byte[] reference, int relativeOffset, int structOffset) {
        return reference[relativeOffset + structOffset];
    }

    protected int i2At(byte[] reference, int relativeOffset, int structOffset) {
        int position = relativeOffset + structOffset;
        return (reference[position++] << 8) + (reference[position] & 0xFF);
    }

    protected int i4At(byte[] reference, int relativeOffset, int structOffset) {
        int position = relativeOffset + structOffset;
        return ((reference[position++] & 0xFF) << 24) + ((reference[position++] & 0xFF) << 16) + ((reference[position++] & 0xFF) << 8) + (reference[position] & 0xFF);
    }

    protected long i8At(byte[] reference, int relativeOffset, int structOffset) {
        int position = relativeOffset + structOffset;
        return ((long)(reference[position++] & 0xFF) << 56) + ((long)(reference[position++] & 0xFF) << 48) + ((long)(reference[position++] & 0xFF) << 40) + ((long)(reference[position++] & 0xFF) << 32) + ((long)(reference[position++] & 0xFF) << 24) + ((long)(reference[position++] & 0xFF) << 16) + ((long)(reference[position++] & 0xFF) << 8) + (long)(reference[position++] & 0xFF);
    }

    protected int u1At(byte[] reference, int relativeOffset, int structOffset) {
        return reference[relativeOffset + structOffset] & 0xFF;
    }

    protected int u2At(byte[] reference, int relativeOffset, int structOffset) {
        int position = relativeOffset + structOffset;
        return ((reference[position++] & 0xFF) << 8) + (reference[position] & 0xFF);
    }

    protected long u4At(byte[] reference, int relativeOffset, int structOffset) {
        int position = relativeOffset + structOffset;
        return (((long)reference[position++] & 0xFFL) << 24) + (long)((reference[position++] & 0xFF) << 16) + (long)((reference[position++] & 0xFF) << 8) + (long)(reference[position] & 0xFF);
    }

    protected char[] utf8At(byte[] reference, int relativeOffset, int structOffset, int bytesAvailable) {
        int length = bytesAvailable;
        char[] outputBuf = new char[bytesAvailable];
        int outputPos = 0;
        int readOffset = structOffset + relativeOffset;
        while (length != 0) {
            int x = reference[readOffset++] & 0xFF;
            --length;
            if ((0x80 & x) != 0) {
                if ((x & 0x20) != 0) {
                    length -= 2;
                    x = ((x & 0xF) << 12) + ((reference[readOffset++] & 0x3F) << 6) + (reference[readOffset++] & 0x3F);
                } else {
                    --length;
                    x = ((x & 0x1F) << 6) + (reference[readOffset++] & 0x3F);
                }
            }
            outputBuf[outputPos++] = (char)x;
        }
        if (outputPos != bytesAvailable) {
            char[] cArray = outputBuf;
            outputBuf = new char[outputPos];
            System.arraycopy(cArray, 0, outputBuf, 0, outputPos);
        }
        return outputBuf;
    }

    final boolean equals(char[] first, char[] second) {
        if (first == second) {
            return true;
        }
        if (first == null || second == null) {
            return false;
        }
        if (first.length != second.length) {
            return false;
        }
        int i = first.length;
        while (--i >= 0) {
            if (first[i] == second[i]) continue;
            return false;
        }
        return true;
    }
}

