/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.ICodeAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.core.util.IExceptionAttribute;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.internal.core.util.AnnotationDefaultAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;
import org.eclipse.jdt.internal.core.util.CodeAttribute;
import org.eclipse.jdt.internal.core.util.ExceptionAttribute;
import org.eclipse.jdt.internal.core.util.RuntimeInvisibleAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.RuntimeInvisibleParameterAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.RuntimeVisibleAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.RuntimeVisibleParameterAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.SignatureAttribute;

public class MethodInfo
extends ClassFileStruct
implements IMethodInfo {
    private int accessFlags;
    private int attributeBytes;
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private ICodeAttribute codeAttribute;
    private char[] descriptor;
    private int descriptorIndex;
    private IExceptionAttribute exceptionAttribute;
    private boolean isDeprecated;
    private boolean isSynthetic;
    private char[] name;
    private int nameIndex;

    public MethodInfo(byte[] classFileBytes, IConstantPool constantPool, int offset, int decodingFlags) throws ClassFormatException {
        int flags;
        boolean no_code_attribute = (decodingFlags & 0x20) == 0;
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
        if (this.attributesCount != 0) {
            if (no_code_attribute && !this.isAbstract() && !this.isNative()) {
                if (this.attributesCount != 1) {
                    this.attributes = new IClassFileAttribute[this.attributesCount - 1];
                }
            } else {
                this.attributes = new IClassFileAttribute[this.attributesCount];
            }
        }
        int attributesIndex = 0;
        int readOffset = 8;
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
            } else if (this.equals(attributeName, IAttributeNamesConstants.CODE)) {
                if (!no_code_attribute) {
                    this.codeAttribute = new CodeAttribute(classFileBytes, constantPool, offset + readOffset);
                    this.attributes[attributesIndex++] = this.codeAttribute;
                }
            } else if (this.equals(attributeName, IAttributeNamesConstants.EXCEPTIONS)) {
                this.exceptionAttribute = new ExceptionAttribute(classFileBytes, constantPool, offset + readOffset);
                this.attributes[attributesIndex++] = this.exceptionAttribute;
            } else {
                this.attributes[attributesIndex++] = this.equals(attributeName, IAttributeNamesConstants.SIGNATURE) ? new SignatureAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS) ? new RuntimeVisibleAnnotationsAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS) ? new RuntimeInvisibleAnnotationsAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS) ? new RuntimeVisibleParameterAnnotationsAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS) ? new RuntimeInvisibleParameterAnnotationsAttribute(classFileBytes, constantPool, offset + readOffset) : (this.equals(attributeName, IAttributeNamesConstants.ANNOTATION_DEFAULT) ? new AnnotationDefaultAttribute(classFileBytes, constantPool, offset + readOffset) : new ClassFileAttribute(classFileBytes, constantPool, offset + readOffset))))));
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

    public ICodeAttribute getCodeAttribute() {
        return this.codeAttribute;
    }

    public char[] getDescriptor() {
        return this.descriptor;
    }

    public int getDescriptorIndex() {
        return this.descriptorIndex;
    }

    public IExceptionAttribute getExceptionAttribute() {
        return this.exceptionAttribute;
    }

    public char[] getName() {
        return this.name;
    }

    public int getNameIndex() {
        return this.nameIndex;
    }

    private boolean isAbstract() {
        return (this.accessFlags & 0x400) != 0;
    }

    public boolean isClinit() {
        return this.name[0] == '<' && this.name.length == 8;
    }

    public boolean isConstructor() {
        return this.name[0] == '<' && this.name.length == 6;
    }

    public boolean isDeprecated() {
        return this.isDeprecated;
    }

    private boolean isNative() {
        return (this.accessFlags & 0x100) != 0;
    }

    public boolean isSynthetic() {
        return this.isSynthetic;
    }

    int sizeInBytes() {
        return this.attributeBytes;
    }
}

