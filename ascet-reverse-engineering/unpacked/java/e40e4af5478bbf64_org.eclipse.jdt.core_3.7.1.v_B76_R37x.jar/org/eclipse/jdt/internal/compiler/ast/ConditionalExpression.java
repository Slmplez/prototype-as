/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.OperatorExpression;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ConditionalExpression
extends OperatorExpression {
    public Expression condition;
    public Expression valueIfTrue;
    public Expression valueIfFalse;
    public Constant optimizedBooleanConstant;
    public Constant optimizedIfTrueConstant;
    public Constant optimizedIfFalseConstant;
    int trueInitStateIndex = -1;
    int falseInitStateIndex = -1;
    int mergedInitStateIndex = -1;
    private int nullStatus = 1;

    public ConditionalExpression(Expression condition, Expression valueIfTrue, Expression valueIfFalse) {
        this.condition = condition;
        this.valueIfTrue = valueIfTrue;
        this.valueIfFalse = valueIfFalse;
        this.sourceStart = condition.sourceStart;
        this.sourceEnd = valueIfFalse.sourceEnd;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo mergedInfo;
        int initialComplaintLevel = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        Constant cst = this.condition.optimizedBooleanConstant();
        boolean isConditionOptimizedTrue = cst != Constant.NotAConstant && cst.booleanValue();
        boolean isConditionOptimizedFalse = cst != Constant.NotAConstant && !cst.booleanValue();
        int mode = flowInfo.reachMode();
        flowInfo = this.condition.analyseCode(currentScope, flowContext, flowInfo, cst == Constant.NotAConstant);
        FlowInfo trueFlowInfo = flowInfo.initsWhenTrue().copy();
        if (isConditionOptimizedFalse) {
            if ((mode & 3) == 0) {
                trueFlowInfo.setReachMode(1);
            }
            if (!ConditionalExpression.isKnowDeadCodePattern(this.condition) || currentScope.compilerOptions().reportDeadCodeInTrivialIfStatement) {
                this.valueIfTrue.complainIfUnreachable(trueFlowInfo, currentScope, initialComplaintLevel);
            }
        }
        this.trueInitStateIndex = currentScope.methodScope().recordInitializationStates(trueFlowInfo);
        trueFlowInfo = this.valueIfTrue.analyseCode(currentScope, flowContext, trueFlowInfo);
        FlowInfo falseFlowInfo = flowInfo.initsWhenFalse().copy();
        if (isConditionOptimizedTrue) {
            if ((mode & 3) == 0) {
                falseFlowInfo.setReachMode(1);
            }
            if (!ConditionalExpression.isKnowDeadCodePattern(this.condition) || currentScope.compilerOptions().reportDeadCodeInTrivialIfStatement) {
                this.valueIfFalse.complainIfUnreachable(falseFlowInfo, currentScope, initialComplaintLevel);
            }
        }
        this.falseInitStateIndex = currentScope.methodScope().recordInitializationStates(falseFlowInfo);
        falseFlowInfo = this.valueIfFalse.analyseCode(currentScope, flowContext, falseFlowInfo);
        if (isConditionOptimizedTrue) {
            mergedInfo = trueFlowInfo.addPotentialInitializationsFrom(falseFlowInfo);
            this.nullStatus = this.valueIfTrue.nullStatus(trueFlowInfo);
        } else if (isConditionOptimizedFalse) {
            mergedInfo = falseFlowInfo.addPotentialInitializationsFrom(trueFlowInfo);
            this.nullStatus = this.valueIfFalse.nullStatus(falseFlowInfo);
        } else {
            this.computeNullStatus(trueFlowInfo, falseFlowInfo);
            cst = this.optimizedIfTrueConstant;
            boolean isValueIfTrueOptimizedTrue = cst != null && cst != Constant.NotAConstant && cst.booleanValue();
            boolean isValueIfTrueOptimizedFalse = cst != null && cst != Constant.NotAConstant && !cst.booleanValue();
            cst = this.optimizedIfFalseConstant;
            boolean isValueIfFalseOptimizedTrue = cst != null && cst != Constant.NotAConstant && cst.booleanValue();
            boolean isValueIfFalseOptimizedFalse = cst != null && cst != Constant.NotAConstant && !cst.booleanValue();
            UnconditionalFlowInfo trueFlowTowardsTrue = trueFlowInfo.initsWhenTrue().unconditionalCopy();
            UnconditionalFlowInfo falseFlowTowardsTrue = falseFlowInfo.initsWhenTrue().unconditionalCopy();
            UnconditionalFlowInfo trueFlowTowardsFalse = trueFlowInfo.initsWhenFalse().unconditionalInits();
            UnconditionalFlowInfo falseFlowTowardsFalse = falseFlowInfo.initsWhenFalse().unconditionalInits();
            if (isValueIfTrueOptimizedFalse) {
                trueFlowTowardsTrue.setReachMode(1);
            }
            if (isValueIfFalseOptimizedFalse) {
                falseFlowTowardsTrue.setReachMode(1);
            }
            if (isValueIfTrueOptimizedTrue) {
                trueFlowTowardsFalse.setReachMode(1);
            }
            if (isValueIfFalseOptimizedTrue) {
                falseFlowTowardsFalse.setReachMode(1);
            }
            mergedInfo = FlowInfo.conditional(trueFlowTowardsTrue.mergedWith(falseFlowTowardsTrue), trueFlowTowardsFalse.mergedWith(falseFlowTowardsFalse));
        }
        this.mergedInitStateIndex = currentScope.methodScope().recordInitializationStates(mergedInfo);
        mergedInfo.setReachMode(mode);
        return mergedInfo;
    }

    private void computeNullStatus(FlowInfo trueBranchInfo, FlowInfo falseBranchInfo) {
        int ifFalseNullStatus;
        int ifTrueNullStatus = this.valueIfTrue.nullStatus(trueBranchInfo);
        if (ifTrueNullStatus == (ifFalseNullStatus = this.valueIfFalse.nullStatus(falseBranchInfo))) {
            this.nullStatus = ifTrueNullStatus;
            return;
        }
        int status = 0;
        int combinedStatus = ifTrueNullStatus | ifFalseNullStatus;
        if ((combinedStatus & 0x12) != 0) {
            status |= 0x10;
        }
        if ((combinedStatus & 0x24) != 0) {
            status |= 0x20;
        }
        if ((combinedStatus & 9) != 0) {
            status |= 8;
        }
        if (status > 0) {
            this.nullStatus = status;
        }
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (this.constant != Constant.NotAConstant) {
            if (valueRequired) {
                codeStream.generateConstant(this.constant, this.implicitConversion);
            }
            codeStream.recordPositionsFrom(pc, this.sourceStart);
            return;
        }
        Constant cst = this.condition.optimizedBooleanConstant();
        boolean needTruePart = cst == Constant.NotAConstant || cst.booleanValue();
        boolean needFalsePart = cst == Constant.NotAConstant || !cst.booleanValue();
        BranchLabel endifLabel = new BranchLabel(codeStream);
        BranchLabel falseLabel = new BranchLabel(codeStream);
        falseLabel.tagBits |= 2;
        this.condition.generateOptimizedBoolean(currentScope, codeStream, null, falseLabel, cst == Constant.NotAConstant);
        if (this.trueInitStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.trueInitStateIndex);
            codeStream.addDefinitelyAssignedVariables(currentScope, this.trueInitStateIndex);
        }
        if (needTruePart) {
            this.valueIfTrue.generateCode(currentScope, codeStream, valueRequired);
            if (needFalsePart) {
                int position = codeStream.position;
                codeStream.goto_(endifLabel);
                codeStream.updateLastRecordedEndPC(currentScope, position);
                if (valueRequired) {
                    switch (this.resolvedType.id) {
                        case 7: 
                        case 8: {
                            codeStream.decrStackSize(2);
                            break;
                        }
                        default: {
                            codeStream.decrStackSize(1);
                        }
                    }
                }
            }
        }
        if (needFalsePart) {
            if (this.falseInitStateIndex != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.falseInitStateIndex);
                codeStream.addDefinitelyAssignedVariables(currentScope, this.falseInitStateIndex);
            }
            if (falseLabel.forwardReferenceCount() > 0) {
                falseLabel.place();
            }
            this.valueIfFalse.generateCode(currentScope, codeStream, valueRequired);
            if (valueRequired) {
                codeStream.recordExpressionType(this.resolvedType);
            }
            if (needTruePart) {
                endifLabel.place();
            }
        }
        if (this.mergedInitStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
        }
        if (valueRequired) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public void generateOptimizedBoolean(BlockScope currentScope, CodeStream codeStream, BranchLabel trueLabel, BranchLabel falseLabel, boolean valueRequired) {
        BranchLabel internalFalseLabel;
        BranchLabel endifLabel;
        boolean needFalsePart;
        block8: {
            block10: {
                boolean isValueIfTrueOptimizedFalse;
                Constant cst;
                block9: {
                    boolean isValueIfTrueOptimizedTrue;
                    if (this.constant != Constant.NotAConstant && this.constant.typeID() == 5 || (this.valueIfTrue.implicitConversion & 0xFF) >> 4 != 5) {
                        super.generateOptimizedBoolean(currentScope, codeStream, trueLabel, falseLabel, valueRequired);
                        return;
                    }
                    cst = this.condition.constant;
                    Constant condCst = this.condition.optimizedBooleanConstant();
                    boolean needTruePart = !(cst != Constant.NotAConstant && !cst.booleanValue() || condCst != Constant.NotAConstant && !condCst.booleanValue());
                    needFalsePart = !(cst != Constant.NotAConstant && cst.booleanValue() || condCst != Constant.NotAConstant && condCst.booleanValue());
                    endifLabel = new BranchLabel(codeStream);
                    boolean needConditionValue = cst == Constant.NotAConstant && condCst == Constant.NotAConstant;
                    internalFalseLabel = new BranchLabel(codeStream);
                    this.condition.generateOptimizedBoolean(currentScope, codeStream, null, internalFalseLabel, needConditionValue);
                    if (this.trueInitStateIndex != -1) {
                        codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.trueInitStateIndex);
                        codeStream.addDefinitelyAssignedVariables(currentScope, this.trueInitStateIndex);
                    }
                    if (!needTruePart) break block8;
                    this.valueIfTrue.generateOptimizedBoolean(currentScope, codeStream, trueLabel, falseLabel, valueRequired);
                    if (!needFalsePart) break block8;
                    if (falseLabel != null) break block9;
                    if (trueLabel == null) break block10;
                    cst = this.optimizedIfTrueConstant;
                    boolean bl = isValueIfTrueOptimizedTrue = cst != null && cst != Constant.NotAConstant && cst.booleanValue();
                    if (!isValueIfTrueOptimizedTrue) break block10;
                    break block8;
                }
                if (trueLabel != null) break block10;
                cst = this.optimizedIfTrueConstant;
                boolean bl = isValueIfTrueOptimizedFalse = cst != null && cst != Constant.NotAConstant && !cst.booleanValue();
                if (isValueIfTrueOptimizedFalse) break block8;
            }
            int position = codeStream.position;
            codeStream.goto_(endifLabel);
            codeStream.updateLastRecordedEndPC(currentScope, position);
        }
        if (needFalsePart) {
            internalFalseLabel.place();
            if (this.falseInitStateIndex != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.falseInitStateIndex);
                codeStream.addDefinitelyAssignedVariables(currentScope, this.falseInitStateIndex);
            }
            this.valueIfFalse.generateOptimizedBoolean(currentScope, codeStream, trueLabel, falseLabel, valueRequired);
            endifLabel.place();
        }
        if (this.mergedInitStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.mergedInitStateIndex);
        }
        codeStream.updateLastRecordedEndPC(currentScope, codeStream.position);
    }

    public int nullStatus(FlowInfo flowInfo) {
        return this.nullStatus;
    }

    public Constant optimizedBooleanConstant() {
        return this.optimizedBooleanConstant == null ? this.constant : this.optimizedBooleanConstant;
    }

    public StringBuffer printExpressionNoParenthesis(int indent, StringBuffer output) {
        this.condition.printExpression(indent, output).append(" ? ");
        this.valueIfTrue.printExpression(0, output).append(" : ");
        return this.valueIfFalse.printExpression(0, output);
    }

    public TypeBinding resolveType(BlockScope scope) {
        Constant falseConstant;
        Constant trueConstant;
        Constant condConstant;
        this.constant = Constant.NotAConstant;
        LookupEnvironment env = scope.environment();
        boolean use15specifics = scope.compilerOptions().sourceLevel >= 0x310000L;
        TypeBinding conditionType = this.condition.resolveTypeExpecting(scope, TypeBinding.BOOLEAN);
        this.condition.computeConversion(scope, TypeBinding.BOOLEAN, conditionType);
        if (this.valueIfTrue instanceof CastExpression) {
            this.valueIfTrue.bits |= 0x20;
        }
        TypeBinding originalValueIfTrueType = this.valueIfTrue.resolveType(scope);
        if (this.valueIfFalse instanceof CastExpression) {
            this.valueIfFalse.bits |= 0x20;
        }
        TypeBinding originalValueIfFalseType = this.valueIfFalse.resolveType(scope);
        if (conditionType == null || originalValueIfTrueType == null || originalValueIfFalseType == null) {
            return null;
        }
        TypeBinding valueIfTrueType = originalValueIfTrueType;
        TypeBinding valueIfFalseType = originalValueIfFalseType;
        if (use15specifics && valueIfTrueType != valueIfFalseType) {
            TypeBinding unboxedIfTrueType;
            if (valueIfTrueType.isBaseType()) {
                if (valueIfFalseType.isBaseType()) {
                    if (valueIfTrueType == TypeBinding.NULL) {
                        valueIfFalseType = env.computeBoxingType(valueIfFalseType);
                    } else if (valueIfFalseType == TypeBinding.NULL) {
                        valueIfTrueType = env.computeBoxingType(valueIfTrueType);
                    }
                } else {
                    TypeBinding unboxedIfFalseType;
                    TypeBinding typeBinding = unboxedIfFalseType = valueIfFalseType.isBaseType() ? valueIfFalseType : env.computeBoxingType(valueIfFalseType);
                    if (valueIfTrueType.isNumericType() && unboxedIfFalseType.isNumericType()) {
                        valueIfFalseType = unboxedIfFalseType;
                    } else if (valueIfTrueType != TypeBinding.NULL) {
                        valueIfFalseType = env.computeBoxingType(valueIfFalseType);
                    }
                }
            } else if (valueIfFalseType.isBaseType()) {
                TypeBinding typeBinding = unboxedIfTrueType = valueIfTrueType.isBaseType() ? valueIfTrueType : env.computeBoxingType(valueIfTrueType);
                if (unboxedIfTrueType.isNumericType() && valueIfFalseType.isNumericType()) {
                    valueIfTrueType = unboxedIfTrueType;
                } else if (valueIfFalseType != TypeBinding.NULL) {
                    valueIfTrueType = env.computeBoxingType(valueIfTrueType);
                }
            } else {
                unboxedIfTrueType = env.computeBoxingType(valueIfTrueType);
                TypeBinding unboxedIfFalseType = env.computeBoxingType(valueIfFalseType);
                if (unboxedIfTrueType.isNumericType() && unboxedIfFalseType.isNumericType()) {
                    valueIfTrueType = unboxedIfTrueType;
                    valueIfFalseType = unboxedIfFalseType;
                }
            }
        }
        if ((condConstant = this.condition.constant) != Constant.NotAConstant && (trueConstant = this.valueIfTrue.constant) != Constant.NotAConstant && (falseConstant = this.valueIfFalse.constant) != Constant.NotAConstant) {
            Constant constant = this.constant = condConstant.booleanValue() ? trueConstant : falseConstant;
        }
        if (valueIfTrueType == valueIfFalseType) {
            this.valueIfTrue.computeConversion(scope, valueIfTrueType, originalValueIfTrueType);
            this.valueIfFalse.computeConversion(scope, valueIfFalseType, originalValueIfFalseType);
            if (valueIfTrueType == TypeBinding.BOOLEAN) {
                this.optimizedIfTrueConstant = this.valueIfTrue.optimizedBooleanConstant();
                this.optimizedIfFalseConstant = this.valueIfFalse.optimizedBooleanConstant();
                if (this.optimizedIfTrueConstant != Constant.NotAConstant && this.optimizedIfFalseConstant != Constant.NotAConstant && this.optimizedIfTrueConstant.booleanValue() == this.optimizedIfFalseConstant.booleanValue()) {
                    this.optimizedBooleanConstant = this.optimizedIfTrueConstant;
                } else {
                    condConstant = this.condition.optimizedBooleanConstant();
                    if (condConstant != Constant.NotAConstant) {
                        this.optimizedBooleanConstant = condConstant.booleanValue() ? this.optimizedIfTrueConstant : this.optimizedIfFalseConstant;
                    }
                }
            }
            this.resolvedType = valueIfTrueType;
            return this.resolvedType;
        }
        if (valueIfTrueType.isNumericType() && valueIfFalseType.isNumericType()) {
            if (valueIfTrueType == TypeBinding.BYTE && valueIfFalseType == TypeBinding.SHORT || valueIfTrueType == TypeBinding.SHORT && valueIfFalseType == TypeBinding.BYTE) {
                this.valueIfTrue.computeConversion(scope, TypeBinding.SHORT, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, TypeBinding.SHORT, originalValueIfFalseType);
                this.resolvedType = TypeBinding.SHORT;
                return this.resolvedType;
            }
            if ((valueIfTrueType == TypeBinding.BYTE || valueIfTrueType == TypeBinding.SHORT || valueIfTrueType == TypeBinding.CHAR) && valueIfFalseType == TypeBinding.INT && this.valueIfFalse.isConstantValueOfTypeAssignableToType(valueIfFalseType, valueIfTrueType)) {
                this.valueIfTrue.computeConversion(scope, valueIfTrueType, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, valueIfTrueType, originalValueIfFalseType);
                this.resolvedType = valueIfTrueType;
                return this.resolvedType;
            }
            if ((valueIfFalseType == TypeBinding.BYTE || valueIfFalseType == TypeBinding.SHORT || valueIfFalseType == TypeBinding.CHAR) && valueIfTrueType == TypeBinding.INT && this.valueIfTrue.isConstantValueOfTypeAssignableToType(valueIfTrueType, valueIfFalseType)) {
                this.valueIfTrue.computeConversion(scope, valueIfFalseType, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, valueIfFalseType, originalValueIfFalseType);
                this.resolvedType = valueIfFalseType;
                return this.resolvedType;
            }
            if (BaseTypeBinding.isNarrowing(valueIfTrueType.id, 10) && BaseTypeBinding.isNarrowing(valueIfFalseType.id, 10)) {
                this.valueIfTrue.computeConversion(scope, TypeBinding.INT, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, TypeBinding.INT, originalValueIfFalseType);
                this.resolvedType = TypeBinding.INT;
                return this.resolvedType;
            }
            if (BaseTypeBinding.isNarrowing(valueIfTrueType.id, 7) && BaseTypeBinding.isNarrowing(valueIfFalseType.id, 7)) {
                this.valueIfTrue.computeConversion(scope, TypeBinding.LONG, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, TypeBinding.LONG, originalValueIfFalseType);
                this.resolvedType = TypeBinding.LONG;
                return this.resolvedType;
            }
            if (BaseTypeBinding.isNarrowing(valueIfTrueType.id, 9) && BaseTypeBinding.isNarrowing(valueIfFalseType.id, 9)) {
                this.valueIfTrue.computeConversion(scope, TypeBinding.FLOAT, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, TypeBinding.FLOAT, originalValueIfFalseType);
                this.resolvedType = TypeBinding.FLOAT;
                return this.resolvedType;
            }
            this.valueIfTrue.computeConversion(scope, TypeBinding.DOUBLE, originalValueIfTrueType);
            this.valueIfFalse.computeConversion(scope, TypeBinding.DOUBLE, originalValueIfFalseType);
            this.resolvedType = TypeBinding.DOUBLE;
            return this.resolvedType;
        }
        if (valueIfTrueType.isBaseType() && valueIfTrueType != TypeBinding.NULL) {
            if (use15specifics) {
                valueIfTrueType = env.computeBoxingType(valueIfTrueType);
            } else {
                scope.problemReporter().conditionalArgumentsIncompatibleTypes(this, valueIfTrueType, valueIfFalseType);
                return null;
            }
        }
        if (valueIfFalseType.isBaseType() && valueIfFalseType != TypeBinding.NULL) {
            if (use15specifics) {
                valueIfFalseType = env.computeBoxingType(valueIfFalseType);
            } else {
                scope.problemReporter().conditionalArgumentsIncompatibleTypes(this, valueIfTrueType, valueIfFalseType);
                return null;
            }
        }
        if (use15specifics) {
            TypeBinding commonType = null;
            commonType = valueIfTrueType == TypeBinding.NULL ? valueIfFalseType : (valueIfFalseType == TypeBinding.NULL ? valueIfTrueType : scope.lowerUpperBound(new TypeBinding[]{valueIfTrueType, valueIfFalseType}));
            if (commonType != null) {
                this.valueIfTrue.computeConversion(scope, commonType, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, commonType, originalValueIfFalseType);
                this.resolvedType = commonType.capture(scope, this.sourceEnd);
                return this.resolvedType;
            }
        } else {
            if (valueIfFalseType.isCompatibleWith(valueIfTrueType)) {
                this.valueIfTrue.computeConversion(scope, valueIfTrueType, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, valueIfTrueType, originalValueIfFalseType);
                this.resolvedType = valueIfTrueType;
                return this.resolvedType;
            }
            if (valueIfTrueType.isCompatibleWith(valueIfFalseType)) {
                this.valueIfTrue.computeConversion(scope, valueIfFalseType, originalValueIfTrueType);
                this.valueIfFalse.computeConversion(scope, valueIfFalseType, originalValueIfFalseType);
                this.resolvedType = valueIfFalseType;
                return this.resolvedType;
            }
        }
        scope.problemReporter().conditionalArgumentsIncompatibleTypes(this, valueIfTrueType, valueIfFalseType);
        return null;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            this.condition.traverse(visitor, scope);
            this.valueIfTrue.traverse(visitor, scope);
            this.valueIfFalse.traverse(visitor, scope);
        }
        visitor.endVisit(this, scope);
    }
}

