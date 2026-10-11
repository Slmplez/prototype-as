/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IInnerClassesAttributeEntry;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class InnerClassesAttributeEntry
extends ClassFileStruct
implements IInnerClassesAttributeEntry {
    private int innerClassNameIndex;
    private int outerClassNameIndex;
    private int innerNameIndex;
    private char[] innerClassName;
    private char[] outerClassName;
    private char[] innerName;
    private int accessFlags;

    public InnerClassesAttributeEntry(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        IConstantPoolEntry constantPoolEntry;
        this.innerClassNameIndex = this.u2At(classFileBytes, 0, offset);
        this.outerClassNameIndex = this.u2At(classFileBytes, 2, offset);
        this.innerNameIndex = this.u2At(classFileBytes, 4, offset);
        this.accessFlags = this.u2At(classFileBytes, 6, offset);
        if (this.innerClassNameIndex != 0) {
            constantPoolEntry = constantPool.decodeEntry(this.innerClassNameIndex);
            if (constantPoolEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.innerClassName = constantPoolEntry.getClassInfoName();
        }
        if (this.outerClassNameIndex != 0) {
            constantPoolEntry = constantPool.decodeEntry(this.outerClassNameIndex);
            if (constantPoolEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.outerClassName = constantPoolEntry.getClassInfoName();
        }
        if (this.innerNameIndex != 0) {
            constantPoolEntry = constantPool.decodeEntry(this.innerNameIndex);
            if (constantPoolEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.innerName = constantPoolEntry.getUtf8Value();
        }
    }

    public int getAccessFlags() {
        return this.accessFlags;
    }

    public char[] getInnerClassName() {
        return this.innerClassName;
    }

    public int getInnerClassNameIndex() {
        return this.innerClassNameIndex;
    }

    public char[] getInnerName() {
        return this.innerName;
    }

    public int getInnerNameIndex() {
        return this.innerNameIndex;
    }

    public char[] getOuterClassName() {
        return this.outerClassName;
    }

    public int getOuterClassNameIndex() {
        return this.outerClassNameIndex;
    }
}

