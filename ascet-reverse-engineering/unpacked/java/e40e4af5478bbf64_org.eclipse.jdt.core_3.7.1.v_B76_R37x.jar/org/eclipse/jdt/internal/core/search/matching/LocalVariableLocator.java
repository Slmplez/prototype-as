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
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.core.LocalVariable;
import org.eclipse.jdt.internal.core.search.matching.LocalVariablePattern;
import org.eclipse.jdt.internal.core.search.matching.MatchLocator;
import org.eclipse.jdt.internal.core.search.matching.MatchingNodeSet;
import org.eclipse.jdt.internal.core.search.matching.VariableLocator;

public class LocalVariableLocator
extends VariableLocator {
    public LocalVariableLocator(LocalVariablePattern pattern) {
        super(pattern);
    }

    public int match(LocalDeclaration node, MatchingNodeSet nodeSet) {
        int referencesLevel = 0;
        if (this.pattern.findReferences && this.pattern.writeAccess && !this.pattern.readAccess && node.initialization != null && this.matchesName(this.pattern.name, node.name)) {
            referencesLevel = this.pattern.mustResolve ? 2 : 3;
        }
        int declarationsLevel = 0;
        if (this.pattern.findDeclarations && this.matchesName(this.pattern.name, node.name) && node.declarationSourceStart == this.getLocalVariable().declarationSourceStart) {
            declarationsLevel = this.pattern.mustResolve ? 2 : 3;
        }
        return nodeSet.addMatch(node, referencesLevel >= declarationsLevel ? referencesLevel : declarationsLevel);
    }

    private LocalVariable getLocalVariable() {
        return ((LocalVariablePattern)this.pattern).localVariable;
    }

    protected void matchReportReference(ASTNode reference, IJavaElement element, Binding elementBinding, int accuracy, MatchLocator locator) throws CoreException {
        int offset = -1;
        int length = -1;
        if (reference instanceof SingleNameReference) {
            offset = reference.sourceStart;
            length = reference.sourceEnd - offset + 1;
        } else if (reference instanceof QualifiedNameReference) {
            QualifiedNameReference qNameRef = (QualifiedNameReference)reference;
            long sourcePosition = qNameRef.sourcePositions[0];
            offset = (int)(sourcePosition >>> 32);
            length = (int)sourcePosition - offset + 1;
        } else if (reference instanceof LocalDeclaration) {
            LocalVariable localVariable = this.getLocalVariable();
            offset = localVariable.nameStart;
            length = localVariable.nameEnd - offset + 1;
            element = localVariable;
            this.match = locator.newDeclarationMatch(element, null, accuracy, offset, length);
            locator.report(this.match);
            return;
        }
        if (offset >= 0) {
            this.match = locator.newLocalVariableReferenceMatch(element, accuracy, offset, length, reference);
            locator.report(this.match);
        }
    }

    protected int matchContainer() {
        return 4;
    }

    protected int matchLocalVariable(LocalVariableBinding variable, boolean matchName) {
        if (variable == null) {
            return 1;
        }
        if (matchName && !this.matchesName(this.pattern.name, variable.readableName())) {
            return 0;
        }
        return variable.declaration.declarationSourceStart == this.getLocalVariable().declarationSourceStart ? 3 : 0;
    }

    protected int referenceType() {
        return 14;
    }

    public int resolveLevel(ASTNode possiblelMatchingNode) {
        if ((this.pattern.findReferences || this.pattern.fineGrain != 0) && possiblelMatchingNode instanceof NameReference) {
            return this.resolveLevel((NameReference)possiblelMatchingNode);
        }
        if (possiblelMatchingNode instanceof LocalDeclaration) {
            return this.matchLocalVariable(((LocalDeclaration)possiblelMatchingNode).binding, true);
        }
        return 0;
    }

    public int resolveLevel(Binding binding) {
        if (binding == null) {
            return 1;
        }
        if (!(binding instanceof LocalVariableBinding)) {
            return 0;
        }
        return this.matchLocalVariable((LocalVariableBinding)binding, true);
    }

    protected int resolveLevel(NameReference nameRef) {
        return this.resolveLevel(nameRef.binding);
    }
}

