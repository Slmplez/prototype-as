/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.OperatorExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class InstanceOfExpression
extends OperatorExpression {
    public Expression expression;
    public TypeReference type;

    public InstanceOfExpression(Expression expression, TypeReference type) {
        this.expression = expression;
        this.type = type;
        type.bits |= 0x40000000;
        this.bits |= 0x7C0;
        this.sourceStart = expression.sourceStart;
        this.sourceEnd = type.sourceEnd;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        LocalVariableBinding local = this.expression.localVariableBinding();
        if (local != null && (local.type.tagBits & 2L) == 0L) {
            flowInfo = this.expression.analyseCode(currentScope, flowContext, flowInfo).unconditionalInits();
            FlowInfo initsWhenTrue = flowInfo.copy();
            initsWhenTrue.markAsComparedEqualToNonNull(local);
            if ((flowContext.tagBits & 4) != 0) {
                initsWhenTrue.markedAsNullOrNonNullInAssertExpression(local);
            }
            flowContext.recordUsingNullReference(currentScope, local, this.expression, 1025, flowInfo);
            return FlowInfo.conditional(initsWhenTrue, flowInfo.copy());
        }
        return this.expression.analyseCode(currentScope, flowContext, flowInfo).unconditionalInits();
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        this.expression.generateCode(currentScope, codeStream, true);
        codeStream.instance_of(this.type.resolvedType);
        if (valueRequired) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public StringBuffer printExpressionNoParenthesis(int indent, StringBuffer output) {
        this.expression.printExpression(indent, output).append(" instanceof ");
        return this.type.print(0, output);
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.constant = Constant.NotAConstant;
        TypeBinding expressionType = this.expression.resolveType(scope);
        TypeBinding checkedType = this.type.resolveType(scope, true);
        if (expressionType == null || checkedType == null) {
            return null;
        }
        if (!checkedType.isReifiable()) {
            scope.problemReporter().illegalInstanceOfGenericType(checkedType, this);
        } else if (expressionType != TypeBinding.NULL && expressionType.isBaseType() || !this.checkCastTypesCompatibility(scope, checkedType, expressionType, null)) {
            scope.problemReporter().notCompatibleTypesError(this, expressionType, checkedType);
        }
        this.resolvedType = TypeBinding.BOOLEAN;
        return this.resolvedType;
    }

    public void tagAsUnnecessaryCast(Scope scope, TypeBinding castType) {
        if (this.expression.resolvedType != TypeBinding.NULL) {
            scope.problemReporter().unnecessaryInstanceof(this, castType);
        }
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            this.expression.traverse(visitor, scope);
            this.type.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }
}

