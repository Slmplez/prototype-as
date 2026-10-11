/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.util.ClassFormatException;
import org.eclipse.jdt.core.util.IAttributeNamesConstants;
import org.eclipse.jdt.core.util.IClassFileAttribute;
import org.eclipse.jdt.core.util.IClassFileReader;
import org.eclipse.jdt.core.util.IConstantPool;
import org.eclipse.jdt.core.util.IFieldInfo;
import org.eclipse.jdt.core.util.IInnerClassesAttribute;
import org.eclipse.jdt.core.util.IMethodInfo;
import org.eclipse.jdt.core.util.ISourceAttribute;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.util.ClassFileAttribute;
import org.eclipse.jdt.internal.core.util.ClassFileStruct;
import org.eclipse.jdt.internal.core.util.ConstantPool;
import org.eclipse.jdt.internal.core.util.EnclosingMethodAttribute;
import org.eclipse.jdt.internal.core.util.FieldInfo;
import org.eclipse.jdt.internal.core.util.InnerClassesAttribute;
import org.eclipse.jdt.internal.core.util.MethodInfo;
import org.eclipse.jdt.internal.core.util.RuntimeInvisibleAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.RuntimeVisibleAnnotationsAttribute;
import org.eclipse.jdt.internal.core.util.SignatureAttribute;
import org.eclipse.jdt.internal.core.util.SourceFileAttribute;

public class ClassFileReader
extends ClassFileStruct
implements IClassFileReader {
    private static final IFieldInfo[] NO_FIELD_INFOS = new IFieldInfo[0];
    private static final char[][] NO_INTERFACES_NAMES = CharOperation.NO_CHAR_CHAR;
    private static final IMethodInfo[] NO_METHOD_INFOS = new IMethodInfo[0];
    private int accessFlags;
    private IClassFileAttribute[] attributes;
    private int attributesCount;
    private char[] className;
    private int classNameIndex;
    private IConstantPool constantPool;
    private IFieldInfo[] fields;
    private int fieldsCount;
    private IInnerClassesAttribute innerClassesAttribute;
    private int[] interfaceIndexes;
    private char[][] interfaceNames;
    private int interfacesCount;
    private int magicNumber;
    private int majorVersion;
    private IMethodInfo[] methods;
    private int methodsCount;
    private int minorVersion;
    private ISourceAttribute sourceFileAttribute;
    private char[] superclassName;
    private int superclassNameIndex;

    public ClassFileReader(byte[] classFileBytes, int decodingFlags) throws ClassFormatException {
        try {
            int attributeLength;
            int j;
            int i;
            this.magicNumber = (int)this.u4At(classFileBytes, 0, 0);
            if (this.magicNumber != -889275714) {
                throw new ClassFormatException(8);
            }
            int readOffset = 10;
            this.minorVersion = this.u2At(classFileBytes, 4, 0);
            this.majorVersion = this.u2At(classFileBytes, 6, 0);
            if ((decodingFlags & 1) == 0) {
                return;
            }
            int constantPoolCount = this.u2At(classFileBytes, 8, 0);
            int[] constantPoolOffsets = new int[constantPoolCount];
            int i2 = 1;
            while (i2 < constantPoolCount) {
                int tag = this.u1At(classFileBytes, readOffset, 0);
                switch (tag) {
                    case 1: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += this.u2At(classFileBytes, readOffset + 1, 0);
                        readOffset += 3;
                        break;
                    }
                    case 3: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 4: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 5: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 9;
                        ++i2;
                        break;
                    }
                    case 6: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 9;
                        ++i2;
                        break;
                    }
                    case 7: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 3;
                        break;
                    }
                    case 8: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 3;
                        break;
                    }
                    case 9: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 10: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 11: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 12: {
                        constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    default: {
                        throw new ClassFormatException(7);
                    }
                }
                ++i2;
            }
            this.constantPool = new ConstantPool(classFileBytes, constantPoolOffsets);
            this.accessFlags = this.u2At(classFileBytes, readOffset, 0);
            this.classNameIndex = this.u2At(classFileBytes, readOffset += 2, 0);
            this.className = this.getConstantClassNameAt(classFileBytes, constantPoolOffsets, this.classNameIndex);
            this.superclassNameIndex = this.u2At(classFileBytes, readOffset += 2, 0);
            readOffset += 2;
            if (this.superclassNameIndex != 0) {
                this.superclassName = this.getConstantClassNameAt(classFileBytes, constantPoolOffsets, this.superclassNameIndex);
            }
            this.interfacesCount = this.u2At(classFileBytes, readOffset, 0);
            readOffset += 2;
            this.interfaceNames = NO_INTERFACES_NAMES;
            this.interfaceIndexes = Util.EMPTY_INT_ARRAY;
            if (this.interfacesCount != 0) {
                if ((decodingFlags & 9) != 1) {
                    this.interfaceNames = new char[this.interfacesCount][];
                    this.interfaceIndexes = new int[this.interfacesCount];
                    i2 = 0;
                    while (i2 < this.interfacesCount) {
                        this.interfaceIndexes[i2] = this.u2At(classFileBytes, readOffset, 0);
                        this.interfaceNames[i2] = this.getConstantClassNameAt(classFileBytes, constantPoolOffsets, this.interfaceIndexes[i2]);
                        readOffset += 2;
                        ++i2;
                    }
                } else {
                    readOffset += 2 * this.interfacesCount;
                }
            }
            this.fieldsCount = this.u2At(classFileBytes, readOffset, 0);
            readOffset += 2;
            this.fields = NO_FIELD_INFOS;
            if (this.fieldsCount != 0) {
                if ((decodingFlags & 5) != 1) {
                    this.fields = new FieldInfo[this.fieldsCount];
                    i = 0;
                    while (i < this.fieldsCount) {
                        FieldInfo field = new FieldInfo(classFileBytes, this.constantPool, readOffset);
                        this.fields[i] = field;
                        readOffset += field.sizeInBytes();
                        ++i;
                    }
                } else {
                    i2 = 0;
                    while (i2 < this.fieldsCount) {
                        int attributeCountForField = this.u2At(classFileBytes, 6, readOffset);
                        readOffset += 8;
                        if (attributeCountForField != 0) {
                            j = 0;
                            while (j < attributeCountForField) {
                                attributeLength = (int)this.u4At(classFileBytes, 2, readOffset);
                                readOffset += 6 + attributeLength;
                                ++j;
                            }
                        }
                        ++i2;
                    }
                }
            }
            this.methodsCount = this.u2At(classFileBytes, readOffset, 0);
            readOffset += 2;
            this.methods = NO_METHOD_INFOS;
            if (this.methodsCount != 0) {
                if ((decodingFlags & 3) != 1) {
                    this.methods = new MethodInfo[this.methodsCount];
                    i = 0;
                    while (i < this.methodsCount) {
                        MethodInfo method = new MethodInfo(classFileBytes, this.constantPool, readOffset, decodingFlags);
                        this.methods[i] = method;
                        readOffset += method.sizeInBytes();
                        ++i;
                    }
                } else {
                    i = 0;
                    while (i < this.methodsCount) {
                        int attributeCountForMethod = this.u2At(classFileBytes, 6, readOffset);
                        readOffset += 8;
                        if (attributeCountForMethod != 0) {
                            j = 0;
                            while (j < attributeCountForMethod) {
                                attributeLength = (int)this.u4At(classFileBytes, 2, readOffset);
                                readOffset += 6 + attributeLength;
                                ++j;
                            }
                        }
                        ++i;
                    }
                }
            }
            this.attributesCount = this.u2At(classFileBytes, readOffset, 0);
            readOffset += 2;
            int attributesIndex = 0;
            this.attributes = ClassFileAttribute.NO_ATTRIBUTES;
            if (this.attributesCount != 0) {
                if ((decodingFlags & 0x11) != 1) {
                    this.attributes = new IClassFileAttribute[this.attributesCount];
                    i = 0;
                    while (i < this.attributesCount) {
                        int utf8Offset = constantPoolOffsets[this.u2At(classFileBytes, readOffset, 0)];
                        char[] attributeName = this.utf8At(classFileBytes, utf8Offset + 3, 0, this.u2At(classFileBytes, utf8Offset + 1, 0));
                        if (this.equals(attributeName, IAttributeNamesConstants.INNER_CLASSES)) {
                            this.innerClassesAttribute = new InnerClassesAttribute(classFileBytes, this.constantPool, readOffset);
                            this.attributes[attributesIndex++] = this.innerClassesAttribute;
                        } else if (this.equals(attributeName, IAttributeNamesConstants.SOURCE)) {
                            this.sourceFileAttribute = new SourceFileAttribute(classFileBytes, this.constantPool, readOffset);
                            this.attributes[attributesIndex++] = this.sourceFileAttribute;
                        } else {
                            this.attributes[attributesIndex++] = this.equals(attributeName, IAttributeNamesConstants.ENCLOSING_METHOD) ? new EnclosingMethodAttribute(classFileBytes, this.constantPool, readOffset) : (this.equals(attributeName, IAttributeNamesConstants.SIGNATURE) ? new SignatureAttribute(classFileBytes, this.constantPool, readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_VISIBLE_ANNOTATIONS) ? new RuntimeVisibleAnnotationsAttribute(classFileBytes, this.constantPool, readOffset) : (this.equals(attributeName, IAttributeNamesConstants.RUNTIME_INVISIBLE_ANNOTATIONS) ? new RuntimeInvisibleAnnotationsAttribute(classFileBytes, this.constantPool, readOffset) : new ClassFileAttribute(classFileBytes, this.constantPool, readOffset))));
                        }
                        readOffset = (int)((long)readOffset + (6L + this.u4At(classFileBytes, readOffset + 2, 0)));
                        ++i;
                    }
                } else {
                    i = 0;
                    while (i < this.attributesCount) {
                        readOffset = (int)((long)readOffset + (6L + this.u4At(classFileBytes, readOffset + 2, 0)));
                        ++i;
                    }
                }
            }
            if (readOffset != classFileBytes.length) {
                throw new ClassFormatException(4);
            }
        }
        catch (ClassFormatException e) {
            throw e;
        }
        catch (Exception e) {
            e.printStackTrace();
            throw new ClassFormatException(2);
        }
    }

    public int getAccessFlags() {
        return this.accessFlags;
    }

    public int getAttributeCount() {
        return this.attributesCount;
    }

    public IClassFileAttribute[] getAttributes() {
        return this.attributes;
    }

    public int getClassIndex() {
        return this.classNameIndex;
    }

    public char[] getClassName() {
        return this.className;
    }

    private char[] getConstantClassNameAt(byte[] classFileBytes, int[] constantPoolOffsets, int constantPoolIndex) {
        int utf8Offset = constantPoolOffsets[this.u2At(classFileBytes, constantPoolOffsets[constantPoolIndex] + 1, 0)];
        return this.utf8At(classFileBytes, utf8Offset + 3, 0, this.u2At(classFileBytes, utf8Offset + 1, 0));
    }

    public IConstantPool getConstantPool() {
        return this.constantPool;
    }

    public IFieldInfo[] getFieldInfos() {
        return this.fields;
    }

    public int getFieldsCount() {
        return this.fieldsCount;
    }

    public IInnerClassesAttribute getInnerClassesAttribute() {
        return this.innerClassesAttribute;
    }

    public int[] getInterfaceIndexes() {
        return this.interfaceIndexes;
    }

    public char[][] getInterfaceNames() {
        return this.interfaceNames;
    }

    public int getMagic() {
        return this.magicNumber;
    }

    public int getMajorVersion() {
        return this.majorVersion;
    }

    public IMethodInfo[] getMethodInfos() {
        return this.methods;
    }

    public int getMethodsCount() {
        return this.methodsCount;
    }

    public int getMinorVersion() {
        return this.minorVersion;
    }

    public ISourceAttribute getSourceFileAttribute() {
        return this.sourceFileAttribute;
    }

    public int getSuperclassIndex() {
        return this.superclassNameIndex;
    }

    public char[] getSuperclassName() {
        return this.superclassName;
    }

    public boolean isClass() {
        return !this.isInterface();
    }

    public boolean isInterface() {
        return (this.getAccessFlags() & 0x200) != 0;
    }
}

