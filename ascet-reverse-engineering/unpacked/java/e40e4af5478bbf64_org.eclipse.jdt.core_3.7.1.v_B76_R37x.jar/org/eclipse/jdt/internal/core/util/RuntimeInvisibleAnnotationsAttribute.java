/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IRuntimeInvisibleAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.Annotation;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class RuntimeInvisibleAnnotationsAttribute
extends ClassFileAttribute
implements IRuntimeInvisibleAnnotationsAttribute {
    private static final IAnnotation[] NO_ENTRIES = new IAnnotation[0];
    private int annotationsNumber;
    private IAnnotation[] annotations;

    public RuntimeInvisibleAnnotationsAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        int length;
        this.annotationsNumber = length = this.u2At(classFileBytes, 6, offset);
        if (length != 0) {
            int readOffset = 8;
            this.annotations = new IAnnotation[length];
            int i = 0;
            while (i < length) {
                Annotation annotation = new Annotation(classFileBytes, constantPool, offset + readOffset);
                this.annotations[i] = annotation;
                readOffset += annotation.sizeInBytes();
                ++i;
            }
        } else {
            this.annotations = NO_ENTRIES;
        }
    }

    public IAnnotation[] getAnnotations() {
        return this.annotations;
    }

    public int getAnnotationsNumber() {
        return this.annotationsNumber;
    }
}

