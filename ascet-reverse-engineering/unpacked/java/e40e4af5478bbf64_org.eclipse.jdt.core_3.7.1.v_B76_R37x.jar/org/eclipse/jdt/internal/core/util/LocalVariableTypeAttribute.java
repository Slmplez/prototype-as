/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableAttribute;
import org.eclipse.jdt.core.util.ILocalVariableTypeTableEntry;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.LocalVariableTypeTableEntry;

public class LocalVariableTypeAttribute
extends ClassFileAttribute
implements ILocalVariableTypeTableAttribute {
    private static final ILocalVariableTypeTableEntry[] NO_ENTRIES = new ILocalVariableTypeTableEntry[0];
    private int localVariableTypeTableLength;
    private ILocalVariableTypeTableEntry[] localVariableTypeTableEntries;

    public LocalVariableTypeAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int length;
        this.localVariableTypeTableLength = length = this.u2At(classFileBytes, 6, offset);
        if (length != 0) {
            int readOffset = 8;
            this.localVariableTypeTableEntries = new ILocalVariableTypeTableEntry[length];
            int i = 0;
            while (i < length) {
                this.localVariableTypeTableEntries[i] = new LocalVariableTypeTableEntry(classFileBytes, constantPool, offset + readOffset);
                readOffset += 10;
                ++i;
            }
        } else {
            this.localVariableTypeTableEntries = NO_ENTRIES;
        }
    }

    public ILocalVariableTypeTableEntry[] getLocalVariableTypeTable() {
        return this.localVariableTypeTableEntries;
    }

    public int getLocalVariableTypeTableLength() {
        return this.localVariableTypeTableLength;
    }
}

