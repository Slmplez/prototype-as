/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IMethod;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.TypeDeclarationMatch;
import org.eclipse.jdt.core.search.TypeReferenceMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.ClassFile;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.matching.DeclarationOfReferencedTypesPattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.TypeReferencePattern;

public class TypeReferenceLocator
extends PatternLocator {
    protected TypeReferencePattern pattern;
    protected boolean isDeclarationOfReferencedTypesPattern;
    private final int fineGrain;

    public TypeReferenceLocator(TypeReferencePattern pattern) {
        super(pattern);
        this.pattern = pattern;
        this.fineGrain = pattern == null ? 0 : pattern.fineGrain;
        this.isDeclarationOfReferencedTypesPattern = this.pattern instanceof DeclarationOfReferencedTypesPattern;
    }

    protected IJavaElement findElement(IJavaElement element, int accuracy) {
        if (accuracy != 0) {
            return null;
        }
        DeclarationOfReferencedTypesPattern declPattern = (DeclarationOfReferencedTypesPattern)this.pattern;
        while (element != null && !declPattern.enclosingElement.equals(element)) {
            element = element.getParent();
        }
        return element;
    }

    protected int fineGrain() {
        return this.fineGrain;
    }

    public int match(Annotation node, MatchingNodeSet nodeSet) {
        return this.match(node.type, nodeSet);
    }

    public int match(ASTNode node, MatchingNodeSet nodeSet) {
        if (!(node instanceof ImportReference)) {
            return 0;
        }
        return nodeSet.addMatch(node, this.matchLevel((ImportReference)node));
    }

    public int match(Reference node, MatchingNodeSet nodeSet) {
        if (!(node instanceof NameReference)) {
            return 0;
        }
        if (this.pattern.simpleName == null) {
            return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
        }
        if (node instanceof SingleNameReference) {
            if (this.matchesName(this.pattern.simpleName, ((SingleNameReference)node).token)) {
                return nodeSet.addMatch(node, 2);
            }
        } else {
            char[][] tokens = ((QualifiedNameReference)node).tokens;
            int i = 0;
            int max = tokens.length;
            while (i < max) {
                if (this.matchesName(this.pattern.simpleName, tokens[i])) {
                    return nodeSet.addMatch(node, 2);
                }
                ++i;
            }
        }
        return 0;
    }

    public int match(TypeReference node, MatchingNodeSet nodeSet) {
        if (this.pattern.simpleName == null) {
            return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
        }
        if (node instanceof SingleTypeReference) {
            if (this.matchesName(this.pattern.simpleName, ((SingleTypeReference)node).token)) {
                return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
            }
        } else {
            char[][] tokens = ((QualifiedTypeReference)node).tokens;
            int i = 0;
            int max = tokens.length;
            while (i < max) {
                if (this.matchesName(this.pattern.simpleName, tokens[i])) {
                    return nodeSet.addMatch(node, 2);
                }
                ++i;
            }
        }
        return 0;
    }

    protected int matchLevel(ImportReference importRef) {
        if (this.pattern.qualification == null) {
            if (this.pattern.simpleName == null) {
                return 3;
            }
            char[][] tokens = importRef.tokens;
            boolean onDemand = (importRef.bits & 0x20000) != 0;
            boolean isStatic = importRef.isStatic();
            if (!isStatic && onDemand) {
                return 0;
            }
            int length = tokens.length;
            if (this.matchesName(this.pattern.simpleName, tokens[length - 1])) {
                return 3;
            }
            if (isStatic && !onDemand && length > 1 && this.matchesName(this.pattern.simpleName, tokens[length - 2])) {
                return 3;
            }
        } else {
            char[][] tokens = importRef.tokens;
            char[] qualifiedPattern = this.pattern.simpleName == null ? this.pattern.qualification : CharOperation.concat(this.pattern.qualification, this.pattern.simpleName, '.');
            char[] qualifiedTypeName = CharOperation.concatWith(tokens, '.');
            if (qualifiedPattern == null) {
                return 3;
            }
            if (qualifiedTypeName == null) {
                return 0;
            }
            if (qualifiedTypeName.length == 0) {
                if (qualifiedPattern.length == 0) {
                    return 3;
                }
                return 0;
            }
            boolean matchFirstChar = !this.isCaseSensitive || qualifiedPattern[0] == qualifiedTypeName[0];
            switch (this.matchMode) {
                case 0: 
                case 1: {
                    if (!CharOperation.prefixEquals(qualifiedPattern, qualifiedTypeName, this.isCaseSensitive)) break;
                    return 2;
                }
                case 2: {
                    if (!CharOperation.match(qualifiedPattern, qualifiedTypeName, this.isCaseSensitive)) break;
                    return 2;
                }
                case 4: {
                    break;
                }
                case 128: {
                    if (matchFirstChar && CharOperation.camelCaseMatch(qualifiedPattern, qualifiedTypeName, false)) {
                        return 2;
                    }
                    if (this.isCaseSensitive || !CharOperation.prefixEquals(qualifiedPattern, qualifiedTypeName, false)) break;
                    return 2;
                }
                case 256: {
                    if (!matchFirstChar || !CharOperation.camelCaseMatch(qualifiedPattern, qualifiedTypeName, true)) break;
                    return 2;
                }
            }
        }
        return 0;
    }

    protected void matchLevelAndReportImportRef(ImportReference importRef, Binding binding, MatchLocator locator) throws CoreException {
        Binding refBinding = binding;
        if (importRef.isStatic()) {
            MemberTypeBinding memberBinding;
            if (binding instanceof FieldBinding) {
                FieldBinding fieldBinding = (FieldBinding)binding;
                if (!fieldBinding.isStatic()) {
                    return;
                }
                refBinding = fieldBinding.declaringClass;
            } else if (binding instanceof MethodBinding) {
                MethodBinding methodBinding = (MethodBinding)binding;
                if (!methodBinding.isStatic()) {
                    return;
                }
                refBinding = methodBinding.declaringClass;
            } else if (binding instanceof MemberTypeBinding && !(memberBinding = (MemberTypeBinding)binding).isStatic()) {
                return;
            }
            int level = this.resolveLevel(refBinding);
            if (level >= 1) {
                this.matchReportImportRef(importRef, binding, locator.createImportHandle(importRef), level == 3 ? 0 : 1, locator);
            }
            return;
        }
        super.matchLevelAndReportImportRef(importRef, refBinding, locator);
    }

    protected void matchReportImportRef(ImportReference importRef, Binding binding, IJavaElement element, int accuracy, MatchLocator locator) throws CoreException {
        if (this.isDeclarationOfReferencedTypesPattern) {
            if ((element = this.findElement(element, accuracy)) != null) {
                SimpleSet knownTypes = ((DeclarationOfReferencedTypesPattern)this.pattern).knownTypes;
                while (binding instanceof ReferenceBinding) {
                    ReferenceBinding typeBinding = (ReferenceBinding)binding;
                    this.reportDeclaration(typeBinding, 1, locator, knownTypes);
                    binding = typeBinding.enclosingType();
                }
            }
            return;
        }
        if (this.pattern.hasTypeArguments() && !this.isEquivalentMatch && !this.isErasureMatch) {
            return;
        }
        if (this.pattern.fineGrain != 0 && (this.pattern.fineGrain & 0x8000) == 0) {
            return;
        }
        this.match = locator.newTypeReferenceMatch(element, binding, accuracy, importRef);
        this.match.setRaw(true);
        if (this.pattern.hasTypeArguments()) {
            this.match.setRule(this.match.getRule() & 0xFFFFFFBF);
        }
        TypeBinding typeBinding = null;
        boolean lastButOne = false;
        if (binding instanceof ReferenceBinding) {
            typeBinding = (ReferenceBinding)binding;
        } else if (binding instanceof FieldBinding) {
            typeBinding = ((FieldBinding)binding).declaringClass;
            lastButOne = importRef.isStatic() && (importRef.bits & 0x20000) == 0;
        } else if (binding instanceof MethodBinding) {
            typeBinding = ((MethodBinding)binding).declaringClass;
            boolean bl = lastButOne = importRef.isStatic() && (importRef.bits & 0x20000) == 0;
        }
        if (typeBinding != null) {
            int lastIndex = importRef.tokens.length - 1;
            if (lastButOne) {
                --lastIndex;
            }
            if (typeBinding instanceof ProblemReferenceBinding) {
                ProblemReferenceBinding pbBinding = (ProblemReferenceBinding)typeBinding;
                typeBinding = pbBinding.closestMatch();
                lastIndex = pbBinding.compoundName.length - 1;
            }
            while (typeBinding != null && lastIndex >= 0) {
                if (this.resolveLevelForType(typeBinding) != 0) {
                    if (locator.encloses(element)) {
                        long[] positions = importRef.sourcePositions;
                        int index = lastIndex;
                        if (this.pattern.qualification != null) {
                            index = lastIndex - this.pattern.segmentsSize;
                        }
                        if (index < 0) {
                            index = 0;
                        }
                        int start = (int)(positions[index] >>> 32);
                        int end = (int)positions[lastIndex];
                        this.match.setOffset(start);
                        this.match.setLength(end - start + 1);
                        locator.report(this.match);
                    }
                    return;
                }
                --lastIndex;
                typeBinding = typeBinding.enclosingType();
            }
        }
        locator.reportAccurateTypeReference(this.match, importRef, this.pattern.simpleName);
    }

    protected void matchReportReference(ArrayTypeReference arrayRef, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        if (this.pattern.simpleName == null && locator.encloses(element)) {
            int offset = arrayRef.sourceStart;
            int length = arrayRef.sourceEnd - offset + 1;
            if (this.match == null) {
                this.match = locator.newTypeReferenceMatch(element, elementBinding, accuracy, offset, length, arrayRef);
            } else {
                this.match.setOffset(offset);
                this.match.setLength(length);
            }
            locator.report(this.match);
            return;
        }
        this.match = locator.newTypeReferenceMatch(element, elementBinding, accuracy, arrayRef);
        if (arrayRef.resolvedType != null) {
            this.matchReportReference(arrayRef, -1, arrayRef.resolvedType.leafComponentType(), locator);
            return;
        }
        locator.reportAccurateTypeReference(this.match, arrayRef, this.pattern.simpleName);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.matchReportReference(reference, element, null, null, elementBinding, accuracy, locator);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, IJavaElement localElement, IJavaElement[] otherElements, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        if (this.isDeclarationOfReferencedTypesPattern) {
            if ((element = this.findElement(element, accuracy)) != null) {
                this.reportDeclaration(reference, element, locator, ((DeclarationOfReferencedTypesPattern)this.pattern).knownTypes);
            }
            return;
        }
        TypeReferenceMatch refMatch = locator.newTypeReferenceMatch(element, elementBinding, accuracy, reference);
        refMatch.setLocalElement(localElement);
        refMatch.setOtherElements(otherElements);
        this.match = refMatch;
        if (reference instanceof QualifiedNameReference) {
            this.matchReportReference((QualifiedNameReference)reference, element, elementBinding, accuracy, locator);
        } else if (reference instanceof QualifiedTypeReference) {
            this.matchReportReference((QualifiedTypeReference)reference, element, elementBinding, accuracy, locator);
        } else if (reference instanceof ArrayTypeReference) {
            this.matchReportReference((ArrayTypeReference)reference, element, elementBinding, accuracy, locator);
        } else {
            TypeBinding typeBinding;
            TypeBinding typeBinding2 = typeBinding = reference instanceof Expression ? ((Expression)reference).resolvedType : null;
            if (typeBinding != null) {
                this.matchReportReference((Expression)reference, -1, typeBinding, locator);
                return;
            }
            locator.report(this.match);
        }
    }

    protected void matchReportReference(QualifiedNameReference qNameRef, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        Binding binding = qNameRef.binding;
        TypeBinding typeBinding = null;
        int lastIndex = qNameRef.tokens.length - 1;
        switch (qNameRef.bits & 7) {
            case 1: {
                typeBinding = qNameRef.actualReceiverType;
                lastIndex -= qNameRef.otherBindings == null ? 1 : qNameRef.otherBindings.length + 1;
                break;
            }
            case 4: {
                if (!(binding instanceof TypeBinding)) break;
                typeBinding = (TypeBinding)binding;
                break;
            }
            case 3: 
            case 7: {
                if (binding instanceof ProblemReferenceBinding) {
                    typeBinding = (TypeBinding)binding;
                    break;
                }
                if (binding instanceof ProblemFieldBinding) {
                    typeBinding = qNameRef.actualReceiverType;
                    lastIndex -= qNameRef.otherBindings == null ? 1 : qNameRef.otherBindings.length + 1;
                    break;
                }
                if (!(binding instanceof ProblemBinding)) break;
                typeBinding = ((ProblemBinding)binding).searchType;
            }
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            ProblemReferenceBinding pbBinding = (ProblemReferenceBinding)typeBinding;
            typeBinding = pbBinding.closestMatch();
            lastIndex = pbBinding.compoundName.length - 1;
        }
        if (this.match == null) {
            this.match = locator.newTypeReferenceMatch(element, elementBinding, accuracy, qNameRef);
        }
        if (typeBinding instanceof ReferenceBinding) {
            ReferenceBinding refBinding = (ReferenceBinding)typeBinding;
            while (refBinding != null && lastIndex >= 0) {
                if (this.resolveLevelForType(refBinding) == 3) {
                    if (locator.encloses(element)) {
                        long[] positions = qNameRef.sourcePositions;
                        int index = lastIndex;
                        if (this.pattern.qualification != null) {
                            index = lastIndex - this.pattern.segmentsSize;
                        }
                        if (index < 0) {
                            index = 0;
                        }
                        int start = (int)(positions[index] >>> 32);
                        int end = (int)positions[lastIndex];
                        this.match.setOffset(start);
                        this.match.setLength(end - start + 1);
                        this.matchReportReference(qNameRef, lastIndex, refBinding, locator);
                    }
                    return;
                }
                --lastIndex;
                refBinding = refBinding.enclosingType();
            }
        }
        locator.reportAccurateTypeReference(this.match, qNameRef, this.pattern.simpleName);
    }

    protected void matchReportReference(QualifiedTypeReference qTypeRef, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        TypeBinding typeBinding = qTypeRef.resolvedType;
        int lastIndex = qTypeRef.tokens.length - 1;
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding)typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            ProblemReferenceBinding pbBinding = (ProblemReferenceBinding)typeBinding;
            typeBinding = pbBinding.closestMatch();
            lastIndex = pbBinding.compoundName.length - 1;
        }
        if (this.match == null) {
            this.match = locator.newTypeReferenceMatch(element, elementBinding, accuracy, qTypeRef);
        }
        if (typeBinding instanceof ReferenceBinding) {
            ReferenceBinding refBinding = (ReferenceBinding)typeBinding;
            while (refBinding != null && lastIndex >= 0) {
                if (this.resolveLevelForType(refBinding) != 0) {
                    if (locator.encloses(element)) {
                        long[] positions = qTypeRef.sourcePositions;
                        int index = lastIndex;
                        if (this.pattern.qualification != null) {
                            index = lastIndex - this.pattern.segmentsSize;
                        }
                        if (index < 0) {
                            index = 0;
                        }
                        int start = (int)(positions[index] >>> 32);
                        int end = (int)positions[lastIndex];
                        this.match.setOffset(start);
                        this.match.setLength(end - start + 1);
                        this.matchReportReference(qTypeRef, lastIndex, refBinding, locator);
                    }
                    return;
                }
                --lastIndex;
                refBinding = refBinding.enclosingType();
            }
        }
        locator.reportAccurateTypeReference(this.match, qTypeRef, this.pattern.simpleName);
    }

    void matchReportReference(Expression expr, int lastIndex, TypeBinding refBinding, MatchLocator locator) throws CoreException {
        if (refBinding.isParameterizedType() || refBinding.isRawType()) {
            boolean report;
            ParameterizedTypeBinding parameterizedBinding = (ParameterizedTypeBinding)refBinding;
            this.updateMatch(parameterizedBinding, this.pattern.getTypeArguments(), this.pattern.hasTypeParameters(), 0, locator);
            if (this.match.getRule() == 0) {
                return;
            }
            boolean bl = report = this.isErasureMatch && this.match.isErasure() || this.isEquivalentMatch && this.match.isEquivalent() || this.match.isExact();
            if (!report) {
                return;
            }
            if (refBinding.isParameterizedType() && this.pattern.hasTypeArguments()) {
                TypeReference typeRef = null;
                TypeReference[] typeArguments = null;
                if (expr instanceof ParameterizedQualifiedTypeReference) {
                    typeRef = (ParameterizedQualifiedTypeReference)expr;
                    typeArguments = ((ParameterizedQualifiedTypeReference)expr).typeArguments[lastIndex];
                } else if (expr instanceof ParameterizedSingleTypeReference) {
                    typeRef = (ParameterizedSingleTypeReference)expr;
                    typeArguments = ((ParameterizedSingleTypeReference)expr).typeArguments;
                }
                if (typeRef != null) {
                    locator.reportAccurateParameterizedTypeReference(this.match, typeRef, lastIndex, typeArguments);
                    return;
                }
            }
        } else if (this.pattern.hasTypeArguments()) {
            this.match.setRule(16);
        }
        if (expr instanceof ArrayTypeReference) {
            locator.reportAccurateTypeReference(this.match, expr, this.pattern.simpleName);
            return;
        }
        if (refBinding.isLocalType()) {
            IMethod method;
            LocalTypeBinding local = (LocalTypeBinding)refBinding.erasure();
            IJavaElement focus = this.pattern.focus;
            if (focus != null && local.enclosingMethod != null && focus.getParent().getElementType() == 9 && !CharOperation.equals(local.enclosingMethod.selector, (method = (IMethod)focus.getParent()).getElementName().toCharArray())) {
                return;
            }
        }
        if (this.pattern.simpleName == null) {
            this.match.setOffset(expr.sourceStart);
            this.match.setLength(expr.sourceEnd - expr.sourceStart + 1);
        }
        locator.report(this.match);
    }

    protected int referenceType() {
        return 7;
    }

    protected void reportDeclaration(ASTNode reference, IJavaElement element, MatchLocator locator, SimpleSet knownTypes) throws CoreException {
        TypeBinding typeBinding;
        int maxType;
        block15: {
            block16: {
                block14: {
                    maxType = -1;
                    typeBinding = null;
                    if (!(reference instanceof TypeReference)) break block14;
                    typeBinding = ((TypeReference)reference).resolvedType;
                    maxType = Integer.MAX_VALUE;
                    break block15;
                }
                if (!(reference instanceof QualifiedNameReference)) break block16;
                QualifiedNameReference qNameRef = (QualifiedNameReference)reference;
                Binding binding = qNameRef.binding;
                maxType = qNameRef.tokens.length - 1;
                switch (qNameRef.bits & 7) {
                    case 1: {
                        typeBinding = qNameRef.actualReceiverType;
                        maxType -= qNameRef.otherBindings == null ? 1 : qNameRef.otherBindings.length + 1;
                        break;
                    }
                    case 4: {
                        if (binding instanceof TypeBinding) {
                            typeBinding = (TypeBinding)binding;
                            break;
                        }
                        break block15;
                    }
                    case 3: 
                    case 7: {
                        if (binding instanceof ProblemFieldBinding) {
                            typeBinding = qNameRef.actualReceiverType;
                            maxType -= qNameRef.otherBindings == null ? 1 : qNameRef.otherBindings.length + 1;
                            break;
                        }
                        if (binding instanceof ProblemBinding) {
                            ProblemBinding pbBinding = (ProblemBinding)binding;
                            typeBinding = pbBinding.searchType;
                            char[] partialQualifiedName = pbBinding.name;
                            maxType = CharOperation.occurencesOf('.', partialQualifiedName) - 1;
                            if (typeBinding == null || maxType < 0) {
                                return;
                            }
                        }
                        break block15;
                    }
                }
                break block15;
            }
            if (reference instanceof SingleNameReference) {
                typeBinding = (TypeBinding)((SingleNameReference)reference).binding;
                maxType = 1;
            }
        }
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding)typeBinding).leafComponentType;
        }
        if (typeBinding == null || typeBinding instanceof BaseTypeBinding) {
            return;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            TypeBinding original = typeBinding.closestMatch();
            if (original == null) {
                return;
            }
            typeBinding = original;
        }
        typeBinding = typeBinding.erasure();
        this.reportDeclaration((ReferenceBinding)typeBinding, maxType, locator, knownTypes);
    }

    protected void reportDeclaration(ReferenceBinding typeBinding, int maxType, MatchLocator locator, SimpleSet knownTypes) throws CoreException {
        IType type = locator.lookupType(typeBinding);
        if (type == null) {
            return;
        }
        IResource resource = type.getResource();
        boolean isBinary = type.isBinary();
        IBinaryType info = null;
        if (isBinary) {
            if (resource == null) {
                resource = type.getJavaProject().getProject();
            }
            info = locator.getBinaryInfo((ClassFile)type.getClassFile(), resource);
        }
        while (maxType >= 0 && type != null) {
            if (!knownTypes.includes(type)) {
                if (isBinary) {
                    locator.reportBinaryMemberDeclaration(resource, type, typeBinding, info, 0);
                } else {
                    ClassScope scope;
                    if (typeBinding instanceof ParameterizedTypeBinding) {
                        typeBinding = ((ParameterizedTypeBinding)typeBinding).genericType();
                    }
                    if ((scope = ((SourceTypeBinding)typeBinding).scope) != null) {
                        TypeDeclaration typeDecl = scope.referenceContext;
                        int offset = typeDecl.sourceStart;
                        this.match = new TypeDeclarationMatch(((JavaElement)((Object)type)).resolved(typeBinding), 0, offset, typeDecl.sourceEnd - offset + 1, locator.getParticipant(), resource);
                        locator.report(this.match);
                    }
                }
                knownTypes.add(type);
            }
            typeBinding = typeBinding.enclosingType();
            IJavaElement parent = type.getParent();
            type = parent instanceof IType ? (IType)parent : null;
            --maxType;
        }
    }

    public int resolveLevel(ASTNode node) {
        if (node instanceof TypeReference) {
            return this.resolveLevel((TypeReference)node);
        }
        if (node instanceof NameReference) {
            return this.resolveLevel((NameReference)node);
        }
        return 0;
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof TypeBinding)) {
            return 0;
        }
        TypeBinding typeBinding = (TypeBinding)binding;
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding)typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            typeBinding = ((ProblemReferenceBinding)typeBinding).closestMatch();
        }
        return this.resolveLevelForTypeOrEnclosingTypes(this.pattern.simpleName, this.pattern.qualification, typeBinding);
    }

    protected int resolveLevel(NameReference nameRef) {
        Binding binding = nameRef.binding;
        if (nameRef instanceof SingleNameReference) {
            if (binding instanceof ProblemReferenceBinding) {
                binding = ((ProblemReferenceBinding)binding).closestMatch();
            }
            if (binding instanceof ReferenceBinding) {
                return this.resolveLevelForType((ReferenceBinding)binding);
            }
            return binding == null || binding instanceof ProblemBinding ? 1 : 0;
        }
        TypeBinding typeBinding = null;
        QualifiedNameReference qNameRef = (QualifiedNameReference)nameRef;
        switch (qNameRef.bits & 7) {
            case 1: {
                if (qNameRef.tokens.length < (qNameRef.otherBindings == null ? 2 : qNameRef.otherBindings.length + 2)) {
                    return 0;
                }
                typeBinding = nameRef.actualReceiverType;
                break;
            }
            case 2: {
                return 0;
            }
            case 4: {
                if (!(binding instanceof TypeBinding)) break;
                typeBinding = (TypeBinding)binding;
                break;
            }
            case 3: 
            case 7: {
                if (binding instanceof ProblemReferenceBinding) {
                    typeBinding = (TypeBinding)binding;
                    break;
                }
                if (binding instanceof ProblemFieldBinding) {
                    if (qNameRef.tokens.length < (qNameRef.otherBindings == null ? 2 : qNameRef.otherBindings.length + 2)) {
                        return 0;
                    }
                    typeBinding = nameRef.actualReceiverType;
                    break;
                }
                if (!(binding instanceof ProblemBinding)) break;
                ProblemBinding pbBinding = (ProblemBinding)binding;
                if (CharOperation.occurencesOf('.', pbBinding.name) <= 0) {
                    return 1;
                }
                typeBinding = pbBinding.searchType;
            }
        }
        return this.resolveLevel(typeBinding);
    }

    protected int resolveLevel(TypeReference typeRef) {
        TypeBinding typeBinding = typeRef.resolvedType;
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding)typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            typeBinding = ((ProblemReferenceBinding)typeBinding).closestMatch();
        }
        if (typeRef instanceof SingleTypeReference) {
            return this.resolveLevelForType(typeBinding);
        }
        return this.resolveLevelForTypeOrEnclosingTypes(this.pattern.simpleName, this.pattern.qualification, typeBinding);
    }

    protected int resolveLevelForType(TypeBinding typeBinding) {
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            if (this.pattern.typeSuffix != '\u0000') {
                return 1;
            }
        } else {
            switch (this.pattern.typeSuffix) {
                case 'C': {
                    if (typeBinding.isClass()) break;
                    return 0;
                }
                case '\n': {
                    if (typeBinding.isClass() || typeBinding.isInterface() && !typeBinding.isAnnotationType()) break;
                    return 0;
                }
                case '\t': {
                    if (typeBinding.isClass() || typeBinding.isEnum()) break;
                    return 0;
                }
                case 'I': {
                    if (typeBinding.isInterface() && !typeBinding.isAnnotationType()) break;
                    return 0;
                }
                case '\u000b': {
                    if (typeBinding.isInterface() || typeBinding.isAnnotationType()) break;
                    return 0;
                }
                case 'E': {
                    if (typeBinding.isEnum()) break;
                    return 0;
                }
                case 'A': {
                    if (typeBinding.isAnnotationType()) break;
                    return 0;
                }
            }
        }
        return this.resolveLevelForType(this.pattern.simpleName, this.pattern.qualification, this.pattern.getTypeArguments(), 0, typeBinding);
    }

    protected int resolveLevelForTypeOrEnclosingTypes(char[] simpleNamePattern, char[] qualificationPattern, TypeBinding binding) {
        if (binding == null) {
            return 1;
        }
        if (binding instanceof ReferenceBinding) {
            ReferenceBinding type = (ReferenceBinding)binding;
            while (type != null) {
                int level = this.resolveLevelForType(type);
                if (level != 0) {
                    return level;
                }
                type = type.enclosingType();
            }
        }
        return 0;
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

