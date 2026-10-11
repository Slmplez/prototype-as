/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;

public class CompletionNodeFound
extends RuntimeException {
    public ASTNode astNode;
    public Binding qualifiedBinding;
    public Scope scope;
    public boolean insideTypeAnnotation = false;
    private static final long serialVersionUID = 6981437684184091462L;

    public CompletionNodeFound() {
        this(null, null, null, false);
    }

    public CompletionNodeFound(ASTNode astNode, Binding qualifiedBinding, Scope scope) {
        this(astNode, qualifiedBinding, scope, false);
    }

    public CompletionNodeFound(ASTNode astNode, Binding qualifiedBinding, Scope scope, boolean insideTypeAnnotation) {
        this.astNode = astNode;
        this.qualifiedBinding = qualifiedBinding;
        this.scope = scope;
        this.insideTypeAnnotation = insideTypeAnnotation;
    }

    public CompletionNodeFound(ASTNode astNode, Scope scope) {
        this(astNode, null, scope, false);
    }

    public CompletionNodeFound(ASTNode astNode, Scope scope, boolean insideTypeAnnotation) {
        this(astNode, null, scope, insideTypeAnnotation);
    }
}

