/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.PackageReferenceMatch;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImportBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PackageReferencePattern;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;

public class PackageReferenceLocator
extends PatternLocator {
    protected PackageReferencePattern pattern;

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static boolean isDeclaringPackageFragment(IPackageFragment packageFragment, ReferenceBinding typeBinding) {
        char[] fileName = typeBinding.getFileName();
        if (fileName == null) return true;
        fileName = CharOperation.replaceOnCopy(fileName, '/', '\\');
        fileName = CharOperation.lastSegment(fileName, '\\');
        try {
            switch (packageFragment.getKind()) {
                case 1: {
                    if (!org.eclipse.jdt.internal.core.util.Util.isJavaLikeFileName(fileName)) return false;
                    if (packageFragment.getCompilationUnit(new String(fileName)).exists()) return true;
                    return false;
                }
                case 2: {
                    if (!Util.isClassFileName(fileName)) return false;
                    if (packageFragment.getClassFile(new String(fileName)).exists()) return true;
                    return false;
                }
            }
            return true;
        }
        catch (JavaModelException javaModelException) {}
        return true;
    }

    public PackageReferenceLocator(PackageReferencePattern pattern) {
        super(pattern);
        this.pattern = pattern;
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
        if (!(node instanceof QualifiedNameReference)) {
            return 0;
        }
        return nodeSet.addMatch(node, this.matchLevelForTokens(((QualifiedNameReference)node).tokens));
    }

    public int match(TypeReference node, MatchingNodeSet nodeSet) {
        if (node instanceof JavadocSingleTypeReference) {
            char[][] tokens = new char[][]{((JavadocSingleTypeReference)node).token};
            return nodeSet.addMatch(node, this.matchLevelForTokens(tokens));
        }
        if (!(node instanceof QualifiedTypeReference)) {
            return 0;
        }
        return nodeSet.addMatch(node, this.matchLevelForTokens(((QualifiedTypeReference)node).tokens));
    }

    protected int matchLevel(ImportReference importRef) {
        return this.matchLevelForTokens(importRef.tokens);
    }

    protected int matchLevelForTokens(char[][] tokens) {
        if (this.pattern.pkgName == null) {
            return 3;
        }
        switch (this.matchMode) {
            case 0: 
            case 1: {
                if (!CharOperation.prefixEquals(this.pattern.pkgName, CharOperation.concatWith(tokens, '.'), this.isCaseSensitive)) break;
                return 2;
            }
            case 2: {
                char[] patternName;
                char[] cArray = patternName = this.pattern.pkgName[this.pattern.pkgName.length - 1] == '*' ? this.pattern.pkgName : CharOperation.concat(this.pattern.pkgName, ".*".toCharArray());
                if (!CharOperation.match(patternName, CharOperation.concatWith(tokens, '.'), this.isCaseSensitive)) break;
                return 2;
            }
            case 4: {
                break;
            }
            case 128: {
                char[] packageName = CharOperation.concatWith(tokens, '.');
                if (CharOperation.camelCaseMatch(this.pattern.pkgName, packageName, false)) {
                    return 2;
                }
                if (this.isCaseSensitive || !CharOperation.prefixEquals(this.pattern.pkgName, packageName, false)) break;
                return 2;
            }
            case 256: {
                if (!CharOperation.camelCaseMatch(this.pattern.pkgName, CharOperation.concatWith(tokens, '.'), true)) break;
                return 2;
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
        }
        super.matchLevelAndReportImportRef(importRef, refBinding, locator);
    }

    protected void matchReportImportRef(ImportReference importRef, Binding binding, IJavaElement element, int accuracy, MatchLocator locator) throws CoreException {
        if (binding == null) {
            this.matchReportReference(importRef, element, null, accuracy, locator);
        } else if (locator.encloses(element)) {
            PackageBinding pkgBinding;
            long[] positions = importRef.sourcePositions;
            int last = positions.length - 1;
            if (binding instanceof ProblemReferenceBinding) {
                binding = ((ProblemReferenceBinding)binding).closestMatch();
            }
            if (binding instanceof ReferenceBinding && (pkgBinding = ((ReferenceBinding)binding).fPackage) != null) {
                last = pkgBinding.compoundName.length;
            }
            if (binding instanceof PackageBinding) {
                last = ((PackageBinding)binding).compoundName.length;
            }
            int start = (int)(positions[0] >>> 32);
            int end = (int)positions[last - 1];
            this.match = locator.newPackageReferenceMatch(element, accuracy, start, end - start + 1, importRef);
            locator.report(this.match);
        }
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        this.matchReportReference(reference, element, null, null, elementBinding, accuracy, locator);
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, IJavaElement localElement, IJavaElement[] otherElements, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        int last;
        long[] positions;
        block25: {
            ReferenceBinding enclosingType;
            PackageBinding pkgBinding;
            TypeBinding typeBinding;
            block27: {
                block26: {
                    block24: {
                        positions = null;
                        last = -1;
                        if (!(reference instanceof ImportReference)) break block24;
                        ImportReference importRef = (ImportReference)reference;
                        positions = importRef.sourcePositions;
                        last = (importRef.bits & 0x20000) != 0 ? positions.length : positions.length - 1;
                        break block25;
                    }
                    typeBinding = null;
                    if (!(reference instanceof QualifiedNameReference)) break block26;
                    QualifiedNameReference qNameRef = (QualifiedNameReference)reference;
                    positions = qNameRef.sourcePositions;
                    switch (qNameRef.bits & 7) {
                        case 1: {
                            typeBinding = qNameRef.actualReceiverType;
                            break;
                        }
                        case 4: {
                            if (qNameRef.binding instanceof TypeBinding) {
                                typeBinding = (TypeBinding)qNameRef.binding;
                                break;
                            }
                            break block27;
                        }
                        case 3: 
                        case 7: {
                            Binding binding = qNameRef.binding;
                            if (binding instanceof TypeBinding) {
                                typeBinding = (TypeBinding)binding;
                                break;
                            }
                            if (binding instanceof ProblemFieldBinding) {
                                typeBinding = qNameRef.actualReceiverType;
                                last = qNameRef.tokens.length - (qNameRef.otherBindings == null ? 2 : qNameRef.otherBindings.length + 2);
                                break;
                            }
                            if (!(binding instanceof ProblemBinding)) break block27;
                            ProblemBinding pbBinding = (ProblemBinding)binding;
                            typeBinding = pbBinding.searchType;
                            last = CharOperation.occurencesOf('.', pbBinding.name);
                        }
                        default: {
                            break;
                        }
                        {
                        }
                    }
                    break block27;
                }
                if (reference instanceof QualifiedTypeReference) {
                    QualifiedTypeReference qTypeRef = (QualifiedTypeReference)reference;
                    positions = qTypeRef.sourcePositions;
                    typeBinding = qTypeRef.resolvedType;
                } else if (reference instanceof JavadocSingleTypeReference) {
                    JavadocSingleTypeReference jsTypeRef = (JavadocSingleTypeReference)reference;
                    positions = new long[]{((long)jsTypeRef.sourceStart << 32) + (long)jsTypeRef.sourceEnd};
                    typeBinding = jsTypeRef.resolvedType;
                }
            }
            if (positions == null) {
                return;
            }
            if (typeBinding instanceof ArrayBinding) {
                typeBinding = ((ArrayBinding)typeBinding).leafComponentType;
            }
            if (typeBinding instanceof ProblemReferenceBinding) {
                typeBinding = ((ProblemReferenceBinding)typeBinding).closestMatch();
            }
            if (typeBinding instanceof ReferenceBinding && (pkgBinding = ((ReferenceBinding)typeBinding).fPackage) != null) {
                last = pkgBinding.compoundName.length;
            }
            ReferenceBinding referenceBinding = enclosingType = typeBinding == null ? null : typeBinding.enclosingType();
            if (enclosingType != null) {
                int length = positions.length;
                while (enclosingType != null && length > 0) {
                    --length;
                    enclosingType = enclosingType.enclosingType();
                }
                if (length <= 1) {
                    return;
                }
            }
        }
        if (last == -1) {
            last = this.pattern.segments.length;
        }
        if (last == 0) {
            return;
        }
        if (last > positions.length) {
            last = positions.length;
        }
        int sourceStart = (int)(positions[0] >>> 32);
        int sourceEnd = (int)positions[last - 1];
        PackageReferenceMatch packageReferenceMatch = locator.newPackageReferenceMatch(element, accuracy, sourceStart, sourceEnd - sourceStart + 1, reference);
        packageReferenceMatch.setLocalElement(localElement);
        this.match = packageReferenceMatch;
        locator.report(this.match);
    }

    protected int referenceType() {
        return 4;
    }

    public int resolveLevel(ASTNode node) {
        if (node instanceof JavadocQualifiedTypeReference) {
            JavadocQualifiedTypeReference qualifRef = (JavadocQualifiedTypeReference)node;
            if (qualifRef.packageBinding != null) {
                return this.resolveLevel(qualifRef.packageBinding);
            }
            return this.resolveLevel(qualifRef.resolvedType);
        }
        if (node instanceof JavadocSingleTypeReference) {
            JavadocSingleTypeReference singleRef = (JavadocSingleTypeReference)node;
            if (singleRef.packageBinding != null) {
                return this.resolveLevel(singleRef.packageBinding);
            }
            return 0;
        }
        if (node instanceof QualifiedTypeReference) {
            return this.resolveLevel(((QualifiedTypeReference)node).resolvedType);
        }
        if (node instanceof QualifiedNameReference) {
            return this.resolveLevel((QualifiedNameReference)node);
        }
        return 0;
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        char[][] compoundName = null;
        if (binding instanceof ImportBinding) {
            compoundName = ((ImportBinding)binding).compoundName;
        } else if (binding instanceof PackageBinding) {
            compoundName = ((PackageBinding)binding).compoundName;
        } else {
            if (binding instanceof ArrayBinding) {
                binding = ((ArrayBinding)binding).leafComponentType;
            }
            if (binding instanceof ProblemReferenceBinding) {
                binding = ((ProblemReferenceBinding)binding).closestMatch();
            }
            if (binding == null) {
                return 1;
            }
            if (binding instanceof ReferenceBinding) {
                PackageBinding pkgBinding = ((ReferenceBinding)binding).fPackage;
                if (pkgBinding == null) {
                    return 1;
                }
                compoundName = pkgBinding.compoundName;
            }
        }
        if (compoundName != null && this.matchesName(this.pattern.pkgName, CharOperation.concatWith(compoundName, '.'))) {
            if (this.pattern.focus instanceof IPackageFragment && binding instanceof ReferenceBinding && !PackageReferenceLocator.isDeclaringPackageFragment((IPackageFragment)this.pattern.focus, (ReferenceBinding)binding)) {
                return 0;
            }
            return 3;
        }
        return 0;
    }

    protected int resolveLevel(QualifiedNameReference qNameRef) {
        TypeBinding typeBinding = null;
        switch (qNameRef.bits & 7) {
            case 1: {
                if (qNameRef.tokens.length < (qNameRef.otherBindings == null ? 3 : qNameRef.otherBindings.length + 3)) {
                    return 0;
                }
                typeBinding = qNameRef.actualReceiverType;
                break;
            }
            case 2: {
                return 0;
            }
            case 4: {
                if (!(qNameRef.binding instanceof TypeBinding)) break;
                typeBinding = (TypeBinding)qNameRef.binding;
                break;
            }
            case 3: 
            case 7: {
                Binding binding = qNameRef.binding;
                if (binding instanceof ProblemReferenceBinding) {
                    typeBinding = (TypeBinding)binding;
                    break;
                }
                if (binding instanceof ProblemFieldBinding) {
                    if (qNameRef.tokens.length < (qNameRef.otherBindings == null ? 3 : qNameRef.otherBindings.length + 3)) {
                        return 0;
                    }
                    typeBinding = qNameRef.actualReceiverType;
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

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

