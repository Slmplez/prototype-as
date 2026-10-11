/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.ISignatureAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class SignatureAttribute
extends ClassFileAttribute
implements ISignatureAttribute {
    private int signatureIndex;
    private char[] signature;

    SignatureAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int index;
        this.signatureIndex = index = this.u2At(classFileBytes, 6, offset);
        IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(index);
        if (constantPoolEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.signature = constantPoolEntry.getUtf8Value();
    }

    public int getSignatureIndex() {
        return this.signatureIndex;
    }

    public char[] getSignature() {
        return this.signature;
    }
}

