/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IInnerClassesAttribute;
import org.eclipse.jdt.core.util.IInnerClassesAttributeEntry;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.InnerClassesAttributeEntry;

public class InnerClassesAttribute
extends ClassFileAttribute
implements IInnerClassesAttribute {
    private static final IInnerClassesAttributeEntry[] NO_ENTRIES = new IInnerClassesAttributeEntry[0];
    private int numberOfClasses;
    private IInnerClassesAttributeEntry[] entries;

    public InnerClassesAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int length = this.numberOfClasses = this.u2At(classFileBytes, 6, offset);
        if (length != 0) {
            int readOffset = 8;
            this.entries = new IInnerClassesAttributeEntry[length];
            int i = 0;
            while (i < length) {
                this.entries[i] = new InnerClassesAttributeEntry(classFileBytes, constantPool, offset + readOffset);
                readOffset += 8;
                ++i;
            }
        } else {
            this.entries = NO_ENTRIES;
        }
    }

    public IInnerClassesAttributeEntry[] getInnerClassAttributesEntries() {
        return this.entries;
    }

    public int getNumberOfClasses() {
        return this.numberOfClasses;
    }
}

