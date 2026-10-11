/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IStackMapFrame;
import org.eclipse.jdt.core.util.IVerificationTypeInfo;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;
import org.eclipse.jdt.internal.core.util.VerificationInfo;

public class DefaultStackMapFrame
extends ClassFileStruct
implements IStackMapFrame {
    private static final IVerificationTypeInfo[] EMPTY_LOCALS_OR_STACK_ITEMS = new IVerificationTypeInfo[0];
    private int readOffset;
    private int numberOfLocals;
    private int numberOfStackItems;
    private IVerificationTypeInfo[] locals;
    private IVerificationTypeInfo[] stackItems;
    private int offsetDelta;

    public DefaultStackMapFrame(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int tempLocals;
        this.offsetDelta = this.u2At(classFileBytes, 0, offset);
        this.numberOfLocals = tempLocals = this.u2At(classFileBytes, 2, offset);
        this.readOffset = 4;
        if (tempLocals != 0) {
            this.locals = new IVerificationTypeInfo[tempLocals];
            int i = 0;
            while (i < tempLocals) {
                VerificationInfo verificationInfo = new VerificationInfo(classFileBytes, constantPool, offset + this.readOffset);
                this.locals[i] = verificationInfo;
                this.readOffset += verificationInfo.sizeInBytes();
                ++i;
            }
        } else {
            this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
        }
        int tempStackItems = this.u2At(classFileBytes, this.readOffset, offset);
        this.readOffset += 2;
        this.numberOfStackItems = tempStackItems;
        if (tempStackItems != 0) {
            this.stackItems = new IVerificationTypeInfo[tempStackItems];
            int i = 0;
            while (i < tempStackItems) {
                VerificationInfo verificationInfo = new VerificationInfo(classFileBytes, constantPool, offset + this.readOffset);
                this.stackItems[i] = verificationInfo;
                this.readOffset += verificationInfo.sizeInBytes();
                ++i;
            }
        } else {
            this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
        }
    }

    int sizeInBytes() {
        return this.readOffset;
    }

    public int getFrameType() {
        return 255;
    }

    public IVerificationTypeInfo[] getLocals() {
        return this.locals;
    }

    public int getNumberOfLocals() {
        return this.numberOfLocals;
    }

    public int getNumberOfStackItems() {
        return this.numberOfStackItems;
    }

    public int getOffsetDelta() {
        return this.offsetDelta;
    }

    public IVerificationTypeInfo[] getStackItems() {
        return this.stackItems;
    }
}

