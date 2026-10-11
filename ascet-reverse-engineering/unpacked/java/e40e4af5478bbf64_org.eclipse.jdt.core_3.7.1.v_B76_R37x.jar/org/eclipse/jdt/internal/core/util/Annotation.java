/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotation;
import org.eclipse.jdt.core.util.IAnnotationComponent;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.internal.core.util.AnnotationComponent;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class Annotation
extends ClassFileStruct
implements IAnnotation {
    private static final IAnnotationComponent[] NO_ENTRIES = new IAnnotationComponent[0];
    private int typeIndex;
    private char[] typeName;
    private int componentsNumber;
    private IAnnotationComponent[] components;
    private int readOffset;

    public Annotation(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int length;
        IConstantPoolEntry constantPoolEntry;
        int index;
        this.typeIndex = index = this.u2At(classFileBytes, 0, offset);
        if (index != 0) {
            constantPoolEntry = constantPool.decodeEntry(index);
            if (constantPoolEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
        } else {
            throw new ClassFormatException(3);
        }
        this.typeName = constantPoolEntry.getUtf8Value();
        this.componentsNumber = length = this.u2At(classFileBytes, 2, offset);
        this.readOffset = 4;
        if (length != 0) {
            this.components = new IAnnotationComponent[length];
            int i = 0;
            while (i < length) {
                AnnotationComponent component = new AnnotationComponent(classFileBytes, constantPool, offset + this.readOffset);
                this.components[i] = component;
                this.readOffset += component.sizeInBytes();
                ++i;
            }
        } else {
            this.components = NO_ENTRIES;
        }
    }

    public int getTypeIndex() {
        return this.typeIndex;
    }

    public int getComponentsNumber() {
        return this.componentsNumber;
    }

    public IAnnotationComponent[] getComponents() {
        return this.components;
    }

    int sizeInBytes() {
        return this.readOffset;
    }

    public char[] getTypeName() {
        return this.typeName;
    }
}

