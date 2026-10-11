/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.ILocalVariableTableEntry;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class LocalVariableTableEntry
extends ClassFileStruct
implements ILocalVariableTableEntry {
    private int startPC;
    private int length;
    private int nameIndex;
    private int descriptorIndex;
    private char[] name;
    private char[] descriptor;
    private int index;

    public LocalVariableTableEntry(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        this.startPC = this.u2At(classFileBytes, 0, offset);
        this.length = this.u2At(classFileBytes, 2, offset);
        this.nameIndex = this.u2At(classFileBytes, 4, offset);
        this.descriptorIndex = this.u2At(classFileBytes, 6, offset);
        this.index = this.u2At(classFileBytes, 8, offset);
        IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(this.nameIndex);
        if (constantPoolEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.name = constantPoolEntry.getUtf8Value();
        constantPoolEntry = constantPool.decodeEntry(this.descriptorIndex);
        if (constantPoolEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.descriptor = constantPoolEntry.getUtf8Value();
    }

    public int getStartPC() {
        return this.startPC;
    }

    public int getLength() {
        return this.length;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    public int getDescriptorIndex() {
        return this.descriptorIndex;
    }

    public int getIndex() {
        return this.index;
    }

    public char[] getName() {
        return this.name;
    }

    public char[] getDescriptor() {
        return this.descriptor;
    }
}

