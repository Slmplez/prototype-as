/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.core.search.TypeReferenceMatch;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.classfmt.FieldInfo;
import org.eclipse.jdt.internal.compiler.classfmt.MethodInfo;
import org.eclipse.jdt.internal.compiler.env.IBinaryAnnotation;
import org.eclipse.jdt.internal.compiler.env.IBinaryElementValuePair;
import org.eclipse.jdt.internal.compiler.env.IBinaryField;
import org.eclipse.jdt.internal.compiler.env.IBinaryMethod;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.BinaryType;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.ResolvedBinaryField;
import org.eclipse.jdt.internal.core.ResolvedBinaryMethod;
import org.eclipse.jdt.internal.core.ResolvedBinaryType;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.OrPattern;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.QualifiedTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeReferencePattern;

public class ClassFileMatchLocator
implements IIndexConstants {
    private static final long TARGET_ANNOTATION_BITS = 0xFF000000000L;
    private static final char[] JAVA_LANG_ANNOTATION_ELEMENTTYPE = CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE, '.');

    public static char[] convertClassFileFormat(char[] name) {
        return CharOperation.replaceOnCopy(name, '/', '.');
    }

    private boolean checkAnnotation(IBinaryAnnotation annotation, TypeReferencePattern pattern) {
        if (this.checkTypeName(pattern.simpleName, pattern.qualification, ClassFileMatchLocator.convertClassFileFormat(Signature.toCharArray(annotation.getTypeName())), pattern.isCaseSensitive, pattern.isCamelCase)) {
            return true;
        }
        IBinaryElementValuePair[] valuePairs = annotation.getElementValuePairs();
        if (valuePairs != null) {
            int j = 0;
            int vpLength = valuePairs.length;
            while (j < vpLength) {
                IBinaryElementValuePair valuePair = valuePairs[j];
                Object pairValue = valuePair.getValue();
                if (pairValue instanceof IBinaryAnnotation && this.checkAnnotation((IBinaryAnnotation)pairValue, pattern)) {
                    return true;
                }
                ++j;
            }
        }
        return false;
    }

    private boolean checkAnnotations(TypeReferencePattern pattern, IBinaryAnnotation[] annotations, long tagBits) {
        if (annotations != null) {
            int a = 0;
            int length = annotations.length;
            while (a < length) {
                IBinaryAnnotation annotation = annotations[a];
                if (this.checkAnnotation(annotation, pattern)) {
                    return true;
                }
                ++a;
            }
        }
        return (tagBits & 0x1FFFF800000000L) != 0L && this.checkStandardAnnotations(tagBits, pattern);
    }

    private boolean checkAnnotationTypeReference(char[] fullyQualifiedName, TypeReferencePattern pattern) {
        return this.checkTypeName(pattern.simpleName, pattern.qualification, fullyQualifiedName, pattern.isCaseSensitive, pattern.isCamelCase);
    }

    private boolean checkDeclaringType(IBinaryType enclosingBinaryType, char[] simpleName, char[] qualification, boolean isCaseSensitive, boolean isCamelCase) {
        if (simpleName == null && qualification == null) {
            return true;
        }
        if (enclosingBinaryType == null) {
            return true;
        }
        char[] declaringTypeName = ClassFileMatchLocator.convertClassFileFormat(enclosingBinaryType.getName());
        return this.checkTypeName(simpleName, qualification, declaringTypeName, isCaseSensitive, isCamelCase);
    }

    private boolean checkParameters(char[] methodDescriptor, char[][] parameterSimpleNames, char[][] parameterQualifications, boolean isCaseSensitive, boolean isCamelCase) {
        int parameterCount = parameterSimpleNames.length;
        char[][] arguments = Signature.getParameterTypes(methodDescriptor);
        if (parameterCount != arguments.length) {
            return false;
        }
        int i = 0;
        while (i < parameterCount) {
            if (!this.checkTypeName(parameterSimpleNames[i], parameterQualifications[i], Signature.toCharArray(arguments[i]), isCaseSensitive, isCamelCase)) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private boolean checkStandardAnnotations(long annotationTagBits, TypeReferencePattern pattern) {
        char[][] compoundName;
        if ((annotationTagBits & 0xFF800000000L) != 0L && (this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_ANNOTATION_TARGET, '.'), pattern) || (annotationTagBits & 0xFF000000000L) != 0L && this.checkAnnotationTypeReference(JAVA_LANG_ANNOTATION_ELEMENTTYPE, pattern))) {
            return true;
        }
        if ((annotationTagBits & 0x300000000000L) != 0L && (this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_ANNOTATION_RETENTION, '.'), pattern) || this.checkAnnotationTypeReference(CharOperation.concatWith(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, '.'), pattern))) {
            return true;
        }
        if ((annotationTagBits & 0x400000000000L) != 0L && this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_DEPRECATED, '.'), pattern)) {
            return true;
        }
        if ((annotationTagBits & 0x800000000000L) != 0L && this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED, '.'), pattern)) {
            return true;
        }
        if ((annotationTagBits & 0x1000000000000L) != 0L && this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_ANNOTATION_INHERITED, '.'), pattern)) {
            return true;
        }
        if ((annotationTagBits & 0x2000000000000L) != 0L && this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_OVERRIDE, '.'), pattern)) {
            return true;
        }
        if ((annotationTagBits & 0x4000000000000L) != 0L && this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_SUPPRESSWARNINGS, '.'), pattern)) {
            return true;
        }
        if ((annotationTagBits & 0x8000000000000L) != 0L && this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_SAFEVARARGS, '.'), pattern)) {
            return true;
        }
        return (annotationTagBits & 0x10000000000000L) != 0L && this.checkAnnotationTypeReference(CharOperation.concatWith(compoundName = TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE, '.'), pattern);
    }

    private boolean checkTypeName(char[] simpleName, char[] qualification, char[] fullyQualifiedTypeName, boolean isCaseSensitive, boolean isCamelCase) {
        char[] wildcardPattern = PatternLocator.qualifiedPattern(simpleName, qualification);
        if (wildcardPattern == null) {
            return true;
        }
        return CharOperation.match(wildcardPattern, fullyQualifiedTypeName, isCaseSensitive);
    }

    public void locateMatches(MatchLocator locator, ClassFile classFile, IBinaryType info) throws CoreException {
        SearchPattern pattern = locator.pattern;
        this.matchAnnotations(pattern, locator, classFile, info);
        BinaryType binaryType = (BinaryType)classFile.getType();
        if (this.matchBinary(pattern, info, null)) {
            binaryType = new ResolvedBinaryType((JavaElement)binaryType.getParent(), binaryType.getElementName(), binaryType.getKey());
            locator.reportBinaryMemberDeclaration(null, binaryType, null, info, 0);
            return;
        }
        IBinaryMethod[] binaryMethods = info.getMethods();
        int bMethodsLength = binaryMethods == null ? 0 : binaryMethods.length;
        IBinaryMethod[] unresolvedMethods = null;
        Object binaryMethodSignatures = null;
        boolean hasUnresolvedMethods = false;
        IBinaryField[] binaryFields = info.getFields();
        int bFieldsLength = binaryFields == null ? 0 : binaryFields.length;
        IBinaryField[] unresolvedFields = null;
        boolean hasUnresolvedFields = false;
        int accuracy = 0;
        boolean mustResolve = pattern.mustResolve;
        if (mustResolve) {
            BinaryTypeBinding binding = locator.cacheBinaryType(binaryType, info);
            if (binding != null) {
                if (!locator.typeInHierarchy(binding)) {
                    return;
                }
                MethodBinding[] availableMethods = binding.availableMethods();
                int aMethodsLength = availableMethods == null ? 0 : availableMethods.length;
                hasUnresolvedMethods = bMethodsLength != aMethodsLength;
                int i = 0;
                while (i < aMethodsLength) {
                    int level;
                    MethodBinding method = availableMethods[i];
                    char[] methodSignature = method.genericSignature();
                    if (methodSignature == null) {
                        methodSignature = method.signature();
                    }
                    if ((level = locator.patternLocator.resolveLevel(method)) != 0) {
                        IMethod methodHandle = binaryType.getMethod(new String(method.isConstructor() ? binding.compoundName[binding.compoundName.length - 1] : method.selector), CharOperation.toStrings(Signature.getParameterTypes(ClassFileMatchLocator.convertClassFileFormat(methodSignature))));
                        accuracy = level == 3 ? 0 : 1;
                        locator.reportBinaryMemberDeclaration(null, methodHandle, method, info, accuracy);
                    }
                    if (hasUnresolvedMethods) {
                        if (binaryMethodSignatures == null) {
                            binaryMethodSignatures = new char[bMethodsLength][];
                            int j = 0;
                            while (j < bMethodsLength) {
                                IBinaryMethod binaryMethod = binaryMethods[j];
                                char[] signature = binaryMethod.getGenericSignature();
                                if (signature == null) {
                                    signature = binaryMethod.getMethodDescriptor();
                                }
                                binaryMethodSignatures[j] = signature;
                                ++j;
                            }
                        }
                        int j = 0;
                        while (j < bMethodsLength) {
                            if (CharOperation.equals(binaryMethods[j].getSelector(), method.selector) && CharOperation.equals(binaryMethodSignatures[j], methodSignature)) {
                                if (unresolvedMethods == null) {
                                    unresolvedMethods = new IBinaryMethod[bMethodsLength];
                                    System.arraycopy(binaryMethods, 0, unresolvedMethods, 0, bMethodsLength);
                                }
                                unresolvedMethods[j] = null;
                                break;
                            }
                            ++j;
                        }
                    }
                    ++i;
                }
                FieldBinding[] availableFields = binding.availableFields();
                int aFieldsLength = availableFields == null ? 0 : availableFields.length;
                hasUnresolvedFields = bFieldsLength != aFieldsLength;
                int i2 = 0;
                while (i2 < aFieldsLength) {
                    FieldBinding field = availableFields[i2];
                    int level = locator.patternLocator.resolveLevel(field);
                    if (level != 0) {
                        IField fieldHandle = binaryType.getField(new String(field.name));
                        accuracy = level == 3 ? 0 : 1;
                        locator.reportBinaryMemberDeclaration(null, fieldHandle, field, info, accuracy);
                    }
                    if (hasUnresolvedFields) {
                        int j = 0;
                        while (j < bFieldsLength) {
                            if (CharOperation.equals(binaryFields[j].getName(), field.name)) {
                                if (unresolvedFields == null) {
                                    unresolvedFields = new IBinaryField[bFieldsLength];
                                    System.arraycopy(binaryFields, 0, unresolvedFields, 0, bFieldsLength);
                                }
                                unresolvedFields[j] = null;
                                break;
                            }
                            ++j;
                        }
                    }
                    ++i2;
                }
                if (!hasUnresolvedMethods && !hasUnresolvedFields) {
                    return;
                }
            }
            accuracy = 1;
        }
        if (mustResolve) {
            binaryMethods = unresolvedMethods;
        }
        bMethodsLength = binaryMethods == null ? 0 : binaryMethods.length;
        int i = 0;
        while (i < bMethodsLength) {
            IBinaryMethod method = binaryMethods[i];
            if (method != null && this.matchBinary(pattern, method, info)) {
                char[] methodSignature;
                char[] name = method.isConstructor() ? info.getSourceName() : method.getSelector();
                String selector = new String(name);
                char[] cArray = methodSignature = binaryMethodSignatures == null ? null : binaryMethodSignatures[i];
                if (methodSignature == null && (methodSignature = method.getGenericSignature()) == null) {
                    methodSignature = method.getMethodDescriptor();
                }
                String[] parameterTypes = CharOperation.toStrings(Signature.getParameterTypes(ClassFileMatchLocator.convertClassFileFormat(methodSignature)));
                IMethod methodHandle = binaryType.getMethod(selector, parameterTypes);
                methodHandle = new ResolvedBinaryMethod(binaryType, selector, parameterTypes, methodHandle.getKey());
                locator.reportBinaryMemberDeclaration(null, methodHandle, null, info, accuracy);
            }
            ++i;
        }
        if (mustResolve) {
            binaryFields = unresolvedFields;
        }
        bFieldsLength = binaryFields == null ? 0 : binaryFields.length;
        i = 0;
        while (i < bFieldsLength) {
            IBinaryField field = binaryFields[i];
            if (field != null && this.matchBinary(pattern, field, info)) {
                String fieldName = new String(field.getName());
                IField fieldHandle = binaryType.getField(fieldName);
                fieldHandle = new ResolvedBinaryField(binaryType, fieldName, fieldHandle.getKey());
                locator.reportBinaryMemberDeclaration(null, fieldHandle, null, info, accuracy);
            }
            ++i;
        }
    }

    private void matchAnnotations(SearchPattern pattern, MatchLocator locator, ClassFile classFile, IBinaryType binaryType) throws CoreException {
        FieldInfo[] fields;
        MethodInfo[] methods;
        switch (pattern.kind) {
            case 4: {
                break;
            }
            case 256: {
                SearchPattern[] patterns = ((OrPattern)pattern).patterns;
                int i = 0;
                int length = patterns.length;
                while (i < length) {
                    this.matchAnnotations(patterns[i], locator, classFile, binaryType);
                    ++i;
                }
            }
            default: {
                return;
            }
        }
        TypeReferencePattern typeReferencePattern = (TypeReferencePattern)pattern;
        IBinaryAnnotation[] annotations = binaryType.getAnnotations();
        BinaryType classFileBinaryType = (BinaryType)classFile.getType();
        BinaryTypeBinding binaryTypeBinding = null;
        if (this.checkAnnotations(typeReferencePattern, annotations, binaryType.getTagBits())) {
            classFileBinaryType = new ResolvedBinaryType((JavaElement)classFileBinaryType.getParent(), classFileBinaryType.getElementName(), classFileBinaryType.getKey());
            TypeReferenceMatch match = new TypeReferenceMatch(classFileBinaryType, 0, -1, 0, false, locator.getParticipant(), locator.currentPossibleMatch.resource);
            match.setLocalElement(null);
            locator.report(match);
        }
        if ((methods = (MethodInfo[])binaryType.getMethods()) != null) {
            int i = 0;
            int max = methods.length;
            while (i < max) {
                MethodInfo method = methods[i];
                if (this.checkAnnotations(typeReferencePattern, method.getAnnotations(), method.getTagBits())) {
                    binaryTypeBinding = locator.cacheBinaryType(classFileBinaryType, binaryType);
                    IMethod methodHandle = classFileBinaryType.getMethod(new String(method.isConstructor() ? binaryTypeBinding.compoundName[binaryTypeBinding.compoundName.length - 1] : method.getSelector()), CharOperation.toStrings(Signature.getParameterTypes(ClassFileMatchLocator.convertClassFileFormat(method.getMethodDescriptor()))));
                    TypeReferenceMatch match = new TypeReferenceMatch(methodHandle, 0, -1, 0, false, locator.getParticipant(), locator.currentPossibleMatch.resource);
                    match.setLocalElement(null);
                    locator.report(match);
                }
                ++i;
            }
        }
        if ((fields = (FieldInfo[])binaryType.getFields()) != null) {
            int i = 0;
            int max = fields.length;
            while (i < max) {
                FieldInfo field = fields[i];
                if (this.checkAnnotations(typeReferencePattern, field.getAnnotations(), field.getTagBits())) {
                    IField fieldHandle = classFileBinaryType.getField(new String(field.getName()));
                    TypeReferenceMatch match = new TypeReferenceMatch(fieldHandle, 0, -1, 0, false, locator.getParticipant(), locator.currentPossibleMatch.resource);
                    match.setLocalElement(null);
                    locator.report(match);
                }
                ++i;
            }
        }
    }

    boolean matchBinary(SearchPattern pattern, Object binaryInfo, IBinaryType enclosingBinaryType) {
        switch (pattern.kind) {
            case 32: {
                return this.matchConstructor((ConstructorPattern)pattern, binaryInfo, enclosingBinaryType);
            }
            case 64: {
                return this.matchField((FieldPattern)pattern, binaryInfo, enclosingBinaryType);
            }
            case 128: {
                return this.matchMethod((MethodPattern)pattern, binaryInfo, enclosingBinaryType);
            }
            case 16: {
                return this.matchSuperTypeReference((SuperTypeReferencePattern)pattern, binaryInfo, enclosingBinaryType);
            }
            case 8: {
                return this.matchTypeDeclaration((TypeDeclarationPattern)pattern, binaryInfo, enclosingBinaryType);
            }
            case 256: {
                SearchPattern[] patterns = ((OrPattern)pattern).patterns;
                int i = 0;
                int length = patterns.length;
                while (i < length) {
                    if (this.matchBinary(patterns[i], binaryInfo, enclosingBinaryType)) {
                        return true;
                    }
                    ++i;
                }
                break;
            }
        }
        return false;
    }

    boolean matchConstructor(ConstructorPattern pattern, Object binaryInfo, IBinaryType enclosingBinaryType) {
        char[] methodDescriptor;
        if (!pattern.findDeclarations) {
            return false;
        }
        if (!(binaryInfo instanceof IBinaryMethod)) {
            return false;
        }
        IBinaryMethod method = (IBinaryMethod)binaryInfo;
        if (!method.isConstructor()) {
            return false;
        }
        if (!this.checkDeclaringType(enclosingBinaryType, pattern.declaringSimpleName, pattern.declaringQualification, pattern.isCaseSensitive(), pattern.isCamelCase())) {
            return false;
        }
        return pattern.parameterSimpleNames == null || this.checkParameters(methodDescriptor = ClassFileMatchLocator.convertClassFileFormat(method.getMethodDescriptor()), pattern.parameterSimpleNames, pattern.parameterQualifications, pattern.isCaseSensitive(), pattern.isCamelCase());
    }

    boolean matchField(FieldPattern pattern, Object binaryInfo, IBinaryType enclosingBinaryType) {
        if (!pattern.findDeclarations) {
            return false;
        }
        if (!(binaryInfo instanceof IBinaryField)) {
            return false;
        }
        IBinaryField field = (IBinaryField)binaryInfo;
        if (!pattern.matchesName(pattern.name, field.getName())) {
            return false;
        }
        if (!this.checkDeclaringType(enclosingBinaryType, pattern.declaringSimpleName, pattern.declaringQualification, pattern.isCaseSensitive(), pattern.isCamelCase())) {
            return false;
        }
        char[] fieldTypeSignature = Signature.toCharArray(ClassFileMatchLocator.convertClassFileFormat(field.getTypeName()));
        return this.checkTypeName(pattern.typeSimpleName, pattern.typeQualification, fieldTypeSignature, pattern.isCaseSensitive(), pattern.isCamelCase());
    }

    boolean matchMethod(MethodPattern pattern, Object binaryInfo, IBinaryType enclosingBinaryType) {
        boolean checkParameters;
        if (!pattern.findDeclarations) {
            return false;
        }
        if (!(binaryInfo instanceof IBinaryMethod)) {
            return false;
        }
        IBinaryMethod method = (IBinaryMethod)binaryInfo;
        if (!pattern.matchesName(pattern.selector, method.getSelector())) {
            return false;
        }
        if (!this.checkDeclaringType(enclosingBinaryType, pattern.declaringSimpleName, pattern.declaringQualification, pattern.isCaseSensitive(), pattern.isCamelCase())) {
            return false;
        }
        boolean checkReturnType = pattern.declaringSimpleName == null && (pattern.returnSimpleName != null || pattern.returnQualification != null);
        boolean bl = checkParameters = pattern.parameterSimpleNames != null;
        if (checkReturnType || checkParameters) {
            char[] returnTypeSignature;
            char[] methodDescriptor = ClassFileMatchLocator.convertClassFileFormat(method.getMethodDescriptor());
            if (checkReturnType && !this.checkTypeName(pattern.returnSimpleName, pattern.returnQualification, returnTypeSignature = Signature.toCharArray(Signature.getReturnType(methodDescriptor)), pattern.isCaseSensitive(), pattern.isCamelCase())) {
                return false;
            }
            if (checkParameters && !this.checkParameters(methodDescriptor, pattern.parameterSimpleNames, pattern.parameterQualifications, pattern.isCaseSensitive(), pattern.isCamelCase())) {
                return false;
            }
        }
        return true;
    }

    boolean matchSuperTypeReference(SuperTypeReferencePattern pattern, Object binaryInfo, IBinaryType enclosingBinaryType) {
        char[][] superInterfaces;
        char[] superclassName;
        char[] vmName;
        if (!(binaryInfo instanceof IBinaryType)) {
            return false;
        }
        IBinaryType type = (IBinaryType)binaryInfo;
        if (pattern.superRefKind != 1 && (vmName = type.getSuperclassName()) != null && this.checkTypeName(pattern.superSimpleName, pattern.superQualification, superclassName = ClassFileMatchLocator.convertClassFileFormat(vmName), pattern.isCaseSensitive(), pattern.isCamelCase())) {
            return true;
        }
        if (pattern.superRefKind != 2 && (superInterfaces = type.getInterfaceNames()) != null) {
            int i = 0;
            int max = superInterfaces.length;
            while (i < max) {
                char[] superInterfaceName = ClassFileMatchLocator.convertClassFileFormat(superInterfaces[i]);
                if (this.checkTypeName(pattern.superSimpleName, pattern.superQualification, superInterfaceName, pattern.isCaseSensitive(), pattern.isCamelCase())) {
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    boolean matchTypeDeclaration(TypeDeclarationPattern pattern, Object binaryInfo, IBinaryType enclosingBinaryType) {
        if (!(binaryInfo instanceof IBinaryType)) {
            return false;
        }
        IBinaryType type = (IBinaryType)binaryInfo;
        char[] fullyQualifiedTypeName = ClassFileMatchLocator.convertClassFileFormat(type.getName());
        boolean qualifiedPattern = pattern instanceof QualifiedTypeDeclarationPattern;
        if (pattern.enclosingTypeNames == null || qualifiedPattern) {
            char[] pkg;
            char[] simpleName = pattern.getMatchMode() == 1 ? CharOperation.concat(pattern.simpleName, IIndexConstants.ONE_STAR) : pattern.simpleName;
            char[] cArray = pkg = qualifiedPattern ? ((QualifiedTypeDeclarationPattern)pattern).qualification : pattern.pkg;
            if (!this.checkTypeName(simpleName, pkg, fullyQualifiedTypeName, pattern.isCaseSensitive(), pattern.isCamelCase())) {
                return false;
            }
        } else {
            char[] patternString;
            char[] enclosingTypeName = CharOperation.concatWith(pattern.enclosingTypeNames, '.');
            char[] cArray = patternString = pattern.pkg == null ? enclosingTypeName : CharOperation.concat(pattern.pkg, enclosingTypeName, '.');
            if (!this.checkTypeName(pattern.simpleName, patternString, fullyQualifiedTypeName, pattern.isCaseSensitive(), pattern.isCamelCase())) {
                return false;
            }
        }
        int kind = TypeDeclaration.kind(type.getModifiers());
        switch (pattern.typeSuffix) {
            case 'C': {
                return kind == 1;
            }
            case 'I': {
                return kind == 2;
            }
            case 'E': {
                return kind == 3;
            }
            case 'A': {
                return kind == 4;
            }
            case '\n': {
                return kind == 1 || kind == 2;
            }
            case '\t': {
                return kind == 1 || kind == 3;
            }
            case '\u000b': {
                return kind == 2 || kind == 4;
            }
        }
        return true;
    }
}

