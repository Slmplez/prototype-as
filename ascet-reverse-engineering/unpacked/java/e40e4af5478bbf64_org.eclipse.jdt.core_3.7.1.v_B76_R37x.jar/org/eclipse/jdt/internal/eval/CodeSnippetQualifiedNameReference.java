/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.IntLiteral;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemFieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.eval.CodeSnippetScope;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetQualifiedNameReference
extends QualifiedNameReference
implements EvaluationConstants,
ProblemReasons {
    EvaluationContext evaluationContext;
    FieldBinding delegateThis;

    public CodeSnippetQualifiedNameReference(char[][] sources, long[] positions, int sourceStart, int sourceEnd, EvaluationContext evaluationContext) {
        super(sources, positions, sourceStart, sourceEnd);
        this.evaluationContext = evaluationContext;
    }

    public TypeBinding checkFieldAccess(BlockScope scope) {
        FieldBinding fieldBinding = (FieldBinding)this.binding;
        MethodScope methodScope = scope.methodScope();
        ReferenceBinding declaringClass = fieldBinding.original().declaringClass;
        if (!(this.indexOfFirstFieldBinding != 1 && !((TypeBinding)declaringClass).isEnum() || methodScope.enclosingSourceType() != declaringClass || methodScope.lastVisibleFieldID < 0 || fieldBinding.id < methodScope.lastVisibleFieldID || fieldBinding.isStatic() && !methodScope.isStatic)) {
            scope.problemReporter().forwardReference(this, this.indexOfFirstFieldBinding - 1, fieldBinding);
        }
        this.bits &= 0xFFFFFFF8;
        this.bits |= 1;
        return this.getOtherFieldBindings(scope);
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        FieldBinding lastFieldBinding;
        int pc = codeStream.position;
        if ((this.bits & 3) == 0) {
            codeStream.recordPositionsFrom(pc, this.sourceStart);
            return;
        }
        FieldBinding fieldBinding = lastFieldBinding = this.otherBindings == null ? (FieldBinding)this.binding : this.otherBindings[this.otherBindings.length - 1];
        if (lastFieldBinding.canBeSeenBy(this.getFinalReceiverType(), this, currentScope)) {
            super.generateCode(currentScope, codeStream, valueRequired);
            return;
        }
        lastFieldBinding = this.generateReadSequence(currentScope, codeStream);
        if (lastFieldBinding != null) {
            boolean isStatic = lastFieldBinding.isStatic();
            Constant fieldConstant = lastFieldBinding.constant();
            if (fieldConstant != Constant.NotAConstant) {
                if (!isStatic) {
                    codeStream.invokeObjectGetClass();
                    codeStream.pop();
                }
                if (valueRequired) {
                    codeStream.generateConstant(fieldConstant, this.implicitConversion);
                }
            } else {
                boolean isFirst = lastFieldBinding == this.binding && (this.indexOfFirstFieldBinding == 1 || lastFieldBinding.declaringClass == currentScope.enclosingReceiverType()) && this.otherBindings == null;
                TypeBinding requiredGenericCast = this.getGenericCast(this.otherBindings == null ? 0 : this.otherBindings.length);
                if (valueRequired || !isFirst && currentScope.compilerOptions().complianceLevel >= 0x300000L || (this.implicitConversion & 0x400) != 0 || requiredGenericCast != null) {
                    int lastFieldPc = codeStream.position;
                    if (lastFieldBinding.declaringClass == null) {
                        codeStream.arraylength();
                        if (valueRequired) {
                            codeStream.generateImplicitConversion(this.implicitConversion);
                        } else {
                            codeStream.pop();
                        }
                    } else {
                        codeStream.generateEmulatedReadAccessForField(lastFieldBinding);
                        if (requiredGenericCast != null) {
                            codeStream.checkcast(requiredGenericCast);
                        }
                        if (valueRequired) {
                            codeStream.generateImplicitConversion(this.implicitConversion);
                        } else {
                            boolean isUnboxing;
                            boolean bl = isUnboxing = (this.implicitConversion & 0x400) != 0;
                            if (isUnboxing) {
                                codeStream.generateImplicitConversion(this.implicitConversion);
                            }
                            switch (isUnboxing ? this.postConversionType((Scope)currentScope).id : lastFieldBinding.type.id) {
                                case 7: 
                                case 8: {
                                    codeStream.pop2();
                                    break;
                                }
                                default: {
                                    codeStream.pop();
                                }
                            }
                        }
                    }
                    int fieldPosition = (int)(this.sourcePositions[this.sourcePositions.length - 1] >>> 32);
                    codeStream.recordPositionsFrom(lastFieldPc, fieldPosition);
                } else if (!isStatic) {
                    codeStream.invokeObjectGetClass();
                    codeStream.pop();
                }
            }
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public void generateAssignment(BlockScope currentScope, CodeStream codeStream, Assignment assignment, boolean valueRequired) {
        FieldBinding lastFieldBinding;
        FieldBinding fieldBinding = lastFieldBinding = this.otherBindings == null ? (FieldBinding)this.binding : this.otherBindings[this.otherBindings.length - 1];
        if (lastFieldBinding.canBeSeenBy(this.getFinalReceiverType(), this, currentScope)) {
            super.generateAssignment(currentScope, codeStream, assignment, valueRequired);
            return;
        }
        lastFieldBinding = this.generateReadSequence(currentScope, codeStream);
        codeStream.generateEmulationForField(lastFieldBinding);
        codeStream.swap();
        assignment.expression.generateCode(currentScope, codeStream, true);
        if (valueRequired) {
            switch (lastFieldBinding.type.id) {
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
        codeStream.generateEmulatedWriteAccessForField(lastFieldBinding);
        if (valueRequired) {
            codeStream.generateImplicitConversion(assignment.implicitConversion);
        }
    }

    public void generateCompoundAssignment(BlockScope currentScope, CodeStream codeStream, Expression expression, int operator, int assignmentImplicitConversion, boolean valueRequired) {
        FieldBinding lastFieldBinding;
        FieldBinding fieldBinding = lastFieldBinding = this.otherBindings == null ? (FieldBinding)this.binding : this.otherBindings[this.otherBindings.length - 1];
        if (lastFieldBinding.canBeSeenBy(this.getFinalReceiverType(), this, currentScope)) {
            super.generateCompoundAssignment(currentScope, codeStream, expression, operator, assignmentImplicitConversion, valueRequired);
            return;
        }
        lastFieldBinding = this.generateReadSequence(currentScope, codeStream);
        if (lastFieldBinding.isStatic()) {
            codeStream.generateEmulationForField(lastFieldBinding);
            codeStream.swap();
            codeStream.aconst_null();
            codeStream.swap();
            codeStream.generateEmulatedReadAccessForField(lastFieldBinding);
        } else {
            codeStream.generateEmulationForField(lastFieldBinding);
            codeStream.swap();
            codeStream.dup();
            codeStream.generateEmulatedReadAccessForField(lastFieldBinding);
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
            switch (lastFieldBinding.type.id) {
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
        codeStream.generateEmulatedWriteAccessForField(lastFieldBinding);
    }

    public void generatePostIncrement(BlockScope currentScope, CodeStream codeStream, CompoundAssignment postIncrement, boolean valueRequired) {
        FieldBinding lastFieldBinding;
        FieldBinding fieldBinding = lastFieldBinding = this.otherBindings == null ? (FieldBinding)this.binding : this.otherBindings[this.otherBindings.length - 1];
        if (lastFieldBinding.canBeSeenBy(this.getFinalReceiverType(), this, currentScope)) {
            super.generatePostIncrement(currentScope, codeStream, postIncrement, valueRequired);
            return;
        }
        lastFieldBinding = this.generateReadSequence(currentScope, codeStream);
        codeStream.generateEmulatedReadAccessForField(lastFieldBinding);
        if (valueRequired) {
            switch (lastFieldBinding.type.id) {
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
        codeStream.generateEmulationForField(lastFieldBinding);
        if (lastFieldBinding.type == TypeBinding.LONG || lastFieldBinding.type == TypeBinding.DOUBLE) {
            codeStream.dup_x2();
            codeStream.pop();
            if (lastFieldBinding.isStatic()) {
                codeStream.aconst_null();
            } else {
                this.generateReadSequence(currentScope, codeStream);
            }
            codeStream.dup_x2();
            codeStream.pop();
        } else {
            codeStream.dup_x1();
            codeStream.pop();
            if (lastFieldBinding.isStatic()) {
                codeStream.aconst_null();
            } else {
                this.generateReadSequence(currentScope, codeStream);
            }
            codeStream.dup_x1();
            codeStream.pop();
        }
        codeStream.generateConstant(postIncrement.expression.constant, this.implicitConversion);
        codeStream.sendOperator(postIncrement.operator, lastFieldBinding.type.id);
        codeStream.generateImplicitConversion(postIncrement.preAssignImplicitConversion);
        codeStream.generateEmulatedWriteAccessForField(lastFieldBinding);
    }

    public FieldBinding generateReadSequence(BlockScope currentScope, CodeStream codeStream) {
        TypeBinding lastReceiverType;
        TypeBinding lastGenericCast;
        FieldBinding lastFieldBinding;
        int otherBindingsCount = this.otherBindings == null ? 0 : this.otherBindings.length;
        boolean needValue = otherBindingsCount == 0 || !this.otherBindings[0].isStatic();
        boolean complyTo14 = currentScope.compilerOptions().complianceLevel >= 0x300000L;
        switch (this.bits & 7) {
            case 1: {
                lastFieldBinding = ((FieldBinding)this.binding).original();
                lastGenericCast = this.genericCast;
                lastReceiverType = this.actualReceiverType;
                if (lastFieldBinding.constant() != Constant.NotAConstant || !needValue) break;
                if (lastFieldBinding.canBeSeenBy(this.actualReceiverType, this, currentScope)) {
                    if (lastFieldBinding.isStatic()) break;
                    if ((this.bits & 0x1FE0) != 0) {
                        ReferenceBinding targetType = currentScope.enclosingSourceType().enclosingTypeAt((this.bits & 0x1FE0) >> 5);
                        Object[] emulationPath = currentScope.getEmulationPath(targetType, true, false);
                        codeStream.generateOuterAccess(emulationPath, this, targetType, currentScope);
                        break;
                    }
                    this.generateReceiver(codeStream);
                    break;
                }
                if (!lastFieldBinding.isStatic()) {
                    if ((this.bits & 0x1FE0) != 0) {
                        currentScope.problemReporter().needImplementation(this);
                        break;
                    }
                    this.generateReceiver(codeStream);
                    break;
                }
                codeStream.aconst_null();
                break;
            }
            case 2: {
                lastFieldBinding = null;
                lastGenericCast = null;
                LocalVariableBinding localBinding = (LocalVariableBinding)this.binding;
                lastReceiverType = localBinding.type;
                if (!needValue) break;
                Constant localConstant = localBinding.constant();
                if (localConstant != Constant.NotAConstant) {
                    codeStream.generateConstant(localConstant, 0);
                    break;
                }
                if ((this.bits & 0x1FE0) != 0) {
                    Object[] path = currentScope.getEmulationPath(localBinding);
                    codeStream.generateOuterAccess(path, this, localBinding, currentScope);
                    break;
                }
                codeStream.load(localBinding);
                break;
            }
            default: {
                return null;
            }
        }
        int positionsLength = this.sourcePositions.length;
        FieldBinding initialFieldBinding = lastFieldBinding;
        if (this.otherBindings != null) {
            int i = 0;
            while (i < otherBindingsCount) {
                TypeBinding nextGenericCast;
                int pc = codeStream.position;
                FieldBinding nextField = this.otherBindings[i].original();
                TypeBinding typeBinding = nextGenericCast = this.otherGenericCasts == null ? null : this.otherGenericCasts[i];
                if (lastFieldBinding != null) {
                    needValue = !nextField.isStatic();
                    Constant fieldConstant = lastFieldBinding.constant();
                    if (fieldConstant != Constant.NotAConstant) {
                        if (i > 0 && !lastFieldBinding.isStatic()) {
                            codeStream.invokeObjectGetClass();
                            codeStream.pop();
                        }
                        if (needValue) {
                            codeStream.generateConstant(fieldConstant, 0);
                        }
                    } else {
                        TypeBinding constantPoolDeclaringClass;
                        if (needValue || i > 0 && complyTo14 || lastGenericCast != null) {
                            if (lastFieldBinding.canBeSeenBy(lastReceiverType, this, currentScope)) {
                                SyntheticMethodBinding accessor;
                                SyntheticMethodBinding syntheticMethodBinding = accessor = this.syntheticReadAccessors == null ? null : this.syntheticReadAccessors[i];
                                if (accessor == null) {
                                    constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, lastFieldBinding, lastReceiverType, i == 0 && this.indexOfFirstFieldBinding == 1);
                                    if (lastFieldBinding.isStatic()) {
                                        codeStream.fieldAccess((byte)-78, lastFieldBinding, constantPoolDeclaringClass);
                                    } else {
                                        codeStream.fieldAccess((byte)-76, lastFieldBinding, constantPoolDeclaringClass);
                                    }
                                } else {
                                    codeStream.invoke((byte)-72, accessor, null);
                                }
                            } else {
                                codeStream.generateEmulatedReadAccessForField(lastFieldBinding);
                            }
                            if (lastGenericCast != null) {
                                codeStream.checkcast(lastGenericCast);
                                lastReceiverType = lastGenericCast;
                            } else {
                                lastReceiverType = lastFieldBinding.type;
                            }
                            if (!needValue) {
                                codeStream.pop();
                            }
                        } else {
                            if (lastFieldBinding == initialFieldBinding) {
                                if (lastFieldBinding.isStatic() && initialFieldBinding.declaringClass != this.actualReceiverType.erasure()) {
                                    if (lastFieldBinding.canBeSeenBy(lastReceiverType, this, currentScope)) {
                                        SyntheticMethodBinding accessor;
                                        SyntheticMethodBinding syntheticMethodBinding = accessor = this.syntheticReadAccessors == null ? null : this.syntheticReadAccessors[i];
                                        if (accessor == null) {
                                            constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, lastFieldBinding, lastReceiverType, i == 0 && this.indexOfFirstFieldBinding == 1);
                                            codeStream.fieldAccess((byte)-78, lastFieldBinding, constantPoolDeclaringClass);
                                        } else {
                                            codeStream.invoke((byte)-72, accessor, null);
                                        }
                                    } else {
                                        codeStream.generateEmulatedReadAccessForField(lastFieldBinding);
                                    }
                                    codeStream.pop();
                                }
                            } else if (!lastFieldBinding.isStatic()) {
                                codeStream.invokeObjectGetClass();
                                codeStream.pop();
                            }
                            lastReceiverType = lastFieldBinding.type;
                        }
                        if (positionsLength - otherBindingsCount + i - 1 >= 0) {
                            int fieldPosition = (int)(this.sourcePositions[positionsLength - otherBindingsCount + i - 1] >>> 32);
                            codeStream.recordPositionsFrom(pc, fieldPosition);
                        }
                    }
                }
                lastFieldBinding = nextField;
                lastGenericCast = nextGenericCast;
                if (lastFieldBinding != null && !lastFieldBinding.canBeSeenBy(lastReceiverType, this, currentScope) && lastFieldBinding.isStatic()) {
                    codeStream.aconst_null();
                }
                ++i;
            }
        }
        return lastFieldBinding;
    }

    public void generateReceiver(CodeStream codeStream) {
        codeStream.aload_0();
        if (this.delegateThis != null) {
            codeStream.fieldAccess((byte)-76, this.delegateThis, null);
        }
    }

    public TypeBinding getOtherFieldBindings(BlockScope scope) {
        int length = this.tokens.length;
        if ((this.bits & 1) != 0) {
            if (!((FieldBinding)this.binding).isStatic()) {
                if (this.indexOfFirstFieldBinding == 1) {
                    if (scope.methodScope().isStatic) {
                        scope.problemReporter().staticFieldAccessToNonStaticVariable(this, (FieldBinding)this.binding);
                        return null;
                    }
                } else {
                    scope.problemReporter().staticFieldAccessToNonStaticVariable(this, (FieldBinding)this.binding);
                    return null;
                }
            }
            if (this.isFieldUseDeprecated((FieldBinding)this.binding, scope, this.indexOfFirstFieldBinding == length ? this.bits : 0)) {
                scope.problemReporter().deprecatedField((FieldBinding)this.binding, this);
            }
        }
        TypeBinding type = ((VariableBinding)this.binding).type;
        int index = this.indexOfFirstFieldBinding;
        if (index == length) {
            this.constant = ((FieldBinding)this.binding).constant();
            return type;
        }
        int otherBindingsLength = length - index;
        this.otherBindings = new FieldBinding[otherBindingsLength];
        this.constant = ((VariableBinding)this.binding).constant();
        while (index < length) {
            char[] token = this.tokens[index];
            if (type == null) {
                return null;
            }
            FieldBinding field = scope.getField(type, token, this);
            int place = index - this.indexOfFirstFieldBinding;
            this.otherBindings[place] = field;
            if (!field.isValidBinding()) {
                CodeSnippetScope localScope = new CodeSnippetScope(scope);
                if (this.delegateThis == null) {
                    if (this.evaluationContext.declaringTypeName != null) {
                        this.delegateThis = scope.getField(scope.enclosingSourceType(), DELEGATE_THIS, this);
                        if (this.delegateThis == null) {
                            return super.reportError(scope);
                        }
                        this.actualReceiverType = this.delegateThis.type;
                    } else {
                        this.constant = Constant.NotAConstant;
                        scope.problemReporter().invalidField(this, field, index, type);
                        return null;
                    }
                }
                this.otherBindings[place] = field = localScope.getFieldForCodeSnippet(this.delegateThis.type, token, this);
            }
            if (field.isValidBinding()) {
                if (this.isFieldUseDeprecated(field, scope, index + 1 == length ? this.bits : 0)) {
                    scope.problemReporter().deprecatedField(field, this);
                }
                if (this.constant != Constant.NotAConstant) {
                    this.constant = field.constant();
                }
                type = field.type;
                ++index;
                continue;
            }
            this.constant = Constant.NotAConstant;
            scope.problemReporter().invalidField(this, field, index, type);
            return null;
        }
        return this.otherBindings[otherBindingsLength - 1].type;
    }

    public void manageSyntheticAccessIfNecessary(BlockScope currentScope, FieldBinding fieldBinding, int index, FlowInfo flowInfo) {
    }

    public TypeBinding reportError(BlockScope scope) {
        if (this.evaluationContext.declaringTypeName != null) {
            this.delegateThis = scope.getField(scope.enclosingSourceType(), DELEGATE_THIS, this);
            if (this.delegateThis == null) {
                return super.reportError(scope);
            }
        } else {
            return super.reportError(scope);
        }
        this.actualReceiverType = this.delegateThis.type;
        if (this.binding instanceof ProblemFieldBinding && ((ProblemFieldBinding)this.binding).problemId() == 1 || this.binding instanceof ProblemBinding && ((ProblemBinding)this.binding).problemId() == 1) {
            FieldBinding fieldBinding = scope.getField(this.delegateThis.type, this.tokens[0], this);
            if (!fieldBinding.isValidBinding()) {
                if (((ProblemFieldBinding)fieldBinding).problemId() == 2) {
                    CodeSnippetScope localScope = new CodeSnippetScope(scope);
                    this.binding = localScope.getFieldForCodeSnippet(this.delegateThis.type, this.tokens[0], this);
                    if (this.binding.isValidBinding()) {
                        return this.checkFieldAccess(scope);
                    }
                    return super.reportError(scope);
                }
                return super.reportError(scope);
            }
            this.binding = fieldBinding;
            return this.checkFieldAccess(scope);
        }
        if (this.binding instanceof ProblemFieldBinding && ((ProblemFieldBinding)this.binding).problemId() == 2) {
            CodeSnippetScope localScope = new CodeSnippetScope(scope);
            this.binding = localScope.getBinding(this.tokens, this.bits & 7, (InvocationSite)this, (ReferenceBinding)this.delegateThis.type);
            if (this.binding.isValidBinding()) {
                this.bits &= 0xFFFFFFF8;
                this.bits |= 1;
            } else {
                return super.reportError(scope);
            }
            TypeBinding result = this.getOtherFieldBindings(scope);
            if (result != null && result.isValidBinding()) {
                return result;
            }
        }
        return super.reportError(scope);
    }
}

