/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IEnclosingMethodAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class EnclosingMethodAttribute
extends ClassFileAttribute
implements IEnclosingMethodAttribute {
    private int enclosingClassIndex;
    private char[] enclosingClassName;
    private int methodDescriptorIndex;
    private char[] methodDescriptor;
    private int methodNameIndex;
    private char[] methodName;
    private int methodNameAndTypeIndex;

    EnclosingMethodAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int index;
        this.enclosingClassIndex = index = this.u2At(classFileBytes, 6, offset);
        IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(index);
        if (constantPoolEntry.getKind() != 7) {
            throw new ClassFormatException(3);
        }
        this.enclosingClassName = constantPoolEntry.getClassInfoName();
        this.methodNameAndTypeIndex = this.u2At(classFileBytes, 8, offset);
        if (this.methodNameAndTypeIndex != 0) {
            constantPoolEntry = constantPool.decodeEntry(this.methodNameAndTypeIndex);
            if (constantPoolEntry.getKind() != 12) {
                throw new ClassFormatException(3);
            }
            this.methodDescriptorIndex = constantPoolEntry.getNameAndTypeInfoDescriptorIndex();
            this.methodNameIndex = constantPoolEntry.getNameAndTypeInfoNameIndex();
            constantPoolEntry = constantPool.decodeEntry(this.methodDescriptorIndex);
            if (constantPoolEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.methodDescriptor = constantPoolEntry.getUtf8Value();
            constantPoolEntry = constantPool.decodeEntry(this.methodNameIndex);
            if (constantPoolEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.methodName = constantPoolEntry.getUtf8Value();
        }
    }

    public char[] getEnclosingClass() {
        return this.enclosingClassName;
    }

    public int getEnclosingClassIndex() {
        return this.enclosingClassIndex;
    }

    public char[] getMethodDescriptor() {
        return this.methodDescriptor;
    }

    public int getMethodDescriptorIndex() {
        return this.methodDescriptorIndex;
    }

    public char[] getMethodName() {
        return this.methodName;
    }

    public int getMethodNameIndex() {
        return this.methodNameIndex;
    }

    public int getMethodNameAndTypeIndex() {
        return this.methodNameAndTypeIndex;
    }
}

