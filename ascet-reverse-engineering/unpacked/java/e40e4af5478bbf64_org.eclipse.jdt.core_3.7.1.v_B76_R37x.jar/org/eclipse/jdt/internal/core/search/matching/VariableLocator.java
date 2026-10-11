/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.PatternLocator;
import org.eclipse.jdt.internal.core.search.matching.VariablePattern;

public class VariableLocator
extends PatternLocator {
    protected VariablePattern pattern;

    public VariableLocator(VariablePattern pattern) {
        super(pattern);
        this.pattern = pattern;
    }

    public int match(Expression node, MatchingNodeSet nodeSet) {
        if (this.pattern.writeAccess) {
            Expression lhs;
            if (this.pattern.readAccess) {
                return 0;
            }
            if (node instanceof Assignment && (lhs = ((Assignment)node).lhs) instanceof Reference) {
                return this.matchReference((Reference)lhs, nodeSet, true);
            }
        } else if ((this.pattern.readAccess || this.pattern.fineGrain != 0) && node instanceof Assignment && !(node instanceof CompoundAssignment)) {
            char[] lastToken = null;
            Expression lhs = ((Assignment)node).lhs;
            if (lhs instanceof QualifiedNameReference) {
                char[][] tokens = ((QualifiedNameReference)lhs).tokens;
                lastToken = tokens[tokens.length - 1];
            }
            if (lastToken == null || this.matchesName(this.pattern.name, lastToken)) {
                nodeSet.removePossibleMatch(lhs);
                nodeSet.removeTrustedMatch(lhs);
            }
        }
        return 0;
    }

    public int match(Reference node, MatchingNodeSet nodeSet) {
        return this.pattern.readAccess || this.pattern.fineGrain != 0 ? this.matchReference(node, nodeSet, false) : 0;
    }

    protected int matchReference(Reference node, MatchingNodeSet nodeSet, boolean writeOnlyAccess) {
        if (node instanceof NameReference) {
            if (this.pattern.name == null) {
                return nodeSet.addMatch(node, this.pattern.mustResolve ? 2 : 3);
            }
            if (node instanceof SingleNameReference) {
                if (this.matchesName(this.pattern.name, ((SingleNameReference)node).token)) {
                    return nodeSet.addMatch(node, 2);
                }
            } else {
                QualifiedNameReference qNameRef = (QualifiedNameReference)node;
                char[][] tokens = qNameRef.tokens;
                if (writeOnlyAccess) {
                    if (this.matchesName(this.pattern.name, tokens[tokens.length - 1])) {
                        return nodeSet.addMatch(node, 2);
                    }
                } else {
                    int i = 0;
                    int max = tokens.length;
                    while (i < max) {
                        if (this.matchesName(this.pattern.name, tokens[i])) {
                            return nodeSet.addMatch(node, 2);
                        }
                        ++i;
                    }
                }
            }
        }
        return 0;
    }

    public String toString() {
        return "Locator for " + this.pattern.toString();
    }
}

