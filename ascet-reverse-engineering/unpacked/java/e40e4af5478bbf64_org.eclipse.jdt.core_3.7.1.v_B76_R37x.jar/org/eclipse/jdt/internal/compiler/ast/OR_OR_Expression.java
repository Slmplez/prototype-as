/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class OR_OR_Expression
extends BinaryExpression {
    int rightInitStateIndex = -1;
    int mergedInitStateIndex = -1;

    public OR_OR_Expression(Expression left, Expression right, int operator) {
        super(left, right, operator);
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        boolean isLeftOptimizedFalse;
        Constant cst = this.left.optimizedBooleanConstant();
        boolean isLeftOptimizedTrue = cst != Constant.NotAConstant && cst.booleanValue();
        boolean bl = isLeftOptimizedFalse = cst != Constant.NotAConstant && !cst.booleanValue();
        if (isLeftOptimizedFalse) {
            FlowInfo mergedInfo = this.left.analyseCode(currentScope, flowContext, flowInfo).unconditionalInits();
            mergedInfo = this.right.analyseCode(currentScope, flowContext, mergedInfo);
            this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(mergedInfo);
            return mergedInfo;
        }
        FlowInfo leftInfo = this.left.analyseCode(currentScope, flowContext, flowInfo);
        FlowInfo rightInfo = leftInfo.initsWhenFalse().unconditionalCopy();
        this.rightInitStateIndex = currentScope.methodScope().recordInitializationStates(rightInfo);
        int previousMode = rightInfo.reachMode();
        if (isLeftOptimizedTrue && (rightInfo.reachMode() & 3) == 0) {
            currentScope.problemReporter().fakeReachable(this.right);
            rightInfo.setReachMode(1);
        }
        rightInfo = this.right.analyseCode(currentScope, flowContext, rightInfo);
        if ((this.left.implicitConversion & 0x400) != 0) {
            this.left.checkNPE(currentScope, flowContext, flowInfo);
        }
        if ((this.right.implicitConversion & 0x400) != 0) {
            this.right.checkNPE(currentScope, flowContext, flowInfo);
        }
        FlowInfo leftInfoWhenTrueForMerging = leftInfo.initsWhenTrue().unconditionalCopy().addPotentialInitializationsFrom(rightInfo.unconditionalInitsWithoutSideEffect());
        FlowInfo mergedInfo = FlowInfo.conditional(leftInfoWhenTrueForMerging.unconditionalInits().mergedWith(rightInfo.safeInitsWhenTrue().setReachMode(previousMode).unconditionalInits()), rightInfo.initsWhenFalse());
        this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(mergedInfo);
        return mergedInfo;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        boolean rightIsTrue;
        boolean rightIsConst;
        boolean leftIsTrue;
        boolean leftIsConst;
        BranchLabel trueLabel;
        block23: {
            block22: {
                block21: {
                    int pc = codeStream.position;
                    if (this.constant != Constant.NotAConstant) {
                        if (valueRequired) {
                            codeStream.generateConstant(this.constant, this.implicitConversion);
                        }
                        codeStream.recordPositionsFrom(pc, this.sourceStart);
                        return;
                    }
                    Constant cst = this.right.constant;
                    if (cst != Constant.NotAConstant) {
                        if (cst.booleanValue()) {
                            this.left.generateCode(currentScope, codeStream, false);
                            if (valueRequired) {
                                codeStream.iconst_1();
                            }
                        } else {
                            this.left.generateCode(currentScope, codeStream, valueRequired);
                        }
                        if (this.mergedInitStateIndex != -1) {
                            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
                        }
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
                        codeStream.recordPositionsFrom(pc, this.sourceStart);
                        return;
                    }
                    trueLabel = new BranchLabel(codeStream);
                    cst = this.left.optimizedBooleanConstant();
                    leftIsConst = cst != Constant.NotAConstant;
                    leftIsTrue = leftIsConst && cst.booleanValue();
                    cst = this.right.optimizedBooleanConstant();
                    rightIsConst = cst != Constant.NotAConstant;
                    boolean bl = rightIsTrue = rightIsConst && cst.booleanValue();
                    if (!leftIsConst) break block21;
                    this.left.generateCode(currentScope, codeStream, false);
                    if (!leftIsTrue) break block22;
                    break block23;
                }
                this.left.generateOptimizedBoolean(currentScope, codeStream, trueLabel, null, true);
            }
            if (this.rightInitStateIndex != -1) {
                codeStream.addDefinitelyAssignedVariables(currentScope, this.rightInitStateIndex);
            }
            if (rightIsConst) {
                this.right.generateCode(currentScope, codeStream, false);
            } else {
                this.right.generateOptimizedBoolean(currentScope, codeStream, trueLabel, null, valueRequired);
            }
        }
        if (this.mergedInitStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
        }
        if (valueRequired) {
            if (leftIsConst && leftIsTrue) {
                codeStream.iconst_1();
                codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
            } else {
                if (rightIsConst && rightIsTrue) {
                    codeStream.iconst_1();
                    codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
                } else {
                    codeStream.iconst_0();
                }
                if (trueLabel.forwardReferenceCount() > 0) {
                    if ((this.bits & 0x10) != 0) {
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        codeStream.generateReturnBytecode(this);
                        trueLabel.place();
                        codeStream.iconst_1();
                    } else {
                        BranchLabel endLabel = new BranchLabel(codeStream);
                        codeStream.goto_(endLabel);
                        codeStream.decrStackSize(1);
                        trueLabel.place();
                        codeStream.iconst_1();
                        endLabel.place();
                    }
                } else {
                    trueLabel.place();
                }
            }
            codeStream.generateImplicitConversion(this.implicitConversion);
            codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
        } else {
            trueLabel.place();
        }
    }

    public void generateOptimizedBoolean(BlockScope currentScope, CodeStream codeStream, BranchLabel trueLabel, BranchLabel falseLabel, boolean valueRequired) {
        boolean rightIsTrue;
        if (this.constant != Constant.NotAConstant) {
            super.generateOptimizedBoolean(currentScope, codeStream, trueLabel, falseLabel, valueRequired);
            return;
        }
        Constant cst = this.right.constant;
        if (cst != Constant.NotAConstant && !cst.booleanValue()) {
            int pc = codeStream.position;
            this.left.generateOptimizedBoolean(currentScope, codeStream, trueLabel, falseLabel, valueRequired);
            if (this.mergedInitStateIndex != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
            }
            codeStream.recordPositionsFrom(pc, this.sourceStart);
            return;
        }
        cst = this.left.optimizedBooleanConstant();
        boolean leftIsConst = cst != Constant.NotAConstant;
        boolean leftIsTrue = leftIsConst && cst.booleanValue();
        cst = this.right.optimizedBooleanConstant();
        boolean rightIsConst = cst != Constant.NotAConstant;
        boolean bl = rightIsTrue = rightIsConst && cst.booleanValue();
        if (falseLabel == null) {
            if (trueLabel != null) {
                this.left.generateOptimizedBoolean(currentScope, codeStream, trueLabel, null, !leftIsConst);
                if (leftIsTrue) {
                    if (valueRequired) {
                        codeStream.goto_(trueLabel);
                    }
                    codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
                } else {
                    if (this.rightInitStateIndex != -1) {
                        codeStream.addDefinitelyAssignedVariables(currentScope, this.rightInitStateIndex);
                    }
                    this.right.generateOptimizedBoolean(currentScope, codeStream, trueLabel, null, valueRequired && !rightIsConst);
                    if (valueRequired && rightIsTrue) {
                        codeStream.goto_(trueLabel);
                        codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
                    }
                }
            }
        } else if (trueLabel == null) {
            BranchLabel internalTrueLabel = new BranchLabel(codeStream);
            this.left.generateOptimizedBoolean(currentScope, codeStream, internalTrueLabel, null, !leftIsConst);
            if (leftIsTrue) {
                internalTrueLabel.place();
            } else {
                if (this.rightInitStateIndex != -1) {
                    codeStream.addDefinitelyAssignedVariables(currentScope, this.rightInitStateIndex);
                }
                this.right.generateOptimizedBoolean(currentScope, codeStream, null, falseLabel, valueRequired && !rightIsConst);
                if (valueRequired && rightIsConst && !rightIsTrue) {
                    codeStream.goto_(falseLabel);
                    codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
                }
                internalTrueLabel.place();
            }
        }
        if (this.mergedInitStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
        }
    }

    public boolean isCompactableOperation() {
        return false;
    }

    public TypeBinding resolveType(BlockScope scope) {
        TypeBinding result = super.resolveType(scope);
        Binding leftDirect = Expression.getDirectBinding(this.left);
        if (leftDirect != null && leftDirect == Expression.getDirectBinding(this.right) && !(this.right instanceof Assignment)) {
            scope.problemReporter().comparingIdenticalExpressions(this);
        }
        return result;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            this.left.traverse(visitor, scope);
            this.right.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }
}

