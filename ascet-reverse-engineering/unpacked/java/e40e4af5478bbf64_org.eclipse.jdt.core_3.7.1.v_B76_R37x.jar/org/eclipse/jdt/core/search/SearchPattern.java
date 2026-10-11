/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.core.search;

import java.io.IOException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.IField;
import org.eclipse.jdt.core.IImportDeclaration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeParameter;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.search.IJavaSearchScope;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.env.AccessRuleSet;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.index.EntryResult;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.search.HierarchyScope;
import org.eclipse.jdt.internal.core.search.IndexQueryRequestor;
import org.eclipse.jdt.internal.core.search.JavaSearchScope;
import org.eclipse.jdt.internal.core.search.StringOperation;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.matching.AndPattern;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;
import org.eclipse.jdt.internal.core.search.matching.LocalVariablePattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.OrPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.QualifiedTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeParameterPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeReferencePattern;

public abstract class SearchPattern {
    public static final int R_EXACT_MATCH = 0;
    public static final int R_PREFIX_MATCH = 1;
    public static final int R_PATTERN_MATCH = 2;
    public static final int R_REGEXP_MATCH = 4;
    public static final int R_CASE_SENSITIVE = 8;
    public static final int R_ERASURE_MATCH = 16;
    public static final int R_EQUIVALENT_MATCH = 32;
    public static final int R_FULL_MATCH = 64;
    public static final int R_CAMELCASE_MATCH = 128;
    public static final int R_CAMELCASE_SAME_PART_COUNT_MATCH = 256;
    private static final int MODE_MASK = 391;
    private int matchRule;
    public IJavaElement focus;
    public int kind;
    public boolean mustResolve = true;

    public SearchPattern(int matchRule) {
        this.matchRule = matchRule;
        if ((matchRule & 0x30) == 0) {
            this.matchRule |= 0x40;
        }
        if ((matchRule & 0x80) != 0) {
            this.matchRule &= 0xFFFFFEFF;
            this.matchRule &= 0xFFFFFFFE;
        } else if ((matchRule & 0x100) != 0) {
            this.matchRule &= 0xFFFFFFFE;
        }
    }

    public void acceptMatch(String relativePath, String containerPath, char separator, SearchPattern pattern, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope) {
        this.acceptMatch(relativePath, containerPath, separator, pattern, requestor, participant, scope, null);
    }

    public void acceptMatch(String relativePath, String containerPath, char separator, SearchPattern pattern, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope, IProgressMonitor monitor) {
        if (scope instanceof JavaSearchScope) {
            JavaSearchScope javaSearchScope = (JavaSearchScope)scope;
            AccessRuleSet access = javaSearchScope.getAccessRuleSet(relativePath, containerPath);
            if (access != JavaSearchScope.NOT_ENCLOSED) {
                StringBuffer documentPath = new StringBuffer(containerPath.length() + 1 + relativePath.length());
                documentPath.append(containerPath);
                documentPath.append(separator);
                documentPath.append(relativePath);
                if (!requestor.acceptIndexMatch(documentPath.toString(), pattern, participant, access)) {
                    throw new OperationCanceledException();
                }
            }
        } else {
            boolean encloses;
            StringBuffer buffer = new StringBuffer(containerPath.length() + 1 + relativePath.length());
            buffer.append(containerPath);
            buffer.append(separator);
            buffer.append(relativePath);
            String documentPath = buffer.toString();
            boolean bl = encloses = scope instanceof HierarchyScope ? ((HierarchyScope)scope).encloses(documentPath, monitor) : scope.encloses(documentPath);
            if (encloses && !requestor.acceptIndexMatch(documentPath, pattern, participant, null)) {
                throw new OperationCanceledException();
            }
        }
    }

    public SearchPattern currentPattern() {
        return this;
    }

    public static final boolean camelCaseMatch(String pattern, String name) {
        if (pattern == null) {
            return true;
        }
        if (name == null) {
            return false;
        }
        return SearchPattern.camelCaseMatch(pattern, 0, pattern.length(), name, 0, name.length(), false);
    }

    public static final boolean camelCaseMatch(String pattern, String name, boolean samePartCount) {
        if (pattern == null) {
            return true;
        }
        if (name == null) {
            return false;
        }
        return SearchPattern.camelCaseMatch(pattern, 0, pattern.length(), name, 0, name.length(), samePartCount);
    }

    public static final boolean camelCaseMatch(String pattern, int patternStart, int patternEnd, String name, int nameStart, int nameEnd) {
        return SearchPattern.camelCaseMatch(pattern, patternStart, patternEnd, name, nameStart, nameEnd, false);
    }

    public static final boolean camelCaseMatch(String pattern, int patternStart, int patternEnd, String name, int nameStart, int nameEnd, boolean samePartCount) {
        return StringOperation.getCamelCaseMatchingRegions(pattern, patternStart, patternEnd, name, nameStart, nameEnd, samePartCount) != null;
    }

    public static final int[] getMatchingRegions(String pattern, String name, int matchRule) {
        if (name == null) {
            return null;
        }
        int nameLength = name.length();
        if (pattern == null) {
            int[] nArray = new int[2];
            nArray[1] = nameLength;
            return nArray;
        }
        int patternLength = pattern.length();
        boolean countMatch = false;
        switch (matchRule) {
            case 0: {
                if (patternLength != nameLength || !pattern.equalsIgnoreCase(name)) break;
                int[] nArray = new int[2];
                nArray[1] = patternLength;
                return nArray;
            }
            case 8: {
                if (patternLength != nameLength || !pattern.equals(name)) break;
                int[] nArray = new int[2];
                nArray[1] = patternLength;
                return nArray;
            }
            case 1: {
                if (patternLength > nameLength || !name.substring(0, patternLength).equalsIgnoreCase(pattern)) break;
                int[] nArray = new int[2];
                nArray[1] = patternLength;
                return nArray;
            }
            case 9: {
                if (!name.startsWith(pattern)) break;
                int[] nArray = new int[2];
                nArray[1] = patternLength;
                return nArray;
            }
            case 256: {
                countMatch = true;
            }
            case 128: {
                if (patternLength > nameLength) break;
                int[] regions = StringOperation.getCamelCaseMatchingRegions(pattern, 0, patternLength, name, 0, nameLength, countMatch);
                if (regions != null) {
                    return regions;
                }
                if (!name.substring(0, patternLength).equalsIgnoreCase(pattern)) break;
                int[] nArray = new int[2];
                nArray[1] = patternLength;
                return nArray;
            }
            case 264: {
                countMatch = true;
            }
            case 136: {
                if (patternLength > nameLength) break;
                return StringOperation.getCamelCaseMatchingRegions(pattern, 0, patternLength, name, 0, nameLength, countMatch);
            }
            case 2: {
                return StringOperation.getPatternMatchingRegions(pattern, 0, patternLength, name, 0, nameLength, false);
            }
            case 10: {
                return StringOperation.getPatternMatchingRegions(pattern, 0, patternLength, name, 0, nameLength, true);
            }
        }
        return null;
    }

    public static SearchPattern createAndPattern(SearchPattern leftPattern, SearchPattern rightPattern) {
        return new AndPattern(leftPattern, rightPattern);
    }

    /*
     * Unable to fully structure code
     */
    private static SearchPattern createFieldPattern(String patternString, int limitTo, int matchRule) {
        scanner = new Scanner(false, true, false, 0x2F0000L, null, null, true);
        scanner.setSource(patternString.toCharArray());
        lastToken = -1;
        declaringType = null;
        fieldName = null;
        type = null;
        mode = 1;
        try {
            token = scanner.getNextToken();
            if (true) ** GOTO lbl47
        }
        catch (InvalidInputException v0) {
            return null;
        }
        do {
            block2 : switch (mode) {
                case 1: {
                    switch (token) {
                        case 3: {
                            if (declaringType == null) {
                                if (fieldName == null) {
                                    return null;
                                }
                                declaringType = fieldName;
                            } else {
                                tokenSource = scanner.getCurrentTokenString();
                                declaringType = String.valueOf(declaringType) + tokenSource + fieldName;
                            }
                            fieldName = null;
                            break block2;
                        }
                        case 1000: {
                            if (1000 == lastToken || 3 == lastToken) break block2;
                            mode = 2;
                            break block2;
                        }
                    }
                    if (fieldName == null) {
                        fieldName = scanner.getCurrentTokenString();
                        break;
                    }
                    fieldName = String.valueOf(fieldName) + scanner.getCurrentTokenString();
                    break;
                }
                case 2: {
                    switch (token) {
                        case 1000: {
                            break block2;
                        }
                    }
                    type = type == null ? scanner.getCurrentTokenString() : String.valueOf(type) + scanner.getCurrentTokenString();
                }
            }
            lastToken = token;
            try {
                token = scanner.getNextToken();
            }
            catch (InvalidInputException v1) {
                return null;
            }
lbl47:
            // 2 sources

        } while (token != 69);
        if (fieldName == null) {
            return null;
        }
        fieldNameChars = fieldName.toCharArray();
        if (fieldNameChars.length == 1 && fieldNameChars[0] == '*') {
            fieldNameChars = null;
        }
        declaringTypeQualification = null;
        declaringTypeSimpleName = null;
        typeQualification = null;
        typeSimpleName = null;
        if (declaringType != null) {
            declaringTypePart = declaringType.toCharArray();
            lastDotPosition = CharOperation.lastIndexOf('.', declaringTypePart);
            if (lastDotPosition >= 0) {
                declaringTypeQualification = CharOperation.subarray(declaringTypePart, 0, lastDotPosition);
                if (declaringTypeQualification.length == 1 && declaringTypeQualification[0] == '*') {
                    declaringTypeQualification = null;
                }
                declaringTypeSimpleName = CharOperation.subarray(declaringTypePart, lastDotPosition + 1, declaringTypePart.length);
            } else {
                declaringTypeSimpleName = declaringTypePart;
            }
            if (declaringTypeSimpleName.length == 1 && declaringTypeSimpleName[0] == '*') {
                declaringTypeSimpleName = null;
            }
        }
        if (type != null) {
            typePart = type.toCharArray();
            lastDotPosition = CharOperation.lastIndexOf('.', typePart);
            if (lastDotPosition >= 0) {
                typeQualification = CharOperation.subarray(typePart, 0, lastDotPosition);
                typeQualification = typeQualification.length == 1 && typeQualification[0] == '*' ? (char[])null : CharOperation.concat(IIndexConstants.ONE_STAR, typeQualification);
                typeSimpleName = CharOperation.subarray(typePart, lastDotPosition + 1, typePart.length);
            } else {
                typeSimpleName = typePart;
            }
            if (typeSimpleName.length == 1 && typeSimpleName[0] == '*') {
                typeSimpleName = null;
            }
        }
        return new FieldPattern(fieldNameChars, declaringTypeQualification, declaringTypeSimpleName, typeQualification, typeSimpleName, limitTo, matchRule);
    }

    /*
     * Unable to fully structure code
     * Could not resolve type clashes
     */
    private static SearchPattern createMethodOrConstructorPattern(String patternString, int limitTo, int matchRule, boolean isConstructor) {
        scanner = new Scanner(false, true, false, 0x2F0000L, null, null, true);
        scanner.setSource(patternString.toCharArray());
        lastToken = -1;
        declaringType = null;
        selector = null;
        parameterType = null;
        parameterTypes = null;
        typeArguments = null;
        typeArgumentsString = null;
        parameterCount = -1;
        returnType = null;
        foundClosingParenthesis = false;
        mode = 1;
        argCount = 0;
        try {
            token = scanner.getNextToken();
            if (true) ** GOTO lbl167
        }
        catch (InvalidInputException v0) {
            return null;
        }
        do {
            block5 : switch (mode) {
                case 1: {
                    if (argCount == 0) {
                        switch (token) {
                            case 7: {
                                ++argCount;
                                if (selector == null || lastToken == 3) {
                                    typeArgumentsString = scanner.getCurrentTokenString();
                                    mode = 2;
                                    break block5;
                                }
                                declaringType = declaringType == null ? selector : String.valueOf(declaringType) + '.' + selector;
                                declaringType = String.valueOf(declaringType) + scanner.getCurrentTokenString();
                                selector = null;
                                break block5;
                            }
                            case 3: {
                                if (!isConstructor && typeArgumentsString != null) {
                                    return null;
                                }
                                if (declaringType == null) {
                                    if (selector == null) {
                                        return null;
                                    }
                                    declaringType = selector;
                                } else if (selector != null) {
                                    declaringType = String.valueOf(declaringType) + scanner.getCurrentTokenString() + selector;
                                }
                                selector = null;
                                break block5;
                            }
                            case 29: {
                                parameterTypes = new String[5];
                                parameterCount = 0;
                                mode = 3;
                                break block5;
                            }
                            case 1000: {
                                switch (lastToken) {
                                    case 3: 
                                    case 10: 
                                    case 11: 
                                    case 12: 
                                    case 1000: {
                                        break block5;
                                    }
                                }
                                mode = 4;
                                break block5;
                            }
                        }
                        if (selector == null) {
                            selector = scanner.getCurrentTokenString();
                            break;
                        }
                        selector = String.valueOf(selector) + scanner.getCurrentTokenString();
                        break;
                    }
                    if (declaringType == null) {
                        return null;
                    }
                    switch (token) {
                        case 10: 
                        case 11: 
                        case 12: {
                            --argCount;
                            break;
                        }
                        case 7: {
                            ++argCount;
                        }
                    }
                    declaringType = String.valueOf(declaringType) + scanner.getCurrentTokenString();
                    break;
                }
                case 2: {
                    if (typeArgumentsString == null) {
                        return null;
                    }
                    typeArgumentsString = String.valueOf(typeArgumentsString) + scanner.getCurrentTokenString();
                    switch (token) {
                        case 10: 
                        case 11: 
                        case 12: {
                            if (--argCount != 0) break;
                            pseudoType = "Type" + typeArgumentsString;
                            typeArguments = Signature.getTypeArguments(Signature.createTypeSignature(pseudoType, false).toCharArray());
                            mode = 1;
                            break;
                        }
                        case 7: {
                            ++argCount;
                        }
                    }
                    break;
                }
                case 3: {
                    if (argCount == 0) {
                        switch (token) {
                            case 1000: {
                                break block5;
                            }
                            case 30: {
                                if (parameterType == null) {
                                    return null;
                                }
                                if (parameterTypes != null) {
                                    if (parameterTypes.length == parameterCount) {
                                        v1 = parameterTypes;
                                        parameterTypes = new String[parameterCount * 2];
                                        System.arraycopy(v1, 0, parameterTypes, 0, parameterCount);
                                    }
                                    parameterTypes[parameterCount++] = parameterType;
                                }
                                parameterType = null;
                                break block5;
                            }
                            case 28: {
                                foundClosingParenthesis = true;
                                if (parameterType != null && parameterTypes != null) {
                                    if (parameterTypes.length == parameterCount) {
                                        v2 = parameterTypes;
                                        parameterTypes = new String[parameterCount * 2];
                                        System.arraycopy(v2, 0, parameterTypes, 0, parameterCount);
                                    }
                                    parameterTypes[parameterCount++] = parameterType;
                                }
                                mode = isConstructor != false ? 2 : 4;
                                break block5;
                            }
                            case 7: {
                                ++argCount;
                                if (parameterType != null) break;
                                return null;
                            }
                        }
                        if (parameterType == null) {
                            parameterType = scanner.getCurrentTokenString();
                            break;
                        }
                        parameterType = String.valueOf(parameterType) + scanner.getCurrentTokenString();
                        break;
                    }
                    if (parameterType == null) {
                        return null;
                    }
                    switch (token) {
                        case 10: 
                        case 11: 
                        case 12: {
                            --argCount;
                            break;
                        }
                        case 7: {
                            ++argCount;
                        }
                    }
                    parameterType = String.valueOf(parameterType) + scanner.getCurrentTokenString();
                    break;
                }
                case 4: {
                    if (argCount == 0) {
                        switch (token) {
                            case 1000: {
                                break block5;
                            }
                            case 29: {
                                parameterTypes = new String[5];
                                parameterCount = 0;
                                mode = 3;
                                break block5;
                            }
                            case 7: {
                                ++argCount;
                                if (returnType != null) break;
                                return null;
                            }
                        }
                        if (returnType == null) {
                            returnType = scanner.getCurrentTokenString();
                            break;
                        }
                        returnType = String.valueOf(returnType) + scanner.getCurrentTokenString();
                        break;
                    }
                    if (returnType == null) {
                        return null;
                    }
                    switch (token) {
                        case 10: 
                        case 11: 
                        case 12: {
                            --argCount;
                            break;
                        }
                        case 7: {
                            ++argCount;
                        }
                    }
                    returnType = String.valueOf(returnType) + scanner.getCurrentTokenString();
                }
            }
            lastToken = token;
            try {
                token = scanner.getNextToken();
            }
            catch (InvalidInputException v3) {
                return null;
            }
lbl167:
            // 2 sources

        } while (token != 69);
        if (parameterCount > 0 && !foundClosingParenthesis) {
            return null;
        }
        if (argCount > 0) {
            return null;
        }
        selectorChars = null;
        if (isConstructor) {
            if (declaringType == null) {
                declaringType = selector;
            } else if (selector != null) {
                declaringType = String.valueOf(declaringType) + '.' + selector;
            }
        } else {
            if (selector == null) {
                return null;
            }
            selectorChars = selector.toCharArray();
            if (selectorChars.length == 1 && selectorChars[0] == '*') {
                selectorChars = null;
            }
        }
        declaringTypeQualification = null;
        declaringTypeSimpleName = null;
        returnTypeQualification = null;
        returnTypeSimpleName = null;
        parameterTypeQualifications /* !! */  = null;
        parameterTypeSimpleNames /* !! */  = null;
        declaringTypeSignature = null;
        returnTypeSignature = null;
        parameterTypeSignatures = null;
        if (declaringType != null) {
            declaringTypePart = null;
            try {
                declaringTypeSignature = Signature.createTypeSignature(declaringType, false);
                declaringTypePart = declaringTypeSignature.indexOf(60) < 0 ? declaringType.toCharArray() : Signature.toCharArray(Signature.getTypeErasure(declaringTypeSignature.toCharArray()));
            }
            catch (IllegalArgumentException v4) {
                return null;
            }
            lastDotPosition = CharOperation.lastIndexOf('.', declaringTypePart);
            if (lastDotPosition >= 0) {
                declaringTypeQualification = CharOperation.subarray(declaringTypePart, 0, lastDotPosition);
                if (declaringTypeQualification.length == 1 && declaringTypeQualification[0] == '*') {
                    declaringTypeQualification = null;
                }
                declaringTypeSimpleName = CharOperation.subarray(declaringTypePart, lastDotPosition + 1, declaringTypePart.length);
            } else {
                declaringTypeSimpleName = declaringTypePart;
            }
            if (declaringTypeSimpleName.length == 1 && declaringTypeSimpleName[0] == '*') {
                declaringTypeSimpleName = null;
            }
        }
        if (parameterCount >= 0) {
            parameterTypeQualifications /* !! */  = new char[parameterCount][];
            parameterTypeSimpleNames /* !! */  = new char[parameterCount][];
            parameterTypeSignatures = new String[parameterCount];
            i = 0;
            while (i < parameterCount) {
                parameterTypePart = null;
                try {
                    if (parameterTypes != null) {
                        parameterTypeSignatures[i] = Signature.createTypeSignature(parameterTypes[i], false);
                        parameterTypePart = parameterTypeSignatures[i].indexOf(60) < 0 ? parameterTypes[i].toCharArray() : Signature.toCharArray(Signature.getTypeErasure(parameterTypeSignatures[i].toCharArray()));
                    }
                }
                catch (IllegalArgumentException v5) {
                    return null;
                }
                v6 = lastDotPosition = parameterTypePart == null ? -1 : CharOperation.lastIndexOf('.', parameterTypePart);
                if (parameterTypePart != null && lastDotPosition >= 0) {
                    parameterTypeQualifications /* !! */ [i] = CharOperation.subarray(parameterTypePart, 0, lastDotPosition);
                    parameterTypeQualifications /* !! */ [i] = (char[])(parameterTypeQualifications /* !! */ [i].length == 1 && parameterTypeQualifications /* !! */ [i][0] == '*' ? null : CharOperation.concat(IIndexConstants.ONE_STAR, parameterTypeQualifications /* !! */ [i]));
                    parameterTypeSimpleNames /* !! */ [i] = CharOperation.subarray(parameterTypePart, lastDotPosition + 1, parameterTypePart.length);
                } else {
                    parameterTypeQualifications /* !! */ [i] = null;
                    parameterTypeSimpleNames /* !! */ [i] = parameterTypePart;
                }
                if (parameterTypeSimpleNames /* !! */ [i].length == 1 && parameterTypeSimpleNames /* !! */ [i][0] == '*') {
                    parameterTypeSimpleNames /* !! */ [i] = null;
                }
                ++i;
            }
        }
        if (returnType != null) {
            returnTypePart = null;
            try {
                returnTypeSignature = Signature.createTypeSignature(returnType, false);
                returnTypePart = returnTypeSignature.indexOf(60) < 0 ? returnType.toCharArray() : Signature.toCharArray(Signature.getTypeErasure(returnTypeSignature.toCharArray()));
            }
            catch (IllegalArgumentException v7) {
                return null;
            }
            lastDotPosition = CharOperation.lastIndexOf('.', returnTypePart);
            if (lastDotPosition >= 0) {
                returnTypeQualification = CharOperation.subarray(returnTypePart, 0, lastDotPosition);
                returnTypeQualification = returnTypeQualification.length == 1 && returnTypeQualification[0] == '*' ? (char[])null : CharOperation.concat(IIndexConstants.ONE_STAR, returnTypeQualification);
                returnTypeSimpleName = CharOperation.subarray(returnTypePart, lastDotPosition + 1, returnTypePart.length);
            } else {
                returnTypeSimpleName = returnTypePart;
            }
            if (returnTypeSimpleName.length == 1 && returnTypeSimpleName[0] == '*') {
                returnTypeSimpleName = null;
            }
        }
        if (isConstructor) {
            return new ConstructorPattern(declaringTypeSimpleName, declaringTypeQualification, declaringTypeSignature, parameterTypeQualifications /* !! */ , parameterTypeSimpleNames /* !! */ , parameterTypeSignatures, typeArguments, limitTo, matchRule);
        }
        return new MethodPattern(selectorChars, declaringTypeQualification, declaringTypeSimpleName, declaringTypeSignature, returnTypeQualification, returnTypeSimpleName, returnTypeSignature, parameterTypeQualifications /* !! */ , parameterTypeSimpleNames /* !! */ , parameterTypeSignatures, typeArguments, limitTo, matchRule);
    }

    public static SearchPattern createOrPattern(SearchPattern leftPattern, SearchPattern rightPattern) {
        return new OrPattern(leftPattern, rightPattern);
    }

    private static SearchPattern createPackagePattern(String patternString, int limitTo, int matchRule) {
        switch (limitTo) {
            case 0: {
                return new PackageDeclarationPattern(patternString.toCharArray(), matchRule);
            }
            case 2: {
                return new PackageReferencePattern(patternString.toCharArray(), matchRule);
            }
            case 3: {
                return new OrPattern(new PackageDeclarationPattern(patternString.toCharArray(), matchRule), new PackageReferencePattern(patternString.toCharArray(), matchRule));
            }
        }
        return null;
    }

    public static SearchPattern createPattern(String stringPattern, int searchFor, int limitTo, int matchRule) {
        if (stringPattern == null || stringPattern.length() == 0) {
            return null;
        }
        if ((matchRule = SearchPattern.validateMatchRule(stringPattern, matchRule)) == -1) {
            return null;
        }
        limitTo &= 0xFFFFFFCF;
        switch (searchFor) {
            case 5: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, 'C');
            }
            case 10: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, '\n');
            }
            case 9: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, '\t');
            }
            case 6: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, 'I');
            }
            case 11: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, '\u000b');
            }
            case 7: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, 'E');
            }
            case 8: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, 'A');
            }
            case 0: {
                return SearchPattern.createTypePattern(stringPattern, limitTo, matchRule, '\u0000');
            }
            case 1: {
                return SearchPattern.createMethodOrConstructorPattern(stringPattern, limitTo, matchRule, false);
            }
            case 3: {
                return SearchPattern.createMethodOrConstructorPattern(stringPattern, limitTo, matchRule, true);
            }
            case 4: {
                return SearchPattern.createFieldPattern(stringPattern, limitTo, matchRule);
            }
            case 2: {
                return SearchPattern.createPackagePattern(stringPattern, limitTo, matchRule);
            }
        }
        return null;
    }

    public static SearchPattern createPattern(IJavaElement element, int limitTo) {
        return SearchPattern.createPattern(element, limitTo, 24);
    }

    public static SearchPattern createPattern(IJavaElement element, int limitTo, int matchRule) {
        SearchPattern searchPattern = null;
        boolean ignoreDeclaringType = false;
        boolean ignoreReturnType = false;
        int maskedLimitTo = limitTo & 0xFFFFFFCF;
        if (maskedLimitTo == 0 || maskedLimitTo == 3) {
            ignoreDeclaringType = (limitTo & 0x10) != 0;
            boolean bl = ignoreReturnType = (limitTo & 0x20) != 0;
        }
        if ((matchRule = SearchPattern.validateMatchRule(null, matchRule)) == -1) {
            return null;
        }
        char[] declaringSimpleName = null;
        char[] declaringQualification = null;
        switch (element.getElementType()) {
            case 8: {
                IField field = (IField)element;
                if (!ignoreDeclaringType) {
                    IType declaringClass = field.getDeclaringType();
                    declaringSimpleName = declaringClass.getElementName().toCharArray();
                    declaringQualification = declaringClass.getPackageFragment().getElementName().toCharArray();
                    char[][] enclosingNames = SearchPattern.enclosingTypeNames(declaringClass);
                    if (enclosingNames.length > 0) {
                        declaringQualification = CharOperation.concat(declaringQualification, CharOperation.concatWith(enclosingNames, '.'), '.');
                    }
                }
                char[] name = field.getElementName().toCharArray();
                char[] typeSimpleName = null;
                char[] typeQualification = null;
                String typeSignature = null;
                if (!ignoreReturnType) {
                    try {
                        typeSignature = field.getTypeSignature();
                        char[] signature = typeSignature.toCharArray();
                        char[] typeErasure = Signature.toCharArray(Signature.getTypeErasure(signature));
                        CharOperation.replace(typeErasure, '$', '.');
                        int lastDot = CharOperation.lastIndexOf('.', typeErasure);
                        if (lastDot == -1) {
                            typeSimpleName = typeErasure;
                        } else {
                            typeSimpleName = CharOperation.subarray(typeErasure, lastDot + 1, typeErasure.length);
                            typeQualification = CharOperation.subarray(typeErasure, 0, lastDot);
                            if (!field.isBinary()) {
                                typeQualification = CharOperation.concat(IIndexConstants.ONE_STAR, typeQualification);
                            }
                        }
                    }
                    catch (JavaModelException javaModelException) {
                        return null;
                    }
                }
                searchPattern = new FieldPattern(name, declaringQualification, declaringSimpleName, typeQualification, typeSimpleName, typeSignature, limitTo, matchRule);
                break;
            }
            case 13: {
                String elementName = element.getElementName();
                int lastDot = elementName.lastIndexOf(46);
                if (lastDot == -1) {
                    return null;
                }
                IImportDeclaration importDecl = (IImportDeclaration)element;
                if (importDecl.isOnDemand()) {
                    searchPattern = SearchPattern.createPackagePattern(elementName.substring(0, lastDot), maskedLimitTo, matchRule);
                    break;
                }
                searchPattern = SearchPattern.createTypePattern(elementName.substring(lastDot + 1).toCharArray(), elementName.substring(0, lastDot).toCharArray(), null, null, null, maskedLimitTo, matchRule);
                break;
            }
            case 14: {
                LocalVariable localVar = (LocalVariable)element;
                searchPattern = new LocalVariablePattern(localVar, limitTo, matchRule);
                break;
            }
            case 15: {
                ITypeParameter typeParam = (ITypeParameter)element;
                boolean findParamDeclarations = true;
                boolean findParamReferences = true;
                switch (maskedLimitTo) {
                    case 0: {
                        findParamReferences = false;
                        break;
                    }
                    case 2: {
                        findParamDeclarations = false;
                    }
                }
                searchPattern = new TypeParameterPattern(findParamDeclarations, findParamReferences, typeParam, matchRule);
                break;
            }
            case 9: {
                int lastDot;
                boolean isConstructor;
                IMethod method = (IMethod)element;
                try {
                    isConstructor = method.isConstructor();
                }
                catch (JavaModelException javaModelException) {
                    return null;
                }
                IType declaringClass = method.getDeclaringType();
                if (ignoreDeclaringType) {
                    if (isConstructor) {
                        declaringSimpleName = declaringClass.getElementName().toCharArray();
                    }
                } else {
                    declaringSimpleName = declaringClass.getElementName().toCharArray();
                    declaringQualification = declaringClass.getPackageFragment().getElementName().toCharArray();
                    char[][] enclosingNames = SearchPattern.enclosingTypeNames(declaringClass);
                    if (enclosingNames.length > 0) {
                        declaringQualification = CharOperation.concat(declaringQualification, CharOperation.concatWith(enclosingNames, '.'), '.');
                    }
                }
                char[] selector = method.getElementName().toCharArray();
                char[] returnSimpleName = null;
                char[] returnQualification = null;
                String returnSignature = null;
                if (!ignoreReturnType) {
                    try {
                        returnSignature = method.getReturnType();
                        char[] signature = returnSignature.toCharArray();
                        char[] returnErasure = Signature.toCharArray(Signature.getTypeErasure(signature));
                        CharOperation.replace(returnErasure, '$', '.');
                        lastDot = CharOperation.lastIndexOf('.', returnErasure);
                        if (lastDot == -1) {
                            returnSimpleName = returnErasure;
                        } else {
                            returnSimpleName = CharOperation.subarray(returnErasure, lastDot + 1, returnErasure.length);
                            returnQualification = CharOperation.subarray(returnErasure, 0, lastDot);
                            if (!method.isBinary()) {
                                CharOperation.concat(IIndexConstants.ONE_STAR, returnQualification);
                            }
                        }
                    }
                    catch (JavaModelException javaModelException) {
                        return null;
                    }
                }
                String[] parameterTypes = method.getParameterTypes();
                int paramCount = parameterTypes.length;
                char[][] parameterSimpleNames = new char[paramCount][];
                char[][] parameterQualifications = new char[paramCount][];
                String[] parameterSignatures = new String[paramCount];
                int i = 0;
                while (i < paramCount) {
                    parameterSignatures[i] = parameterTypes[i];
                    char[] signature = parameterSignatures[i].toCharArray();
                    char[] paramErasure = Signature.toCharArray(Signature.getTypeErasure(signature));
                    CharOperation.replace(paramErasure, '$', '.');
                    lastDot = CharOperation.lastIndexOf('.', paramErasure);
                    if (lastDot == -1) {
                        parameterSimpleNames[i] = paramErasure;
                        parameterQualifications[i] = null;
                    } else {
                        parameterSimpleNames[i] = CharOperation.subarray(paramErasure, lastDot + 1, paramErasure.length);
                        parameterQualifications[i] = CharOperation.subarray(paramErasure, 0, lastDot);
                        if (!method.isBinary()) {
                            CharOperation.concat(IIndexConstants.ONE_STAR, parameterQualifications[i]);
                        }
                    }
                    ++i;
                }
                if (isConstructor) {
                    searchPattern = new ConstructorPattern(declaringSimpleName, declaringQualification, parameterQualifications, parameterSimpleNames, parameterSignatures, method, limitTo, matchRule);
                    break;
                }
                searchPattern = new MethodPattern(selector, declaringQualification, declaringSimpleName, returnQualification, returnSimpleName, returnSignature, parameterQualifications, parameterSimpleNames, parameterSignatures, method, limitTo, matchRule);
                break;
            }
            case 7: {
                IType type = (IType)element;
                searchPattern = SearchPattern.createTypePattern(type.getElementName().toCharArray(), type.getPackageFragment().getElementName().toCharArray(), ignoreDeclaringType ? null : SearchPattern.enclosingTypeNames(type), null, type, maskedLimitTo, matchRule);
                break;
            }
            case 4: 
            case 11: {
                searchPattern = SearchPattern.createPackagePattern(element.getElementName(), maskedLimitTo, matchRule);
            }
        }
        if (searchPattern != null) {
            MatchLocator.setFocus(searchPattern, element);
        }
        return searchPattern;
    }

    private static SearchPattern createTypePattern(char[] simpleName, char[] packageName, char[][] enclosingTypeNames, String typeSignature, IType type, int limitTo, int matchRule) {
        switch (limitTo) {
            case 0: {
                return new TypeDeclarationPattern(packageName, enclosingTypeNames, simpleName, '\u0000', matchRule);
            }
            case 2: {
                if (type != null) {
                    return new TypeReferencePattern(CharOperation.concatWith(packageName, enclosingTypeNames, '.'), simpleName, type, matchRule);
                }
                return new TypeReferencePattern(CharOperation.concatWith(packageName, enclosingTypeNames, '.'), simpleName, typeSignature, matchRule);
            }
            case 1: {
                return new SuperTypeReferencePattern(CharOperation.concatWith(packageName, enclosingTypeNames, '.'), simpleName, 1, matchRule);
            }
            case 3: {
                return new OrPattern(new TypeDeclarationPattern(packageName, enclosingTypeNames, simpleName, '\u0000', matchRule), type != null ? new TypeReferencePattern(CharOperation.concatWith(packageName, enclosingTypeNames, '.'), simpleName, type, matchRule) : new TypeReferencePattern(CharOperation.concatWith(packageName, enclosingTypeNames, '.'), simpleName, typeSignature, matchRule));
            }
        }
        if (type != null) {
            return new TypeReferencePattern(CharOperation.concatWith(packageName, enclosingTypeNames, '.'), simpleName, type, limitTo, matchRule);
        }
        return null;
    }

    private static SearchPattern createTypePattern(String patternString, int limitTo, int matchRule, char indexSuffix) {
        int token;
        Scanner scanner = new Scanner(false, true, false, 0x2F0000L, null, null, true);
        scanner.setSource(patternString.toCharArray());
        String type = null;
        try {
            token = scanner.getNextToken();
        }
        catch (InvalidInputException invalidInputException) {
            return null;
        }
        int argCount = 0;
        while (token != 69) {
            if (argCount == 0) {
                switch (token) {
                    case 1000: {
                        break;
                    }
                    case 7: {
                        ++argCount;
                    }
                    default: {
                        if (type == null) {
                            type = scanner.getCurrentTokenString();
                            break;
                        }
                        type = String.valueOf(type) + scanner.getCurrentTokenString();
                        break;
                    }
                }
            } else {
                switch (token) {
                    case 10: 
                    case 11: 
                    case 12: {
                        --argCount;
                        break;
                    }
                    case 7: {
                        ++argCount;
                    }
                }
                if (type == null) {
                    return null;
                }
                type = String.valueOf(type) + scanner.getCurrentTokenString();
            }
            try {
                token = scanner.getNextToken();
            }
            catch (InvalidInputException invalidInputException) {
                return null;
            }
        }
        if (type == null) {
            return null;
        }
        String typeSignature = null;
        char[] qualificationChars = null;
        char[] typeChars = null;
        char[] typePart = null;
        try {
            typeSignature = Signature.createTypeSignature(type, false);
            typePart = typeSignature.indexOf(60) < 0 ? type.toCharArray() : Signature.toCharArray(Signature.getTypeErasure(typeSignature.toCharArray()));
        }
        catch (IllegalArgumentException illegalArgumentException) {
            return null;
        }
        int lastDotPosition = CharOperation.lastIndexOf('.', typePart);
        if (lastDotPosition >= 0) {
            qualificationChars = CharOperation.subarray(typePart, 0, lastDotPosition);
            if (qualificationChars.length == 1 && qualificationChars[0] == '*') {
                qualificationChars = null;
            }
            typeChars = CharOperation.subarray(typePart, lastDotPosition + 1, typePart.length);
        } else {
            typeChars = typePart;
        }
        if (typeChars.length == 1 && typeChars[0] == '*') {
            typeChars = null;
        }
        switch (limitTo) {
            case 0: {
                return new QualifiedTypeDeclarationPattern(qualificationChars, typeChars, indexSuffix, matchRule);
            }
            case 2: {
                return new TypeReferencePattern(qualificationChars, typeChars, typeSignature, indexSuffix, matchRule);
            }
            case 1: {
                return new SuperTypeReferencePattern(qualificationChars, typeChars, 1, indexSuffix, matchRule);
            }
            case 3: {
                return new OrPattern(new QualifiedTypeDeclarationPattern(qualificationChars, typeChars, indexSuffix, matchRule), new TypeReferencePattern(qualificationChars, typeChars, typeSignature, indexSuffix, matchRule));
            }
        }
        return new TypeReferencePattern(qualificationChars, typeChars, typeSignature, limitTo, indexSuffix, matchRule);
    }

    private static char[][] enclosingTypeNames(IType type) {
        IJavaElement parent = type.getParent();
        switch (parent.getElementType()) {
            case 6: {
                IType declaringType = type.getDeclaringType();
                if (declaringType == null) {
                    return CharOperation.NO_CHAR_CHAR;
                }
                return CharOperation.arrayConcat(SearchPattern.enclosingTypeNames(declaringType), declaringType.getElementName().toCharArray());
            }
            case 5: {
                return CharOperation.NO_CHAR_CHAR;
            }
            case 8: 
            case 9: 
            case 10: {
                IType declaringClass = ((IMember)parent).getDeclaringType();
                return CharOperation.arrayConcat(SearchPattern.enclosingTypeNames(declaringClass), new char[][]{declaringClass.getElementName().toCharArray(), IIndexConstants.ONE_STAR});
            }
            case 7: {
                return CharOperation.arrayConcat(SearchPattern.enclosingTypeNames((IType)parent), parent.getElementName().toCharArray());
            }
        }
        return null;
    }

    public void decodeIndexKey(char[] key) {
    }

    public void findIndexMatches(Index index, IndexQueryRequestor requestor, SearchParticipant participant, IJavaSearchScope scope, IProgressMonitor monitor) throws IOException {
        if (monitor != null && monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
        try {
            index.startQuery();
            SearchPattern pattern = this.currentPattern();
            EntryResult[] entries = pattern.queryIn(index);
            if (entries == null) {
                return;
            }
            SearchPattern decodedResult = pattern.getBlankPattern();
            String containerPath = index.containerPath;
            char separator = index.separator;
            int i = 0;
            int l = entries.length;
            while (i < l) {
                if (monitor != null && monitor.isCanceled()) {
                    throw new OperationCanceledException();
                }
                EntryResult entry = entries[i];
                decodedResult.decodeIndexKey(entry.getWord());
                if (pattern.matchesDecodedKey(decodedResult)) {
                    String[] names = entry.getDocumentNames(index);
                    int j = 0;
                    int n = names.length;
                    while (j < n) {
                        this.acceptMatch(names[j], containerPath, separator, decodedResult, requestor, participant, scope, monitor);
                        ++j;
                    }
                }
                ++i;
            }
        }
        finally {
            index.stopQuery();
        }
    }

    public abstract SearchPattern getBlankPattern();

    public char[] getIndexKey() {
        return null;
    }

    public char[][] getIndexCategories() {
        return CharOperation.NO_CHAR_CHAR;
    }

    public final int getMatchRule() {
        return this.matchRule;
    }

    public boolean isPolymorphicSearch() {
        return false;
    }

    public boolean matchesDecodedKey(SearchPattern decodedPattern) {
        return true;
    }

    public boolean matchesName(char[] pattern, char[] name) {
        if (pattern == null) {
            return true;
        }
        if (name != null) {
            boolean emptyPattern;
            boolean isCaseSensitive = (this.matchRule & 8) != 0;
            int matchMode = this.matchRule & 0x187;
            boolean bl = emptyPattern = pattern.length == 0;
            if (emptyPattern && (this.matchRule & 1) != 0) {
                return true;
            }
            boolean sameLength = pattern.length == name.length;
            boolean canBePrefix = name.length >= pattern.length;
            boolean matchFirstChar = !isCaseSensitive || emptyPattern || name.length > 0 && pattern[0] == name[0];
            switch (matchMode) {
                case 0: {
                    if (!sameLength || !matchFirstChar) break;
                    return CharOperation.equals(pattern, name, isCaseSensitive);
                }
                case 1: {
                    if (!canBePrefix || !matchFirstChar) break;
                    return CharOperation.prefixEquals(pattern, name, isCaseSensitive);
                }
                case 2: {
                    if (!isCaseSensitive) {
                        pattern = CharOperation.toLowerCase(pattern);
                    }
                    return CharOperation.match(pattern, name, isCaseSensitive);
                }
                case 128: {
                    if (matchFirstChar && CharOperation.camelCaseMatch(pattern, name, false)) {
                        return true;
                    }
                    if (isCaseSensitive || !matchFirstChar || !CharOperation.prefixEquals(pattern, name, false)) break;
                    return true;
                }
                case 256: {
                    return matchFirstChar && CharOperation.camelCaseMatch(pattern, name, true);
                }
                case 4: {
                    return true;
                }
            }
        }
        return false;
    }

    public static int validateMatchRule(String stringPattern, int matchRule) {
        boolean validCamelCase;
        if ((matchRule & 4) != 0 && ((matchRule & 2) != 0 || (matchRule & 1) != 0 || (matchRule & 0x80) != 0 || (matchRule & 0x100) != 0)) {
            return -1;
        }
        if (stringPattern != null) {
            int starIndex = stringPattern.indexOf(42);
            int questionIndex = stringPattern.indexOf(63);
            matchRule = starIndex < 0 && questionIndex < 0 ? (matchRule &= 0xFFFFFFFD) : (matchRule |= 2);
        }
        if ((matchRule & 2) != 0) {
            matchRule &= 0xFFFFFF7F;
            matchRule &= 0xFFFFFEFF;
            return matchRule &= 0xFFFFFFFE;
        }
        if ((matchRule & 0x80) != 0) {
            matchRule &= 0xFFFFFEFF;
            matchRule &= 0xFFFFFFFE;
            validCamelCase = SearchPattern.validateCamelCasePattern(stringPattern);
            if (!validCamelCase) {
                matchRule &= 0xFFFFFF7F;
                matchRule |= 1;
            }
            return matchRule;
        }
        if ((matchRule & 0x100) != 0) {
            matchRule &= 0xFFFFFFFE;
            validCamelCase = SearchPattern.validateCamelCasePattern(stringPattern);
            if (!validCamelCase) {
                matchRule &= 0xFFFFFEFF;
            }
            return matchRule;
        }
        return matchRule;
    }

    private static boolean validateCamelCasePattern(String stringPattern) {
        if (stringPattern == null) {
            return true;
        }
        int length = stringPattern.length();
        boolean validCamelCase = true;
        boolean lowerCamelCase = false;
        int uppercase = 0;
        int i = 0;
        while (i < length && validCamelCase) {
            char ch = stringPattern.charAt(i);
            boolean bl = validCamelCase = i == 0 ? ScannerHelper.isJavaIdentifierStart(ch) : ScannerHelper.isJavaIdentifierPart(ch);
            if (ScannerHelper.isUpperCase(ch)) {
                ++uppercase;
            }
            if (i == 0) {
                lowerCamelCase = uppercase == 0;
            }
            ++i;
        }
        if (validCamelCase) {
            validCamelCase = lowerCamelCase ? uppercase > 0 : uppercase > 1;
        }
        return validCamelCase;
    }

    public EntryResult[] queryIn(Index index) throws IOException {
        return index.query(this.getIndexCategories(), this.getIndexKey(), this.getMatchRule());
    }

    public String toString() {
        return "SearchPattern";
    }
}

