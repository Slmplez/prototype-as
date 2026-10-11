/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ArrayInitializer;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class LocalDeclaration
extends AbstractVariableDeclaration {
    public LocalVariableBinding binding;

    public LocalDeclaration(char[] name, int sourceStart, int sourceEnd) {
        this.name = name;
        this.sourceStart = sourceStart;
        this.sourceEnd = sourceEnd;
        this.declarationEnd = sourceEnd;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        MethodScope methodScope;
        AbstractMethodDeclaration methodDeclaration;
        if ((flowInfo.tagBits & 1) == 0) {
            this.bits |= 0x40000000;
        }
        if (this.binding != null && this.type.resolvedType instanceof TypeVariableBinding && (methodDeclaration = (methodScope = this.binding.declaringScope.methodScope()).referenceMethod()) != null && (methodDeclaration.bits & 0x100) != 0 && methodDeclaration.binding != null) {
            TypeVariableBinding[] typeVariables = methodDeclaration.binding.typeVariables();
            if (typeVariables == Binding.NO_TYPE_VARIABLES) {
                currentScope.resetEnclosingMethodStaticFlag();
            } else {
                boolean usesEnclosingTypeVar = false;
                int i = 0;
                while (i < typeVariables.length) {
                    if (typeVariables[i] == this.type.resolvedType) {
                        usesEnclosingTypeVar = true;
                        break;
                    }
                    ++i;
                }
                if (!usesEnclosingTypeVar) {
                    currentScope.resetEnclosingMethodStaticFlag();
                }
            }
        }
        if (this.initialization == null) {
            return flowInfo;
        }
        if ((this.initialization.implicitConversion & 0x400) != 0) {
            this.initialization.checkNPE(currentScope, flowContext, flowInfo);
        }
        flowInfo = this.initialization.analyseCode(currentScope, flowContext, flowInfo).unconditionalInits();
        int nullStatus = this.initialization.nullStatus(flowInfo);
        this.bits = !flowInfo.isDefinitelyAssigned(this.binding) ? (this.bits |= 8) : (this.bits &= 0xFFFFFFF7);
        flowInfo.markAsDefinitelyAssigned(this.binding);
        nullStatus = this.checkAgainstNullAnnotation(currentScope, this.binding, nullStatus);
        if ((this.binding.type.tagBits & 2L) == 0L) {
            flowInfo.markNullStatus(this.binding, nullStatus);
        }
        return flowInfo;
    }

    public void checkModifiers() {
        if ((this.modifiers & 0xFFFF & 0xFFFFFFEF) != 0) {
            this.modifiers = this.modifiers & 0xFFBFFFFF | 0x800000;
        }
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
        if (this.binding.resolvedPosition != -1) {
            codeStream.addVisibleLocalVariable(this.binding);
        }
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int pc = codeStream.position;
        if (this.initialization != null) {
            if (this.binding.resolvedPosition < 0) {
                if (this.initialization.constant == Constant.NotAConstant) {
                    this.initialization.generateCode(currentScope, codeStream, false);
                }
            } else {
                this.initialization.generateCode(currentScope, codeStream, true);
                if (this.binding.type.isArrayType() && (this.initialization.resolvedType == TypeBinding.NULL || this.initialization instanceof CastExpression && ((CastExpression)this.initialization).innermostCastedExpression().resolvedType == TypeBinding.NULL)) {
                    codeStream.checkcast(this.binding.type);
                }
                codeStream.store(this.binding, false);
                if ((this.bits & 8) != 0) {
                    this.binding.recordInitializationStartPC(codeStream.position);
                }
            }
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public int getKind() {
        return 4;
    }

    public void resolve(BlockScope scope) {
        Binding existingVariable;
        TypeBinding variableType = this.type.resolveType(scope, true);
        this.checkModifiers();
        if (variableType != null) {
            if (variableType == TypeBinding.VOID) {
                scope.problemReporter().variableTypeCannotBeVoid(this);
                return;
            }
            if (variableType.isArrayType() && ((ArrayBinding)variableType).leafComponentType == TypeBinding.VOID) {
                scope.problemReporter().variableTypeCannotBeVoidArray(this);
                return;
            }
        }
        if ((existingVariable = scope.getBinding(this.name, 3, (InvocationSite)this, false)) != null && existingVariable.isValidBinding()) {
            if (existingVariable instanceof LocalVariableBinding && this.hiddenVariableDepth == 0) {
                scope.problemReporter().redefineLocal(this);
            } else {
                scope.problemReporter().localVariableHiding(this, existingVariable, false);
            }
        }
        if ((this.modifiers & 0x10) != 0 && this.initialization == null) {
            this.modifiers |= 0x4000000;
        }
        this.binding = new LocalVariableBinding(this, variableType, this.modifiers, false);
        scope.addLocalVariable(this.binding);
        this.binding.setConstant(Constant.NotAConstant);
        if (variableType == null) {
            if (this.initialization != null) {
                this.initialization.resolveType(scope);
            }
            return;
        }
        if (this.initialization != null) {
            if (this.initialization instanceof ArrayInitializer) {
                TypeBinding initializationType = this.initialization.resolveTypeExpecting(scope, variableType);
                if (initializationType != null) {
                    ((ArrayInitializer)this.initialization).binding = (ArrayBinding)initializationType;
                    this.initialization.computeConversion(scope, variableType, initializationType);
                }
            } else {
                this.initialization.setExpectedType(variableType);
                TypeBinding initializationType = this.initialization.resolveType(scope);
                if (initializationType != null) {
                    if (variableType != initializationType) {
                        scope.compilationUnitScope().recordTypeConversion(variableType, initializationType);
                    }
                    if (this.initialization.isConstantValueOfTypeAssignableToType(initializationType, variableType) || initializationType.isCompatibleWith(variableType)) {
                        this.initialization.computeConversion(scope, variableType, initializationType);
                        if (initializationType.needsUncheckedConversion(variableType)) {
                            scope.problemReporter().unsafeTypeConversion(this.initialization, initializationType, variableType);
                        }
                        if (this.initialization instanceof CastExpression && (this.initialization.bits & 0x4000) == 0) {
                            CastExpression.checkNeedForAssignedCast(scope, variableType, (CastExpression)this.initialization);
                        }
                    } else if (this.isBoxingCompatible(initializationType, variableType, this.initialization, scope)) {
                        this.initialization.computeConversion(scope, variableType, initializationType);
                        if (this.initialization instanceof CastExpression && (this.initialization.bits & 0x4000) == 0) {
                            CastExpression.checkNeedForAssignedCast(scope, variableType, (CastExpression)this.initialization);
                        }
                    } else if ((variableType.tagBits & 0x80L) == 0L) {
                        scope.problemReporter().typeMismatchError(initializationType, variableType, this.initialization, null);
                    }
                }
            }
            if (this.binding == Expression.getDirectBinding(this.initialization)) {
                scope.problemReporter().assignmentHasNoEffect(this, this.name);
            }
            this.binding.setConstant(this.binding.isFinal() ? this.initialization.constant.castTo((variableType.id << 4) + this.initialization.constant.typeID()) : Constant.NotAConstant);
        }
        LocalDeclaration.resolveAnnotations(scope, this.annotations, this.binding);
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            if (this.annotations != null) {
                int annotationsLength = this.annotations.length;
                int i = 0;
                while (i < annotationsLength) {
                    this.annotations[i].traverse(visitor, scope);
                    ++i;
                }
            }
            this.type.traverse(visitor, scope);
            if (this.initialization != null) {
                this.initialization.traverse(visitor, scope);
            }
        }
        visitor.endVisit(this, scope);
    }
}

