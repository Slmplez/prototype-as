/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.internal.core.util.Annotation;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class AnnotationComponentValue
extends ClassFileStruct
implements IAnnotationComponentValue {
    private static final IAnnotationComponentValue[] NO_VALUES = new AnnotationComponentValue[0];
    private IAnnotationComponentValue[] annotationComponentValues;
    private IAnnotation annotationValue;
    private IConstantPoolEntry classInfo;
    private int classFileInfoIndex = -1;
    private IConstantPoolEntry constantValue;
    private int constantValueIndex = -1;
    private int enumConstantTypeNameIndex = -1;
    private int enumConstantNameIndex = -1;
    private char[] enumConstantTypeName;
    private char[] enumConstantName;
    private int readOffset;
    private int tag;
    private int valuesNumber;

    public AnnotationComponentValue(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int t;
        this.tag = t = this.u1At(classFileBytes, 0, offset);
        this.readOffset = 1;
        switch (t) {
            case 66: 
            case 67: 
            case 68: 
            case 70: 
            case 73: 
            case 74: 
            case 83: 
            case 90: 
            case 115: {
                int constantIndex;
                this.constantValueIndex = constantIndex = this.u2At(classFileBytes, this.readOffset, offset);
                if (constantIndex != 0) {
                    IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(constantIndex);
                    switch (constantPoolEntry.getKind()) {
                        case 1: 
                        case 3: 
                        case 4: 
                        case 5: 
                        case 6: {
                            break;
                        }
                        default: {
                            throw new ClassFormatException(3);
                        }
                    }
                    this.constantValue = constantPoolEntry;
                }
                this.readOffset += 2;
                break;
            }
            case 101: {
                IConstantPoolEntry constantPoolEntry;
                int index;
                this.enumConstantTypeNameIndex = index = this.u2At(classFileBytes, this.readOffset, offset);
                if (index != 0) {
                    constantPoolEntry = constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 1) {
                        throw new ClassFormatException(3);
                    }
                    this.enumConstantTypeName = constantPoolEntry.getUtf8Value();
                }
                this.readOffset += 2;
                this.enumConstantNameIndex = index = this.u2At(classFileBytes, this.readOffset, offset);
                if (index != 0) {
                    constantPoolEntry = constantPool.decodeEntry(index);
                    if (constantPoolEntry.getKind() != 1) {
                        throw new ClassFormatException(3);
                    }
                    this.enumConstantName = constantPoolEntry.getUtf8Value();
                }
                this.readOffset += 2;
                break;
            }
            case 99: {
                int classFileIndex;
                this.classFileInfoIndex = classFileIndex = this.u2At(classFileBytes, this.readOffset, offset);
                if (classFileIndex != 0) {
                    IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(classFileIndex);
                    if (constantPoolEntry.getKind() != 1) {
                        throw new ClassFormatException(3);
                    }
                    this.classInfo = constantPoolEntry;
                }
                this.readOffset += 2;
                break;
            }
            case 64: {
                Annotation annotation = new Annotation(classFileBytes, constantPool, this.readOffset + offset);
                this.annotationValue = annotation;
                this.readOffset += annotation.sizeInBytes();
                break;
            }
            case 91: {
                int numberOfValues;
                this.valuesNumber = numberOfValues = this.u2At(classFileBytes, this.readOffset, offset);
                this.readOffset += 2;
                if (numberOfValues != 0) {
                    this.annotationComponentValues = new IAnnotationComponentValue[numberOfValues];
                    int i = 0;
                    while (i < numberOfValues) {
                        AnnotationComponentValue value = new AnnotationComponentValue(classFileBytes, constantPool, offset + this.readOffset);
                        this.annotationComponentValues[i] = value;
                        this.readOffset += value.sizeInBytes();
                        ++i;
                    }
                    break;
                }
                this.annotationComponentValues = NO_VALUES;
            }
        }
    }

    public IAnnotationComponentValue[] getAnnotationComponentValues() {
        return this.annotationComponentValues;
    }

    public IAnnotation getAnnotationValue() {
        return this.annotationValue;
    }

    public IConstantPoolEntry getClassInfo() {
        return this.classInfo;
    }

    public int getClassInfoIndex() {
        return this.classFileInfoIndex;
    }

    public IConstantPoolEntry getConstantValue() {
        return this.constantValue;
    }

    public int getConstantValueIndex() {
        return this.constantValueIndex;
    }

    public char[] getEnumConstantName() {
        return this.enumConstantName;
    }

    public int getEnumConstantNameIndex() {
        return this.enumConstantNameIndex;
    }

    public char[] getEnumConstantTypeName() {
        return this.enumConstantTypeName;
    }

    public int getEnumConstantTypeNameIndex() {
        return this.enumConstantTypeNameIndex;
    }

    public int getTag() {
        return this.tag;
    }

    public int getValuesNumber() {
        return this.valuesNumber;
    }

    int sizeInBytes() {
        return this.readOffset;
    }
}

