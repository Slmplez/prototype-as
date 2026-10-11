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

public class StackMapFrame
extends ClassFileStruct
implements IStackMapFrame {
    private static final IVerificationTypeInfo[] EMPTY_LOCALS_OR_STACK_ITEMS = new IVerificationTypeInfo[0];
    private int readOffset;
    private int frameType;
    private int numberOfLocals;
    private int numberOfStackItems;
    private IVerificationTypeInfo[] locals;
    private IVerificationTypeInfo[] stackItems;
    private int offsetDelta;

    public StackMapFrame(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int type;
        this.frameType = type = this.u1At(classFileBytes, 0, offset);
        switch (type) {
            case 247: {
                this.offsetDelta = this.u2At(classFileBytes, 1, offset);
                this.numberOfStackItems = 1;
                this.stackItems = new VerificationInfo[1];
                this.readOffset = 3;
                VerificationInfo info = new VerificationInfo(classFileBytes, constantPool, offset + this.readOffset);
                this.stackItems[0] = info;
                this.readOffset += info.sizeInBytes();
                this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.numberOfLocals = 0;
                break;
            }
            case 248: 
            case 249: 
            case 250: {
                this.offsetDelta = this.u2At(classFileBytes, 1, offset);
                this.numberOfStackItems = 0;
                this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.readOffset = 3;
                this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.numberOfLocals = 0;
                break;
            }
            case 251: {
                this.offsetDelta = this.u2At(classFileBytes, 1, offset);
                this.numberOfStackItems = 0;
                this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.readOffset = 3;
                this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.numberOfLocals = 0;
                break;
            }
            case 252: 
            case 253: 
            case 254: {
                int diffLocals;
                this.offsetDelta = this.u2At(classFileBytes, 1, offset);
                this.numberOfStackItems = 0;
                this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.readOffset = 3;
                this.numberOfLocals = diffLocals = type - 251;
                this.locals = new IVerificationTypeInfo[diffLocals];
                int i = 0;
                while (i < diffLocals) {
                    VerificationInfo verificationInfo = new VerificationInfo(classFileBytes, constantPool, offset + this.readOffset);
                    this.locals[i] = verificationInfo;
                    this.readOffset += verificationInfo.sizeInBytes();
                    ++i;
                }
                break;
            }
            case 255: {
                int tempLocals;
                this.offsetDelta = this.u2At(classFileBytes, 1, offset);
                this.numberOfLocals = tempLocals = this.u2At(classFileBytes, 3, offset);
                this.readOffset = 5;
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
                    break;
                }
                this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
                break;
            }
            default: {
                if (type <= 63) {
                    this.offsetDelta = type;
                    this.numberOfStackItems = 0;
                    this.stackItems = EMPTY_LOCALS_OR_STACK_ITEMS;
                    this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                    this.numberOfLocals = 0;
                    this.readOffset = 1;
                    break;
                }
                if (type > 127) break;
                this.offsetDelta = type - 64;
                this.numberOfStackItems = 1;
                this.stackItems = new VerificationInfo[1];
                this.readOffset = 1;
                VerificationInfo info = new VerificationInfo(classFileBytes, constantPool, offset + this.readOffset);
                this.stackItems[0] = info;
                this.readOffset += info.sizeInBytes();
                this.locals = EMPTY_LOCALS_OR_STACK_ITEMS;
                this.numberOfLocals = 0;
            }
        }
    }

    int sizeInBytes() {
        return this.readOffset;
    }

    public int getFrameType() {
        return this.frameType;
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

