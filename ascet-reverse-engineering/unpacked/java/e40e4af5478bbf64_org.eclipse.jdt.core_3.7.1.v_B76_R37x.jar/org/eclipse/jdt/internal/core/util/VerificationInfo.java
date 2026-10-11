/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IVerificationTypeInfo;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class VerificationInfo
extends ClassFileStruct
implements IVerificationTypeInfo {
    private int tag;
    private int offset;
    private int constantPoolIndex;
    private char[] classTypeName;
    private int readOffset;

    public VerificationInfo(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int t;
        this.tag = t = this.u1At(classFileBytes, 0, offset);
        this.readOffset = 1;
        switch (t) {
            case 7: {
                int constantIndex;
                this.constantPoolIndex = constantIndex = this.u2At(classFileBytes, 1, offset);
                if (constantIndex != 0) {
                    IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(constantIndex);
                    if (constantPoolEntry.getKind() != 7) {
                        throw new ClassFormatException(3);
                    }
                    this.classTypeName = constantPoolEntry.getClassInfoName();
                }
                this.readOffset += 2;
                break;
            }
            case 8: {
                this.offset = this.u2At(classFileBytes, 1, offset);
                this.readOffset += 2;
            }
        }
    }

    public int getTag() {
        return this.tag;
    }

    public int getOffset() {
        return this.offset;
    }

    public int getConstantPoolIndex() {
        return this.constantPoolIndex;
    }

    public char[] getClassTypeName() {
        return this.classTypeName;
    }

    public int sizeInBytes() {
        return this.readOffset;
    }
}

