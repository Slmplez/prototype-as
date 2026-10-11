/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantValueAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class ConstantValueAttribute
extends ClassFileAttribute
implements IConstantValueAttribute {
    private int constantValueIndex;
    private IConstantPoolEntry constantPoolEntry;

    ConstantValueAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        this.constantValueIndex = this.u2At(classFileBytes, 6, offset);
        this.constantPoolEntry = constantPool.decodeEntry(this.constantValueIndex);
    }

    public IConstantPoolEntry getConstantValue() {
        return this.constantPoolEntry;
    }

    public int getConstantValueIndex() {
        return this.constantValueIndex;
    }
}

