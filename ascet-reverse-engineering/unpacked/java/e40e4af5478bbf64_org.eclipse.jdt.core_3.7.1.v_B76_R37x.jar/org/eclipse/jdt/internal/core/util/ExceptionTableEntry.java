/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionTableEntry;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class ExceptionTableEntry
extends ClassFileStruct
implements IExceptionTableEntry {
    private int startPC;
    private int endPC;
    private int handlerPC;
    private int catchTypeIndex;
    private char[] catchType;

    ExceptionTableEntry(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        this.startPC = this.u2At(classFileBytes, 0, offset);
        this.endPC = this.u2At(classFileBytes, 2, offset);
        this.handlerPC = this.u2At(classFileBytes, 4, offset);
        this.catchTypeIndex = this.u2At(classFileBytes, 6, offset);
        if (this.catchTypeIndex != 0) {
            IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(this.catchTypeIndex);
            if (constantPoolEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.catchType = constantPoolEntry.getClassInfoName();
        }
    }

    public int getStartPC() {
        return this.startPC;
    }

    public int getEndPC() {
        return this.endPC;
    }

    public int getHandlerPC() {
        return this.handlerPC;
    }

    public int getCatchTypeIndex() {
        return this.catchTypeIndex;
    }

    public char[] getCatchType() {
        return this.catchType;
    }
}

