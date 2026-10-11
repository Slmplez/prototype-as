/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.eval.CodeSnippetScope;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetFieldReference
extends FieldReference
implements ProblemReasons,
EvaluationConstants {
    EvaluationContext evaluationContext;
    FieldBinding delegateThis;

    public CodeSnippetFieldReference(char[] source, long pos, EvaluationContext evaluationContext) {
        super(source, pos);
        this.evaluationContext = evaluationContext;
    }

    public void generateAssignment(BlockScope currentScope, CodeStream codeStream, Assignment assignment, boolean valueRequired) {
        FieldBinding codegenBinding = this.binding.original();
        if (codegenBinding.canBeSeenBy(this.actualReceiverType, this, currentScope)) {
            this.receiver.generateCode(currentScope, codeStream, !codegenBinding.isStatic());
            assignment.expression.generateCode(currentScope, codeStream, true);
            this.fieldStore(currentScope, codeStream, codegenBinding, null, this.actualReceiverType, this.receiver.isImplicitThis(), valueRequired);
        } else {
            codeStream.generateEmulationForField(codegenBinding);
            this.receiver.generateCode(currentScope, codeStream, !codegenBinding.isStatic());
            if (codegenBinding.isStatic()) {
                codeStream.aconst_null();
            }
            assignment.expression.generateCode(currentScope, codeStream, true);
            if (valueRequired) {
                switch (codegenBinding.type.id) {
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
            codeStream.generateEmulatedWriteAccessForField(codegenBinding);
        }
        if (valueRequired) {
            codeStream.generateImplicitConversion(assignment.implicitConversion);
        }
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        if (this.constant != Constant.NotAConstant) {
            if (valueRequired) {
                codeStream.generateConstant(this.constant, this.implicitConversion);
            }
        } else {
            FieldBinding codegenBinding = this.binding.original();
            boolean isStatic = codegenBinding.isStatic();
            this.receiver.generateCode(currentScope, codeStream, !isStatic);
            if (valueRequired) {
                Constant fieldConstant = codegenBinding.constant();
                if (fieldConstant == Constant.NotAConstant) {
                    if (codegenBinding.declaringClass == null) {
                        codeStream.arraylength();
                    } else if (codegenBinding.canBeSeenBy(this.actualReceiverType, this, currentScope)) {
                        TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, codegenBinding, this.actualReceiverType, this.receiver.isImplicitThis());
                        if (isStatic) {
                            codeStream.fieldAccess((byte)-78, codegenBinding, constantPoolDeclaringClass);
                        } else {
                            codeStream.fieldAccess((byte)-76, codegenBinding, constantPoolDeclaringClass);
                        }
                    } else {
                        if (isStatic) {
                            codeStream.aconst_null();
                        }
                        codeStream.generateEmulatedReadAccessForField(codegenBinding);
                    }
                    codeStream.generateImplicitConversion(this.implicitConversion);
                } else {
                    if (!isStatic) {
                        codeStream.invokeObjectGetClass();
                        codeStream.pop();
                    }
                    codeStream.generateConstant(fieldConstant, this.implicitConversion);
                }
            } else if (!isStatic) {
                codeStream.invokeObjectGetClass();
                codeStream.pop();
            }
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public void generateCompoundAssignment(BlockScope currentScope, CodeStream codeStream, Expression expression, int operator, int assignmentImplicitConversion, boolean valueRequired) {
        FieldBinding codegenBinding = this.binding.original();
        if (codegenBinding.canBeSeenBy(this.actualReceiverType, this, currentScope)) {
            boolean isStatic = codegenBinding.isStatic();
            this.receiver.generateCode(currentScope, codeStream, !isStatic);
            TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, codegenBinding, this.actualReceiverType, this.receiver.isImplicitThis());
            if (isStatic) {
                codeStream.fieldAccess((byte)-78, codegenBinding, constantPoolDeclaringClass);
            } else {
                codeStream.dup();
                codeStream.fieldAccess((byte)-76, codegenBinding, constantPoolDeclaringClass);
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
            this.fieldStore(currentScope, codeStream, codegenBinding, null, this.actualReceiverType, this.receiver.isImplicitThis(), valueRequired);
        } else {
            boolean isStatic = codegenBinding.isStatic();
            this.receiver.generateCode(currentScope, codeStream, !isStatic);
            if (isStatic) {
                codeStream.generateEmulationForField(codegenBinding);
                codeStream.aconst_null();
                codeStream.aconst_null();
                codeStream.generateEmulatedReadAccessForField(codegenBinding);
            } else {
                codeStream.generateEmulationForField(this.binding);
                this.receiver.generateCode(currentScope, codeStream, !isStatic);
                codeStream.dup();
                codeStream.generateEmulatedReadAccessForField(codegenBinding);
            }
            int operationTypeID = (this.implicitConversion & 0xFF) >> 4;
            if (operationTypeID == 11) {
                codeStream.generateStringConcatenationAppend(currentScope, null, expression);
            } else {
                codeStream.generateImplicitConversion(this.implicitConversion);
                if (expression == IntLiteral.One) {
                    codeStream.generateConstant(expression.constant, this.implicitConversion);
                } else {
                    expression.generateCode(currentScope, codeStream, true);
                }
                codeStream.sendOperator(operator, operationTypeID);
                codeStream.generateImplicitConversion(assignmentImplicitConversion);
            }
            if (valueRequired) {
                if (codegenBinding.type == TypeBinding.LONG || codegenBinding.type == TypeBinding.DOUBLE) {
                    codeStream.dup2_x2();
                } else {
                    codeStream.dup_x2();
                }
            }
            codeStream.generateEmulatedWriteAccessForField(codegenBinding);
        }
    }

    public void generatePostIncrement(BlockScope currentScope, CodeStream codeStream, CompoundAssignment postIncrement, boolean valueRequired) {
        FieldBinding codegenBinding = this.binding.original();
        if (codegenBinding.canBeSeenBy(this.actualReceiverType, this, currentScope)) {
            super.generatePostIncrement(currentScope, codeStream, postIncrement, valueRequired);
        } else {
            boolean isStatic = codegenBinding.isStatic();
            this.receiver.generateCode(currentScope, codeStream, !isStatic);
            if (isStatic) {
                codeStream.aconst_null();
            }
            codeStream.dup();
            codeStream.generateEmulatedReadAccessForField(codegenBinding);
            int typeID = codegenBinding.type.id;
            switch (typeID) {
                case 7: 
                case 8: {
                    if (valueRequired) {
                        codeStream.dup2_x1();
                    }
                    codeStream.dup2_x1();
                    codeStream.pop2();
                    break;
                }
                default: {
                    if (valueRequired) {
                        codeStream.dup_x1();
                    }
                    codeStream.dup_x1();
                    codeStream.pop();
                }
            }
            codeStream.generateEmulationForField(codegenBinding);
            codeStream.swap();
            switch (typeID) {
                case 7: 
                case 8: {
                    codeStream.dup2_x2();
                    break;
                }
                default: {
                    codeStream.dup2_x1();
                }
            }
            codeStream.pop2();
            codeStream.generateConstant(postIncrement.expression.constant, this.implicitConversion);
            codeStream.sendOperator(postIncrement.operator, codegenBinding.type.id);
            codeStream.generateImplicitConversion(postIncrement.preAssignImplicitConversion);
            codeStream.generateEmulatedWriteAccessForField(codegenBinding);
        }
    }

    public void manageSyntheticAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo, boolean isReadAccess) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.actualReceiverType = this.receiver.resolveType(scope);
        if (this.actualReceiverType == null) {
            this.constant = Constant.NotAConstant;
            return null;
        }
        FieldBinding firstAttempt = this.binding = scope.getField(this.actualReceiverType, this.token, this);
        boolean isNotVisible = false;
        if (!this.binding.isValidBinding() && this.binding instanceof ProblemFieldBinding && ((ProblemFieldBinding)this.binding).problemId() == 2) {
            isNotVisible = true;
            if (this.evaluationContext.declaringTypeName != null) {
                this.delegateThis = scope.getField(scope.enclosingSourceType(), DELEGATE_THIS, this);
                if (this.delegateThis == null) {
                    this.constant = Constant.NotAConstant;
                    scope.problemReporter().invalidField(this, this.actualReceiverType);
                    return null;
                }
            } else {
                this.constant = Constant.NotAConstant;
                scope.problemReporter().invalidField(this, this.actualReceiverType);
                return null;
            }
            this.actualReceiverType = this.delegateThis.type;
            CodeSnippetScope localScope = new CodeSnippetScope(scope);
            this.binding = localScope.getFieldForCodeSnippet(this.delegateThis.type, this.token, this);
        }
        if (!this.binding.isValidBinding()) {
            this.constant = Constant.NotAConstant;
            if (isNotVisible) {
                this.binding = firstAttempt;
            }
            scope.problemReporter().invalidField(this, this.actualReceiverType);
            return null;
        }
        if (this.isFieldUseDeprecated(this.binding, scope, this.bits)) {
            scope.problemReporter().deprecatedField(this.binding, this);
        }
        Constant constant = this.constant = this.receiver.isImplicitThis() ? this.binding.constant() : Constant.NotAConstant;
        if (!this.receiver.isThis()) {
            this.constant = Constant.NotAConstant;
        }
        this.resolvedType = this.binding.type;
        return this.resolvedType;
    }
}

