/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IParameterAnnotation;
import org.eclipse.jdt.core.util.IRuntimeInvisibleParameterAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.ParameterAnnotation;

public class RuntimeInvisibleParameterAnnotationsAttribute
extends ClassFileAttribute
implements IRuntimeInvisibleParameterAnnotationsAttribute {
    private static final IParameterAnnotation[] NO_ENTRIES = new IParameterAnnotation[0];
    private IParameterAnnotation[] parameterAnnotations;
    private int parametersNumber;

    public RuntimeInvisibleParameterAnnotationsAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int length;
        this.parametersNumber = length = this.u1At(classFileBytes, 6, offset);
        if (length != 0) {
            int readOffset = 7;
            this.parameterAnnotations = new IParameterAnnotation[length];
            int i = 0;
            while (i < length) {
                ParameterAnnotation parameterAnnotation = new ParameterAnnotation(classFileBytes, constantPool, offset + readOffset);
                this.parameterAnnotations[i] = parameterAnnotation;
                readOffset += parameterAnnotation.sizeInBytes();
                ++i;
            }
        } else {
            this.parameterAnnotations = NO_ENTRIES;
        }
    }

    public IParameterAnnotation[] getParameterAnnotations() {
        return this.parameterAnnotations;
    }

    public int getParametersNumber() {
        return this.parametersNumber;
    }
}

