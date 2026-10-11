/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class QualifiedSuperReference
extends QualifiedThisReference {
    public QualifiedSuperReference(TypeReference name, int pos, int sourceEnd) {
        super(name, pos, sourceEnd);
    }

    public boolean isSuper() {
        return true;
    }

    public boolean isThis() {
        return false;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        return this.qualification.print(0, output).append(".super");
    }

    public TypeBinding resolveType(BlockScope scope) {
        if ((this.bits & 0x1FE00000) != 0) {
            scope.problemReporter().invalidParenthesizedExpression(this);
            return null;
        }
        super.resolveType(scope);
        if (this.currentCompatibleType == null) {
            return null;
        }
        if (this.currentCompatibleType.id == 1) {
            scope.problemReporter().cannotUseSuperInJavaLangObject(this);
            return null;
        }
        this.resolvedType = this.currentCompatibleType.superclass();
        return this.resolvedType;
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            this.qualification.traverse(visitor, blockScope);
        }
        visitor.endVisit(this, blockScope);
    }

    public void traverse(ASTVisitor visitor, ClassScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            this.qualification.traverse(visitor, blockScope);
        }
        visitor.endVisit(this, blockScope);
    }
}

