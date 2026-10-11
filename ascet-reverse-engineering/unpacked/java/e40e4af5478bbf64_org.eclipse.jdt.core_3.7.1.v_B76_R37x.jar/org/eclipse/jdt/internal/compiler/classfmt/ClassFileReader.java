/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.classfmt;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.classfmt.AnnotationInfo;
import org.eclipse.jdt.internal.compiler.classfmt.AnnotationMethodInfo;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileStruct;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.FieldInfo;
import org.eclipse.jdt.internal.compiler.classfmt.InnerClassInfo;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfo;
import org.eclipse.jdt.internal.compiler.codegen.AttributeNamesConstants;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryNestedType;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.util.Util;

public class ClassFileReader
extends ClassFileStruct
implements IBinaryType {
    private int accessFlags;
    private char[] classFileName;
    private char[] className;
    private int classNameIndex;
    private int constantPoolCount;
    private AnnotationInfo[] annotations;
    private FieldInfo[] fields;
    private int fieldsCount;
    private InnerClassInfo innerInfo;
    private int innerInfoIndex;
    private InnerClassInfo[] innerInfos;
    private char[][] interfaceNames;
    private int interfacesCount;
    private MethodInfo[] methods;
    private int methodsCount;
    private char[] signature;
    private char[] sourceName;
    private char[] sourceFileName;
    private char[] superclassName;
    private long tagBits;
    private long version;
    private char[] enclosingTypeName;
    private char[][][] missingTypeNames;
    private int enclosingNameAndTypeIndex;
    private char[] enclosingMethod;

    private static String printTypeModifiers(int modifiers) {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        PrintWriter print = new PrintWriter(out);
        if ((modifiers & 1) != 0) {
            print.print("public ");
        }
        if ((modifiers & 2) != 0) {
            print.print("private ");
        }
        if ((modifiers & 0x10) != 0) {
            print.print("final ");
        }
        if ((modifiers & 0x20) != 0) {
            print.print("super ");
        }
        if ((modifiers & 0x200) != 0) {
            print.print("interface ");
        }
        if ((modifiers & 0x400) != 0) {
            print.print("abstract ");
        }
        print.flush();
        return out.toString();
    }

    public static ClassFileReader read(File file) throws ClassFormatException, IOException {
        return ClassFileReader.read(file, false);
    }

    public static ClassFileReader read(File file, boolean fullyInitialize) throws ClassFormatException, IOException {
        byte[] classFileBytes = Util.getFileByteContent(file);
        ClassFileReader classFileReader = new ClassFileReader(classFileBytes, file.getAbsolutePath().toCharArray());
        if (fullyInitialize) {
            classFileReader.initialize();
        }
        return classFileReader;
    }

    public static ClassFileReader read(InputStream stream, String fileName) throws ClassFormatException, IOException {
        return ClassFileReader.read(stream, fileName, false);
    }

    public static ClassFileReader read(InputStream stream, String fileName, boolean fullyInitialize) throws ClassFormatException, IOException {
        byte[] classFileBytes = Util.getInputStreamAsByteArray(stream, -1);
        ClassFileReader classFileReader = new ClassFileReader(classFileBytes, fileName.toCharArray());
        if (fullyInitialize) {
            classFileReader.initialize();
        }
        return classFileReader;
    }

    public static ClassFileReader read(ZipFile zip, String filename) throws ClassFormatException, IOException {
        return ClassFileReader.read(zip, filename, false);
    }

    public static ClassFileReader read(ZipFile zip, String filename, boolean fullyInitialize) throws ClassFormatException, IOException {
        ZipEntry ze = zip.getEntry(filename);
        if (ze == null) {
            return null;
        }
        byte[] classFileBytes = Util.getZipEntryByteContent(ze, zip);
        ClassFileReader classFileReader = new ClassFileReader(classFileBytes, filename.toCharArray());
        if (fullyInitialize) {
            classFileReader.initialize();
        }
        return classFileReader;
    }

    public static ClassFileReader read(String fileName) throws ClassFormatException, IOException {
        return ClassFileReader.read(fileName, false);
    }

    public static ClassFileReader read(String fileName, boolean fullyInitialize) throws ClassFormatException, IOException {
        return ClassFileReader.read(new File(fileName), fullyInitialize);
    }

    public ClassFileReader(byte[] classFileBytes, char[] fileName) throws ClassFormatException {
        this(classFileBytes, fileName, false);
    }

    public ClassFileReader(byte[] classFileBytes, char[] fileName, boolean fullyInitialize) throws ClassFormatException {
        super(classFileBytes, null, 0);
        this.classFileName = fileName;
        int readOffset = 10;
        try {
            int i;
            this.version = ((long)this.u2At(6) << 16) + (long)this.u2At(4);
            this.constantPoolCount = this.u2At(8);
            this.constantPoolOffsets = new int[this.constantPoolCount];
            int i2 = 1;
            while (i2 < this.constantPoolCount) {
                int tag = this.u1At(readOffset);
                switch (tag) {
                    case 1: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += this.u2At(readOffset + 1);
                        readOffset += 3;
                        break;
                    }
                    case 3: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 4: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 5: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 9;
                        ++i2;
                        break;
                    }
                    case 6: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 9;
                        ++i2;
                        break;
                    }
                    case 7: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 3;
                        break;
                    }
                    case 8: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 3;
                        break;
                    }
                    case 9: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 10: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 11: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                        break;
                    }
                    case 12: {
                        this.constantPoolOffsets[i2] = readOffset;
                        readOffset += 5;
                    }
                }
                ++i2;
            }
            this.accessFlags = this.u2At(readOffset);
            this.classNameIndex = this.u2At(readOffset += 2);
            this.className = this.getConstantClassNameAt(this.classNameIndex);
            int superclassNameIndex = this.u2At(readOffset += 2);
            readOffset += 2;
            if (superclassNameIndex != 0) {
                this.superclassName = this.getConstantClassNameAt(superclassNameIndex);
            }
            this.interfacesCount = this.u2At(readOffset);
            readOffset += 2;
            if (this.interfacesCount != 0) {
                this.interfaceNames = new char[this.interfacesCount][];
                int i3 = 0;
                while (i3 < this.interfacesCount) {
                    this.interfaceNames[i3] = this.getConstantClassNameAt(this.u2At(readOffset));
                    readOffset += 2;
                    ++i3;
                }
            }
            this.fieldsCount = this.u2At(readOffset);
            readOffset += 2;
            if (this.fieldsCount != 0) {
                this.fields = new FieldInfo[this.fieldsCount];
                i = 0;
                while (i < this.fieldsCount) {
                    FieldInfo field;
                    this.fields[i] = field = FieldInfo.createField(this.reference, this.constantPoolOffsets, readOffset);
                    readOffset += field.sizeInBytes();
                    ++i;
                }
            }
            this.methodsCount = this.u2At(readOffset);
            readOffset += 2;
            if (this.methodsCount != 0) {
                this.methods = new MethodInfo[this.methodsCount];
                boolean isAnnotationType = (this.accessFlags & 0x2000) != 0;
                i = 0;
                while (i < this.methodsCount) {
                    this.methods[i] = isAnnotationType ? AnnotationMethodInfo.createAnnotationMethod(this.reference, this.constantPoolOffsets, readOffset) : MethodInfo.createMethod(this.reference, this.constantPoolOffsets, readOffset);
                    readOffset += this.methods[i].sizeInBytes();
                    ++i;
                }
            }
            int attributesCount = this.u2At(readOffset);
            readOffset += 2;
            i = 0;
            while (i < attributesCount) {
                int utf8Offset = this.constantPoolOffsets[this.u2At(readOffset)];
                char[] attributeName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                if (attributeName.length == 0) {
                    readOffset = (int)((long)readOffset + (6L + this.u4At(readOffset + 2)));
                } else {
                    switch (attributeName[0]) {
                        case 'E': {
                            if (!CharOperation.equals(attributeName, AttributeNamesConstants.EnclosingMethodName)) break;
                            utf8Offset = this.constantPoolOffsets[this.u2At(this.constantPoolOffsets[this.u2At(readOffset + 6)] + 1)];
                            this.enclosingTypeName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                            this.enclosingNameAndTypeIndex = this.u2At(readOffset + 8);
                            break;
                        }
                        case 'D': {
                            if (!CharOperation.equals(attributeName, AttributeNamesConstants.DeprecatedName)) break;
                            this.accessFlags |= 0x100000;
                            break;
                        }
                        case 'I': {
                            if (CharOperation.equals(attributeName, AttributeNamesConstants.InnerClassName)) {
                                char[] enclosingType;
                                int innerOffset = readOffset + 6;
                                int number_of_classes = this.u2At(innerOffset);
                                if (number_of_classes == 0) break;
                                innerOffset += 2;
                                this.innerInfos = new InnerClassInfo[number_of_classes];
                                int j = 0;
                                while (j < number_of_classes) {
                                    this.innerInfos[j] = new InnerClassInfo(this.reference, this.constantPoolOffsets, innerOffset);
                                    if (this.classNameIndex == this.innerInfos[j].innerClassNameIndex) {
                                        this.innerInfo = this.innerInfos[j];
                                        this.innerInfoIndex = j;
                                    }
                                    innerOffset += 8;
                                    ++j;
                                }
                                if (this.innerInfo == null || (enclosingType = this.innerInfo.getEnclosingTypeName()) == null) break;
                                this.enclosingTypeName = enclosingType;
                                break;
                            }
                            if (!CharOperation.equals(attributeName, AttributeNamesConstants.InconsistentHierarchy)) break;
                            this.tagBits |= 0x20000L;
                            break;
                        }
                        case 'S': {
                            if (attributeName.length <= 2) break;
                            switch (attributeName[1]) {
                                case 'o': {
                                    if (!CharOperation.equals(attributeName, AttributeNamesConstants.SourceName)) break;
                                    utf8Offset = this.constantPoolOffsets[this.u2At(readOffset + 6)];
                                    this.sourceFileName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                                    break;
                                }
                                case 'y': {
                                    if (!CharOperation.equals(attributeName, AttributeNamesConstants.SyntheticName)) break;
                                    this.accessFlags |= 0x1000;
                                    break;
                                }
                                case 'i': {
                                    if (!CharOperation.equals(attributeName, AttributeNamesConstants.SignatureName)) break;
                                    utf8Offset = this.constantPoolOffsets[this.u2At(readOffset + 6)];
                                    this.signature = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                                }
                            }
                            break;
                        }
                        case 'R': {
                            if (CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeVisibleAnnotationsName)) {
                                this.decodeAnnotations(readOffset, true);
                                break;
                            }
                            if (!CharOperation.equals(attributeName, AttributeNamesConstants.RuntimeInvisibleAnnotationsName)) break;
                            this.decodeAnnotations(readOffset, false);
                            break;
                        }
                        case 'M': {
                            int missingTypeOffset;
                            int numberOfMissingTypes;
                            if (!CharOperation.equals(attributeName, AttributeNamesConstants.MissingTypesName) || (numberOfMissingTypes = this.u2At(missingTypeOffset = readOffset + 6)) == 0) break;
                            this.missingTypeNames = new char[numberOfMissingTypes][][];
                            missingTypeOffset += 2;
                            int j = 0;
                            while (j < numberOfMissingTypes) {
                                utf8Offset = this.constantPoolOffsets[this.u2At(this.constantPoolOffsets[this.u2At(missingTypeOffset)] + 1)];
                                char[] missingTypeConstantPoolName = this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
                                this.missingTypeNames[j] = CharOperation.splitOn('/', missingTypeConstantPoolName);
                                missingTypeOffset += 2;
                                ++j;
                            }
                            break;
                        }
                    }
                    readOffset = (int)((long)readOffset + (6L + this.u4At(readOffset + 2)));
                }
                ++i;
            }
            if (fullyInitialize) {
                this.initialize();
            }
        }
        catch (ClassFormatException e) {
            throw e;
        }
        catch (Exception exception) {
            throw new ClassFormatException(21, readOffset);
        }
    }

    public int accessFlags() {
        return this.accessFlags;
    }

    private void decodeAnnotations(int offset, boolean runtimeVisible) {
        int numberOfAnnotations = this.u2At(offset + 6);
        if (numberOfAnnotations > 0) {
            int readOffset = offset + 8;
            AnnotationInfo[] newInfos = null;
            int newInfoCount = 0;
            int i = 0;
            while (i < numberOfAnnotations) {
                AnnotationInfo newInfo = new AnnotationInfo(this.reference, this.constantPoolOffsets, readOffset, runtimeVisible, false);
                readOffset += newInfo.readOffset;
                long standardTagBits = newInfo.standardAnnotationTagBits;
                if (standardTagBits != 0L) {
                    this.tagBits |= standardTagBits;
                } else {
                    if (newInfos == null) {
                        newInfos = new AnnotationInfo[numberOfAnnotations - i];
                    }
                    newInfos[newInfoCount++] = newInfo;
                }
                ++i;
            }
            if (newInfos == null) {
                return;
            }
            if (this.annotations == null) {
                if (newInfoCount != newInfos.length) {
                    AnnotationInfo[] annotationInfoArray = newInfos;
                    newInfos = new AnnotationInfo[newInfoCount];
                    System.arraycopy(annotationInfoArray, 0, newInfos, 0, newInfoCount);
                }
                this.annotations = newInfos;
            } else {
                int length = this.annotations.length;
                AnnotationInfo[] temp = new AnnotationInfo[length + newInfoCount];
                System.arraycopy(this.annotations, 0, temp, 0, length);
                System.arraycopy(newInfos, 0, temp, length, newInfoCount);
                this.annotations = temp;
            }
        }
    }

    public IBinaryAnnotation[] getAnnotations() {
        return this.annotations;
    }

    private char[] getConstantClassNameAt(int constantPoolIndex) {
        int utf8Offset = this.constantPoolOffsets[this.u2At(this.constantPoolOffsets[constantPoolIndex] + 1)];
        return this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1));
    }

    public int[] getConstantPoolOffsets() {
        return this.constantPoolOffsets;
    }

    public char[] getEnclosingMethod() {
        if (this.enclosingNameAndTypeIndex <= 0) {
            return null;
        }
        if (this.enclosingMethod == null) {
            StringBuffer buffer = new StringBuffer();
            int nameAndTypeOffset = this.constantPoolOffsets[this.enclosingNameAndTypeIndex];
            int utf8Offset = this.constantPoolOffsets[this.u2At(nameAndTypeOffset + 1)];
            buffer.append(this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1)));
            utf8Offset = this.constantPoolOffsets[this.u2At(nameAndTypeOffset + 3)];
            buffer.append(this.utf8At(utf8Offset + 3, this.u2At(utf8Offset + 1)));
            this.enclosingMethod = String.valueOf(buffer).toCharArray();
        }
        return this.enclosingMethod;
    }

    public char[] getEnclosingTypeName() {
        return this.enclosingTypeName;
    }

    public IBinaryField[] getFields() {
        return this.fields;
    }

    public char[] getFileName() {
        return this.classFileName;
    }

    public char[] getGenericSignature() {
        return this.signature;
    }

    public char[] getInnerSourceName() {
        if (this.innerInfo != null) {
            return this.innerInfo.getSourceName();
        }
        return null;
    }

    public char[][] getInterfaceNames() {
        return this.interfaceNames;
    }

    public IBinaryNestedType[] getMemberTypes() {
        int startingIndex;
        if (this.innerInfos == null) {
            return null;
        }
        int length = this.innerInfos.length;
        int n = startingIndex = this.innerInfo != null ? this.innerInfoIndex + 1 : 0;
        if (length != startingIndex) {
            IBinaryNestedType[] memberTypes = new IBinaryNestedType[length - this.innerInfoIndex];
            int memberTypeIndex = 0;
            int i = startingIndex;
            while (i < length) {
                InnerClassInfo currentInnerInfo = this.innerInfos[i];
                int outerClassNameIdx = currentInnerInfo.outerClassNameIndex;
                int innerNameIndex = currentInnerInfo.innerNameIndex;
                if (outerClassNameIdx != 0 && innerNameIndex != 0 && outerClassNameIdx == this.classNameIndex && currentInnerInfo.getSourceName().length != 0) {
                    memberTypes[memberTypeIndex++] = currentInnerInfo;
                }
                ++i;
            }
            if (memberTypeIndex == 0) {
                return null;
            }
            if (memberTypeIndex != memberTypes.length) {
                IBinaryNestedType[] iBinaryNestedTypeArray = memberTypes;
                memberTypes = new IBinaryNestedType[memberTypeIndex];
                System.arraycopy(iBinaryNestedTypeArray, 0, memberTypes, 0, memberTypeIndex);
            }
            return memberTypes;
        }
        return null;
    }

    public IBinaryMethod[] getMethods() {
        return this.methods;
    }

    public char[][][] getMissingTypeNames() {
        return this.missingTypeNames;
    }

    public int getModifiers() {
        int modifiers = this.innerInfo != null ? this.innerInfo.getModifiers() | this.accessFlags & 0x100000 | this.accessFlags & 0x1000 : this.accessFlags;
        return modifiers;
    }

    public char[] getName() {
        return this.className;
    }

    public char[] getSourceName() {
        if (this.sourceName != null) {
            return this.sourceName;
        }
        char[] name = this.getInnerSourceName();
        if (name == null) {
            name = this.getName();
            int start = this.isAnonymous() ? CharOperation.indexOf('$', name, CharOperation.lastIndexOf('/', name) + 1) + 1 : CharOperation.lastIndexOf('/', name) + 1;
            if (start > 0) {
                char[] newName = new char[name.length - start];
                System.arraycopy(name, start, newName, 0, newName.length);
                name = newName;
            }
        }
        this.sourceName = name;
        return name;
    }

    public char[] getSuperclassName() {
        return this.superclassName;
    }

    public long getTagBits() {
        return this.tagBits;
    }

    public long getVersion() {
        return this.version;
    }

    /*
     * Unable to fully structure code
     */
    private boolean hasNonSyntheticFieldChanges(FieldInfo[] currentFieldInfos, FieldInfo[] otherFieldInfos) {
        length1 = currentFieldInfos == null ? 0 : currentFieldInfos.length;
        length2 = otherFieldInfos == null ? 0 : otherFieldInfos.length;
        index1 = 0;
        index2 = 0;
        ** GOTO lbl13
        block0: while (++index1 < length1) {
            while (!currentFieldInfos[index1].isSynthetic()) {
                while (otherFieldInfos[index2].isSynthetic()) {
                    if (++index2 >= length2) break block0;
                }
                if (this.hasStructuralFieldChanges(currentFieldInfos[index1++], otherFieldInfos[index2++])) {
                    return true;
                }
lbl13:
                // 3 sources

                if (index1 < length1 && index2 < length2) continue;
            }
        }
        while (index1 < length1) {
            if (currentFieldInfos[index1++].isSynthetic()) continue;
            return true;
        }
        while (index2 < length2) {
            if (otherFieldInfos[index2++].isSynthetic()) continue;
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     */
    private boolean hasNonSyntheticMethodChanges(MethodInfo[] currentMethodInfos, MethodInfo[] otherMethodInfos) {
        length1 = currentMethodInfos == null ? 0 : currentMethodInfos.length;
        length2 = otherMethodInfos == null ? 0 : otherMethodInfos.length;
        index1 = 0;
        index2 = 0;
        ** GOTO lbl13
        block0: while (++index1 < length1) {
            while (!(m = currentMethodInfos[index1]).isSynthetic() && !m.isClinit()) {
                while ((m = otherMethodInfos[index2]).isSynthetic() || m.isClinit()) {
                    if (++index2 >= length2) break block0;
                }
                if (this.hasStructuralMethodChanges(currentMethodInfos[index1++], otherMethodInfos[index2++])) {
                    return true;
                }
lbl13:
                // 3 sources

                if (index1 < length1 && index2 < length2) continue;
            }
        }
        while (index1 < length1) {
            if ((m = currentMethodInfos[index1++]).isSynthetic() || m.isClinit()) continue;
            return true;
        }
        while (index2 < length2) {
            if ((m = otherMethodInfos[index2++]).isSynthetic() || m.isClinit()) continue;
            return true;
        }
        return false;
    }

    public boolean hasStructuralChanges(byte[] newBytes) {
        return this.hasStructuralChanges(newBytes, true, true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public boolean hasStructuralChanges(byte[] newBytes, boolean orderRequired, boolean excludesSynthetic) {
        try {
            int i;
            Object[] otherMethodInfos;
            int i2;
            Object[] otherFieldInfos;
            IBinaryNestedType[] otherMemberTypes;
            IBinaryNestedType[] currentMemberTypes;
            ClassFileReader newClassFile = new ClassFileReader(newBytes, this.classFileName);
            if (this.getModifiers() != newClassFile.getModifiers()) {
                return true;
            }
            long OnlyStructuralTagBits = 140703128748032L;
            if ((this.getTagBits() & OnlyStructuralTagBits) != (newClassFile.getTagBits() & OnlyStructuralTagBits)) {
                return true;
            }
            if (this.hasStructuralAnnotationChanges(this.getAnnotations(), newClassFile.getAnnotations())) {
                return true;
            }
            if (!CharOperation.equals(this.getGenericSignature(), newClassFile.getGenericSignature())) {
                return true;
            }
            if (!CharOperation.equals(this.getSuperclassName(), newClassFile.getSuperclassName())) {
                return true;
            }
            char[][] newInterfacesNames = newClassFile.getInterfaceNames();
            if (this.interfaceNames != newInterfacesNames) {
                int newInterfacesLength;
                int n = newInterfacesLength = newInterfacesNames == null ? 0 : newInterfacesNames.length;
                if (newInterfacesLength != this.interfacesCount) {
                    return true;
                }
                int i3 = 0;
                int max = this.interfacesCount;
                while (i3 < max) {
                    if (!CharOperation.equals(this.interfaceNames[i3], newInterfacesNames[i3])) {
                        return true;
                    }
                    ++i3;
                }
            }
            if ((currentMemberTypes = this.getMemberTypes()) != (otherMemberTypes = newClassFile.getMemberTypes())) {
                int otherMemberTypeLength;
                int currentMemberTypeLength = currentMemberTypes == null ? 0 : currentMemberTypes.length;
                int n = otherMemberTypeLength = otherMemberTypes == null ? 0 : otherMemberTypes.length;
                if (currentMemberTypeLength != otherMemberTypeLength) {
                    return true;
                }
                int i4 = 0;
                while (i4 < currentMemberTypeLength) {
                    if (!CharOperation.equals(currentMemberTypes[i4].getName(), otherMemberTypes[i4].getName())) return true;
                    if (currentMemberTypes[i4].getModifiers() != otherMemberTypes[i4].getModifiers()) {
                        return true;
                    }
                    ++i4;
                }
            }
            int otherFieldInfosLength = (otherFieldInfos = (FieldInfo[])newClassFile.getFields()) == null ? 0 : otherFieldInfos.length;
            boolean compareFields = true;
            if (this.fieldsCount == otherFieldInfosLength) {
                i2 = 0;
                while (i2 < this.fieldsCount && !this.hasStructuralFieldChanges(this.fields[i2], otherFieldInfos[i2])) {
                    ++i2;
                }
                compareFields = i2 != this.fieldsCount;
                if (compareFields && !orderRequired && !excludesSynthetic) {
                    return true;
                }
            }
            if (compareFields) {
                if (this.fieldsCount != otherFieldInfosLength && !excludesSynthetic) {
                    return true;
                }
                if (orderRequired) {
                    if (this.fieldsCount != 0) {
                        Arrays.sort(this.fields);
                    }
                    if (otherFieldInfosLength != 0) {
                        Arrays.sort(otherFieldInfos);
                    }
                }
                if (excludesSynthetic) {
                    if (this.hasNonSyntheticFieldChanges(this.fields, (FieldInfo[])otherFieldInfos)) {
                        return true;
                    }
                } else {
                    i2 = 0;
                    while (i2 < this.fieldsCount) {
                        if (this.hasStructuralFieldChanges(this.fields[i2], (FieldInfo)otherFieldInfos[i2])) {
                            return true;
                        }
                        ++i2;
                    }
                }
            }
            int otherMethodInfosLength = (otherMethodInfos = (MethodInfo[])newClassFile.getMethods()) == null ? 0 : otherMethodInfos.length;
            boolean compareMethods = true;
            if (this.methodsCount == otherMethodInfosLength) {
                i = 0;
                while (i < this.methodsCount && !this.hasStructuralMethodChanges(this.methods[i], otherMethodInfos[i])) {
                    ++i;
                }
                compareMethods = i != this.methodsCount;
                if (compareMethods && !orderRequired && !excludesSynthetic) {
                    return true;
                }
            }
            if (compareMethods) {
                if (this.methodsCount != otherMethodInfosLength && !excludesSynthetic) {
                    return true;
                }
                if (orderRequired) {
                    if (this.methodsCount != 0) {
                        Arrays.sort(this.methods);
                    }
                    if (otherMethodInfosLength != 0) {
                        Arrays.sort(otherMethodInfos);
                    }
                }
                if (excludesSynthetic) {
                    if (this.hasNonSyntheticMethodChanges(this.methods, (MethodInfo[])otherMethodInfos)) {
                        return true;
                    }
                } else {
                    i = 0;
                    while (i < this.methodsCount) {
                        if (this.hasStructuralMethodChanges(this.methods[i], (MethodInfo)otherMethodInfos[i])) {
                            return true;
                        }
                        ++i;
                    }
                }
            }
            char[][][] missingTypes = this.getMissingTypeNames();
            char[][][] newMissingTypes = newClassFile.getMissingTypeNames();
            if (missingTypes == null) {
                if (newMissingTypes == null) return false;
                return true;
            }
            if (newMissingTypes == null) {
                return true;
            }
            int length = missingTypes.length;
            if (length != newMissingTypes.length) {
                return true;
            }
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    return false;
                }
                if (!CharOperation.equals(missingTypes[i5], newMissingTypes[i5])) {
                    return true;
                }
                ++i5;
            }
        }
        catch (ClassFormatException classFormatException) {
            return true;
        }
    }

    private boolean hasStructuralAnnotationChanges(IBinaryAnnotation[] currentAnnotations, IBinaryAnnotation[] otherAnnotations) {
        int otherAnnotationsLength;
        if (currentAnnotations == otherAnnotations) {
            return false;
        }
        int currentAnnotationsLength = currentAnnotations == null ? 0 : currentAnnotations.length;
        int n = otherAnnotationsLength = otherAnnotations == null ? 0 : otherAnnotations.length;
        if (currentAnnotationsLength != otherAnnotationsLength) {
            return true;
        }
        int i = 0;
        while (i < currentAnnotationsLength) {
            int otherPairsLength;
            if (!CharOperation.equals(currentAnnotations[i].getTypeName(), otherAnnotations[i].getTypeName())) {
                return true;
            }
            IBinaryElementValuePair[] currentPairs = currentAnnotations[i].getElementValuePairs();
            IBinaryElementValuePair[] otherPairs = otherAnnotations[i].getElementValuePairs();
            int currentPairsLength = currentPairs == null ? 0 : currentPairs.length;
            int n2 = otherPairsLength = otherPairs == null ? 0 : otherPairs.length;
            if (currentPairsLength != otherPairsLength) {
                return true;
            }
            int j = 0;
            while (j < currentPairsLength) {
                if (!CharOperation.equals(currentPairs[j].getName(), otherPairs[j].getName())) {
                    return true;
                }
                Object value = currentPairs[j].getValue();
                Object value2 = otherPairs[j].getValue();
                if (value instanceof Object[]) {
                    Object[] currentValues = (Object[])value;
                    if (value2 instanceof Object[]) {
                        int length = currentValues.length;
                        Object[] currentValues2 = (Object[])value2;
                        if (length != currentValues2.length) {
                            return true;
                        }
                        int n3 = 0;
                        while (n3 < length) {
                            if (!currentValues[n3].equals(currentValues2[n3])) {
                                return true;
                            }
                            ++n3;
                        }
                        return false;
                    }
                    return true;
                }
                if (!value.equals(value2)) {
                    return true;
                }
                ++j;
            }
            ++i;
        }
        return false;
    }

    private boolean hasStructuralFieldChanges(FieldInfo currentFieldInfo, FieldInfo otherFieldInfo) {
        if (!CharOperation.equals(currentFieldInfo.getGenericSignature(), otherFieldInfo.getGenericSignature())) {
            return true;
        }
        if (currentFieldInfo.getModifiers() != otherFieldInfo.getModifiers()) {
            return true;
        }
        if ((currentFieldInfo.getTagBits() & 0x400000000000L) != (otherFieldInfo.getTagBits() & 0x400000000000L)) {
            return true;
        }
        if (this.hasStructuralAnnotationChanges(currentFieldInfo.getAnnotations(), otherFieldInfo.getAnnotations())) {
            return true;
        }
        if (!CharOperation.equals(currentFieldInfo.getName(), otherFieldInfo.getName())) {
            return true;
        }
        if (!CharOperation.equals(currentFieldInfo.getTypeName(), otherFieldInfo.getTypeName())) {
            return true;
        }
        if (currentFieldInfo.hasConstant() != otherFieldInfo.hasConstant()) {
            return true;
        }
        if (currentFieldInfo.hasConstant()) {
            Constant currentConstant = currentFieldInfo.getConstant();
            Constant otherConstant = otherFieldInfo.getConstant();
            if (currentConstant.typeID() != otherConstant.typeID()) {
                return true;
            }
            if (!currentConstant.getClass().equals(otherConstant.getClass())) {
                return true;
            }
            switch (currentConstant.typeID()) {
                case 10: {
                    return currentConstant.intValue() != otherConstant.intValue();
                }
                case 3: {
                    return currentConstant.byteValue() != otherConstant.byteValue();
                }
                case 4: {
                    return currentConstant.shortValue() != otherConstant.shortValue();
                }
                case 2: {
                    return currentConstant.charValue() != otherConstant.charValue();
                }
                case 7: {
                    return currentConstant.longValue() != otherConstant.longValue();
                }
                case 9: {
                    return currentConstant.floatValue() != otherConstant.floatValue();
                }
                case 8: {
                    return currentConstant.doubleValue() != otherConstant.doubleValue();
                }
                case 5: {
                    return currentConstant.booleanValue() ^ otherConstant.booleanValue();
                }
                case 11: {
                    return !currentConstant.stringValue().equals(otherConstant.stringValue());
                }
            }
        }
        return false;
    }

    private boolean hasStructuralMethodChanges(MethodInfo currentMethodInfo, MethodInfo otherMethodInfo) {
        char[][] otherThrownExceptions;
        if (!CharOperation.equals(currentMethodInfo.getGenericSignature(), otherMethodInfo.getGenericSignature())) {
            return true;
        }
        if (currentMethodInfo.getModifiers() != otherMethodInfo.getModifiers()) {
            return true;
        }
        if ((currentMethodInfo.getTagBits() & 0x400000000000L) != (otherMethodInfo.getTagBits() & 0x400000000000L)) {
            return true;
        }
        if (this.hasStructuralAnnotationChanges(currentMethodInfo.getAnnotations(), otherMethodInfo.getAnnotations())) {
            return true;
        }
        if (!CharOperation.equals(currentMethodInfo.getSelector(), otherMethodInfo.getSelector())) {
            return true;
        }
        if (!CharOperation.equals(currentMethodInfo.getMethodDescriptor(), otherMethodInfo.getMethodDescriptor())) {
            return true;
        }
        if (!CharOperation.equals(currentMethodInfo.getGenericSignature(), otherMethodInfo.getGenericSignature())) {
            return true;
        }
        char[][] currentThrownExceptions = currentMethodInfo.getExceptionTypeNames();
        if (currentThrownExceptions != (otherThrownExceptions = otherMethodInfo.getExceptionTypeNames())) {
            int otherThrownExceptionsLength;
            int currentThrownExceptionsLength = currentThrownExceptions == null ? 0 : currentThrownExceptions.length;
            int n = otherThrownExceptionsLength = otherThrownExceptions == null ? 0 : otherThrownExceptions.length;
            if (currentThrownExceptionsLength != otherThrownExceptionsLength) {
                return true;
            }
            int k = 0;
            while (k < currentThrownExceptionsLength) {
                if (!CharOperation.equals(currentThrownExceptions[k], otherThrownExceptions[k])) {
                    return true;
                }
                ++k;
            }
        }
        return false;
    }

    private void initialize() throws ClassFormatException {
        try {
            int i = 0;
            int max = this.fieldsCount;
            while (i < max) {
                this.fields[i].initialize();
                ++i;
            }
            i = 0;
            max = this.methodsCount;
            while (i < max) {
                this.methods[i].initialize();
                ++i;
            }
            if (this.innerInfos != null) {
                i = 0;
                max = this.innerInfos.length;
                while (i < max) {
                    this.innerInfos[i].initialize();
                    ++i;
                }
            }
            if (this.annotations != null) {
                i = 0;
                max = this.annotations.length;
                while (i < max) {
                    this.annotations[i].initialize();
                    ++i;
                }
            }
            this.getEnclosingMethod();
            this.reset();
        }
        catch (RuntimeException e) {
            ClassFormatException exception = new ClassFormatException(e, this.classFileName);
            throw exception;
        }
    }

    public boolean isAnonymous() {
        if (this.innerInfo == null) {
            return false;
        }
        char[] innerSourceName = this.innerInfo.getSourceName();
        return innerSourceName == null || innerSourceName.length == 0;
    }

    public boolean isBinaryType() {
        return true;
    }

    public boolean isLocal() {
        if (this.innerInfo == null) {
            return false;
        }
        if (this.innerInfo.getEnclosingTypeName() != null) {
            return false;
        }
        char[] innerSourceName = this.innerInfo.getSourceName();
        return innerSourceName != null && innerSourceName.length > 0;
    }

    public boolean isMember() {
        if (this.innerInfo == null) {
            return false;
        }
        if (this.innerInfo.getEnclosingTypeName() == null) {
            return false;
        }
        char[] innerSourceName = this.innerInfo.getSourceName();
        return innerSourceName != null && innerSourceName.length > 0;
    }

    public boolean isNestedType() {
        return this.innerInfo != null;
    }

    public char[] sourceFileName() {
        return this.sourceFileName;
    }

    public String toString() {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        PrintWriter print = new PrintWriter(out);
        print.println(String.valueOf(this.getClass().getName()) + "{");
        print.println(" this.className: " + new String(this.getName()));
        print.println(" this.superclassName: " + (this.getSuperclassName() == null ? "null" : new String(this.getSuperclassName())));
        print.println(" access_flags: " + ClassFileReader.printTypeModifiers(this.accessFlags()) + "(" + this.accessFlags() + ")");
        print.flush();
        return out.toString();
    }
}

