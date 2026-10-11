/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IConstantPoolEntry;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;
import org.eclipse.jdt.internal.core.util.ConstantPoolEntry;

public class ConstantPool
extends ClassFileStruct
implements IConstantPool {
    private int constantPoolCount;
    private int[] constantPoolOffset;
    private byte[] classFileBytes;

    ConstantPool(byte[] reference, int[] constantPoolOffset) {
        this.constantPoolCount = constantPoolOffset.length;
        this.constantPoolOffset = constantPoolOffset;
        this.classFileBytes = reference;
    }

    public IConstantPoolEntry decodeEntry(int index) {
        ConstantPoolEntry constantPoolEntry = new ConstantPoolEntry();
        constantPoolEntry.reset();
        int kind = this.getEntryKind(index);
        constantPoolEntry.setKind(kind);
        switch (kind) {
            case 7: {
                constantPoolEntry.setClassInfoNameIndex(this.u2At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                constantPoolEntry.setClassInfoName(this.getUtf8ValueAt(constantPoolEntry.getClassInfoNameIndex()));
                break;
            }
            case 6: {
                constantPoolEntry.setDoubleValue(this.doubleAt(this.classFileBytes, 1, this.constantPoolOffset[index]));
                break;
            }
            case 9: {
                constantPoolEntry.setClassIndex(this.u2At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                int declaringClassIndex = this.u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry.getClassIndex()]);
                constantPoolEntry.setClassName(this.getUtf8ValueAt(declaringClassIndex));
                constantPoolEntry.setNameAndTypeIndex(this.u2At(this.classFileBytes, 3, this.constantPoolOffset[index]));
                int fieldNameIndex = this.u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry.getNameAndTypeIndex()]);
                int fieldDescriptorIndex = this.u2At(this.classFileBytes, 3, this.constantPoolOffset[constantPoolEntry.getNameAndTypeIndex()]);
                constantPoolEntry.setFieldName(this.getUtf8ValueAt(fieldNameIndex));
                constantPoolEntry.setFieldDescriptor(this.getUtf8ValueAt(fieldDescriptorIndex));
                break;
            }
            case 10: 
            case 11: {
                constantPoolEntry.setClassIndex(this.u2At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                int declaringClassIndex = this.u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry.getClassIndex()]);
                constantPoolEntry.setClassName(this.getUtf8ValueAt(declaringClassIndex));
                constantPoolEntry.setNameAndTypeIndex(this.u2At(this.classFileBytes, 3, this.constantPoolOffset[index]));
                int methodNameIndex = this.u2At(this.classFileBytes, 1, this.constantPoolOffset[constantPoolEntry.getNameAndTypeIndex()]);
                int methodDescriptorIndex = this.u2At(this.classFileBytes, 3, this.constantPoolOffset[constantPoolEntry.getNameAndTypeIndex()]);
                constantPoolEntry.setMethodName(this.getUtf8ValueAt(methodNameIndex));
                constantPoolEntry.setMethodDescriptor(this.getUtf8ValueAt(methodDescriptorIndex));
                break;
            }
            case 4: {
                constantPoolEntry.setFloatValue(this.floatAt(this.classFileBytes, 1, this.constantPoolOffset[index]));
                break;
            }
            case 3: {
                constantPoolEntry.setIntegerValue(this.i4At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                break;
            }
            case 5: {
                constantPoolEntry.setLongValue(this.i8At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                break;
            }
            case 12: {
                constantPoolEntry.setNameAndTypeNameIndex(this.u2At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                constantPoolEntry.setNameAndTypeDescriptorIndex(this.u2At(this.classFileBytes, 3, this.constantPoolOffset[index]));
                break;
            }
            case 8: {
                constantPoolEntry.setStringIndex(this.u2At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                constantPoolEntry.setStringValue(this.getUtf8ValueAt(constantPoolEntry.getStringIndex()));
                break;
            }
            case 1: {
                constantPoolEntry.setUtf8Length(this.u2At(this.classFileBytes, 1, this.constantPoolOffset[index]));
                constantPoolEntry.setUtf8Value(this.getUtf8ValueAt(index));
            }
        }
        return constantPoolEntry;
    }

    public int getConstantPoolCount() {
        return this.constantPoolCount;
    }

    public int getEntryKind(int index) {
        return this.u1At(this.classFileBytes, 0, this.constantPoolOffset[index]);
    }

    private char[] getUtf8ValueAt(int utf8Index) {
        int utf8Offset = this.constantPoolOffset[utf8Index];
        return this.utf8At(this.classFileBytes, 0, utf8Offset + 3, this.u2At(this.classFileBytes, 0, utf8Offset + 1));
    }
}

