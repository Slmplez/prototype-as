/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAnnotationComponent;
import org.eclipse.jdt.core.util.IAnnotationComponentValue;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.internal.core.util.AnnotationComponentValue;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;

public class AnnotationComponent
extends ClassFileStruct
implements IAnnotationComponent {
    private int componentNameIndex;
    private char[] componentName;
    private IAnnotationComponentValue componentValue;
    private int readOffset;

    public AnnotationComponent(byte[] classFileBytes, IConstantPool constantPool, int offset) throws ClassFormatException {
        int nameIndex;
        this.componentNameIndex = nameIndex = this.u2At(classFileBytes, 0, offset);
        if (nameIndex != 0) {
            IConstantPoolEntry constantPoolEntry = constantPool.decodeEntry(nameIndex);
            if (constantPoolEntry.getKind() != 1) {
                throw new ClassFormatException(3);
            }
            this.componentName = constantPoolEntry.getUtf8Value();
        }
        this.readOffset = 2;
        AnnotationComponentValue value = new AnnotationComponentValue(classFileBytes, constantPool, offset + this.readOffset);
        this.componentValue = value;
        this.readOffset += value.sizeInBytes();
    }

    public int getComponentNameIndex() {
        return this.componentNameIndex;
    }

    public char[] getComponentName() {
        return this.componentName;
    }

    public IAnnotationComponentValue getComponentValue() {
        return this.componentValue;
    }

    int sizeInBytes() {
        return this.readOffset;
    }
}

