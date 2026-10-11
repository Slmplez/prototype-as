/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.ISourceAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class SourceFileAttribute
extends ClassFileAttribute
implements ISourceAttribute {
    private int sourceFileIndex;
    private char[] sourceFileName;

    public SourceFileAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        this.sourceFileIndex = this.u2At(classFileBytes, 6, offset);
        IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(this.sourceFileIndex);
        if (constantPoolEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.sourceFileName = constantPoolEntry.getUtf8Value();
    }

    public int getSourceFileIndex() {
        return this.sourceFileIndex;
    }

    public char[] getSourceFileName() {
        return this.sourceFileName;
    }
}

