/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.ILocalVariableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.LocalVariableTableEntry;

public class LocalVariableAttribute
extends ClassFileAttribute
implements ILocalVariableAttribute {
    private static final ILocalVariableTableEntry[] NO_ENTRIES = new ILocalVariableTableEntry[0];
    private int localVariableTableLength;
    private ILocalVariableTableEntry[] localVariableTable;

    public LocalVariableAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int length;
        this.localVariableTableLength = length = this.u2At(classFileBytes, 6, offset);
        if (length != 0) {
            int readOffset = 8;
            this.localVariableTable = new ILocalVariableTableEntry[length];
            int i = 0;
            while (i < length) {
                this.localVariableTable[i] = new LocalVariableTableEntry(classFileBytes, constantPool, offset + readOffset);
                readOffset += 10;
                ++i;
            }
        } else {
            this.localVariableTable = NO_ENTRIES;
        }
    }

    public ILocalVariableTableEntry[] getLocalVariableTable() {
        return this.localVariableTable;
    }

    public int getLocalVariableTableLength() {
        return this.localVariableTableLength;
    }
}

