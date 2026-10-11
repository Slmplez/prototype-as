/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IAnnotationDefaultAttribute;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.internal.core.util.AnnotationComponentValue;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;

public class AnnotationDefaultAttribute
extends ClassFileAttribute
implements IAnnotationDefaultAttribute {
    private IAnnotationComponentValue memberValue;

    public AnnotationDefaultAttribute(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        super(classFileBytes, constantPool, offset);
        this.memberValue = new AnnotationComponentValue(classFileBytes, constantPool, offset + 6);
    }

    public IAnnotationComponentValue getMemberValue() {
        return this.memberValue;
    }
}

