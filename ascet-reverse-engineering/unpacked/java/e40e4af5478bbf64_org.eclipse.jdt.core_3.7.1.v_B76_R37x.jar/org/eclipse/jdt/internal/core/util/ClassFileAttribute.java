/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class ClassFileAttribute
extends ClassFileStruct
implements IClassFileAttribute {
    public static final IClassFileAttribute[] NO_ATTRIBUTES = new IClassFileAttribute[0];
    private long attributeLength;
    private int attributeNameIndex;
    private char[] attributeName;

    public ClassFileAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        this.attributeNameIndex = this.u2At(classFileBytes, 0, offset);
        this.attributeLength = this.u4At(classFileBytes, 2, offset);
        IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(this.attributeNameIndex);
        if (constantPoolEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.attributeName = constantPoolEntry.getUtf8Value();
    }

    public int getAttributeNameIndex() {
        return this.attributeNameIndex;
    }

    public char[] getAttributeName() {
        return this.attributeName;
    }

    public long getAttributeLength() {
        return this.attributeLength;
    }
}

