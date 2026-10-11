/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IParameterAnnotation;
import org.eclipse.jdt.internal.core.util.Annotation;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class ParameterAnnotation
extends ClassFileStruct
implements IParameterAnnotation {
    private static final IAnnotation[] NO_ENTRIES = new IAnnotation[0];
    private int annotationsNumber;
    private IAnnotation[] annotations;
    private int readOffset;

    public ParameterAnnotation(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int length = this.u2At(classFileBytes, 0, offset);
        this.readOffset = 2;
        this.annotationsNumber = length;
        if (length != 0) {
            this.annotations = new IAnnotation[length];
            int i = 0;
            while (i < length) {
                Annotation annotation = new Annotation(classFileBytes, constantPool, offset + this.readOffset);
                this.annotations[i] = annotation;
                this.readOffset += annotation.sizeInBytes();
                ++i;
            }
        } else {
            this.annotations = NO_ENTRIES;
        }
    }

    int sizeInBytes() {
        return this.readOffset;
    }

    public IAnnotation[] getAnnotations() {
        return this.annotations;
    }

    public int getAnnotationsNumber() {
        return this.annotationsNumber;
    }
}

