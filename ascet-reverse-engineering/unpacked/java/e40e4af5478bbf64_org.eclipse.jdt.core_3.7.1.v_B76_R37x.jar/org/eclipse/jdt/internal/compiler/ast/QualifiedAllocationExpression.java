/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class QualifiedAllocationExpression
extends AllocationExpression {
    public Expression enclosingInstance;
    public TypeDeclaration anonymousType;

    public QualifiedAllocationExpression() {
    }

    public QualifiedAllocationExpression(TypeDeclaration anonymousType) {
        this.anonymousType = anonymousType;
        anonymousType.allocation = this;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.enclosingInstance != null) {
            flowInfo = this.enclosingInstance.analyseCode(currentScope, flowContext, flowInfo);
        }
        this.checkCapturedLocalInitializationIfNecessary((ReferenceBinding)(this.anonymousType == null ? this.binding.declaringClass.erasure() : this.binding.declaringClass.superclass().erasure()), currentScope, flowInfo);
        if (this.arguments != null) {
            int i = 0;
            int count = this.arguments.length;
            while (i < count) {
                flowInfo = this.arguments[i].analyseCode(currentScope, flowContext, flowInfo);
                if ((this.arguments[i].implicitConversion & 0x400) != 0) {
                    this.arguments[i].checkNPE(currentScope, flowContext, flowInfo);
                }
                ++i;
            }
        }
        if (this.anonymousType != null) {
            flowInfo = this.anonymousType.analyseCode(currentScope, flowContext, flowInfo);
        }
        TypeBinding[] thrownExceptions = this.binding.thrownExceptions;
        if (this.binding.thrownExceptions.length != 0) {
            if ((this.bits & 0x10000) != 0 && this.genericTypeArguments == null) {
                thrownExceptions = currentScope.environment().convertToRawTypes(this.binding.thrownExceptions, true, true);
            }
            flowContext.checkExceptionHandlers(thrownExceptions, (ASTNode)this, (FlowInfo)flowInfo.unconditionalCopy(), currentScope);
        }
        this.manageEnclosingInstanceAccessIfNecessary(currentScope, flowInfo);
        this.manageSyntheticAccessIfNecessary(currentScope, flowInfo);
        return flowInfo;
    }

    public Expression enclosingInstance() {
        return this.enclosingInstance;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        boolean isUnboxing;
        if (!valueRequired) {
            currentScope.problemReporter().unusedObjectAllocation(this);
        }
        int pc = codeStream.position;
        MethodBinding codegenBinding = this.binding.original();
        ReferenceBinding allocatedType = codegenBinding.declaringClass;
        codeStream.new_(allocatedType);
        boolean bl = isUnboxing = (this.implicitConversion & 0x400) != 0;
        if (valueRequired || isUnboxing) {
            codeStream.dup();
        }
        if (this.type != null) {
            codeStream.recordPositionsFrom(pc, this.type.sourceStart);
        } else {
            codeStream.ldc(String.valueOf(this.enumConstant.name));
            codeStream.generateInlinedValue(this.enumConstant.binding.id);
        }
        if (allocatedType.isNestedType()) {
            codeStream.generateSyntheticEnclosingInstanceValues(currentScope, allocatedType, this.enclosingInstance(), this);
        }
        this.generateArguments(this.binding, this.arguments, currentScope, codeStream);
        if (allocatedType.isNestedType()) {
            codeStream.generateSyntheticOuterArgumentValues(currentScope, allocatedType, this);
        }
        if (this.syntheticAccessor == null) {
            codeStream.invoke((byte)-73, codegenBinding, null);
        } else {
            int i = 0;
            int max = this.syntheticAccessor.parameters.length - codegenBinding.parameters.length;
            while (i < max) {
                codeStream.aconst_null();
                ++i;
            }
            codeStream.invoke((byte)-73, this.syntheticAccessor, null);
        }
        if (valueRequired) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else if (isUnboxing) {
            codeStream.generateImplicitConversion(this.implicitConversion);
            switch (this.postConversionType((Scope)currentScope).id) {
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
        codeStream.recordPositionsFrom(pc, this.sourceStart);
        if (this.anonymousType != null) {
            this.anonymousType.generateCode(currentScope, codeStream);
        }
    }

    public boolean isSuperAccess() {
        return this.anonymousType != null;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
        ReferenceBinding allocatedTypeErasure;
        if ((flowInfo.tagBits & 1) == 0 && (allocatedTypeErasure = (ReferenceBinding)this.binding.declaringClass.erasure()).isNestedType() && currentScope.enclosingSourceType().isLocalType()) {
            if (allocatedTypeErasure.isLocalType()) {
                ((LocalTypeBinding)allocatedTypeErasure).addInnerEmulationDependent(currentScope, this.enclosingInstance != null);
            } else {
                currentScope.propagateInnerEmulation(allocatedTypeErasure, this.enclosingInstance != null);
            }
        }
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        if (this.enclosingInstance != null) {
            this.enclosingInstance.printExpression(0, output).append('.');
        }
        super.printExpression(0, output);
        if (this.anonymousType != null) {
            this.anonymousType.print(indent, output);
        }
        return output;
    }

    public TypeBinding resolveType(BlockScope scope) {
        int i;
        boolean isDiamond;
        boolean argsContainCast;
        boolean hasError;
        TypeBinding receiverType;
        TypeBinding enclosingInstanceType;
        block60: {
            block58: {
                boolean enclosingInstanceContainsCast;
                block63: {
                    ReferenceBinding enclosingInstanceReference;
                    block62: {
                        block61: {
                            block59: {
                                if (this.anonymousType == null && this.enclosingInstance == null) {
                                    return super.resolveType(scope);
                                }
                                this.constant = Constant.NotAConstant;
                                enclosingInstanceType = null;
                                enclosingInstanceReference = null;
                                receiverType = null;
                                hasError = false;
                                enclosingInstanceContainsCast = false;
                                argsContainCast = false;
                                if (this.enclosingInstance == null) break block58;
                                if (this.enclosingInstance instanceof CastExpression) {
                                    this.enclosingInstance.bits |= 0x20;
                                    enclosingInstanceContainsCast = true;
                                }
                                if ((enclosingInstanceType = this.enclosingInstance.resolveType(scope)) != null) break block59;
                                hasError = true;
                                break block60;
                            }
                            if (!enclosingInstanceType.isBaseType() && !enclosingInstanceType.isArrayType()) break block61;
                            scope.problemReporter().illegalPrimitiveOrArrayTypeForEnclosingInstance(enclosingInstanceType, this.enclosingInstance);
                            hasError = true;
                            break block60;
                        }
                        if (!(this.type instanceof QualifiedTypeReference)) break block62;
                        scope.problemReporter().illegalUsageOfQualifiedTypeReference((QualifiedTypeReference)this.type);
                        hasError = true;
                        break block60;
                    }
                    enclosingInstanceReference = (ReferenceBinding)enclosingInstanceType;
                    if (enclosingInstanceReference.canBeSeenBy(scope)) break block63;
                    enclosingInstanceType = new ProblemReferenceBinding(enclosingInstanceReference.compoundName, enclosingInstanceReference, 2);
                    scope.problemReporter().invalidType(this.enclosingInstance, enclosingInstanceType);
                    hasError = true;
                    break block60;
                }
                receiverType = ((SingleTypeReference)this.type).resolveTypeEnclosing(scope, (ReferenceBinding)enclosingInstanceType);
                if (receiverType == null || !enclosingInstanceContainsCast) break block60;
                CastExpression.checkNeedForEnclosingInstanceCast(scope, this.enclosingInstance, enclosingInstanceType, receiverType);
                break block60;
            }
            if (this.type == null) {
                receiverType = scope.enclosingSourceType();
            } else {
                receiverType = this.type.resolveType(scope, true);
                if (receiverType != null && receiverType.isValidBinding() && this.type instanceof ParameterizedQualifiedTypeReference) {
                    ReferenceBinding currentType = (ReferenceBinding)receiverType;
                    block0: while ((currentType.modifiers & 8) == 0 && !currentType.isRawType()) {
                        if ((currentType = currentType.enclosingType()) != null) continue;
                        ParameterizedQualifiedTypeReference qRef = (ParameterizedQualifiedTypeReference)this.type;
                        int i2 = qRef.typeArguments.length - 2;
                        while (i2 >= 0) {
                            if (qRef.typeArguments[i2] != null) {
                                scope.problemReporter().illegalQualifiedParameterizedTypeAllocation(this.type, receiverType);
                                break block0;
                            }
                            --i2;
                        }
                        break block0;
                    }
                }
            }
        }
        if (receiverType == null || !receiverType.isValidBinding()) {
            hasError = true;
        }
        boolean bl = isDiamond = this.type != null && (this.type.bits & 0x80000) != 0;
        if (this.typeArguments != null) {
            int length = this.typeArguments.length;
            boolean argHasError = scope.compilerOptions().sourceLevel < 0x310000L;
            this.genericTypeArguments = new TypeBinding[length];
            i = 0;
            while (i < length) {
                TypeReference typeReference = this.typeArguments[i];
                this.genericTypeArguments[i] = typeReference.resolveType(scope, true);
                if (this.genericTypeArguments[i] == null) {
                    argHasError = true;
                }
                if (argHasError && typeReference instanceof Wildcard) {
                    scope.problemReporter().illegalUsageOfWildcard(typeReference);
                }
                ++i;
            }
            if (isDiamond) {
                scope.problemReporter().diamondNotWithExplicitTypeArguments(this.typeArguments);
                return null;
            }
            if (argHasError) {
                if (this.arguments != null) {
                    i = 0;
                    int max = this.arguments.length;
                    while (i < max) {
                        this.arguments[i].resolveType(scope);
                        ++i;
                    }
                }
                return null;
            }
        }
        TypeBinding[] argumentTypes = Binding.NO_PARAMETERS;
        if (this.arguments != null) {
            int length = this.arguments.length;
            argumentTypes = new TypeBinding[length];
            i = 0;
            while (i < length) {
                Expression argument = this.arguments[i];
                if (argument instanceof CastExpression) {
                    argument.bits |= 0x20;
                    argsContainCast = true;
                }
                if ((argumentTypes[i] = argument.resolveType(scope)) == null) {
                    hasError = true;
                }
                ++i;
            }
        }
        if (hasError) {
            if (isDiamond) {
                return null;
            }
            if (receiverType instanceof ReferenceBinding) {
                ReferenceBinding referenceReceiver = (ReferenceBinding)receiverType;
                if (receiverType.isValidBinding()) {
                    MethodBinding closestMatch;
                    int length = this.arguments == null ? 0 : this.arguments.length;
                    TypeBinding[] pseudoArgs = new TypeBinding[length];
                    int i3 = length;
                    while (--i3 >= 0) {
                        TypeBinding typeBinding = pseudoArgs[i3] = argumentTypes[i3] == null ? TypeBinding.NULL : argumentTypes[i3];
                    }
                    this.binding = scope.findMethod(referenceReceiver, TypeConstants.INIT, pseudoArgs, this);
                    if (this.binding != null && !this.binding.isValidBinding() && (closestMatch = ((ProblemMethodBinding)this.binding).closestMatch) != null) {
                        if (closestMatch.original().typeVariables != Binding.NO_TYPE_VARIABLES) {
                            closestMatch = scope.environment().createParameterizedGenericMethod(closestMatch.original(), (RawTypeBinding)null);
                        }
                        this.binding = closestMatch;
                        MethodBinding closestMatchOriginal = closestMatch.original();
                        if (closestMatchOriginal.isOrEnclosedByPrivateType() && !scope.isDefinedInMethod(closestMatchOriginal)) {
                            closestMatchOriginal.modifiers |= 0x8000000;
                        }
                    }
                }
                if (this.anonymousType != null) {
                    scope.addAnonymousType(this.anonymousType, referenceReceiver);
                    this.anonymousType.resolve(scope);
                    this.resolvedType = this.anonymousType.binding;
                    return this.resolvedType;
                }
            }
            this.resolvedType = receiverType;
            return this.resolvedType;
        }
        if (this.anonymousType == null) {
            ReferenceBinding expectedType;
            ReferenceBinding allocationType;
            if (!receiverType.canBeInstantiated()) {
                scope.problemReporter().cannotInstantiate(this.type, receiverType);
                this.resolvedType = receiverType;
                return this.resolvedType;
            }
            if (isDiamond) {
                TypeBinding[] inferredTypes = this.inferElidedTypes(((ParameterizedTypeBinding)receiverType).genericType(), receiverType.enclosingType(), argumentTypes, scope);
                if (inferredTypes == null) {
                    scope.problemReporter().cannotInferElidedTypes(this);
                    this.resolvedType = null;
                    return null;
                }
                receiverType = this.type.resolvedType = scope.environment().createParameterizedType(((ParameterizedTypeBinding)receiverType).genericType(), inferredTypes, ((ParameterizedTypeBinding)receiverType).enclosingType());
            }
            if ((this.binding = scope.getConstructor(allocationType = (ReferenceBinding)receiverType, argumentTypes, this)).isValidBinding()) {
                if (this.isMethodUseDeprecated(this.binding, scope, true)) {
                    scope.problemReporter().deprecatedMethod(this.binding, this);
                }
                if (QualifiedAllocationExpression.checkInvocationArguments(scope, null, allocationType, this.binding, this.arguments, argumentTypes, argsContainCast, this)) {
                    this.bits |= 0x10000;
                }
                if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
                    scope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
                }
            } else {
                if (this.binding.declaringClass == null) {
                    this.binding.declaringClass = allocationType;
                }
                if (this.type != null && !this.type.resolvedType.isValidBinding()) {
                    return null;
                }
                scope.problemReporter().invalidConstructor(this, this.binding);
                this.resolvedType = receiverType;
                return this.resolvedType;
            }
            if ((this.binding.tagBits & 0x80L) != 0L) {
                scope.problemReporter().missingTypeInConstructor(this, this.binding);
            }
            if (!isDiamond && receiverType.isParameterizedTypeWithActualArguments()) {
                this.checkTypeArgumentRedundancy((ParameterizedTypeBinding)receiverType, receiverType.enclosingType(), argumentTypes, scope);
            }
            if ((expectedType = this.binding.declaringClass.enclosingType()) != enclosingInstanceType) {
                scope.compilationUnitScope().recordTypeConversion(expectedType, enclosingInstanceType);
            }
            if (enclosingInstanceType.isCompatibleWith(expectedType) || scope.isBoxingCompatibleWith(enclosingInstanceType, expectedType)) {
                this.enclosingInstance.computeConversion(scope, expectedType, enclosingInstanceType);
                this.resolvedType = receiverType;
                return this.resolvedType;
            }
            scope.problemReporter().typeMismatchError(enclosingInstanceType, expectedType, this.enclosingInstance, null);
            this.resolvedType = receiverType;
            return this.resolvedType;
        }
        if (isDiamond) {
            scope.problemReporter().diamondNotWithAnoymousClasses(this.type);
            return null;
        }
        ReferenceBinding superType = (ReferenceBinding)receiverType;
        if (superType.isTypeVariable()) {
            superType = new ProblemReferenceBinding(new char[][]{superType.sourceName()}, superType, 9);
            scope.problemReporter().invalidType(this, superType);
            return null;
        }
        if (this.type != null && superType.isEnum()) {
            scope.problemReporter().cannotInstantiate(this.type, superType);
            this.resolvedType = superType;
            return this.resolvedType;
        }
        ReferenceBinding anonymousSuperclass = superType.isInterface() ? scope.getJavaLangObject() : superType;
        scope.addAnonymousType(this.anonymousType, superType);
        this.anonymousType.resolve(scope);
        this.resolvedType = this.anonymousType.binding;
        if ((this.resolvedType.tagBits & 0x20000L) != 0L) {
            return null;
        }
        MethodBinding inheritedBinding = scope.getConstructor(anonymousSuperclass, argumentTypes, this);
        if (!inheritedBinding.isValidBinding()) {
            if (inheritedBinding.declaringClass == null) {
                inheritedBinding.declaringClass = anonymousSuperclass;
            }
            if (this.type != null && !this.type.resolvedType.isValidBinding()) {
                return null;
            }
            scope.problemReporter().invalidConstructor(this, inheritedBinding);
            return this.resolvedType;
        }
        if ((inheritedBinding.tagBits & 0x80L) != 0L) {
            scope.problemReporter().missingTypeInConstructor(this, inheritedBinding);
        }
        if (this.enclosingInstance != null) {
            ReferenceBinding targetEnclosing = inheritedBinding.declaringClass.enclosingType();
            if (targetEnclosing == null) {
                scope.problemReporter().unnecessaryEnclosingInstanceSpecification(this.enclosingInstance, superType);
                return this.resolvedType;
            }
            if (!enclosingInstanceType.isCompatibleWith(targetEnclosing) && !scope.isBoxingCompatibleWith(enclosingInstanceType, targetEnclosing)) {
                scope.problemReporter().typeMismatchError(enclosingInstanceType, targetEnclosing, this.enclosingInstance, null);
                return this.resolvedType;
            }
            this.enclosingInstance.computeConversion(scope, targetEnclosing, enclosingInstanceType);
        }
        if (this.arguments != null && QualifiedAllocationExpression.checkInvocationArguments(scope, null, anonymousSuperclass, inheritedBinding, this.arguments, argumentTypes, argsContainCast, this)) {
            this.bits |= 0x10000;
        }
        if (this.typeArguments != null && inheritedBinding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
            scope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(inheritedBinding, this.genericTypeArguments, this.typeArguments);
        }
        this.binding = this.anonymousType.createDefaultConstructorWithBinding(inheritedBinding, (this.bits & 0x10000) != 0 && this.genericTypeArguments == null);
        return this.resolvedType;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            if (this.enclosingInstance != null) {
                this.enclosingInstance.traverse(visitor, scope);
            }
            if (this.typeArguments != null) {
                int i = 0;
                int typeArgumentsLength = this.typeArguments.length;
                while (i < typeArgumentsLength) {
                    this.typeArguments[i].traverse(visitor, scope);
                    ++i;
                }
            }
            if (this.type != null) {
                this.type.traverse(visitor, scope);
            }
            if (this.arguments != null) {
                int argumentsLength = this.arguments.length;
                int i = 0;
                while (i < argumentsLength) {
                    this.arguments[i].traverse(visitor, scope);
                    ++i;
                }
            }
            if (this.anonymousType != null) {
                this.anonymousType.traverse(visitor, scope);
            }
        }
        visitor.endVisit(this, scope);
    }
}

