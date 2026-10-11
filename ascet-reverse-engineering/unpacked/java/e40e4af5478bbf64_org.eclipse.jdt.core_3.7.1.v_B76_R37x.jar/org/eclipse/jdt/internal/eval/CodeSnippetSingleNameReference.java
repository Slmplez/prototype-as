/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.eval.CodeSnippetScope;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetSingleNameReference
extends SingleNameReference
implements EvaluationConstants,
ProblemReasons {
    EvaluationContext evaluationContext;
    FieldBinding delegateThis;

    public CodeSnippetSingleNameReference(char[] source, long pos, EvaluationContext evaluationContext) {
        super(source, pos);
        this.evaluationContext = evaluationContext;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo, boolean valueRequired) {
        switch (this.bits & 7) {
            case 1: {
                FlowInfo fieldInits;
                FieldBinding fieldBinding = (FieldBinding)this.binding;
                if (!fieldBinding.isBlankFinal() || !currentScope.needBlankFinalFieldInitializationCheck(fieldBinding) || (fieldInits = flowContext.getInitsForFinalBlankInitializationCheck(fieldBinding.declaringClass.original(), flowInfo)).isDefinitelyAssigned(fieldBinding)) break;
                currentScope.problemReporter().uninitializedBlankFinalField(fieldBinding, this);
                break;
            }
            case 2: {
                LocalVariableBinding localBinding = (LocalVariableBinding)this.binding;
                if (!flowInfo.isDefinitelyAssigned(localBinding)) {
                    currentScope.problemReporter().uninitializedLocalVariable(localBinding, this);
                }
                if ((flowInfo.tagBits & 3) == 0) {
                    localBinding.useFlag = 1;
                    break;
                }
                if (localBinding.useFlag != 0) break;
                localBinding.useFlag = 2;
            }
        }
        return flowInfo;
    }

    public TypeBinding checkFieldAccess(BlockScope scope) {
        if (this.delegateThis == null) {
            return super.checkFieldAccess(scope);
        }
        FieldBinding fieldBinding = (FieldBinding)this.binding;
        this.bits &= 0xFFFFFFF8;
        this.bits |= 1;
        if (!fieldBinding.isStatic() && this.evaluationContext.isStatic) {
            scope.problemReporter().staticFieldAccessToNonStaticVariable(this, fieldBinding);
            this.constant = Constant.NotAConstant;
            return null;
        }
        this.constant = fieldBinding.constant();
        if (this.isFieldUseDeprecated(fieldBinding, scope, this.bits)) {
            scope.problemReporter().deprecatedField(fieldBinding, this);
        }
        return fieldBinding.type;
    }

    public void generateAssignment(BlockScope currentScope, CodeStream codeStream, Assignment assignment, boolean valueRequired) {
        if (assignment.expression.isCompactableOperation()) {
            SingleNameReference variableReference;
            BinaryExpression operation = (BinaryExpression)assignment.expression;
            int operator = (operation.bits & 0xFC0) >> 6;
            if (operation.left instanceof SingleNameReference) {
                variableReference = (SingleNameReference)operation.left;
                if (variableReference.binding == this.binding) {
                    variableReference.generateCompoundAssignment(currentScope, codeStream, this.syntheticAccessors == null ? null : this.syntheticAccessors[1], operation.right, operator, operation.implicitConversion, valueRequired);
                    if (valueRequired) {
                        codeStream.generateImplicitConversion(assignment.implicitConversion);
                    }
                    return;
                }
            }
            if (operation.right instanceof SingleNameReference && (operator == 14 || operator == 15)) {
                variableReference = (SingleNameReference)operation.right;
                if (variableReference.binding == this.binding && operation.left.constant != Constant.NotAConstant && (operation.left.implicitConversion & 0xFF) >> 4 != 11 && (operation.right.implicitConversion & 0xFF) >> 4 != 11) {
                    variableReference.generateCompoundAssignment(currentScope, codeStream, this.syntheticAccessors == null ? null : this.syntheticAccessors[1], operation.left, operator, operation.implicitConversion, valueRequired);
                    if (valueRequired) {
                        codeStream.generateImplicitConversion(assignment.implicitConversion);
                    }
                    return;
                }
            }
        }
        switch (this.bits & 7) {
            case 1: {
                FieldBinding codegenField = ((FieldBinding)this.binding).original();
                if (codegenField.canBeSeenBy(this.getReceiverType(currentScope), this, currentScope)) {
                    if (!codegenField.isStatic()) {
                        if ((this.bits & 0x1FE0) != 0) {
                            ReferenceBinding targetType = currentScope.enclosingSourceType().enclosingTypeAt((this.bits & 0x1FE0) >> 5);
                            Object[] emulationPath = currentScope.getEmulationPath(targetType, true, false);
                            codeStream.generateOuterAccess(emulationPath, this, targetType, currentScope);
                        } else {
                            this.generateReceiver(codeStream);
                        }
                    }
                    assignment.expression.generateCode(currentScope, codeStream, true);
                    this.fieldStore(currentScope, codeStream, codegenField, null, this.actualReceiverType, this.delegateThis == null, valueRequired);
                    if (valueRequired) {
                        codeStream.generateImplicitConversion(assignment.implicitConversion);
                    }
                } else {
                    codeStream.generateEmulationForField(codegenField);
                    if (!codegenField.isStatic()) {
                        if ((this.bits & 0x1FE0) != 0) {
                            currentScope.problemReporter().needImplementation(this);
                        } else {
                            this.generateReceiver(codeStream);
                        }
                    } else {
                        codeStream.aconst_null();
                    }
                    assignment.expression.generateCode(currentScope, codeStream, true);
                    if (valueRequired) {
                        if (codegenField.type == TypeBinding.LONG || codegenField.type == TypeBinding.DOUBLE) {
                            codeStream.dup2_x2();
                        } else {
                            codeStream.dup_x2();
                        }
                    }
                    codeStream.generateEmulatedWriteAccessForField(codegenField);
                    if (valueRequired) {
                        codeStream.generateImplicitConversion(assignment.implicitConversion);
                    }
                }
                return;
            }
            case 2: {
                LocalVariableBinding localBinding = (LocalVariableBinding)this.binding;
                if (localBinding.resolvedPosition == -1) {
                    if (assignment.expression.constant != Constant.NotAConstant) {
                        if (valueRequired) {
                            codeStream.generateConstant(assignment.expression.constant, assignment.implicitConversion);
                        }
                    } else {
                        assignment.expression.generateCode(currentScope, codeStream, true);
                        if (valueRequired) {
                            codeStream.generateImplicitConversion(assignment.implicitConversion);
                        } else if (localBinding.type == TypeBinding.LONG || localBinding.type == TypeBinding.DOUBLE) {
                            codeStream.pop2();
                        } else {
                            codeStream.pop();
                        }
                    }
                    return;
                }
                assignment.expression.generateCode(currentScope, codeStream, true);
                codeStream.store(localBinding, valueRequired);
                if ((this.bits & 8) != 0) {
                    localBinding.recordInitializationStartPC(codeStream.position);
                }
                if (!valueRequired) break;
                codeStream.generateImplicitConversion(assignment.implicitConversion);
            }
        }
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (this.constant != Constant.NotAConstant) {
            if (valueRequired) {
                codeStream.generateConstant(this.constant, this.implicitConversion);
            }
        } else {
            switch (this.bits & 7) {
                case 1: {
                    if (!valueRequired) break;
                    FieldBinding codegenField = ((FieldBinding)this.binding).original();
                    Constant fieldConstant = codegenField.constant();
                    if (fieldConstant == Constant.NotAConstant) {
                        if (codegenField.canBeSeenBy(this.getReceiverType(currentScope), this, currentScope)) {
                            TypeBinding someReceiverType = this.delegateThis != null ? this.delegateThis.type : this.actualReceiverType;
                            TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, codegenField, someReceiverType, true);
                            if (codegenField.isStatic()) {
                                codeStream.fieldAccess((byte)-78, codegenField, constantPoolDeclaringClass);
                            } else {
                                if ((this.bits & 0x1FE0) != 0) {
                                    ReferenceBinding targetType = currentScope.enclosingSourceType().enclosingTypeAt((this.bits & 0x1FE0) >> 5);
                                    Object[] emulationPath = currentScope.getEmulationPath(targetType, true, false);
                                    codeStream.generateOuterAccess(emulationPath, this, targetType, currentScope);
                                } else {
                                    this.generateReceiver(codeStream);
                                }
                                codeStream.fieldAccess((byte)-76, codegenField, constantPoolDeclaringClass);
                            }
                        } else {
                            if (!codegenField.isStatic()) {
                                if ((this.bits & 0x1FE0) != 0) {
                                    currentScope.problemReporter().needImplementation(this);
                                } else {
                                    this.generateReceiver(codeStream);
                                }
                            } else {
                                codeStream.aconst_null();
                            }
                            codeStream.generateEmulatedReadAccessForField(codegenField);
                        }
                        if (this.genericCast != null) {
                            codeStream.checkcast(this.genericCast);
                        }
                        codeStream.generateImplicitConversion(this.implicitConversion);
                        break;
                    }
                    codeStream.generateConstant(fieldConstant, this.implicitConversion);
                    break;
                }
                case 2: {
                    LocalVariableBinding localBinding = (LocalVariableBinding)this.binding;
                    if (localBinding.resolvedPosition == -1) {
                        if (valueRequired) {
                            localBinding.useFlag = 1;
                            throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                        }
                        codeStream.recordPositionsFrom(pc, this.sourceStart);
                        return;
                    }
                    if (!valueRequired) break;
                    if ((this.bits & 0x1FE0) != 0) {
                        Object[] path = currentScope.getEmulationPath(localBinding);
                        codeStream.generateOuterAccess(path, this, localBinding, currentScope);
                    } else {
                        codeStream.load(localBinding);
                    }
                    codeStream.generateImplicitConversion(this.implicitConversion);
                }
            }
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    /*
     * Enabled aggressive block sorting
     */
    public void generateCompoundAssignment(BlockScope currentScope, CodeStream codeStream, MethodBinding writeAccessor, Expression expression, int operator, int assignmentImplicitConversion, boolean valueRequired) {
        switch (this.bits & 7) {
            case 1: {
                TypeBinding constantPoolDeclaringClass;
                TypeBinding someReceiverType;
                FieldBinding codegenField = ((FieldBinding)this.binding).original();
                if (codegenField.isStatic()) {
                    if (codegenField.canBeSeenBy(this.getReceiverType(currentScope), this, currentScope)) {
                        someReceiverType = this.delegateThis != null ? this.delegateThis.type : this.actualReceiverType;
                        constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, codegenField, someReceiverType, true);
                        codeStream.fieldAccess((byte)-78, codegenField, constantPoolDeclaringClass);
                        break;
                    }
                    codeStream.generateEmulationForField(codegenField);
                    codeStream.aconst_null();
                    codeStream.aconst_null();
                    codeStream.generateEmulatedReadAccessForField(codegenField);
                    break;
                }
                if (codegenField.canBeSeenBy(this.getReceiverType(currentScope), this, currentScope)) {
                    if ((this.bits & 0x1FE0) != 0) {
                        ReferenceBinding targetType = currentScope.enclosingSourceType().enclosingTypeAt((this.bits & 0x1FE0) >> 5);
                        Object[] emulationPath = currentScope.getEmulationPath(targetType, true, false);
                        codeStream.generateOuterAccess(emulationPath, this, targetType, currentScope);
                    } else {
                        this.generateReceiver(codeStream);
                    }
                    codeStream.dup();
                    someReceiverType = this.delegateThis != null ? this.delegateThis.type : this.actualReceiverType;
                    constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, codegenField, someReceiverType, true);
                    codeStream.fieldAccess((byte)-76, codegenField, constantPoolDeclaringClass);
                    break;
                }
                if ((this.bits & 0x1FE0) != 0) {
                    currentScope.problemReporter().needImplementation(this);
                }
                codeStream.generateEmulationForField(codegenField);
                this.generateReceiver(codeStream);
                codeStream.dup();
                codeStream.generateEmulatedReadAccessForField(codegenField);
                break;
            }
            case 2: {
                Constant assignConstant;
                LocalVariableBinding localBinding = (LocalVariableBinding)this.binding;
                switch (localBinding.type.id) {
                    case 11: {
                        codeStream.generateStringConcatenationAppend(currentScope, this, expression);
                        if (valueRequired) {
                            codeStream.dup();
                        }
                        codeStream.store(localBinding, false);
                        return;
                    }
                    case 10: {
                        assignConstant = expression.constant;
                        if (localBinding.resolvedPosition == -1) {
                            if (valueRequired) {
                                localBinding.useFlag = 1;
                                throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                            }
                            if (assignConstant != Constant.NotAConstant) return;
                            expression.generateCode(currentScope, codeStream, false);
                            return;
                        }
                        if (assignConstant == Constant.NotAConstant || assignConstant.typeID() == 9 || assignConstant.typeID() == 8) break;
                        switch (operator) {
                            case 14: {
                                int increment = assignConstant.intValue();
                                if (increment != (short)increment) break;
                                codeStream.iinc(localBinding.resolvedPosition, increment);
                                if (!valueRequired) return;
                                codeStream.load(localBinding);
                                return;
                            }
                            case 13: {
                                int increment = -assignConstant.intValue();
                                if (increment != (short)increment) break;
                                codeStream.iinc(localBinding.resolvedPosition, increment);
                                if (!valueRequired) return;
                                codeStream.load(localBinding);
                                return;
                            }
                        }
                        break;
                    }
                }
                if (localBinding.resolvedPosition == -1) {
                    assignConstant = expression.constant;
                    if (valueRequired) {
                        localBinding.useFlag = 1;
                        throw new AbortMethod(CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE, null);
                    }
                    if (assignConstant != Constant.NotAConstant) return;
                    expression.generateCode(currentScope, codeStream, false);
                    return;
                }
                codeStream.load(localBinding);
                break;
            }
        }
        int operationTypeID = (this.implicitConversion & 0xFF) >> 4;
        switch (operationTypeID) {
            case 0: 
            case 1: 
            case 11: {
                codeStream.generateStringConcatenationAppend(currentScope, null, expression);
                break;
            }
            default: {
                codeStream.generateImplicitConversion(this.implicitConversion);
                if (expression == IntLiteral.One) {
                    codeStream.generateConstant(expression.constant, this.implicitConversion);
                } else {
                    expression.generateCode(currentScope, codeStream, true);
                }
                codeStream.sendOperator(operator, operationTypeID);
                codeStream.generateImplicitConversion(assignmentImplicitConversion);
            }
        }
        switch (this.bits & 7) {
            case 1: {
                FieldBinding codegenField = ((FieldBinding)this.binding).original();
                if (codegenField.canBeSeenBy(this.getReceiverType(currentScope), this, currentScope)) {
                    this.fieldStore(currentScope, codeStream, codegenField, writeAccessor, this.actualReceiverType, this.delegateThis == null, valueRequired);
                    return;
                }
                if (valueRequired) {
                    switch (codegenField.type.id) {
                        case 7: 
                        case 8: {
                            codeStream.dup2_x2();
                            break;
                        }
                        default: {
                            codeStream.dup_x2();
                        }
                    }
                }
                codeStream.generateEmulatedWriteAccessForField(codegenField);
                return;
            }
            case 2: {
                LocalVariableBinding localBinding = (LocalVariableBinding)this.binding;
                if (valueRequired) {
                    switch (localBinding.type.id) {
                        case 7: 
                        case 8: {
                            codeStream.dup2();
                            break;
                        }
                        default: {
                            codeStream.dup();
                        }
                    }
                }
                codeStream.store(localBinding, false);
                return;
            }
        }
    }

    public void generatePostIncrement(BlockScope currentScope, CodeStream codeStream, CompoundAssignment postIncrement, boolean valueRequired) {
        switch (this.bits & 7) {
            case 1: {
                FieldBinding codegenField = ((FieldBinding)this.binding).original();
                if (codegenField.canBeSeenBy(this.getReceiverType(currentScope), this, currentScope)) {
                    super.generatePostIncrement(currentScope, codeStream, postIncrement, valueRequired);
                } else {
                    if (codegenField.isStatic()) {
                        codeStream.aconst_null();
                    } else if ((this.bits & 0x1FE0) != 0) {
                        currentScope.problemReporter().needImplementation(this);
                    } else {
                        this.generateReceiver(codeStream);
                    }
                    codeStream.generateEmulatedReadAccessForField(codegenField);
                    if (valueRequired) {
                        switch (codegenField.type.id) {
                            case 7: 
                            case 8: {
                                codeStream.dup2();
                                break;
                            }
                            default: {
                                codeStream.dup();
                            }
                        }
                    }
                    codeStream.generateEmulationForField(codegenField);
                    switch (codegenField.type.id) {
                        case 7: 
                        case 8: {
                            codeStream.dup_x2();
                            codeStream.pop();
                            if (codegenField.isStatic()) {
                                codeStream.aconst_null();
                            } else {
                                this.generateReceiver(codeStream);
                            }
                            codeStream.dup_x2();
                            codeStream.pop();
                            break;
                        }
                        default: {
                            codeStream.dup_x1();
                            codeStream.pop();
                            if (codegenField.isStatic()) {
                                codeStream.aconst_null();
                            } else {
                                this.generateReceiver(codeStream);
                            }
                            codeStream.dup_x1();
                            codeStream.pop();
                        }
                    }
                    codeStream.generateConstant(postIncrement.expression.constant, this.implicitConversion);
                    codeStream.sendOperator(postIncrement.operator, codegenField.type.id);
                    codeStream.generateImplicitConversion(postIncrement.preAssignImplicitConversion);
                    codeStream.generateEmulatedWriteAccessForField(codegenField);
                }
                return;
            }
            case 2: {
                super.generatePostIncrement(currentScope, codeStream, postIncrement, valueRequired);
            }
        }
    }

    public void generateReceiver(CodeStream codeStream) {
        codeStream.aload_0();
        if (this.delegateThis != null) {
            codeStream.fieldAccess((byte)-76, this.delegateThis, null);
        }
    }

    public TypeBinding getReceiverType(BlockScope currentScope) {
        Scope scope = currentScope.parent;
        while (true) {
            switch (scope.kind) {
                case 3: {
                    return ((ClassScope)scope).referenceContext.binding;
                }
            }
            scope = scope.parent;
        }
    }

    public void manageSyntheticAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo, boolean isReadAccess) {
        if (this.delegateThis == null) {
            super.manageSyntheticAccessIfNecessary(currentScope, flowInfo, isReadAccess);
            return;
        }
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        if (this.constant != Constant.NotAConstant) {
            return;
        }
        if (this.binding instanceof ParameterizedFieldBinding) {
            ParameterizedFieldBinding parameterizedField = (ParameterizedFieldBinding)this.binding;
            FieldBinding codegenField = parameterizedField.originalField;
            if ((codegenField.type.tagBits & 0x20000000L) != 0L) {
                this.genericCast = codegenField.type.genericCast(currentScope.boxing(parameterizedField.type));
            }
        }
    }

    public TypeBinding reportError(BlockScope scope) {
        this.constant = Constant.NotAConstant;
        if (this.binding instanceof ProblemFieldBinding && ((ProblemFieldBinding)this.binding).problemId() == 1 && this.evaluationContext.declaringTypeName != null) {
            this.delegateThis = scope.getField(scope.enclosingSourceType(), DELEGATE_THIS, this);
            if (this.delegateThis != null) {
                this.actualReceiverType = this.delegateThis.type;
                this.binding = scope.getField(this.delegateThis.type, this.token, this);
                if (!this.binding.isValidBinding()) {
                    return super.reportError(scope);
                }
                return this.checkFieldAccess(scope);
            }
        }
        if (this.binding instanceof ProblemBinding && ((ProblemBinding)this.binding).problemId() == 1 && this.evaluationContext.declaringTypeName != null) {
            this.delegateThis = scope.getField(scope.enclosingSourceType(), DELEGATE_THIS, this);
            if (this.delegateThis != null) {
                this.actualReceiverType = this.delegateThis.type;
                FieldBinding fieldBinding = scope.getField(this.delegateThis.type, this.token, this);
                if (!fieldBinding.isValidBinding()) {
                    if (((ProblemFieldBinding)fieldBinding).problemId() == 2) {
                        CodeSnippetScope localScope = new CodeSnippetScope(scope);
                        this.binding = localScope.getFieldForCodeSnippet(this.delegateThis.type, this.token, this);
                        return this.checkFieldAccess(scope);
                    }
                    return super.reportError(scope);
                }
                this.binding = fieldBinding;
                return this.checkFieldAccess(scope);
            }
        }
        return super.reportError(scope);
    }
}

