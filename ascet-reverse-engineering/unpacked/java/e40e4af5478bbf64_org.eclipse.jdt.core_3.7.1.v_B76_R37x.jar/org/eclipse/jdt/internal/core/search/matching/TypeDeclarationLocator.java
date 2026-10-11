/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.QualifiedTypeDeclarationPattern;
import org.eclipse.jdt.internal.core.search.matching.TypeDeclarationPattern;

public class TypeDeclarationLocator
extends PatternLocator {
    protected TypeDeclarationPattern pattern;

    public TypeDeclarationLocator(TypeDeclarationPattern pattern) {
        super(pattern);
        this.pattern = pattern;
    }

    public int match(TypeDeclaration node, MatchingNodeSet nodeSet) {
        if (this.pattern.simpleName == null || this.matchesName(this.pattern.simpleName, node.name)) {
            return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    public int resolveLevel(ASTNode node) {
        if (!(node instanceof TypeDeclaration)) {
            return 0;
        }
        return this.resolveLevel(((TypeDeclaration)node).binding);
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof TypeBinding)) {
            return 0;
        }
        TypeBinding type = (TypeBinding)binding;
        switch (this.pattern.typeSuffix) {
            case 'C': {
                if (type.isClass()) break;
                return 0;
            }
            case '\n': {
                if (type.isClass() || type.isInterface() && !type.isAnnotationType()) break;
                return 0;
            }
            case '\t': {
                if (type.isClass() || type.isEnum()) break;
                return 0;
            }
            case 'I': {
                if (type.isInterface() && !type.isAnnotationType()) break;
                return 0;
            }
            case '\u000b': {
                if (type.isInterface() || type.isAnnotationType()) break;
                return 0;
            }
            case 'E': {
                if (type.isEnum()) break;
                return 0;
            }
            case 'A': {
                if (type.isAnnotationType()) break;
                return 0;
            }
        }
        if (this.pattern instanceof QualifiedTypeDeclarationPattern) {
            QualifiedTypeDeclarationPattern qualifiedPattern = (QualifiedTypeDeclarationPattern)this.pattern;
            return this.resolveLevelForType(qualifiedPattern.simpleName, qualifiedPattern.qualification, type);
        }
        char[] enclosingTypeName = this.pattern.enclosingTypeNames == null ? null : CharOperation.concatWith(this.pattern.enclosingTypeNames, '.');
        return this.resolveLevelForType(this.pattern.simpleName, this.pattern.pkg, enclosingTypeName, type);
    }

    protected int resolveLevelForType(char[] simpleNamePattern, char[] qualificationPattern, char[] enclosingNamePattern, TypeBinding type) {
        if (enclosingNamePattern == null) {
            return this.resolveLevelForType(simpleNamePattern, qualificationPattern, type);
        }
        if (qualificationPattern == null) {
            return this.resolveLevelForType(simpleNamePattern, enclosingNamePattern, type);
        }
        if (type instanceof ProblemReferenceBinding) {
            return 0;
        }
        char[] fullQualificationPattern = CharOperation.concat(qualificationPattern, enclosingNamePattern, '.');
        if (CharOperation.equals(this.pattern.pkg, CharOperation.concatWith(type.getPackage().compoundName, '.'))) {
            return this.resolveLevelForType(simpleNamePattern, fullQualificationPattern, type);
        }
        return 0;
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

