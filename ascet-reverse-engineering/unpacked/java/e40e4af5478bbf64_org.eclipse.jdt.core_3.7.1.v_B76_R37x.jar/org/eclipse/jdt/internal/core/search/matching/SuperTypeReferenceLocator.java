/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.SuperTypeReferencePattern;

public class SuperTypeReferenceLocator
extends PatternLocator {
    protected SuperTypeReferencePattern pattern;

    public SuperTypeReferenceLocator(SuperTypeReferencePattern pattern) {
        super(pattern);
        this.pattern = pattern;
    }

    public int match(TypeReference node, MatchingNodeSet nodeSet) {
        if (this.flavors != 4096) {
            return 0;
        }
        if (this.pattern.superSimpleName == null) {
            return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
        }
        char[] typeRefSimpleName = null;
        if (node instanceof SingleTypeReference) {
            typeRefSimpleName = ((SingleTypeReference)node).token;
        } else {
            char[][] tokens = ((QualifiedTypeReference)node).tokens;
            typeRefSimpleName = tokens[tokens.length - 1];
        }
        if (this.matchesName(this.pattern.superSimpleName, typeRefSimpleName)) {
            return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
        }
        return 0;
    }

    protected int matchContainer() {
        return 2;
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        if (elementBinding instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding = (ReferenceBinding)elementBinding;
            if (referenceBinding.isClass() && this.pattern.typeSuffix == 'I') {
                return;
            }
            if (referenceBinding.isInterface() && this.pattern.typeSuffix == 'C') {
                return;
            }
        }
        super.matchReportReference(reference, element, elementBinding, accuracy, locator);
    }

    protected int referenceType() {
        return 7;
    }

    public int resolveLevel(ASTNode node) {
        if (!(node instanceof TypeReference)) {
            return 0;
        }
        TypeReference typeRef = (TypeReference)node;
        TypeBinding typeBinding = typeRef.resolvedType;
        if (typeBinding instanceof ArrayBinding) {
            typeBinding = ((ArrayBinding)typeBinding).leafComponentType;
        }
        if (typeBinding instanceof ProblemReferenceBinding) {
            typeBinding = ((ProblemReferenceBinding)typeBinding).closestMatch();
        }
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return 1;
        }
        return this.resolveLevelForType(this.pattern.superSimpleName, this.pattern.superQualification, typeBinding);
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof ReferenceBinding)) {
            return 0;
        }
        ReferenceBinding type = (ReferenceBinding)binding;
        int level = 0;
        if (this.pattern.superRefKind != 1 && (level = this.resolveLevelForType(this.pattern.superSimpleName, this.pattern.superQualification, type.superclass())) == 3) {
            return 3;
        }
        if (this.pattern.superRefKind != 2) {
            ReferenceBinding[] superInterfaces = type.superInterfaces();
            int i = 0;
            int max = superInterfaces.length;
            while (i < max) {
                int newLevel = this.resolveLevelForType(this.pattern.superSimpleName, this.pattern.superQualification, superInterfaces[i]);
                if (newLevel > level) {
                    if (newLevel == 3) {
                        return 3;
                    }
                    level = newLevel;
                }
                ++i;
            }
        }
        return level;
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

