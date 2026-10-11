/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IConstantValueAttribute;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;
import org.eclipse.jdt.internal.core.util.ConstantValueAttribute;
import org.eclipse.jdt.internal.core.util.RuntimeInvisibleAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.RuntimeVisibleAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.SignatureAttribute;

public class FieldInfo
extends ClassFileStruct
implements IFieldInfo {
    private int accessFlags;
    private int attributeBytes;
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private IConstantValueAttribute constantValueAttribute;
    private char[] descriptor;
    private int descriptorIndex;
    private boolean isDeprecated;
    private boolean isSynthetic;
    private char[] name;
    private int nameIndex;

    public FieldInfo(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int flags;
        this.accessFlags = flags = this.u2At(classFileBytes, 0, offset);
        if ((flags & 0x1000) != 0) {
            this.isSynthetic = true;
        }
        this.nameIndex = this.u2At(classFileBytes, 2, offset);
        IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(this.nameIndex);
        if (constantPoolEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.name = constantPoolEntry.getUtf8Value();
        this.descriptorIndex = this.u2At(classFileBytes, 4, offset);
        constantPoolEntry = constantPool.decodeEntry(this.descriptorIndex);
        if (constantPoolEntry.getKind() != 1) {
            throw new ClassFormatException(3);
        }
        this.descriptor = constantPoolEntry.getUtf8Value();
        this.attributesCount = this.u2At(classFileBytes, 6, offset);
        this.attributes = ClassFileAttribute.NO_ATTRIBUTES;
        int readOffset = 8;
        if (this.attributesCount != 0) {
            this.attributes = new IClassFileAttribute[this.attributesCount];
        }
        int attributesIndex = 0;
        int i = 0;
        while (i < this.attributesCount) {
            constantPoolEntry = constantPool.decodeEntry(this.u2At(classFileBytes, readOffset, offset));
            if (constantPoolEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            char[] attributeName = constantPoolEntry.getUtf8Value();
            if (this.equals(attributeName, IAttributeNamesConstants.DEPRECATED)) {
                this.isDeprecated = true;
                this.attributes[attributesIndex++] = new ClassFileAttribute(classFileBytes, constantPool, offset + readOffset);
            } else if (this.equals(attributeName, IAttributeNamesConstants.SYNTHETIC)) {
                this.isSynthetic = true;
                this.attributes[attributesIndex++] = new ClassFileAttribute(classFileBytes, constantPool, offset + readOffset);
            } else if (this.equals(attributeName, IAttributeNamesConstants.CONSTANT_VALUE)) {
                this.constantValueAttribute = new ConstantValueAttribute(classFileBytes, constantPool, offset + readOffset);
                this.attributes[attributesIndex++] = this.constantValueAttribute;
            } else {
                this.attributes[attributesIndex++] = this.equals(attributeName, IAttributeNamesConstants.SIGNATURE) ? new SignatureAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS) ? new RuntimeVisibleAnnotationsAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS) ? new RuntimeInvisibleAnnotationsAttribute(classFileBytes, constantPool, offset + readOffset) : new ClassFileAttribute(classFileBytes, constantPool, offset + readOffset)));
            }
            readOffset = (int)((long)readOffset + (6L + this.u4At(classFileBytes, readOffset + 2, offset)));
            ++i;
        }
        this.attributeBytes = readOffset;
    }

    public int getAccessFlags() {
        return this.accessFlags;
    }

    public int getAttributeCount() {
        return this.attributesCount;
    }

    public IClassFileAttribute[] getAttributes() {
        return this.attributes;
    }

    public IConstantValueAttribute getConstantValueAttribute() {
        return this.constantValueAttribute;
    }

    public char[] getDescriptor() {
        return this.descriptor;
    }

    public int getDescriptorIndex() {
        return this.descriptorIndex;
    }

    public char[] getName() {
        return this.name;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    public boolean hasConstantValueAttribute() {
        return this.constantValueAttribute != null;
    }

    public boolean isDeprecated() {
        return this.isDeprecated;
    }

    public boolean isSynthetic() {
        return this.isSynthetic;
    }

    int sizeInBytes() {
        return this.attributeBytes;
    }
}

