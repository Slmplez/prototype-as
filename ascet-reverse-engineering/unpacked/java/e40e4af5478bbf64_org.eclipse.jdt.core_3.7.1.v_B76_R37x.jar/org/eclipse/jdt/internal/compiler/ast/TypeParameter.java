/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class TypeParameter
extends AbstractVariableDeclaration {
    public TypeVariableBinding binding;
    public TypeReference[] bounds;

    public int getKind() {
        return 6;
    }

    public void checkBounds(Scope scope) {
        if (this.type != null) {
            this.type.checkBounds(scope);
        }
        if (this.bounds != null) {
            int i = 0;
            int length = this.bounds.length;
            while (i < length) {
                this.bounds[i].checkBounds(scope);
                ++i;
            }
        }
    }

    private void internalResolve(Scope scope, boolean staticContext) {
        Binding existingType;
        if (this.binding != null && (existingType = scope.parent.getBinding(this.name, 4, this, false)) != null && this.binding != existingType && existingType.isValidBinding() && (existingType.kind() != 4100 || !staticContext)) {
            scope.problemReporter().typeHiding(this, existingType);
        }
    }

    public void resolve(BlockScope scope) {
        this.internalResolve(scope, scope.methodScope().isStatic);
    }

    public void resolve(ClassScope scope) {
        this.internalResolve(scope, scope.enclosingSourceType().isStatic());
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        output.append(this.name);
        if (this.type != null) {
            output.append(" extends ");
            this.type.print(0, output);
        }
        if (this.bounds != null) {
            int i = 0;
            while (i < this.bounds.length) {
                output.append(" & ");
                this.bounds[i].print(0, output);
                ++i;
            }
        }
        return output;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            if (this.type != null) {
                this.type.traverse(visitor, scope);
            }
            if (this.bounds != null) {
                int boundsLength = this.bounds.length;
                int i = 0;
                while (i < boundsLength) {
                    this.bounds[i].traverse(visitor, scope);
                    ++i;
                }
            }
        }
        visitor.endVisit(this, scope);
    }

    public void traverse(ASTVisitor visitor, ClassScope scope) {
        if (visitor.visit(this, scope)) {
            if (this.type != null) {
                this.type.traverse(visitor, scope);
            }
            if (this.bounds != null) {
                int boundsLength = this.bounds.length;
                int i = 0;
                while (i < boundsLength) {
                    this.bounds[i].traverse(visitor, scope);
                    ++i;
                }
            }
        }
        visitor.endVisit(this, scope);
    }
}

