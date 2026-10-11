/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ThisReference
extends Reference {
    public static ThisReference implicitThis() {
        ThisReference implicitThis = new ThisReference(0, 0);
        implicitThis.bits |= 4;
        return implicitThis;
    }

    public ThisReference(int sourceStart, int sourceEnd) {
        this.sourceStart = sourceStart;
        this.sourceEnd = sourceEnd;
    }

    public FlowInfo analyseAssignment(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo, Assignment assignment, boolean isCompound) {
        return flowInfo;
    }

    public boolean checkAccess(MethodScope methodScope) {
        if (methodScope.isConstructorCall) {
            methodScope.problemReporter().fieldsOrThisBeforeConstructorInvocation(this);
            return false;
        }
        if (methodScope.isStatic) {
            methodScope.problemReporter().errorThisSuperInStatic(this);
            return false;
        }
        return true;
    }

    public void generateAssignment(BlockScope currentScope, CodeStream codeStream, Assignment assignment, boolean valueRequired) {
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (valueRequired) {
            codeStream.aload_0();
        }
        if ((this.bits & 4) == 0) {
            codeStream.recordPositionsFrom(pc, this.sourceStart);
        }
    }

    public void generateCompoundAssignment(BlockScope currentScope, CodeStream codeStream, Expression expression, int operator, int assignmentImplicitConversion, boolean valueRequired) {
    }

    public void generatePostIncrement(BlockScope currentScope, CodeStream codeStream, CompoundAssignment postIncrement, boolean valueRequired) {
    }

    public boolean isImplicitThis() {
        return (this.bits & 4) != 0;
    }

    public boolean isThis() {
        return true;
    }

    public int nullStatus(FlowInfo flowInfo) {
        return 4;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        if (this.isImplicitThis()) {
            return output;
        }
        return output.append("this");
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.constant = Constant.NotAConstant;
        if (!this.isImplicitThis() && !this.checkAccess(scope.methodScope())) {
            return null;
        }
        this.resolvedType = scope.enclosingReceiverType();
        return this.resolvedType;
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        visitor.visit(this, blockScope);
        visitor.endVisit(this, blockScope);
    }

    public void traverse(ASTVisitor visitor, ClassScope blockScope) {
        visitor.visit(this, blockScope);
        visitor.endVisit(this, blockScope);
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (!this.isImplicitThis()) {
            currentScope.resetEnclosingMethodStaticFlag();
        }
        return super.analyseCode(currentScope, flowContext, flowInfo);
    }
}

