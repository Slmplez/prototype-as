/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IStackMapFrame;
import org.eclipse.jdt.core.util.IStackMapTableAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.StackMapFrame;

public class StackMapTableAttribute
extends ClassFileAttribute
implements IStackMapTableAttribute {
    private static final IStackMapFrame[] NO_FRAMES = new IStackMapFrame[0];
    private static final byte[] NO_ENTRIES = new byte[0];
    private int numberOfEntries;
    private IStackMapFrame[] frames;
    private byte[] bytes;

    public StackMapTableAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int length;
        this.numberOfEntries = length = this.u2At(classFileBytes, 6, offset);
        if (length != 0) {
            int readOffset = 8;
            this.frames = new IStackMapFrame[length];
            int i = 0;
            while (i < length) {
                StackMapFrame frame = new StackMapFrame(classFileBytes, constantPool, offset + readOffset);
                this.frames[i] = frame;
                readOffset += frame.sizeInBytes();
                ++i;
            }
        } else {
            this.frames = NO_FRAMES;
        }
        int byteLength = (int)this.u4At(classFileBytes, 2, offset);
        if (length != 0) {
            this.bytes = new byte[byteLength];
            System.arraycopy(classFileBytes, offset + 6, this.bytes, 0, byteLength);
        } else {
            this.bytes = NO_ENTRIES;
        }
    }

    public int getNumberOfEntries() {
        return this.numberOfEntries;
    }

    public IStackMapFrame[] getStackMapFrame() {
        return this.frames;
    }

    public byte[] getBytes() {
        return this.bytes;
    }
}

