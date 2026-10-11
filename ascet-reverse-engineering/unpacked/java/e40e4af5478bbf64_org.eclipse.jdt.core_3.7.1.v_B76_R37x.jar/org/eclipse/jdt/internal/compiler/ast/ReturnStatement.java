/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.NullLiteral;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SubRoutineStatement;
import org.eclipse.jdt.internal.compiler.ast.SynchronizedStatement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.flow.InsideSubRoutineFlowContext;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ReturnStatement
extends Statement {
    public Expression expression;
    public SubRoutineStatement[] subroutines;
    public LocalVariableBinding saveValueVariable;
    public int initStateIndex = -1;

    public ReturnStatement(Expression expression, int sourceStart, int sourceEnd) {
        this.sourceStart = sourceStart;
        this.sourceEnd = sourceEnd;
        this.expression = expression;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.expression != null) {
            flowInfo = this.expression.analyseCode(currentScope, flowContext, flowInfo);
            if ((this.expression.implicitConversion & 0x400) != 0) {
                this.expression.checkNPE(currentScope, flowContext, flowInfo);
            }
        }
        this.initStateIndex = currentScope.methodScope().recordInitializationStates(flowInfo);
        FlowContext traversedContext = flowContext;
        int subCount = 0;
        boolean saveValueNeeded = false;
        boolean hasValueToSave = this.needValueStore();
        do {
            SubRoutineStatement sub;
            if ((sub = traversedContext.subroutine()) != null) {
                if (this.subroutines == null) {
                    this.subroutines = new SubRoutineStatement[5];
                }
                if (subCount == this.subroutines.length) {
                    this.subroutines = new SubRoutineStatement[subCount * 2];
                    System.arraycopy(this.subroutines, 0, this.subroutines, 0, subCount);
                }
                this.subroutines[subCount++] = sub;
                if (sub.isSubRoutineEscaping()) {
                    saveValueNeeded = false;
                    this.bits |= 0x20000000;
                    break;
                }
            }
            traversedContext.recordReturnFrom(flowInfo.unconditionalInits());
            if (traversedContext instanceof InsideSubRoutineFlowContext) {
                ASTNode node = traversedContext.associatedNode;
                if (node instanceof SynchronizedStatement) {
                    this.bits |= 0x40000000;
                    continue;
                }
                if (!(node instanceof TryStatement)) continue;
                TryStatement tryStatement = (TryStatement)node;
                flowInfo.addInitializationsFrom(tryStatement.subRoutineInits);
                if (!hasValueToSave) continue;
                if (this.saveValueVariable == null) {
                    this.prepareSaveValueLocation(tryStatement);
                }
                saveValueNeeded = true;
                this.initStateIndex = currentScope.methodScope().recordInitializationStates(flowInfo);
                continue;
            }
            if (!(traversedContext instanceof InitializationFlowContext)) continue;
            currentScope.problemReporter().cannotReturnInInitializer(this);
            return FlowInfo.DEAD_END;
        } while ((traversedContext = traversedContext.parent) != null);
        if (this.subroutines != null && subCount != this.subroutines.length) {
            this.subroutines = new SubRoutineStatement[subCount];
            System.arraycopy(this.subroutines, 0, this.subroutines, 0, subCount);
        }
        if (saveValueNeeded) {
            if (this.saveValueVariable != null) {
                this.saveValueVariable.useFlag = 1;
            }
        } else {
            this.saveValueVariable = null;
            if ((this.bits & 0x40000000) == 0 && this.expression != null && this.expression.resolvedType == TypeBinding.BOOLEAN) {
                this.expression.bits |= 0x10;
            }
        }
        return FlowInfo.DEAD_END;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int pc = codeStream.position;
        boolean alreadyGeneratedExpression = false;
        if (this.needValueStore()) {
            alreadyGeneratedExpression = true;
            this.expression.generateCode(currentScope, codeStream, this.needValue());
            this.generateStoreSaveValueIfNecessary(codeStream);
        }
        if (this.subroutines != null) {
            BaseTypeBinding reusableJSRTarget = this.expression == null ? TypeBinding.VOID : this.expression.reusableJSRTarget();
            int i = 0;
            int max = this.subroutines.length;
            while (i < max) {
                SubRoutineStatement sub = this.subroutines[i];
                boolean didEscape = sub.generateSubRoutineInvocation(currentScope, codeStream, reusableJSRTarget, this.initStateIndex, this.saveValueVariable);
                if (didEscape) {
                    codeStream.recordPositionsFrom(pc, this.sourceStart);
                    SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, i, codeStream);
                    return;
                }
                ++i;
            }
        }
        if (this.saveValueVariable != null) {
            codeStream.addVariable(this.saveValueVariable);
            codeStream.load(this.saveValueVariable);
        }
        if (this.expression != null && !alreadyGeneratedExpression) {
            this.expression.generateCode(currentScope, codeStream, true);
            this.generateStoreSaveValueIfNecessary(codeStream);
        }
        this.generateReturnBytecode(codeStream);
        if (this.saveValueVariable != null) {
            codeStream.removeVariable(this.saveValueVariable);
        }
        if (this.initStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.initStateIndex);
            codeStream.addDefinitelyAssignedVariables(currentScope, this.initStateIndex);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
        SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, -1, codeStream);
    }

    public void generateReturnBytecode(CodeStream codeStream) {
        codeStream.generateReturnBytecode(this.expression);
    }

    public void generateStoreSaveValueIfNecessary(CodeStream codeStream) {
        if (this.saveValueVariable != null) {
            codeStream.store(this.saveValueVariable, false);
        }
    }

    private boolean needValueStore() {
        return this.expression != null && (this.expression.constant == Constant.NotAConstant || (this.expression.implicitConversion & 0x200) != 0) && !(this.expression instanceof NullLiteral);
    }

    public boolean needValue() {
        return this.saveValueVariable != null || (this.bits & 0x40000000) != 0 || (this.bits & 0x20000000) == 0;
    }

    public void prepareSaveValueLocation(TryStatement targetTryStatement) {
        this.saveValueVariable = targetTryStatement.secretReturnValue;
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        ReturnStatement.printIndent(tab, output).append("return ");
        if (this.expression != null) {
            this.expression.printExpression(0, output);
        }
        return output.append(';');
    }

    public void resolve(BlockScope scope) {
        BaseTypeBinding methodType;
        MethodBinding methodBinding;
        MethodScope methodScope = scope.methodScope();
        Object object = methodScope.referenceContext instanceof AbstractMethodDeclaration ? ((methodBinding = ((AbstractMethodDeclaration)methodScope.referenceContext).binding) == null ? null : methodBinding.returnType) : (methodType = TypeBinding.VOID);
        if (methodType == TypeBinding.VOID) {
            if (this.expression == null) {
                return;
            }
            TypeBinding expressionType = this.expression.resolveType(scope);
            if (expressionType != null) {
                scope.problemReporter().attemptToReturnNonVoidExpression(this, expressionType);
            }
            return;
        }
        if (this.expression == null) {
            if (methodType != null) {
                scope.problemReporter().shouldReturn(methodType, this);
            }
            return;
        }
        this.expression.setExpectedType(methodType);
        TypeBinding expressionType = this.expression.resolveType(scope);
        if (expressionType == null) {
            return;
        }
        if (expressionType == TypeBinding.VOID) {
            scope.problemReporter().attemptToReturnVoidValue(this);
            return;
        }
        if (methodType == null) {
            return;
        }
        if (methodType != expressionType) {
            scope.compilationUnitScope().recordTypeConversion(methodType, expressionType);
        }
        if (this.expression.isConstantValueOfTypeAssignableToType(expressionType, methodType) || expressionType.isCompatibleWith(methodType)) {
            this.expression.computeConversion(scope, methodType, expressionType);
            if (expressionType.needsUncheckedConversion(methodType)) {
                scope.problemReporter().unsafeTypeConversion(this.expression, expressionType, methodType);
            }
            if (this.expression instanceof CastExpression && (this.expression.bits & 0x4020) == 0) {
                CastExpression.checkNeedForAssignedCast(scope, methodType, (CastExpression)this.expression);
            }
            return;
        }
        if (this.isBoxingCompatible(expressionType, methodType, this.expression, scope)) {
            this.expression.computeConversion(scope, methodType, expressionType);
            if (this.expression instanceof CastExpression && (this.expression.bits & 0x4020) == 0) {
                CastExpression.checkNeedForAssignedCast(scope, methodType, (CastExpression)this.expression);
            }
            return;
        }
        if ((methodType.tagBits & 0x80L) == 0L) {
            scope.problemReporter().typeMismatchError(expressionType, methodType, this.expression, null);
        }
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope) && this.expression != null) {
            this.expression.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }
}

