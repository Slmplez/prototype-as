/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class Assignment
extends Expression {
    public Expression lhs;
    public Expression expression;

    public Assignment(Expression lhs, Expression expression, int sourceEnd) {
        this.lhs = lhs;
        lhs.bits |= 0x2000;
        this.expression = expression;
        this.sourceStart = lhs.sourceStart;
        this.sourceEnd = sourceEnd;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        LocalVariableBinding local = this.lhs.localVariableBinding();
        if ((this.expression.implicitConversion & 0x400) != 0) {
            this.expression.checkNPE(currentScope, flowContext, flowInfo);
        }
        flowInfo = ((Reference)this.lhs).analyseAssignment(currentScope, flowContext, flowInfo, this, false).unconditionalInits();
        int nullStatus = this.expression.nullStatus(flowInfo);
        if (local != null && (local.type.tagBits & 2L) == 0L && nullStatus == 2) {
            flowContext.recordUsingNullReference(currentScope, local, this.lhs, 769, flowInfo);
        }
        nullStatus = this.checkAgainstNullAnnotation(currentScope, local, nullStatus);
        if (local != null && (local.type.tagBits & 2L) == 0L) {
            flowInfo.markNullStatus(local, nullStatus);
            if (flowContext.initsOnFinally != null) {
                flowContext.initsOnFinally.markNullStatus(local, nullStatus);
            }
        }
        return flowInfo;
    }

    void checkAssignment(BlockScope scope, TypeBinding lhsType, TypeBinding rhsType) {
        FieldBinding leftField = this.getLastField(this.lhs);
        if (leftField != null && rhsType != TypeBinding.NULL && lhsType.kind() == 516 && ((WildcardBinding)lhsType).boundKind != 2) {
            scope.problemReporter().wildcardAssignment(lhsType, rhsType, this.expression);
        } else if (leftField != null && !leftField.isStatic() && leftField.declaringClass != null && leftField.declaringClass.isRawType()) {
            scope.problemReporter().unsafeRawFieldAssignment(leftField, rhsType, this.lhs);
        } else if (rhsType.needsUncheckedConversion(lhsType)) {
            scope.problemReporter().unsafeTypeConversion(this.expression, rhsType, lhsType);
        }
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        ((Reference)this.lhs).generateAssignment(currentScope, codeStream, this, valueRequired);
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    FieldBinding getLastField(Expression someExpression) {
        if (someExpression instanceof SingleNameReference) {
            if ((someExpression.bits & 7) == 1) {
                return (FieldBinding)((SingleNameReference)someExpression).binding;
            }
        } else {
            if (someExpression instanceof FieldReference) {
                return ((FieldReference)someExpression).binding;
            }
            if (someExpression instanceof QualifiedNameReference) {
                QualifiedNameReference qName = (QualifiedNameReference)someExpression;
                if (qName.otherBindings == null) {
                    if ((someExpression.bits & 7) == 1) {
                        return (FieldBinding)qName.binding;
                    }
                } else {
                    return qName.otherBindings[qName.otherBindings.length - 1];
                }
            }
        }
        return null;
    }

    public int nullStatus(FlowInfo flowInfo) {
        return this.expression.nullStatus(flowInfo);
    }

    public StringBuffer print(int indent, StringBuffer output) {
        Assignment.printIndent(indent, output);
        return this.printExpressionNoParenthesis(indent, output);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append('(');
        return this.printExpressionNoParenthesis(0, output).append(')');
    }

    public StringBuffer printExpressionNoParenthesis(int indent, StringBuffer output) {
        this.lhs.printExpression(indent, output).append(" = ");
        return this.expression.printExpression(0, output);
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        return this.print(indent, output).append(';');
    }

    public TypeBinding resolveType(BlockScope scope) {
        LocalVariableBinding localVariableBinding;
        this.constant = Constant.NotAConstant;
        if (!(this.lhs instanceof Reference) || this.lhs.isThis()) {
            scope.problemReporter().expressionShouldBeAVariable(this.lhs);
            return null;
        }
        TypeBinding lhsType = this.lhs.resolveType(scope);
        this.expression.setExpectedType(lhsType);
        if (lhsType != null) {
            this.resolvedType = lhsType.capture(scope, this.sourceEnd);
        }
        if ((localVariableBinding = this.lhs.localVariableBinding()) != null) {
            localVariableBinding.tagBits &= 0xFFFFFFFFFFFFF7FFL;
        }
        TypeBinding rhsType = this.expression.resolveType(scope);
        if (lhsType == null || rhsType == null) {
            return null;
        }
        Binding left = Assignment.getDirectBinding(this.lhs);
        if (left != null && !left.isVolatile() && left == Assignment.getDirectBinding(this.expression)) {
            scope.problemReporter().assignmentHasNoEffect(this, left.shortReadableName());
        }
        if (lhsType != rhsType) {
            scope.compilationUnitScope().recordTypeConversion(lhsType, rhsType);
        }
        if (this.expression.isConstantValueOfTypeAssignableToType(rhsType, lhsType) || rhsType.isCompatibleWith(lhsType)) {
            this.expression.computeConversion(scope, lhsType, rhsType);
            this.checkAssignment(scope, lhsType, rhsType);
            if (this.expression instanceof CastExpression && (this.expression.bits & 0x4000) == 0) {
                CastExpression.checkNeedForAssignedCast(scope, lhsType, (CastExpression)this.expression);
            }
            return this.resolvedType;
        }
        if (this.isBoxingCompatible(rhsType, lhsType, this.expression, scope)) {
            this.expression.computeConversion(scope, lhsType, rhsType);
            if (this.expression instanceof CastExpression && (this.expression.bits & 0x4000) == 0) {
                CastExpression.checkNeedForAssignedCast(scope, lhsType, (CastExpression)this.expression);
            }
            return this.resolvedType;
        }
        scope.problemReporter().typeMismatchError(rhsType, lhsType, this.expression, (ASTNode)this.lhs);
        return lhsType;
    }

    public TypeBinding resolveTypeExpecting(BlockScope scope, TypeBinding expectedType) {
        TypeBinding type = super.resolveTypeExpecting(scope, expectedType);
        if (type == null) {
            return null;
        }
        TypeBinding lhsType = this.resolvedType;
        TypeBinding rhsType = this.expression.resolvedType;
        if (expectedType == TypeBinding.BOOLEAN && lhsType == TypeBinding.BOOLEAN && (this.lhs.bits & 0x2000) != 0) {
            scope.problemReporter().possibleAccidentalBooleanAssignment(this);
        }
        this.checkAssignment(scope, lhsType, rhsType);
        return type;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            this.lhs.traverse(visitor, scope);
            this.expression.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }

    public LocalVariableBinding localVariableBinding() {
        return this.lhs.localVariableBinding();
    }
}

