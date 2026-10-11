/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchMatch;
import org.eclipse.jdt.core.search.SearchPattern;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import org.eclipse.jdt.internal.core.search.matching.AndLocator;
import org.eclipse.jdt.internal.core.search.matching.AndPattern;
import org.eclipse.jdt.internal.core.search.matching.ConstructorLocator;
import org.eclipse.jdt.internal.core.search.matching.ConstructorPattern;
import org.eclipse.jdt.internal.core.search.matching.FieldLocator;
import org.eclipse.jdt.internal.core.search.matching.FieldPattern;
import org.eclipse.jdt.internal.core.search.matching.LocalVariableLocator;
import org.eclipse.jdt.internal.core.search.matching.LocalVariablePattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.MethodLocator;
import org.eclipse.jdt.internal.core.search.matching.MethodPattern;
import org.eclipse.jdt.internal.core.search.matching.OrLocator;
import org.eclipse.jdt.internal.core.search.matching.OrPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationLocator;
import org.eclipse.jdt.internal.core.search.matching.PackageDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.PackageReferenceLocator;
import org.eclipse.jdt.internal.core.search.matching.PackageReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferenceLocator;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationLocator;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeParameterLocator;
import org.eclipse.jdt.internal.core.search.matching.TypeParameterPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeReferenceLocator;
import org.eclipse.jdt.internal.core.search.matching.TypeReferencePattern;

public abstract class PatternLocator
implements IIndexConstants {
    protected int matchMode;
    protected boolean isCaseSensitive;
    protected boolean isEquivalentMatch;
    protected boolean isErasureMatch;
    protected boolean mustResolve;
    protected boolean mayBeGeneric;
    SearchMatch match = null;
    public static final int IMPOSSIBLE_MATCH = 0;
    public static final int INACCURATE_MATCH = 1;
    public static final int POSSIBLE_MATCH = 2;
    public static final int ACCURATE_MATCH = 3;
    public static final int ERASURE_MATCH = 4;
    int flavors = 0;
    public static final int NO_FLAVOR = 0;
    public static final int EXACT_FLAVOR = 16;
    public static final int PREFIX_FLAVOR = 32;
    public static final int PATTERN_FLAVOR = 64;
    public static final int REGEXP_FLAVOR = 128;
    public static final int CAMELCASE_FLAVOR = 256;
    public static final int SUPER_INVOCATION_FLAVOR = 512;
    public static final int SUB_INVOCATION_FLAVOR = 1024;
    public static final int OVERRIDDEN_METHOD_FLAVOR = 2048;
    public static final int SUPERTYPE_REF_FLAVOR = 4096;
    public static final int MATCH_LEVEL_MASK = 15;
    public static final int FLAVORS_MASK = -16;
    public static final int COMPILATION_UNIT_CONTAINER = 1;
    public static final int CLASS_CONTAINER = 2;
    public static final int METHOD_CONTAINER = 4;
    public static final int FIELD_CONTAINER = 8;
    public static final int ALL_CONTAINER = 15;
    public static final int RAW_MASK = 48;
    public static final int RULE_MASK = 48;

    public static PatternLocator patternLocator(SearchPattern pattern) {
        switch (pattern.kind) {
            case 1: {
                return new PackageReferenceLocator((PackageReferencePattern)pattern);
            }
            case 2: {
                return new PackageDeclarationLocator((PackageDeclarationPattern)pattern);
            }
            case 4: {
                return new TypeReferenceLocator((TypeReferencePattern)pattern);
            }
            case 8: {
                return new TypeDeclarationLocator((TypeDeclarationPattern)pattern);
            }
            case 16: {
                return new SuperTypeReferenceLocator((SuperTypeReferencePattern)pattern);
            }
            case 32: {
                return new ConstructorLocator((ConstructorPattern)pattern);
            }
            case 64: {
                return new FieldLocator((FieldPattern)pattern);
            }
            case 128: {
                return new MethodLocator((MethodPattern)pattern);
            }
            case 256: {
                return new OrLocator((OrPattern)pattern);
            }
            case 2048: {
                return new AndLocator((AndPattern)pattern);
            }
            case 512: {
                return new LocalVariableLocator((LocalVariablePattern)pattern);
            }
            case 1024: {
                return new TypeParameterLocator((TypeParameterPattern)pattern);
            }
        }
        return null;
    }

    public static char[] qualifiedPattern(char[] simpleNamePattern, char[] qualificationPattern) {
        if (simpleNamePattern == null) {
            if (qualificationPattern == null) {
                return null;
            }
            return CharOperation.concat(qualificationPattern, ONE_STAR, '.');
        }
        return qualificationPattern == null ? CharOperation.concat(ONE_STAR, simpleNamePattern) : CharOperation.concat(qualificationPattern, simpleNamePattern, '.');
    }

    public static char[] qualifiedSourceName(TypeBinding binding) {
        ReferenceBinding type;
        if (binding instanceof ReferenceBinding && (type = (ReferenceBinding)binding).isLocalType()) {
            return type.isMemberType() ? CharOperation.concat(PatternLocator.qualifiedSourceName(type.enclosingType()), type.sourceName(), '.') : CharOperation.concat(PatternLocator.qualifiedSourceName(type.enclosingType()), new char[]{'.', '1', '.'}, type.sourceName());
        }
        return binding != null ? binding.qualifiedSourceName() : null;
    }

    public PatternLocator(SearchPattern pattern) {
        int matchRule = pattern.getMatchRule();
        this.isCaseSensitive = (matchRule & 8) != 0;
        this.isErasureMatch = (matchRule & 0x10) != 0;
        this.isEquivalentMatch = (matchRule & 0x20) != 0;
        this.matchMode = matchRule & 0x187;
        this.mustResolve = pattern.mustResolve;
    }

    protected void clear() {
    }

    protected char[] getQualifiedPattern(char[] simpleNamePattern, char[] qualificationPattern) {
        if (simpleNamePattern == null) {
            if (qualificationPattern == null) {
                return null;
            }
            return CharOperation.concat(qualificationPattern, ONE_STAR, '.');
        }
        if (qualificationPattern == null) {
            return simpleNamePattern;
        }
        return CharOperation.concat(qualificationPattern, simpleNamePattern, '.');
    }

    protected char[] getQualifiedSourceName(TypeBinding binding) {
        TypeBinding type;
        TypeBinding typeBinding = type = binding instanceof ArrayBinding ? ((ArrayBinding)binding).leafComponentType : binding;
        if (type instanceof ReferenceBinding) {
            if (type.isLocalType()) {
                return CharOperation.concat(PatternLocator.qualifiedSourceName(type.enclosingType()), new char[]{'.', '1', '.'}, binding.sourceName());
            }
            if (type.isMemberType()) {
                return CharOperation.concat(PatternLocator.qualifiedSourceName(type.enclosingType()), binding.sourceName(), '.');
            }
        }
        return binding != null ? binding.qualifiedSourceName() : null;
    }

    protected TypeBinding getTypeNameBinding(int index) {
        return null;
    }

    public void initializePolymorphicSearch(MatchLocator locator) {
    }

    public int match(Annotation node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(ASTNode node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(ConstructorDeclaration node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(Expression node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(FieldDeclaration node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(LocalDeclaration node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(MethodDeclaration node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(MemberValuePair node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(MessageSend node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(Reference node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(TypeDeclaration node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(TypeParameter node, MatchingNodeSet nodeSet) {
        return 0;
    }

    public int match(TypeReference node, MatchingNodeSet nodeSet) {
        return 0;
    }

    protected int matchContainer() {
        return 15;
    }

    protected int fineGrain() {
        return 0;
    }

    protected boolean matchesName(char[] pattern, char[] name) {
        if (pattern == null) {
            return true;
        }
        if (name == null) {
            return false;
        }
        return this.matchNameValue(pattern, name) != 0;
    }

    protected int matchNameValue(char[] pattern, char[] name) {
        if (pattern == null) {
            return 3;
        }
        if (name == null) {
            return 0;
        }
        if (name.length == 0) {
            if (pattern.length == 0) {
                return 3;
            }
            return 0;
        }
        if (pattern.length == 0) {
            return 0;
        }
        boolean matchFirstChar = !this.isCaseSensitive || pattern[0] == name[0];
        boolean sameLength = pattern.length == name.length;
        boolean canBePrefix = name.length >= pattern.length;
        switch (this.matchMode) {
            case 0: {
                if (!sameLength || !matchFirstChar || !CharOperation.equals(pattern, name, this.isCaseSensitive)) break;
                return 18;
            }
            case 1: {
                if (!canBePrefix || !matchFirstChar || !CharOperation.prefixEquals(pattern, name, this.isCaseSensitive)) break;
                return 2;
            }
            case 2: {
                if (!this.isCaseSensitive) {
                    pattern = CharOperation.toLowerCase(pattern);
                }
                if (!CharOperation.match(pattern, name, this.isCaseSensitive)) break;
                return 2;
            }
            case 4: {
                break;
            }
            case 128: {
                if (CharOperation.camelCaseMatch(pattern, name, false)) {
                    return 2;
                }
                if (this.isCaseSensitive || !CharOperation.prefixEquals(pattern, name, false)) break;
                return 2;
            }
            case 256: {
                if (!CharOperation.camelCaseMatch(pattern, name, true)) break;
                return 2;
            }
        }
        return 0;
    }

    protected boolean matchesTypeReference(char[] pattern, TypeReference type) {
        if (pattern == null) {
            return true;
        }
        if (type == null) {
            return true;
        }
        char[][] compoundName = type.getTypeName();
        char[] simpleName = compoundName[compoundName.length - 1];
        int dimensions = type.dimensions() * 2;
        if (dimensions > 0) {
            int length = simpleName.length;
            char[] result = new char[length + dimensions];
            System.arraycopy(simpleName, 0, result, 0, length);
            int i = length;
            int l = result.length;
            while (i < l) {
                result[i++] = 91;
                result[i++] = 93;
            }
            simpleName = result;
        }
        return this.matchesName(pattern, simpleName);
    }

    protected int matchLevel(ImportReference importRef) {
        return 0;
    }

    protected void matchLevelAndReportImportRef(ImportReference importRef, Binding binding, MatchLocator locator) throws CoreException {
        int level = this.resolveLevel(binding);
        if (level >= 1) {
            this.matchReportImportRef(importRef, binding, locator.createImportHandle(importRef), level == 3 ? 0 : 1, locator);
        }
    }

    protected void matchReportImportRef(ImportReference importRef, Binding binding, IJavaElement element, int accuracy, MatchLocator locator) throws CoreException {
        if (locator.encloses(element)) {
            this.matchReportReference(importRef, element, null, accuracy, locator);
        }
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.match = null;
        int referenceType = this.referenceType();
        int offset = reference.sourceStart;
        switch (referenceType) {
            case 4: {
                this.match = locator.newPackageReferenceMatch(element, accuracy, offset, reference.sourceEnd - offset + 1, reference);
                break;
            }
            case 7: {
                this.match = locator.newTypeReferenceMatch(element, elementBinding, accuracy, offset, reference.sourceEnd - offset + 1, reference);
                break;
            }
            case 8: {
                this.match = locator.newFieldReferenceMatch(element, null, elementBinding, accuracy, offset, reference.sourceEnd - offset + 1, reference);
                break;
            }
            case 14: {
                this.match = locator.newLocalVariableReferenceMatch(element, accuracy, offset, reference.sourceEnd - offset + 1, reference);
                break;
            }
            case 15: {
                this.match = locator.newTypeParameterReferenceMatch(element, accuracy, offset, reference.sourceEnd - offset + 1, reference);
            }
        }
        if (this.match != null) {
            locator.report(this.match);
        }
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, IJavaElement localElement, IJavaElement[] otherElements, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.matchReportReference(reference, element, elementBinding, accuracy, locator);
    }

    public SearchMatch newDeclarationMatch(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, int length, MatchLocator locator) {
        return locator.newDeclarationMatch(element, elementBinding, accuracy, reference.sourceStart, length);
    }

    protected int referenceType() {
        return 0;
    }

    public int resolveLevel(ASTNode possibleMatchingNode) {
        return 0;
    }

    void setFlavors(int flavors) {
        this.flavors = flavors;
    }

    protected void updateMatch(ParameterizedTypeBinding parameterizedBinding, char[][][] patternTypeArguments, MatchLocator locator) {
        if (locator.unitScope != null) {
            this.updateMatch(parameterizedBinding, patternTypeArguments, false, 0, locator);
        }
    }

    protected void updateMatch(ParameterizedTypeBinding parameterizedBinding, char[][][] patternTypeArguments, boolean patternHasTypeParameters, int depth, MatchLocator locator) {
        ReferenceBinding enclosingType;
        boolean isRaw;
        if (locator.unitScope == null) {
            return;
        }
        boolean endPattern = patternTypeArguments == null ? true : depth >= patternTypeArguments.length;
        TypeBinding[] argumentsBindings = parameterizedBinding.arguments;
        boolean bl = isRaw = parameterizedBinding.isRawType() || argumentsBindings == null && parameterizedBinding.genericType().isGenericType();
        if (isRaw && !this.match.isRaw()) {
            this.match.setRaw(isRaw);
        }
        if (!endPattern && patternTypeArguments != null) {
            if (!isRaw && patternHasTypeParameters && argumentsBindings != null) {
                boolean needUpdate = false;
                int length = argumentsBindings.length;
                TypeVariableBinding[] typeVariables = parameterizedBinding.genericType().typeVariables();
                if (length == typeVariables.length) {
                    int i = 0;
                    while (i < length) {
                        if (argumentsBindings[i] != typeVariables[i]) {
                            needUpdate = true;
                            break;
                        }
                        ++i;
                    }
                }
                if (needUpdate) {
                    char[][] patternArguments = patternTypeArguments[depth];
                    this.updateMatch(argumentsBindings, locator, patternArguments, patternHasTypeParameters);
                }
            } else {
                char[][] patternArguments = patternTypeArguments[depth];
                this.updateMatch(argumentsBindings, locator, patternArguments, patternHasTypeParameters);
            }
        }
        if ((enclosingType = parameterizedBinding.enclosingType()) != null && (enclosingType.isParameterizedType() || enclosingType.isRawType())) {
            this.updateMatch((ParameterizedTypeBinding)enclosingType, patternTypeArguments, patternHasTypeParameters, depth + 1, locator);
        }
    }

    /*
     * Unable to fully structure code
     */
    protected void updateMatch(TypeBinding[] argumentsBinding, MatchLocator locator, char[][] patternArguments, boolean hasTypeParameters) {
        block45: {
            if (locator.unitScope == null) {
                return;
            }
            patternTypeArgsLength = patternArguments == null ? 0 : patternArguments.length;
            typeArgumentsLength = argumentsBinding == null ? 0 : argumentsBinding.length;
            matchRule = this.match.getRule();
            if (this.match.isRaw() && patternTypeArgsLength != 0) {
                matchRule &= -65;
            }
            if (hasTypeParameters) {
                matchRule = 16;
            }
            if (patternTypeArgsLength == typeArgumentsLength) {
                if (!this.match.isRaw() && hasTypeParameters) {
                    this.match.setRule(16);
                    return;
                }
            } else {
                if (patternTypeArgsLength == 0) {
                    if (!this.match.isRaw() || hasTypeParameters) {
                        this.match.setRule(matchRule & -65);
                    }
                } else if (typeArgumentsLength == 0) {
                    this.match.setRule(matchRule & -65);
                } else {
                    this.match.setRule(0);
                }
                return;
            }
            if (argumentsBinding == null || patternArguments == null) {
                this.match.setRule(matchRule);
                return;
            }
            if (hasTypeParameters || this.match.isRaw() || !this.match.isEquivalent() && !this.match.isExact()) break block45;
            i = 0;
            while (i < typeArgumentsLength) {
                argumentBinding = argumentsBinding[i];
                if (argumentBinding instanceof CaptureBinding && (capturedWildcard = ((CaptureBinding)argumentBinding).wildcard) != null) {
                    argumentBinding = capturedWildcard;
                }
                patternTypeArgument = patternArguments[i];
                patternWildcard = patternTypeArgument[0];
                patternTypeName = patternTypeArgument;
                patternWildcardKind = -1;
                block0 : switch (patternWildcard) {
                    case '*': {
                        if (argumentBinding.isWildcard()) {
                            wildcardBinding = (WildcardBinding)argumentBinding;
                            if (wildcardBinding.boundKind == 0) break;
                        }
                        matchRule &= -65;
                        break;
                    }
                    case '+': {
                        patternWildcardKind = 1;
                        patternTypeName = CharOperation.subarray(patternTypeArgument, 1, patternTypeArgument.length);
                        ** GOTO lbl51
                    }
                    case '-': {
                        patternWildcardKind = 2;
                        patternTypeName = CharOperation.subarray(patternTypeArgument, 1, patternTypeArgument.length);
                    }
lbl51:
                    // 3 sources

                    default: {
                        patternTypeName = Signature.toCharArray(patternTypeName);
                        patternBinding = locator.getType(patternTypeArgument, patternTypeName);
                        if (patternBinding == null) {
                            if (!argumentBinding.isWildcard()) break;
                            wildcardBinding = (WildcardBinding)argumentBinding;
                            if (wildcardBinding.boundKind == 0) {
                                matchRule &= -65;
                                break;
                            }
                            this.match.setRule(16);
                            return;
                        }
                        block5 : switch (patternWildcard) {
                            case '*': {
                                matchRule &= -65;
                                break block0;
                            }
                            case '+': {
                                if (argumentBinding.isWildcard()) {
                                    wildcardBinding = (WildcardBinding)argumentBinding;
                                    if (wildcardBinding.boundKind == patternWildcardKind && wildcardBinding.bound == patternBinding) break block0;
                                    switch (wildcardBinding.boundKind) {
                                        case 1: {
                                            if (wildcardBinding.bound != null && !wildcardBinding.bound.isCompatibleWith(patternBinding)) break block5;
                                            matchRule &= -65;
                                            break block0;
                                        }
                                        case 2: {
                                            break;
                                        }
                                        case 0: {
                                            matchRule &= -65;
                                            break block0;
                                        }
                                    }
                                    break;
                                }
                                if (!argumentBinding.isCompatibleWith(patternBinding)) break;
                                matchRule &= -65;
                                break block0;
                            }
                            case '-': {
                                if (argumentBinding.isWildcard()) {
                                    wildcardBinding = (WildcardBinding)argumentBinding;
                                    if (wildcardBinding.boundKind == patternWildcardKind && wildcardBinding.bound == patternBinding) break block0;
                                    switch (wildcardBinding.boundKind) {
                                        case 1: {
                                            break;
                                        }
                                        case 2: {
                                            if (wildcardBinding.bound != null && !patternBinding.isCompatibleWith(wildcardBinding.bound)) break block5;
                                            matchRule &= -65;
                                            break block0;
                                        }
                                        case 0: {
                                            matchRule &= -65;
                                            break block0;
                                        }
                                    }
                                    break;
                                }
                                if (!patternBinding.isCompatibleWith(argumentBinding)) break;
                                matchRule &= -65;
                                break block0;
                            }
                            default: {
                                if (argumentBinding.isWildcard()) {
                                    wildcardBinding = (WildcardBinding)argumentBinding;
                                    switch (wildcardBinding.boundKind) {
                                        case 1: {
                                            if (wildcardBinding.bound != null && !patternBinding.isCompatibleWith(wildcardBinding.bound)) break block5;
                                            matchRule &= -65;
                                            break block0;
                                        }
                                        case 2: {
                                            if (wildcardBinding.bound != null && !wildcardBinding.bound.isCompatibleWith(patternBinding)) break block5;
                                            matchRule &= -65;
                                            break block0;
                                        }
                                        case 0: {
                                            matchRule &= -65;
                                            break block0;
                                        }
                                    }
                                    break;
                                }
                                if (argumentBinding == patternBinding) break block0;
                            }
                        }
                        this.match.setRule(16);
                        return;
                    }
                }
                ++i;
            }
        }
        this.match.setRule(matchRule);
    }

    public int resolveLevel(Binding binding) {
        return 1;
    }

    protected int resolveLevelForType(char[] simpleNamePattern, char[] qualificationPattern, TypeBinding binding) {
        char[] qualifiedPattern = this.getQualifiedPattern(simpleNamePattern, qualificationPattern);
        int level = this.resolveLevelForType(qualifiedPattern, binding);
        if (level == 3 || binding == null || !binding.isValidBinding()) {
            return level;
        }
        TypeBinding type = binding instanceof ArrayBinding ? ((ArrayBinding)binding).leafComponentType : binding;
        char[] sourceName = null;
        if (type.isMemberType() || type.isLocalType()) {
            sourceName = qualificationPattern != null ? this.getQualifiedSourceName(binding) : binding.sourceName();
        } else if (qualificationPattern == null) {
            sourceName = this.getQualifiedSourceName(binding);
        }
        if (sourceName == null) {
            return 0;
        }
        switch (this.matchMode) {
            case 1: {
                if (!CharOperation.prefixEquals(qualifiedPattern, sourceName, this.isCaseSensitive)) break;
                return 3;
            }
            case 128: {
                if (qualifiedPattern.length <= 0 || sourceName.length <= 0 || qualifiedPattern[0] != sourceName[0]) break;
                if (CharOperation.camelCaseMatch(qualifiedPattern, sourceName, false)) {
                    return 3;
                }
                if (this.isCaseSensitive || !CharOperation.prefixEquals(qualifiedPattern, sourceName, false)) break;
                return 3;
            }
            case 256: {
                if (qualifiedPattern.length <= 0 || sourceName.length <= 0 || qualifiedPattern[0] != sourceName[0] || !CharOperation.camelCaseMatch(qualifiedPattern, sourceName, true)) break;
                return 3;
            }
            default: {
                if (!CharOperation.match(qualifiedPattern, sourceName, this.isCaseSensitive)) break;
                return 3;
            }
        }
        return 0;
    }

    protected int resolveLevelForType(char[] qualifiedPattern, TypeBinding type) {
        if (qualifiedPattern == null) {
            return 3;
        }
        if (type == null || !type.isValidBinding()) {
            return 1;
        }
        if (type.isTypeVariable()) {
            return 0;
        }
        char[] qualifiedPackageName = type.qualifiedPackageName();
        char[] qualifiedSourceName = PatternLocator.qualifiedSourceName(type);
        char[] fullyQualifiedTypeName = qualifiedPackageName.length == 0 ? qualifiedSourceName : CharOperation.concat(qualifiedPackageName, qualifiedSourceName, '.');
        return CharOperation.match(qualifiedPattern, fullyQualifiedTypeName, this.isCaseSensitive) ? 3 : 0;
    }

    protected int resolveLevelForType(char[] simpleNamePattern, char[] qualificationPattern, char[][][] patternTypeArguments, int depth, TypeBinding type) {
        ReferenceBinding enclosingType;
        int impossible;
        int level = this.resolveLevelForType(simpleNamePattern, qualificationPattern, type);
        if (level == 0) {
            return 0;
        }
        if (type == null || patternTypeArguments == null || patternTypeArguments.length == 0 || depth >= patternTypeArguments.length) {
            return level;
        }
        int n = impossible = this.isErasureMatch ? 4 : 0;
        if (type.isGenericType()) {
            TypeVariableBinding[] typeVariables = null;
            if (type instanceof SourceTypeBinding) {
                SourceTypeBinding sourceTypeBinding = (SourceTypeBinding)type;
                typeVariables = sourceTypeBinding.typeVariables;
            } else if (type instanceof BinaryTypeBinding) {
                BinaryTypeBinding binaryTypeBinding = (BinaryTypeBinding)type;
                if (this.mustResolve) {
                    typeVariables = binaryTypeBinding.typeVariables();
                }
            }
            if (patternTypeArguments[depth] != null && patternTypeArguments[depth].length > 0 && typeVariables != null && typeVariables.length > 0 && typeVariables.length != patternTypeArguments[depth].length) {
                return 0;
            }
            return level;
        }
        if (type.isRawType()) {
            return level;
        }
        TypeBinding leafType = type.leafComponentType();
        if (!leafType.isParameterizedType()) {
            return patternTypeArguments[depth] == null || patternTypeArguments[depth].length == 0 ? level : 0;
        }
        ParameterizedTypeBinding paramTypeBinding = (ParameterizedTypeBinding)leafType;
        if (patternTypeArguments[depth] != null && patternTypeArguments[depth].length > 0 && paramTypeBinding.arguments != null && paramTypeBinding.arguments.length > 0) {
            int length = patternTypeArguments[depth].length;
            if (paramTypeBinding.arguments.length != length) {
                return 0;
            }
            int i = 0;
            while (i < length) {
                char[] patternTypeArgument = patternTypeArguments[depth][i];
                TypeBinding argTypeBinding = paramTypeBinding.arguments[i];
                block0 : switch (patternTypeArgument[0]) {
                    case '*': 
                    case '-': {
                        break;
                    }
                    case '+': {
                        patternTypeArgument = CharOperation.subarray(patternTypeArgument, 1, patternTypeArgument.length);
                    }
                    default: {
                        WildcardBinding capturedWildcard;
                        patternTypeArgument = Signature.toCharArray(patternTypeArgument);
                        if (!this.isCaseSensitive) {
                            patternTypeArgument = CharOperation.toLowerCase(patternTypeArgument);
                        }
                        boolean patternTypeArgHasAnyChars = CharOperation.contains(new char[]{'*', '?'}, patternTypeArgument);
                        if (argTypeBinding instanceof CaptureBinding && (capturedWildcard = ((CaptureBinding)argTypeBinding).wildcard) != null) {
                            argTypeBinding = capturedWildcard;
                        }
                        if (argTypeBinding.isWildcard()) {
                            WildcardBinding wildcardBinding = (WildcardBinding)argTypeBinding;
                            switch (wildcardBinding.boundKind) {
                                case 1: {
                                    if (!patternTypeArgHasAnyChars) break block0;
                                    return impossible;
                                }
                                case 0: {
                                    break block0;
                                }
                                default: {
                                    ReferenceBinding boundBinding = (ReferenceBinding)wildcardBinding.bound;
                                    if (CharOperation.match(patternTypeArgument, boundBinding.shortReadableName(), this.isCaseSensitive) || CharOperation.match(patternTypeArgument, boundBinding.readableName(), this.isCaseSensitive)) break block0;
                                    if (patternTypeArgHasAnyChars) {
                                        return impossible;
                                    }
                                    boundBinding = boundBinding.superclass();
                                    while (boundBinding != null) {
                                        if (CharOperation.equals(patternTypeArgument, boundBinding.shortReadableName(), this.isCaseSensitive) || CharOperation.equals(patternTypeArgument, boundBinding.readableName(), this.isCaseSensitive) || (boundBinding.isLocalType() || boundBinding.isMemberType()) && CharOperation.match(patternTypeArgument, boundBinding.sourceName(), this.isCaseSensitive)) break block0;
                                        boundBinding = boundBinding.superclass();
                                    }
                                    return impossible;
                                }
                            }
                        }
                        if (CharOperation.match(patternTypeArgument, argTypeBinding.shortReadableName(), this.isCaseSensitive) || CharOperation.match(patternTypeArgument, argTypeBinding.readableName(), this.isCaseSensitive) || (argTypeBinding.isLocalType() || argTypeBinding.isMemberType()) && CharOperation.match(patternTypeArgument, argTypeBinding.sourceName(), this.isCaseSensitive)) break;
                        if (patternTypeArgHasAnyChars) {
                            return impossible;
                        }
                        TypeBinding leafTypeBinding = argTypeBinding.leafComponentType();
                        if (leafTypeBinding.isBaseType()) {
                            return impossible;
                        }
                        ReferenceBinding refBinding = ((ReferenceBinding)leafTypeBinding).superclass();
                        while (refBinding != null) {
                            if (CharOperation.equals(patternTypeArgument, refBinding.shortReadableName(), this.isCaseSensitive) || CharOperation.equals(patternTypeArgument, refBinding.readableName(), this.isCaseSensitive) || (refBinding.isLocalType() || refBinding.isMemberType()) && CharOperation.match(patternTypeArgument, refBinding.sourceName(), this.isCaseSensitive)) break block0;
                            refBinding = refBinding.superclass();
                        }
                        return impossible;
                    }
                }
                ++i;
            }
        }
        if ((enclosingType = paramTypeBinding.enclosingType()) != null && enclosingType.isParameterizedType() && depth < patternTypeArguments.length && qualificationPattern != null) {
            char[] enclosingQualificationPattern;
            int lastDot;
            char[] enclosingSimpleNamePattern = lastDot == -1 ? qualificationPattern : CharOperation.subarray(qualificationPattern, lastDot + 1, qualificationPattern.length);
            int enclosingLevel = this.resolveLevelForType(enclosingSimpleNamePattern, enclosingQualificationPattern = (lastDot = CharOperation.lastIndexOf('.', qualificationPattern)) == -1 ? null : CharOperation.subarray(qualificationPattern, 0, lastDot), patternTypeArguments, depth + 1, enclosingType);
            if (enclosingLevel == impossible) {
                return impossible;
            }
            if (enclosingLevel == 0) {
                return 0;
            }
        }
        return level;
    }

    public String toString() {
        return "SearchPattern";
    }
}

