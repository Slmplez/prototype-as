/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.classfmt;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.AnnotationInfo;
import org.eclipse.jdt.internal.compiler.classfmt.AnnotationMethodInfoWithAnnotations;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfo;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfoWithAnnotations;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;

public class AnnotationMethodInfo
extends MethodInfo {
    protected Object defaultValue = null;

    public static MethodInfo createAnnotationMethod(byte[] classFileBytes, int[] offsets, int offset) {
        MethodInfo methodInfo = new MethodInfo(classFileBytes, offsets, offset);
        int attributesCount = methodInfo.u2At(6);
        int readOffset = 8;
        AnnotationInfo[] annotations = null;
        Object defaultValue = null;
        int i = 0;
        while (i < attributesCount) {
            int utf8Offset = methodInfo.constantPoolOffsets[methodInfo.u2At(readOffset)] - methodInfo.structOffset;
            char[] attributeName = methodInfo.utf8At(utf8Offset + 3, methodInfo.u2At(utf8Offset + 1));
            if (attributeName.length > 0) {
                switch (attributeName[0]) {
                    case 'A': {
                        if (!CharOperation.equals(attributeName, AttributeNamesConstants.AnnotationDefaultName)) break;
                        AnnotationInfo info = new AnnotationInfo(methodInfo.reference, methodInfo.constantPoolOffsets, readOffset + 6 + methodInfo.structOffset);
                        defaultValue = info.decodeDefaultValue();
                        break;
                    }
                    case 'S': {
                        if (!CharOperation.equals(AttributeNamesConstants.SignatureName, attributeName)) break;
                        methodInfo.signatureUtf8Offset = methodInfo.constantPoolOffsets[methodInfo.u2At(readOffset + 6)] - methodInfo.structOffset;
                        break;
                    }
                    case 'R': {
                        AnnotationInfo[] methodAnnotations = null;
                        if (CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeVisibleAnnotationsName)) {
                            methodAnnotations = AnnotationMethodInfo.decodeMethodAnnotations(readOffset, true, methodInfo);
                        } else if (CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeInvisibleAnnotationsName)) {
                            methodAnnotations = AnnotationMethodInfo.decodeMethodAnnotations(readOffset, false, methodInfo);
                        }
                        if (methodAnnotations == null) break;
                        if (annotations == null) {
                            annotations = methodAnnotations;
                            break;
                        }
                        int length = annotations.length;
                        AnnotationInfo[] newAnnotations = new AnnotationInfo[length + methodAnnotations.length];
                        System.arraycopy(annotations, 0, newAnnotations, 0, length);
                        System.arraycopy(methodAnnotations, 0, newAnnotations, length, methodAnnotations.length);
                        annotations = newAnnotations;
                    }
                }
            }
            readOffset = (int)((long)readOffset + (6L + methodInfo.u4At(readOffset + 2)));
            ++i;
        }
        methodInfo.attributeBytes = readOffset;
        if (defaultValue != null) {
            if (annotations != null) {
                return new AnnotationMethodInfoWithAnnotations(methodInfo, defaultValue, annotations);
            }
            return new AnnotationMethodInfo(methodInfo, defaultValue);
        }
        if (annotations != null) {
            return new MethodInfoWithAnnotations(methodInfo, annotations);
        }
        return methodInfo;
    }

    AnnotationMethodInfo(MethodInfo methodInfo, Object defaultValue) {
        super(methodInfo.reference, methodInfo.constantPoolOffsets, methodInfo.structOffset);
        this.defaultValue = defaultValue;
        this.accessFlags = methodInfo.accessFlags;
        this.attributeBytes = methodInfo.attributeBytes;
        this.descriptor = methodInfo.descriptor;
        this.exceptionNames = methodInfo.exceptionNames;
        this.name = methodInfo.name;
        this.signature = methodInfo.signature;
        this.signatureUtf8Offset = methodInfo.signatureUtf8Offset;
        this.tagBits = methodInfo.tagBits;
    }

    public Object getDefaultValue() {
        return this.defaultValue;
    }

    protected void toStringContent(StringBuffer buffer) {
        super.toStringContent(buffer);
        if (this.defaultValue != null) {
            buffer.append(" default ");
            if (this.defaultValue instanceof Object[]) {
                buffer.append('{');
                Object[] elements = (Object[])this.defaultValue;
                int i = 0;
                int len = elements.length;
                while (i < len) {
                    if (i > 0) {
                        buffer.append(", ");
                    }
                    buffer.append(elements[i]);
                    ++i;
                }
                buffer.append('}');
            } else {
                buffer.append(this.defaultValue);
            }
            buffer.append('\n');
        }
    }
}

