/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.AnnotationInfo;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileStruct;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfoWithAnnotations;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfoWithParameterAnnotations;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.util.Util;

public class MethodInfo
extends ClassFileStruct
implements IBinaryMethod,
Comparable {
    private static final char[][] noException = CharOperation.NO_CHAR_CHAR;
    private static final char[][] noArgumentNames = CharOperation.NO_CHAR_CHAR;
    protected int accessFlags = -1;
    protected int attributeBytes;
    protected char[] descriptor;
    protected char[][] exceptionNames;
    protected char[] name;
    protected char[] signature;
    protected int signatureUtf8Offset = -1;
    protected long tagBits;
    protected char[][] argumentNames;
    protected int argumentNamesIndex;

    public static MethodInfo createMethod(byte[] classFileBytes, int[] offsets, int offset) {
        MethodInfo methodInfo = new MethodInfo(classFileBytes, offsets, offset);
        int attributesCount = methodInfo.u2At(6);
        int readOffset = 8;
        AnnotationInfo[] annotations = null;
        AnnotationInfo[][] parameterAnnotations = null;
        int i = 0;
        while (i < attributesCount) {
            int utf8Offset = methodInfo.constantPoolOffsets[methodInfo.u2At(readOffset)] - methodInfo.structOffset;
            char[] attributeName = methodInfo.utf8At(utf8Offset + 3, methodInfo.u2At(utf8Offset + 1));
            if (attributeName.length > 0) {
                switch (attributeName[0]) {
                    case 'S': {
                        if (!CharOperation.equals(AttributeNamesConstants.SignatureName, attributeName)) break;
                        methodInfo.signatureUtf8Offset = methodInfo.constantPoolOffsets[methodInfo.u2At(readOffset + 6)] - methodInfo.structOffset;
                        break;
                    }
                    case 'R': {
                        AnnotationInfo[] methodAnnotations = null;
                        AnnotationInfo[][] paramAnnotations = null;
                        if (CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeVisibleAnnotationsName)) {
                            methodAnnotations = MethodInfo.decodeMethodAnnotations(readOffset, true, methodInfo);
                        } else if (CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeInvisibleAnnotationsName)) {
                            methodAnnotations = MethodInfo.decodeMethodAnnotations(readOffset, false, methodInfo);
                        } else if (CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeVisibleParameterAnnotationsName)) {
                            paramAnnotations = MethodInfo.decodeParamAnnotations(readOffset, true, methodInfo);
                        } else if (CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeInvisibleParameterAnnotationsName)) {
                            paramAnnotations = MethodInfo.decodeParamAnnotations(readOffset, false, methodInfo);
                        }
                        if (methodAnnotations != null) {
                            if (annotations == null) {
                                annotations = methodAnnotations;
                                break;
                            }
                            int length = annotations.length;
                            AnnotationInfo[] newAnnotations = new AnnotationInfo[length + methodAnnotations.length];
                            System.arraycopy(annotations, 0, newAnnotations, 0, length);
                            System.arraycopy(methodAnnotations, 0, newAnnotations, length, methodAnnotations.length);
                            annotations = newAnnotations;
                            break;
                        }
                        if (paramAnnotations == null) break;
                        int numberOfParameters = paramAnnotations.length;
                        if (parameterAnnotations == null) {
                            parameterAnnotations = paramAnnotations;
                            break;
                        }
                        int p = 0;
                        while (p < numberOfParameters) {
                            int numberOfAnnotations;
                            int n = numberOfAnnotations = paramAnnotations[p] == null ? 0 : paramAnnotations[p].length;
                            if (numberOfAnnotations > 0) {
                                if (parameterAnnotations[p] == null) {
                                    parameterAnnotations[p] = paramAnnotations[p];
                                } else {
                                    int length = parameterAnnotations[p].length;
                                    AnnotationInfo[] newAnnotations = new AnnotationInfo[length + numberOfAnnotations];
                                    System.arraycopy(parameterAnnotations[p], 0, newAnnotations, 0, length);
                                    System.arraycopy(paramAnnotations[p], 0, newAnnotations, length, numberOfAnnotations);
                                    parameterAnnotations[p] = newAnnotations;
                                }
                            }
                            ++p;
                        }
                        break;
                    }
                }
            }
            readOffset = (int)((long)readOffset + (6L + methodInfo.u4At(readOffset + 2)));
            ++i;
        }
        methodInfo.attributeBytes = readOffset;
        if (parameterAnnotations != null) {
            return new MethodInfoWithParameterAnnotations(methodInfo, annotations, parameterAnnotations);
        }
        if (annotations != null) {
            return new MethodInfoWithAnnotations(methodInfo, annotations);
        }
        return methodInfo;
    }

    static AnnotationInfo[] decodeAnnotations(int offset, boolean runtimeVisible, int numberOfAnnotations, MethodInfo methodInfo) {
        AnnotationInfo[] result = new AnnotationInfo[numberOfAnnotations];
        int readOffset = offset;
        int i = 0;
        while (i < numberOfAnnotations) {
            result[i] = new AnnotationInfo(methodInfo.reference, methodInfo.constantPoolOffsets, readOffset + methodInfo.structOffset, runtimeVisible, false);
            readOffset += result[i].readOffset;
            ++i;
        }
        return result;
    }

    static AnnotationInfo[] decodeMethodAnnotations(int offset, boolean runtimeVisible, MethodInfo methodInfo) {
        int numberOfAnnotations = methodInfo.u2At(offset + 6);
        if (numberOfAnnotations > 0) {
            AnnotationInfo[] annos = MethodInfo.decodeAnnotations(offset + 8, runtimeVisible, numberOfAnnotations, methodInfo);
            if (runtimeVisible) {
                int numStandardAnnotations = 0;
                int i = 0;
                while (i < numberOfAnnotations) {
                    long standardAnnoTagBits = annos[i].standardAnnotationTagBits;
                    methodInfo.tagBits |= standardAnnoTagBits;
                    if (standardAnnoTagBits != 0L) {
                        annos[i] = null;
                        ++numStandardAnnotations;
                    }
                    ++i;
                }
                if (numStandardAnnotations != 0) {
                    if (numStandardAnnotations == numberOfAnnotations) {
                        return null;
                    }
                    AnnotationInfo[] temp = new AnnotationInfo[numberOfAnnotations - numStandardAnnotations];
                    int tmpIndex = 0;
                    int i2 = 0;
                    while (i2 < numberOfAnnotations) {
                        if (annos[i2] != null) {
                            temp[tmpIndex++] = annos[i2];
                        }
                        ++i2;
                    }
                    annos = temp;
                }
            }
            return annos;
        }
        return null;
    }

    static AnnotationInfo[][] decodeParamAnnotations(int offset, boolean runtimeVisible, MethodInfo methodInfo) {
        AnnotationInfo[][] allParamAnnotations = null;
        int numberOfParameters = methodInfo.u1At(offset + 6);
        if (numberOfParameters > 0) {
            int readOffset = offset + 7;
            int i = 0;
            while (i < numberOfParameters) {
                int numberOfAnnotations = methodInfo.u2At(readOffset);
                readOffset += 2;
                if (numberOfAnnotations > 0) {
                    if (allParamAnnotations == null) {
                        allParamAnnotations = new AnnotationInfo[numberOfParameters][];
                    }
                    AnnotationInfo[] annos = MethodInfo.decodeAnnotations(readOffset, runtimeVisible, numberOfAnnotations, methodInfo);
                    allParamAnnotations[i] = annos;
                    int aIndex = 0;
                    while (aIndex < annos.length) {
                        readOffset += annos[aIndex].readOffset;
                        ++aIndex;
                    }
                }
                ++i;
            }
        }
        return allParamAnnotations;
    }

    protected MethodInfo(byte[] classFileBytes, int[] offsets, int offset) {
        super(classFileBytes, offsets, offset);
    }

    public int compareTo(Object o) {
        MethodInfo otherMethod = (MethodInfo)o;
        int result = new String(this.getSelector()).compareTo(new String(otherMethod.getSelector()));
        if (result != 0) {
            return result;
        }
        return new String(this.getMethodDescriptor()).compareTo(new String(otherMethod.getMethodDescriptor()));
    }

    public boolean equals(Object o) {
        if (!(o instanceof MethodInfo)) {
            return false;
        }
        MethodInfo otherMethod = (MethodInfo)o;
        return CharOperation.equals(this.getSelector(), otherMethod.getSelector()) && CharOperation.equals(this.getMethodDescriptor(), otherMethod.getMethodDescriptor());
    }

    public int hashCode() {
        return CharOperation.hashCode(this.getSelector()) + CharOperation.hashCode(this.getMethodDescriptor());
    }

    public IBinaryAnnotation[] getAnnotations() {
        return null;
    }

    public char[][] getArgumentNames() {
        if (this.argumentNames == null) {
            this.readCodeAttribute();
        }
        return this.argumentNames;
    }

    public Object getDefaultValue() {
        return null;
    }

    public char[][] getExceptionTypeNames() {
        if (this.exceptionNames == null) {
            this.readExceptionAttributes();
        }
        return this.exceptionNames;
    }

    public char[] getGenericSignature() {
        if (this.signatureUtf8Offset != -1) {
            if (this.signature == null) {
                this.signature = this.utf8At(this.signatureUtf8Offset + 3, this.u2At(this.signatureUtf8Offset + 1));
            }
            return this.signature;
        }
        return null;
    }

    public char[] getMethodDescriptor() {
        if (this.descriptor == null) {
            int utf8Offset = this.constantPoolOffsets[this.u2At(4)] - this.structOffset;
            this.descriptor = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
        }
        return this.descriptor;
    }

    public int getModifiers() {
        if (this.accessFlags == -1) {
            this.accessFlags = this.u2At(0);
            this.readModifierRelatedAttributes();
        }
        return this.accessFlags;
    }

    public IBinaryAnnotation[] getParameterAnnotations(int index) {
        return null;
    }

    public char[] getSelector() {
        if (this.name == null) {
            int utf8Offset = this.constantPoolOffsets[this.u2At(2)] - this.structOffset;
            this.name = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
        }
        return this.name;
    }

    public long getTagBits() {
        return this.tagBits;
    }

    protected void initialize() {
        this.getModifiers();
        this.getSelector();
        this.getMethodDescriptor();
        this.getExceptionTypeNames();
        this.getGenericSignature();
        this.getArgumentNames();
        this.reset();
    }

    public boolean isClinit() {
        char[] selector = this.getSelector();
        return selector[0] == '<' && selector.length == 8;
    }

    public boolean isConstructor() {
        char[] selector = this.getSelector();
        return selector[0] == '<' && selector.length == 6;
    }

    public boolean isSynthetic() {
        return (this.getModifiers() & 0x1000) != 0;
    }

    private void readExceptionAttributes() {
        int attributesCount = this.u2At(6);
        int readOffset = 8;
        int i = 0;
        while (i < attributesCount) {
            int utf8Offset = this.constantPoolOffsets[this.u2At(readOffset)] - this.structOffset;
            char[] attributeName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
            if (CharOperation.equals(attributeName, AttributeNamesConstants.ExceptionsName)) {
                int entriesNumber = this.u2At(readOffset + 6);
                readOffset += 8;
                if (entriesNumber == 0) {
                    this.exceptionNames = noException;
                } else {
                    this.exceptionNames = new char[entriesNumber][];
                    int j = 0;
                    while (j < entriesNumber) {
                        utf8Offset = this.constantPoolOffsets[this.u2At(this.constantPoolOffsets[this.u2At(readOffset)] - this.structOffset + 1)] - this.structOffset;
                        this.exceptionNames[j] = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                        readOffset += 2;
                        ++j;
                    }
                }
            } else {
                readOffset = (int)((long)readOffset + (6L + this.u4At(readOffset + 2)));
            }
            ++i;
        }
        if (this.exceptionNames == null) {
            this.exceptionNames = noException;
        }
    }

    private void readModifierRelatedAttributes() {
        int attributesCount = this.u2At(6);
        int readOffset = 8;
        int i = 0;
        while (i < attributesCount) {
            int utf8Offset = this.constantPoolOffsets[this.u2At(readOffset)] - this.structOffset;
            char[] attributeName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
            if (attributeName.length != 0) {
                switch (attributeName[0]) {
                    case 'D': {
                        if (!CharOperation.equals(attributeName, AttributeNamesConstants.DeprecatedName)) break;
                        this.accessFlags |= 0x100000;
                        break;
                    }
                    case 'S': {
                        if (!CharOperation.equals(attributeName, AttributeNamesConstants.SyntheticName)) break;
                        this.accessFlags |= 0x1000;
                        break;
                    }
                    case 'A': {
                        if (!CharOperation.equals(attributeName, AttributeNamesConstants.AnnotationDefaultName)) break;
                        this.accessFlags |= 0x20000;
                        break;
                    }
                    case 'V': {
                        if (!CharOperation.equals(attributeName, AttributeNamesConstants.VarargsName)) break;
                        this.accessFlags |= 0x80;
                    }
                }
            }
            readOffset = (int)((long)readOffset + (6L + this.u4At(readOffset + 2)));
            ++i;
        }
    }

    public int sizeInBytes() {
        return this.attributeBytes;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        this.toString(buffer);
        return buffer.toString();
    }

    void toString(StringBuffer buffer) {
        buffer.append(this.getClass().getName());
        this.toStringContent(buffer);
    }

    protected void toStringContent(StringBuffer buffer) {
        int modifiers = this.getModifiers();
        char[] desc = this.getGenericSignature();
        if (desc == null) {
            desc = this.getMethodDescriptor();
        }
        buffer.append('{').append(String.valueOf((modifiers & 0x100000) != 0 ? "deprecated " : Util.EMPTY_STRING) + ((modifiers & 1) == 1 ? "public " : Util.EMPTY_STRING) + ((modifiers & 2) == 2 ? "private " : Util.EMPTY_STRING) + ((modifiers & 4) == 4 ? "protected " : Util.EMPTY_STRING) + ((modifiers & 8) == 8 ? "static " : Util.EMPTY_STRING) + ((modifiers & 0x10) == 16 ? "final " : Util.EMPTY_STRING) + ((modifiers & 0x40) == 64 ? "bridge " : Util.EMPTY_STRING) + ((modifiers & 0x80) == 128 ? "varargs " : Util.EMPTY_STRING)).append(this.getSelector()).append(desc).append('}');
    }

    private void readCodeAttribute() {
        int attributesCount = this.u2At(6);
        int readOffset = 8;
        if (attributesCount != 0) {
            int i = 0;
            while (i < attributesCount) {
                int utf8Offset = this.constantPoolOffsets[this.u2At(readOffset)] - this.structOffset;
                char[] attributeName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                if (CharOperation.equals(attributeName, AttributeNamesConstants.CodeName)) {
                    this.decodeCodeAttribute(readOffset);
                    if (this.argumentNames == null) {
                        this.argumentNames = noArgumentNames;
                    }
                    return;
                }
                readOffset = (int)((long)readOffset + (6L + this.u4At(readOffset + 2)));
                ++i;
            }
        }
        this.argumentNames = noArgumentNames;
    }

    private void decodeCodeAttribute(int offset) {
        int readOffset = offset + 10;
        int codeLength = (int)this.u4At(readOffset);
        int exceptionTableLength = this.u2At(readOffset += 4 + codeLength);
        readOffset += 2;
        if (exceptionTableLength != 0) {
            int i = 0;
            while (i < exceptionTableLength) {
                readOffset += 8;
                ++i;
            }
        }
        int attributesCount = this.u2At(readOffset);
        readOffset += 2;
        int i = 0;
        while (i < attributesCount) {
            int utf8Offset = this.constantPoolOffsets[this.u2At(readOffset)] - this.structOffset;
            char[] attributeName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
            if (CharOperation.equals(attributeName, AttributeNamesConstants.LocalVariableTableName)) {
                this.decodeLocalVariableAttribute(readOffset, codeLength);
            }
            readOffset = (int)((long)readOffset + (6L + this.u4At(readOffset + 2)));
            ++i;
        }
    }

    private void decodeLocalVariableAttribute(int offset, int codeLength) {
        int readOffset = offset + 6;
        int length = this.u2At(readOffset);
        if (length != 0) {
            readOffset += 2;
            this.argumentNames = new char[length][];
            this.argumentNamesIndex = 0;
            int i = 0;
            while (i < length) {
                int startPC = this.u2At(readOffset);
                if (startPC != 0) break;
                int nameIndex = this.u2At(4 + readOffset);
                int utf8Offset = this.constantPoolOffsets[nameIndex] - this.structOffset;
                char[] localVariableName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                if (!CharOperation.equals(localVariableName, ConstantPool.This)) {
                    this.argumentNames[this.argumentNamesIndex++] = localVariableName;
                }
                readOffset += 10;
                ++i;
            }
            if (this.argumentNamesIndex != this.argumentNames.length) {
                char[][] cArrayArray = new char[this.argumentNamesIndex][];
                this.argumentNames = cArrayArray;
                System.arraycopy(this.argumentNames, 0, cArrayArray, 0, this.argumentNamesIndex);
            }
        }
    }
}

