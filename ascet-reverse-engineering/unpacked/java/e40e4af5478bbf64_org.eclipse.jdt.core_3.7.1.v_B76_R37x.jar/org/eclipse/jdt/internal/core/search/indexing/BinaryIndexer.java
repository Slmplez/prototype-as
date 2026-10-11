/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.internal.compiler.ExtraFlags;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.classfmt.FieldInfo;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfo;
import org.eclipse.jdt.internal.compiler.env.ClassSignature;
import org.eclipse.jdt.internal.compiler.env.EnumConstantSignature;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.search.indexing.AbstractIndexer;

public class BinaryIndexer
extends AbstractIndexer
implements SuffixConstants {
    private static final char[] BYTE = "byte".toCharArray();
    private static final char[] CHAR = "char".toCharArray();
    private static final char[] DOUBLE = "double".toCharArray();
    private static final char[] FLOAT = "float".toCharArray();
    private static final char[] INT = "int".toCharArray();
    private static final char[] LONG = "long".toCharArray();
    private static final char[] SHORT = "short".toCharArray();
    private static final char[] BOOLEAN = "boolean".toCharArray();
    private static final char[] VOID = "void".toCharArray();
    private static final char[] INIT = "<init>".toCharArray();

    public BinaryIndexer(SearchDocument document) {
        super(document);
    }

    private void addBinaryStandardAnnotations(long annotationTagBits) {
        char[][] compoundName;
        if ((annotationTagBits & 0xFF800000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_ANNOTATION_TARGET;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
            this.addBinaryTargetAnnotation(annotationTagBits);
        }
        if ((annotationTagBits & 0x300000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_ANNOTATION_RETENTION;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
            this.addBinaryRetentionAnnotation(annotationTagBits);
        }
        if ((annotationTagBits & 0x400000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_DEPRECATED;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
        }
        if ((annotationTagBits & 0x800000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
        }
        if ((annotationTagBits & 0x1000000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_ANNOTATION_INHERITED;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
        }
        if ((annotationTagBits & 0x2000000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_OVERRIDE;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
        }
        if ((annotationTagBits & 0x4000000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_SUPPRESSWARNINGS;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
        }
        if ((annotationTagBits & 0x8000000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_SAFEVARARGS;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
        }
        if ((annotationTagBits & 0x10000000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE;
            this.addAnnotationTypeReference(compoundName[compoundName.length - 1]);
        }
    }

    private void addBinaryTargetAnnotation(long bits) {
        char[][] compoundName = null;
        if ((bits & 0x40000000000L) != 0L) {
            compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
            this.addTypeReference(compoundName[compoundName.length - 1]);
            this.addFieldReference(TypeConstants.UPPER_ANNOTATION_TYPE);
        }
        if ((bits & 0x10000000000L) != 0L) {
            if (compoundName == null) {
                compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                this.addTypeReference(compoundName[compoundName.length - 1]);
            }
            this.addFieldReference(TypeConstants.UPPER_CONSTRUCTOR);
        }
        if ((bits & 0x2000000000L) != 0L) {
            if (compoundName == null) {
                compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                this.addTypeReference(compoundName[compoundName.length - 1]);
            }
            this.addFieldReference(TypeConstants.UPPER_FIELD);
        }
        if ((bits & 0x20000000000L) != 0L) {
            if (compoundName == null) {
                compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                this.addTypeReference(compoundName[compoundName.length - 1]);
            }
            this.addFieldReference(TypeConstants.UPPER_LOCAL_VARIABLE);
        }
        if ((bits & 0x4000000000L) != 0L) {
            if (compoundName == null) {
                compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                this.addTypeReference(compoundName[compoundName.length - 1]);
            }
            this.addFieldReference(TypeConstants.UPPER_METHOD);
        }
        if ((bits & 0x80000000000L) != 0L) {
            if (compoundName == null) {
                compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                this.addTypeReference(compoundName[compoundName.length - 1]);
            }
            this.addFieldReference(TypeConstants.UPPER_PACKAGE);
        }
        if ((bits & 0x8000000000L) != 0L) {
            if (compoundName == null) {
                compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                this.addTypeReference(compoundName[compoundName.length - 1]);
            }
            this.addFieldReference(TypeConstants.UPPER_PARAMETER);
        }
        if ((bits & 0x1000000000L) != 0L) {
            if (compoundName == null) {
                compoundName = TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE;
                this.addTypeReference(compoundName[compoundName.length - 1]);
            }
            this.addFieldReference(TypeConstants.TYPE);
        }
    }

    private void addBinaryRetentionAnnotation(long bits) {
        char[][] compoundName = TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY;
        this.addTypeReference(compoundName[compoundName.length - 1]);
        if ((bits & 0x300000000000L) == 0x300000000000L) {
            this.addFieldReference(TypeConstants.UPPER_RUNTIME);
        } else if ((bits & 0x200000000000L) != 0L) {
            this.addFieldReference(TypeConstants.UPPER_CLASS);
        } else if ((bits & 0x100000000000L) != 0L) {
            this.addFieldReference(TypeConstants.UPPER_SOURCE);
        }
    }

    private void addBinaryAnnotation(IBinaryAnnotation annotation) {
        this.addAnnotationTypeReference(this.replace('/', '.', Signature.toCharArray(annotation.getTypeName())));
        IBinaryElementValuePair[] valuePairs = annotation.getElementValuePairs();
        if (valuePairs != null) {
            int j = 0;
            int vpLength = valuePairs.length;
            while (j < vpLength) {
                IBinaryElementValuePair valuePair = valuePairs[j];
                this.addMethodReference(valuePair.getName(), 0);
                Object pairValue = valuePair.getValue();
                this.addPairValue(pairValue);
                ++j;
            }
        }
    }

    private void addPairValue(Object pairValue) {
        if (pairValue instanceof EnumConstantSignature) {
            EnumConstantSignature enumConstant = (EnumConstantSignature)pairValue;
            this.addTypeReference(this.replace('/', '.', Signature.toCharArray(enumConstant.getTypeName())));
            this.addNameReference(enumConstant.getEnumConstantName());
        } else if (pairValue instanceof ClassSignature) {
            ClassSignature classConstant = (ClassSignature)pairValue;
            this.addTypeReference(this.replace('/', '.', Signature.toCharArray(classConstant.getTypeName())));
        } else if (pairValue instanceof IBinaryAnnotation) {
            this.addBinaryAnnotation((IBinaryAnnotation)pairValue);
        } else if (pairValue instanceof Object[]) {
            Object[] objects = (Object[])pairValue;
            int i = 0;
            int l = objects.length;
            while (i < l) {
                this.addPairValue(objects[i]);
                ++i;
            }
        }
    }

    public void addTypeReference(char[] typeName) {
        int length = typeName.length;
        if (length > 2 && typeName[length - 2] == '$') {
            switch (typeName[length - 1]) {
                case '0': 
                case '1': 
                case '2': 
                case '3': 
                case '4': 
                case '5': 
                case '6': 
                case '7': 
                case '8': 
                case '9': {
                    return;
                }
            }
        }
        typeName = CharOperation.replaceOnCopy(typeName, '$', '.');
        super.addTypeReference(typeName);
    }

    private void convertToArrayType(char[][] parameterTypes, int counter, int arrayDim) {
        int length = parameterTypes[counter].length;
        char[] arrayType = new char[length + arrayDim * 2];
        System.arraycopy(parameterTypes[counter], 0, arrayType, 0, length);
        int i = 0;
        while (i < arrayDim) {
            arrayType[length + i * 2] = 91;
            arrayType[length + i * 2 + 1] = 93;
            ++i;
        }
        parameterTypes[counter] = arrayType;
    }

    private char[] convertToArrayType(char[] typeName, int arrayDim) {
        int length = typeName.length;
        char[] arrayType = new char[length + arrayDim * 2];
        System.arraycopy(typeName, 0, arrayType, 0, length);
        int i = 0;
        while (i < arrayDim) {
            arrayType[length + i * 2] = 91;
            arrayType[length + i * 2 + 1] = 93;
            ++i;
        }
        return arrayType;
    }

    private char[] decodeFieldType(char[] signature) throws ClassFormatException {
        if (signature == null) {
            return null;
        }
        int arrayDim = 0;
        int i = 0;
        int max = signature.length;
        while (i < max) {
            switch (signature[i]) {
                case 'B': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(BYTE, arrayDim);
                    }
                    return BYTE;
                }
                case 'C': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(CHAR, arrayDim);
                    }
                    return CHAR;
                }
                case 'D': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(DOUBLE, arrayDim);
                    }
                    return DOUBLE;
                }
                case 'F': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(FLOAT, arrayDim);
                    }
                    return FLOAT;
                }
                case 'I': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(INT, arrayDim);
                    }
                    return INT;
                }
                case 'J': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(LONG, arrayDim);
                    }
                    return LONG;
                }
                case 'L': {
                    int indexOfSemiColon = CharOperation.indexOf(';', signature, i + 1);
                    if (indexOfSemiColon == -1) {
                        throw new ClassFormatException(28);
                    }
                    if (arrayDim > 0) {
                        return this.convertToArrayType(this.replace('/', '.', CharOperation.subarray(signature, i + 1, indexOfSemiColon)), arrayDim);
                    }
                    return this.replace('/', '.', CharOperation.subarray(signature, i + 1, indexOfSemiColon));
                }
                case 'S': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(SHORT, arrayDim);
                    }
                    return SHORT;
                }
                case 'Z': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(BOOLEAN, arrayDim);
                    }
                    return BOOLEAN;
                }
                case 'V': {
                    return VOID;
                }
                case '[': {
                    ++arrayDim;
                    break;
                }
                default: {
                    throw new ClassFormatException(28);
                }
            }
            ++i;
        }
        return null;
    }

    private char[][] decodeParameterTypes(char[] signature, boolean firstIsSynthetic) throws ClassFormatException {
        if (signature == null) {
            return null;
        }
        int indexOfClosingParen = CharOperation.lastIndexOf(')', signature);
        if (indexOfClosingParen == 1) {
            return null;
        }
        if (indexOfClosingParen == -1) {
            throw new ClassFormatException(28);
        }
        char[][] parameterTypes = new char[3][];
        int parameterTypesCounter = 0;
        int arrayDim = 0;
        int i = 1;
        while (i < indexOfClosingParen) {
            if (parameterTypesCounter == parameterTypes.length) {
                char[][] cArrayArray = parameterTypes;
                parameterTypes = new char[parameterTypesCounter * 2][];
                System.arraycopy(cArrayArray, 0, parameterTypes, 0, parameterTypesCounter);
            }
            switch (signature[i]) {
                case 'B': {
                    parameterTypes[parameterTypesCounter++] = BYTE;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case 'C': {
                    parameterTypes[parameterTypesCounter++] = CHAR;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case 'D': {
                    parameterTypes[parameterTypesCounter++] = DOUBLE;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case 'F': {
                    parameterTypes[parameterTypesCounter++] = FLOAT;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case 'I': {
                    parameterTypes[parameterTypesCounter++] = INT;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case 'J': {
                    parameterTypes[parameterTypesCounter++] = LONG;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case 'L': {
                    int indexOfSemiColon = CharOperation.indexOf(';', signature, i + 1);
                    if (indexOfSemiColon == -1) {
                        throw new ClassFormatException(28);
                    }
                    if (firstIsSynthetic && parameterTypesCounter == 0) {
                        firstIsSynthetic = false;
                    } else {
                        parameterTypes[parameterTypesCounter++] = this.replace('/', '.', CharOperation.subarray(signature, i + 1, indexOfSemiColon));
                        if (arrayDim > 0) {
                            this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                        }
                    }
                    i = indexOfSemiColon;
                    arrayDim = 0;
                    break;
                }
                case 'S': {
                    parameterTypes[parameterTypesCounter++] = SHORT;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case 'Z': {
                    parameterTypes[parameterTypesCounter++] = BOOLEAN;
                    if (arrayDim > 0) {
                        this.convertToArrayType(parameterTypes, parameterTypesCounter - 1, arrayDim);
                    }
                    arrayDim = 0;
                    break;
                }
                case '[': {
                    ++arrayDim;
                    break;
                }
                default: {
                    throw new ClassFormatException(28);
                }
            }
            ++i;
        }
        if (parameterTypes.length != parameterTypesCounter) {
            char[][] cArrayArray = parameterTypes;
            parameterTypes = new char[parameterTypesCounter][];
            System.arraycopy(cArrayArray, 0, parameterTypes, 0, parameterTypesCounter);
        }
        return parameterTypes;
    }

    private char[] decodeReturnType(char[] signature) throws ClassFormatException {
        if (signature == null) {
            return null;
        }
        int indexOfClosingParen = CharOperation.lastIndexOf(')', signature);
        if (indexOfClosingParen == -1) {
            throw new ClassFormatException(28);
        }
        int arrayDim = 0;
        int i = indexOfClosingParen + 1;
        int max = signature.length;
        while (i < max) {
            switch (signature[i]) {
                case 'B': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(BYTE, arrayDim);
                    }
                    return BYTE;
                }
                case 'C': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(CHAR, arrayDim);
                    }
                    return CHAR;
                }
                case 'D': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(DOUBLE, arrayDim);
                    }
                    return DOUBLE;
                }
                case 'F': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(FLOAT, arrayDim);
                    }
                    return FLOAT;
                }
                case 'I': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(INT, arrayDim);
                    }
                    return INT;
                }
                case 'J': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(LONG, arrayDim);
                    }
                    return LONG;
                }
                case 'L': {
                    int indexOfSemiColon = CharOperation.indexOf(';', signature, i + 1);
                    if (indexOfSemiColon == -1) {
                        throw new ClassFormatException(28);
                    }
                    if (arrayDim > 0) {
                        return this.convertToArrayType(this.replace('/', '.', CharOperation.subarray(signature, i + 1, indexOfSemiColon)), arrayDim);
                    }
                    return this.replace('/', '.', CharOperation.subarray(signature, i + 1, indexOfSemiColon));
                }
                case 'S': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(SHORT, arrayDim);
                    }
                    return SHORT;
                }
                case 'Z': {
                    if (arrayDim > 0) {
                        return this.convertToArrayType(BOOLEAN, arrayDim);
                    }
                    return BOOLEAN;
                }
                case 'V': {
                    return VOID;
                }
                case '[': {
                    ++arrayDim;
                    break;
                }
                default: {
                    throw new ClassFormatException(28);
                }
            }
            ++i;
        }
        return null;
    }

    /*
     * Unable to fully structure code
     */
    private int extractArgCount(char[] signature, char[] className) throws ClassFormatException {
        indexOfClosingParen = CharOperation.lastIndexOf(')', signature);
        if (indexOfClosingParen == 1) {
            return 0;
        }
        if (indexOfClosingParen == -1) {
            throw new ClassFormatException(28);
        }
        parameterTypesCounter = 0;
        i = 1;
        while (i < indexOfClosingParen) {
            switch (signature[i]) {
                case 'B': 
                case 'C': 
                case 'D': 
                case 'F': 
                case 'I': 
                case 'J': 
                case 'S': 
                case 'Z': {
                    ++parameterTypesCounter;
                    break;
                }
                case 'L': {
                    indexOfSemiColon = CharOperation.indexOf(';', signature, i + 1);
                    if (indexOfSemiColon == -1) {
                        throw new ClassFormatException(28);
                    }
                    if (className == null || parameterTypesCounter != 0) ** GOTO lbl33
                    classSignature = Signature.createCharArrayTypeSignature(className, true);
                    if (classSignature.length <= (length = indexOfSemiColon - i + 1) + 1) ** GOTO lbl30
                    j = i;
                    k = 0;
                    while (j < indexOfSemiColon) {
                        if (signature[j] == classSignature[k] || signature[j] == '/' && classSignature[k] == '.') ** GOTO lbl26
                        ++parameterTypesCounter;
                        ** GOTO lbl31
lbl26:
                        // 1 sources

                        ++j;
                        ++k;
                    }
                    ** GOTO lbl31
lbl30:
                    // 1 sources

                    ++parameterTypesCounter;
lbl31:
                    // 3 sources

                    className = null;
                    ** GOTO lbl34
lbl33:
                    // 1 sources

                    ++parameterTypesCounter;
lbl34:
                    // 2 sources

                    i = indexOfSemiColon;
                    break;
                }
                case '[': {
                    break;
                }
                default: {
                    throw new ClassFormatException(28);
                }
            }
            ++i;
        }
        return parameterTypesCounter;
    }

    private char[] extractClassName(int[] constantPoolOffsets, ClassFileReader reader, int index) {
        int class_index = reader.u2At(constantPoolOffsets[index] + 1);
        int utf8Offset = constantPoolOffsets[reader.u2At(constantPoolOffsets[class_index] + 1)];
        return reader.utf8At(utf8Offset + 3, reader.u2At(utf8Offset + 1));
    }

    private char[] extractName(int[] constantPoolOffsets, ClassFileReader reader, int index) {
        int nameAndTypeIndex = reader.u2At(constantPoolOffsets[index] + 3);
        int utf8Offset = constantPoolOffsets[reader.u2At(constantPoolOffsets[nameAndTypeIndex] + 1)];
        return reader.utf8At(utf8Offset + 3, reader.u2At(utf8Offset + 1));
    }

    private char[] extractClassReference(int[] constantPoolOffsets, ClassFileReader reader, int index) {
        int utf8Offset = constantPoolOffsets[reader.u2At(constantPoolOffsets[index] + 1)];
        return reader.utf8At(utf8Offset + 3, reader.u2At(utf8Offset + 1));
    }

    private void extractReferenceFromConstantPool(byte[] contents, ClassFileReader reader) throws ClassFormatException {
        int[] constantPoolOffsets = reader.getConstantPoolOffsets();
        int constantPoolCount = constantPoolOffsets.length;
        int i = 1;
        while (i < constantPoolCount) {
            int tag = reader.u1At(constantPoolOffsets[i]);
            char[] name = null;
            char[] type = null;
            switch (tag) {
                case 9: {
                    name = this.extractName(constantPoolOffsets, reader, i);
                    this.addFieldReference(name);
                    break;
                }
                case 10: 
                case 11: {
                    name = this.extractName(constantPoolOffsets, reader, i);
                    type = this.extractType(constantPoolOffsets, reader, i);
                    if (CharOperation.equals(INIT, name)) {
                        char[] className = this.extractClassName(constantPoolOffsets, reader, i);
                        boolean localType = false;
                        if (className != null) {
                            int c = 0;
                            int max = className.length;
                            while (c < max) {
                                switch (className[c]) {
                                    case '/': {
                                        className[c] = 46;
                                        break;
                                    }
                                    case '$': {
                                        localType = true;
                                    }
                                }
                                ++c;
                            }
                        }
                        this.addConstructorReference(className, this.extractArgCount(type, (char[])(localType ? className : null)));
                        break;
                    }
                    this.addMethodReference(name, this.extractArgCount(type, null));
                    break;
                }
                case 7: {
                    name = this.extractClassReference(constantPoolOffsets, reader, i);
                    if (name.length > 0 && name[0] == '[') break;
                    name = this.replace('/', '.', name);
                    this.addTypeReference(name);
                    char[][] qualification = CharOperation.splitOn('.', name);
                    int j = 0;
                    int length = qualification.length;
                    while (j < length) {
                        this.addNameReference(qualification[j]);
                        ++j;
                    }
                    break;
                }
            }
            ++i;
        }
    }

    private char[] extractType(int[] constantPoolOffsets, ClassFileReader reader, int index) {
        int constantPoolIndex = reader.u2At(constantPoolOffsets[index] + 3);
        int utf8Offset = constantPoolOffsets[reader.u2At(constantPoolOffsets[constantPoolIndex] + 3)];
        return reader.utf8At(utf8Offset + 3, reader.u2At(utf8Offset + 1));
    }

    public void indexDocument() {
        try {
            FieldInfo[] fields;
            long tagBits;
            char[][] cArrayArray;
            byte[] contents = this.document.getByteContents();
            if (contents == null) {
                return;
            }
            String path = this.document.getPath();
            ClassFileReader reader = new ClassFileReader(contents, path == null ? null : path.toCharArray());
            char[] className = this.replace('/', '.', reader.getName());
            int packageNameIndex = CharOperation.lastIndexOf('.', className);
            char[] packageName = null;
            char[] name = null;
            if (packageNameIndex >= 0) {
                packageName = CharOperation.subarray(className, 0, packageNameIndex);
                name = CharOperation.subarray(className, packageNameIndex + 1, className.length);
            } else {
                packageName = CharOperation.NO_CHAR;
                name = className;
            }
            char[] enclosingTypeName = null;
            boolean isNestedType = reader.isNestedType();
            if (isNestedType) {
                name = reader.isAnonymous() ? CharOperation.NO_CHAR : reader.getInnerSourceName();
                if (reader.isLocal() || reader.isAnonymous()) {
                    enclosingTypeName = ONE_ZERO;
                } else {
                    char[] fullEnclosingName = reader.getEnclosingTypeName();
                    int nameLength = fullEnclosingName.length - packageNameIndex - 1;
                    if (nameLength <= 0) {
                        return;
                    }
                    enclosingTypeName = new char[nameLength];
                    System.arraycopy(fullEnclosingName, packageNameIndex + 1, enclosingTypeName, 0, nameLength);
                }
            }
            char[][] typeParameterSignatures = null;
            char[] genericSignature = reader.getGenericSignature();
            if (genericSignature != null) {
                CharOperation.replace(genericSignature, '/', '.');
                typeParameterSignatures = Signature.getTypeParameters(genericSignature);
            }
            if (name == null) {
                return;
            }
            char[][] superinterfaces = this.replace('/', '.', reader.getInterfaceNames());
            if (enclosingTypeName == null) {
                cArrayArray = null;
            } else {
                char[][] cArrayArray2 = new char[1][];
                cArrayArray = cArrayArray2;
                cArrayArray2[0] = enclosingTypeName;
            }
            char[][] enclosingTypeNames = cArrayArray;
            int modifiers = reader.getModifiers();
            switch (TypeDeclaration.kind(modifiers)) {
                case 1: {
                    char[] superclass = this.replace('/', '.', reader.getSuperclassName());
                    this.addClassDeclaration(modifiers, packageName, name, enclosingTypeNames, superclass, superinterfaces, typeParameterSignatures, false);
                    break;
                }
                case 2: {
                    this.addInterfaceDeclaration(modifiers, packageName, name, enclosingTypeNames, superinterfaces, typeParameterSignatures, false);
                    break;
                }
                case 3: {
                    char[] superclass = this.replace('/', '.', reader.getSuperclassName());
                    this.addEnumDeclaration(modifiers, packageName, name, enclosingTypeNames, superclass, superinterfaces, false);
                    break;
                }
                case 4: {
                    this.addAnnotationTypeDeclaration(modifiers, packageName, name, enclosingTypeNames, false);
                }
            }
            IBinaryAnnotation[] annotations = reader.getAnnotations();
            if (annotations != null) {
                int a = 0;
                int length = annotations.length;
                while (a < length) {
                    IBinaryAnnotation annotation = annotations[a];
                    this.addBinaryAnnotation(annotation);
                    ++a;
                }
            }
            if ((tagBits = reader.getTagBits() & 0x1FFFF800000000L) != 0L) {
                this.addBinaryStandardAnnotations(tagBits);
            }
            int extraFlags = ExtraFlags.getExtraFlags(reader);
            MethodInfo[] methods = (MethodInfo[])reader.getMethods();
            boolean noConstructor = true;
            if (methods != null) {
                int i = 0;
                int max = methods.length;
                while (i < max) {
                    MethodInfo method = methods[i];
                    boolean isConstructor = method.isConstructor();
                    char[] descriptor = method.getMethodDescriptor();
                    char[][] parameterTypes = this.decodeParameterTypes(descriptor, isConstructor && isNestedType);
                    char[] returnType = this.decodeReturnType(descriptor);
                    char[][] exceptionTypes = this.replace('/', '.', method.getExceptionTypeNames());
                    if (isConstructor) {
                        noConstructor = false;
                        char[] signature = method.getGenericSignature();
                        if (signature == null) {
                            signature = reader.isNestedType() && (modifiers & 8) == 0 ? this.removeFirstSyntheticParameter(descriptor) : descriptor;
                        }
                        this.addConstructorDeclaration(name, parameterTypes == null ? 0 : parameterTypes.length, signature, parameterTypes, method.getArgumentNames(), method.getModifiers(), packageName, modifiers, exceptionTypes, extraFlags);
                    } else if (!method.isClinit()) {
                        this.addMethodDeclaration(method.getSelector(), parameterTypes, returnType, exceptionTypes);
                    }
                    annotations = method.getAnnotations();
                    if (annotations != null) {
                        int a = 0;
                        int length = annotations.length;
                        while (a < length) {
                            IBinaryAnnotation annotation = annotations[a];
                            this.addBinaryAnnotation(annotation);
                            ++a;
                        }
                    }
                    if ((tagBits = method.getTagBits() & 0x1FFFF800000000L) != 0L) {
                        this.addBinaryStandardAnnotations(tagBits);
                    }
                    ++i;
                }
            }
            if (noConstructor) {
                this.addDefaultConstructorDeclaration(className, packageName, modifiers, extraFlags);
            }
            if ((fields = (FieldInfo[])reader.getFields()) != null) {
                int i = 0;
                int max = fields.length;
                while (i < max) {
                    FieldInfo field = fields[i];
                    char[] fieldName = field.getName();
                    char[] fieldType = this.decodeFieldType(this.replace('/', '.', field.getTypeName()));
                    this.addFieldDeclaration(fieldType, fieldName);
                    annotations = field.getAnnotations();
                    if (annotations != null) {
                        int a = 0;
                        int length = annotations.length;
                        while (a < length) {
                            IBinaryAnnotation annotation = annotations[a];
                            this.addBinaryAnnotation(annotation);
                            ++a;
                        }
                    }
                    if ((tagBits = field.getTagBits() & 0x1FFFF800000000L) != 0L) {
                        this.addBinaryStandardAnnotations(tagBits);
                    }
                    ++i;
                }
            }
            this.extractReferenceFromConstantPool(contents, reader);
        }
        catch (ClassFormatException classFormatException) {
            this.document.removeAllIndexEntries();
            org.eclipse.jdt.internal.core.util.Util.log(2, "The Java indexing could not index " + this.document.getPath() + ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor");
        }
        catch (RuntimeException runtimeException) {
            this.document.removeAllIndexEntries();
            org.eclipse.jdt.internal.core.util.Util.log(2, "The Java indexing could not index " + this.document.getPath() + ". This .class file doesn't follow the class file format specification. Please report this issue against the .class file vendor");
        }
    }

    private char[] removeFirstSyntheticParameter(char[] descriptor) {
        if (descriptor == null) {
            return null;
        }
        if (descriptor.length < 3) {
            return descriptor;
        }
        if (descriptor[0] != '(') {
            return descriptor;
        }
        if (descriptor[1] != ')') {
            int start = Util.scanTypeSignature(descriptor, 1) + 1;
            int length = descriptor.length - start;
            char[] signature = new char[length + 1];
            signature[0] = descriptor[0];
            System.arraycopy(descriptor, start, signature, 1, length);
            return signature;
        }
        return descriptor;
    }

    private char[][] replace(char toBeReplaced, char newChar, char[][] array) {
        if (array == null) {
            return null;
        }
        int i = 0;
        int max = array.length;
        while (i < max) {
            this.replace(toBeReplaced, newChar, array[i]);
            ++i;
        }
        return array;
    }

    private char[] replace(char toBeReplaced, char newChar, char[] array) {
        if (array == null) {
            return null;
        }
        int i = 0;
        int max = array.length;
        while (i < max) {
            if (array[i] == toBeReplaced) {
                array[i] = newChar;
            }
            ++i;
        }
        return array;
    }
}

