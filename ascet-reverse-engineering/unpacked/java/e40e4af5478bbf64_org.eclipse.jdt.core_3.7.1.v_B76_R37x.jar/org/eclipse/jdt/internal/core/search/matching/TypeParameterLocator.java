/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.TypeParameterPattern;

public class TypeParameterLocator
extends PatternLocator {
    protected TypeParameterPattern pattern;

    public TypeParameterLocator(TypeParameterPattern pattern) {
        super(pattern);
        this.pattern = pattern;
    }

    public int match(TypeReference node, MatchingNodeSet nodeSet) {
        if (this.pattern.findReferences && node instanceof SingleTypeReference && this.matchesName(this.pattern.name, ((SingleTypeReference)node).token)) {
            int level = this.pattern.mustResolve ? 2 : 3;
            return nodeSet.addMatch(node, level);
        }
        return 0;
    }

    public int match(TypeParameter node, MatchingNodeSet nodeSet) {
        if (this.pattern.findDeclarations && this.matchesName(this.pattern.name, node.name)) {
            int level = this.pattern.mustResolve ? 2 : 3;
            return nodeSet.addMatch(node, level);
        }
        return 0;
    }

    protected int matchContainer() {
        if (this.pattern.findReferences) {
            return 15;
        }
        return 6;
    }

    protected int matchTypeParameter(TypeVariableBinding variable, boolean matchName) {
        if (variable == null || variable.declaringElement == null) {
            return 1;
        }
        if (variable.declaringElement instanceof ReferenceBinding) {
            ReferenceBinding refBinding = (ReferenceBinding)variable.declaringElement;
            if (this.matchesName(refBinding.sourceName, this.pattern.declaringMemberName)) {
                return 3;
            }
        } else if (variable.declaringElement instanceof MethodBinding) {
            MethodBinding methBinding = (MethodBinding)variable.declaringElement;
            if (this.matchesName(methBinding.declaringClass.sourceName, this.pattern.methodDeclaringClassName) && (methBinding.isConstructor() || this.matchesName(methBinding.selector, this.pattern.declaringMemberName))) {
                int length;
                int n = length = this.pattern.methodArgumentTypes == null ? 0 : this.pattern.methodArgumentTypes.length;
                if (methBinding.parameters == null) {
                    if (length == 0) {
                        return 3;
                    }
                } else if (methBinding.parameters.length == length) {
                    int i = 0;
                    while (i < length) {
                        if (!this.matchesName(methBinding.parameters[i].shortReadableName(), this.pattern.methodArgumentTypes[i])) {
                            return 0;
                        }
                        ++i;
                    }
                    return 3;
                }
            }
        }
        return 0;
    }

    protected int referenceType() {
        return 15;
    }

    public int resolveLevel(ASTNode possibleMatchingNode) {
        if (this.pattern.findReferences && possibleMatchingNode instanceof SingleTypeReference) {
            return this.resolveLevel(((SingleTypeReference)possibleMatchingNode).resolvedType);
        }
        if (this.pattern.findDeclarations && possibleMatchingNode instanceof TypeParameter) {
            return this.matchTypeParameter(((TypeParameter)possibleMatchingNode).binding, true);
        }
        return 0;
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof TypeVariableBinding)) {
            return 0;
        }
        return this.matchTypeParameter((TypeVariableBinding)binding, true);
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

