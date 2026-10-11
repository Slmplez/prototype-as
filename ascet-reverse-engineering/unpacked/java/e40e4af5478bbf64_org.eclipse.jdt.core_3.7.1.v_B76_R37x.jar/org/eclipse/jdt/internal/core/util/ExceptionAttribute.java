/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionAttribute;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class ExceptionAttribute
extends ClassFileAttribute
implements IExceptionAttribute {
    private int exceptionsNumber;
    private char[][] exceptionNames;
    private int[] exceptionIndexes;

    ExceptionAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int exceptionLength = this.exceptionsNumber = this.u2At(classFileBytes, 6, offset);
        this.exceptionNames = CharOperation.NO_CHAR_CHAR;
        this.exceptionIndexes = Util.EMPTY_INT_ARRAY;
        if (exceptionLength != 0) {
            this.exceptionNames = new char[exceptionLength][];
            this.exceptionIndexes = new int[exceptionLength];
        }
        int readOffset = 8;
        int i = 0;
        while (i < exceptionLength) {
            this.exceptionIndexes[i] = this.u2At(classFileBytes, readOffset, offset);
            IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(this.exceptionIndexes[i]);
            if (constantPoolEntry.getKind() != 7) {
                throw new ClassFormatException(3);
            }
            this.exceptionNames[i] = constantPoolEntry.getClassInfoName();
            readOffset += 2;
            ++i;
        }
    }

    public int[] getExceptionIndexes() {
        return this.exceptionIndexes;
    }

    public char[][] getExceptionNames() {
        return this.exceptionNames;
    }

    public int getExceptionsNumber() {
        return this.exceptionsNumber;
    }
}

