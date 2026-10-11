/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SuperReference
extends ThisReference {
    public SuperReference(int sourceStart, int sourceEnd) {
        super(sourceStart, sourceEnd);
    }

    public static ExplicitConstructorCall implicitSuperConstructorCall() {
        return new ExplicitConstructorCall(1);
    }

    public boolean isImplicitThis() {
        return false;
    }

    public boolean isSuper() {
        return true;
    }

    public boolean isThis() {
        return false;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        return output.append("super");
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.constant = Constant.NotAConstant;
        if (!this.checkAccess(scope.methodScope())) {
            return null;
        }
        ReferenceBinding enclosingReceiverType = scope.enclosingReceiverType();
        if (enclosingReceiverType.id == 1) {
            scope.problemReporter().cannotUseSuperInJavaLangObject(this);
            return null;
        }
        this.resolvedType = enclosingReceiverType.superclass();
        return this.resolvedType;
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        visitor.visit(this, blockScope);
        visitor.endVisit(this, blockScope);
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo, boolean valueRequired) {
        currentScope.resetEnclosingMethodStaticFlag();
        return this.analyseCode(currentScope, flowContext, flowInfo);
    }
}

