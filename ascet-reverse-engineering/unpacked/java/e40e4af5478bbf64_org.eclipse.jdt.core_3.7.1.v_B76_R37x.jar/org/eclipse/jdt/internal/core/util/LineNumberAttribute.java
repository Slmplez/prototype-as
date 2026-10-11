/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.ILineNumberAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class LineNumberAttribute
extends ClassFileAttribute
implements ILineNumberAttribute {
    private static final int[][] NO_ENTRIES = new int[0][0];
    private int lineNumberTableLength;
    private int[][] lineNumberTable;

    public LineNumberAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int length;
        this.lineNumberTableLength = length = this.u2At(classFileBytes, 6, offset);
        if (length != 0) {
            this.lineNumberTable = new int[length][2];
            int readOffset = 8;
            int i = 0;
            while (i < length) {
                this.lineNumberTable[i][0] = this.u2At(classFileBytes, readOffset, offset);
                this.lineNumberTable[i][1] = this.u2At(classFileBytes, readOffset + 2, offset);
                readOffset += 4;
                ++i;
            }
        } else {
            this.lineNumberTable = NO_ENTRIES;
        }
    }

    public int[][] getLineNumberTable() {
        return this.lineNumberTable;
    }

    public int getLineNumberTableLength() {
        return this.lineNumberTableLength;
    }
}

