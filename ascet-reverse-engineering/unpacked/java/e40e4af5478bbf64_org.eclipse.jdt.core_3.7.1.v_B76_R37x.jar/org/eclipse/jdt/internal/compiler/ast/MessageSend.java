/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedSuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class MessageSend
extends Expression
implements InvocationSite {
    public Expression receiver;
    public char[] selector;
    public Expression[] arguments;
    public MethodBinding binding;
    public MethodBinding syntheticAccessor;
    public TypeBinding expectedType;
    public long nameSourcePosition;
    public TypeBinding actualReceiverType;
    public TypeBinding valueCast;
    public TypeReference[] typeArguments;
    public TypeBinding[] genericTypeArguments;

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        boolean nonStatic = !this.binding.isStatic();
        flowInfo = this.receiver.analyseCode(currentScope, flowContext, flowInfo, nonStatic).unconditionalInits();
        if (nonStatic) {
            this.receiver.checkNPE(currentScope, flowContext, flowInfo);
            if (this.receiver.isThis()) {
                currentScope.resetEnclosingMethodStaticFlag();
            }
        } else if (this.receiver.isThis() && (this.receiver.bits & 4) == 0) {
            currentScope.resetEnclosingMethodStaticFlag();
        }
        if (this.arguments != null) {
            int length = this.arguments.length;
            int i = 0;
            while (i < length) {
                if ((this.arguments[i].implicitConversion & 0x400) != 0) {
                    this.arguments[i].checkNPE(currentScope, flowContext, flowInfo);
                }
                flowInfo = this.arguments[i].analyseCode(currentScope, flowContext, flowInfo).unconditionalInits();
                ++i;
            }
        }
        TypeBinding[] thrownExceptions = this.binding.thrownExceptions;
        if (this.binding.thrownExceptions != Binding.NO_EXCEPTIONS) {
            if ((this.bits & 0x10000) != 0 && this.genericTypeArguments == null) {
                thrownExceptions = currentScope.environment().convertToRawTypes(this.binding.thrownExceptions, true, true);
            }
            flowContext.checkExceptionHandlers(thrownExceptions, (ASTNode)this, flowInfo.copy(), currentScope);
        }
        this.manageSyntheticAccessIfNecessary(currentScope, flowInfo);
        return flowInfo;
    }

    public void computeConversion(Scope scope, TypeBinding runtimeTimeType, TypeBinding compileTimeType) {
        if (runtimeTimeType == null || compileTimeType == null) {
            return;
        }
        if (this.binding != null && this.binding.isValidBinding()) {
            ReferenceBinding referenceCast;
            MethodBinding originalBinding = this.binding.original();
            TypeBinding originalType = originalBinding.returnType;
            if (originalType.leafComponentType().isTypeVariable()) {
                TypeBinding targetType = !compileTimeType.isBaseType() && runtimeTimeType.isBaseType() ? compileTimeType : runtimeTimeType;
                this.valueCast = originalType.genericCast(targetType);
            } else if (this.binding == scope.environment().arrayClone && runtimeTimeType.id != 1 && scope.compilerOptions().sourceLevel >= 0x310000L) {
                this.valueCast = runtimeTimeType;
            }
            if (this.valueCast instanceof ReferenceBinding && !(referenceCast = (ReferenceBinding)this.valueCast).canBeSeenBy(scope)) {
                scope.problemReporter().invalidType(this, new ProblemReferenceBinding(CharOperation.splitOn('.', referenceCast.shortReadableName()), referenceCast, 2));
            }
        }
        super.computeConversion(scope, runtimeTimeType, compileTimeType);
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        int pc = codeStream.position;
        MethodBinding codegenBinding = this.binding instanceof PolymorphicMethodBinding ? this.binding : this.binding.original();
        boolean isStatic = codegenBinding.isStatic();
        if (isStatic) {
            this.receiver.generateCode(currentScope, codeStream, false);
        } else if ((this.bits & 0x1FE0) != 0 && this.receiver.isImplicitThis()) {
            ReferenceBinding targetType = currentScope.enclosingSourceType().enclosingTypeAt((this.bits & 0x1FE0) >> 5);
            Object[] path = currentScope.getEmulationPath(targetType, true, false);
            codeStream.generateOuterAccess(path, this, targetType, currentScope);
        } else {
            this.receiver.generateCode(currentScope, codeStream, true);
            if ((this.bits & 0x40000) != 0) {
                codeStream.checkcast(this.actualReceiverType);
            }
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
        this.generateArguments(this.binding, this.arguments, currentScope, codeStream);
        pc = codeStream.position;
        if (this.syntheticAccessor == null) {
            TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass((Scope)currentScope, codegenBinding, this.actualReceiverType, this.receiver.isImplicitThis());
            if (isStatic) {
                codeStream.invoke((byte)-72, codegenBinding, constantPoolDeclaringClass);
            } else if (this.receiver.isSuper() || codegenBinding.isPrivate()) {
                codeStream.invoke((byte)-73, codegenBinding, constantPoolDeclaringClass);
            } else if (constantPoolDeclaringClass.isInterface()) {
                codeStream.invoke((byte)-71, codegenBinding, constantPoolDeclaringClass);
            } else {
                codeStream.invoke((byte)-74, codegenBinding, constantPoolDeclaringClass);
            }
        } else {
            codeStream.invoke((byte)-72, this.syntheticAccessor, null);
        }
        if (this.valueCast != null) {
            codeStream.checkcast(this.valueCast);
        }
        if (valueRequired) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            boolean isUnboxing;
            boolean bl = isUnboxing = (this.implicitConversion & 0x400) != 0;
            if (isUnboxing) {
                codeStream.generateImplicitConversion(this.implicitConversion);
            }
            switch (isUnboxing ? this.postConversionType((Scope)currentScope).id : codegenBinding.returnType.id) {
                case 7: 
                case 8: {
                    codeStream.pop2();
                    break;
                }
                case 6: {
                    break;
                }
                default: {
                    codeStream.pop();
                }
            }
        }
        codeStream.recordPositionsFrom(pc, (int)(this.nameSourcePosition >>> 32));
    }

    public TypeBinding[] genericTypeArguments() {
        return this.genericTypeArguments;
    }

    public boolean isSuperAccess() {
        return this.receiver.isSuper();
    }

    public boolean isTypeAccess() {
        return this.receiver != null && this.receiver.isTypeReference();
    }

    public void manageSyntheticAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        MethodBinding codegenBinding = this.binding.original();
        if (this.binding.isPrivate()) {
            if (currentScope.enclosingSourceType() != codegenBinding.declaringClass) {
                this.syntheticAccessor = ((SourceTypeBinding)codegenBinding.declaringClass).addSyntheticMethod(codegenBinding, false);
                currentScope.problemReporter().needToEmulateMethodAccess(codegenBinding, this);
                return;
            }
        } else {
            if (this.receiver instanceof QualifiedSuperReference) {
                SourceTypeBinding destinationType = (SourceTypeBinding)((QualifiedSuperReference)this.receiver).currentCompatibleType;
                this.syntheticAccessor = destinationType.addSyntheticMethod(codegenBinding, this.isSuperAccess());
                currentScope.problemReporter().needToEmulateMethodAccess(codegenBinding, this);
                return;
            }
            if (this.binding.isProtected() && (this.bits & 0x1FE0) != 0) {
                SourceTypeBinding enclosingSourceType = currentScope.enclosingSourceType();
                if (codegenBinding.declaringClass.getPackage() != enclosingSourceType.getPackage()) {
                    SourceTypeBinding currentCompatibleType = (SourceTypeBinding)enclosingSourceType.enclosingTypeAt((this.bits & 0x1FE0) >> 5);
                    this.syntheticAccessor = currentCompatibleType.addSyntheticMethod(codegenBinding, this.isSuperAccess());
                    currentScope.problemReporter().needToEmulateMethodAccess(codegenBinding, this);
                    return;
                }
            }
        }
    }

    public int nullStatus(FlowInfo flowInfo) {
        return 1;
    }

    public TypeBinding postConversionType(Scope scope) {
        TypeBinding convertedType = this.resolvedType;
        if (this.valueCast != null) {
            convertedType = this.valueCast;
        }
        int runtimeType = (this.implicitConversion & 0xFF) >> 4;
        switch (runtimeType) {
            case 5: {
                convertedType = TypeBinding.BOOLEAN;
                break;
            }
            case 3: {
                convertedType = TypeBinding.BYTE;
                break;
            }
            case 4: {
                convertedType = TypeBinding.SHORT;
                break;
            }
            case 2: {
                convertedType = TypeBinding.CHAR;
                break;
            }
            case 10: {
                convertedType = TypeBinding.INT;
                break;
            }
            case 9: {
                convertedType = TypeBinding.FLOAT;
                break;
            }
            case 7: {
                convertedType = TypeBinding.LONG;
                break;
            }
            case 8: {
                convertedType = TypeBinding.DOUBLE;
            }
        }
        if ((this.implicitConversion & 0x200) != 0) {
            convertedType = scope.environment().computeBoxingType(convertedType);
        }
        return convertedType;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        if (!this.receiver.isImplicitThis()) {
            this.receiver.printExpression(0, output).append('.');
        }
        if (this.typeArguments != null) {
            output.append('<');
            int max = this.typeArguments.length - 1;
            int j = 0;
            while (j < max) {
                this.typeArguments[j].print(0, output);
                output.append(", ");
                ++j;
            }
            this.typeArguments[max].print(0, output);
            output.append('>');
        }
        output.append(this.selector).append('(');
        if (this.arguments != null) {
            int i = 0;
            while (i < this.arguments.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.arguments[i].printExpression(0, output);
                ++i;
            }
        }
        return output.append(')');
    }

    public TypeBinding resolveType(BlockScope scope) {
        ReferenceContext referenceContext;
        boolean argHasError;
        boolean receiverIsType;
        this.constant = Constant.NotAConstant;
        boolean receiverCast = false;
        boolean argsContainCast = false;
        if (this.receiver instanceof CastExpression) {
            this.receiver.bits |= 0x20;
            receiverCast = true;
        }
        this.actualReceiverType = this.receiver.resolveType(scope);
        boolean bl = receiverIsType = this.receiver instanceof NameReference && (((NameReference)this.receiver).bits & 4) != 0;
        if (receiverCast && this.actualReceiverType != null && ((CastExpression)this.receiver).expression.resolvedType == this.actualReceiverType) {
            scope.problemReporter().unnecessaryCast((CastExpression)this.receiver);
        }
        if (this.typeArguments != null) {
            int length = this.typeArguments.length;
            argHasError = scope.compilerOptions().sourceLevel < 0x310000L;
            this.genericTypeArguments = new TypeBinding[length];
            int i = 0;
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
            argHasError = false;
            int length = this.arguments.length;
            argumentTypes = new TypeBinding[length];
            int i = 0;
            while (i < length) {
                Expression argument = this.arguments[i];
                if (argument instanceof CastExpression) {
                    argument.bits |= 0x20;
                    argsContainCast = true;
                }
                if ((argumentTypes[i] = argument.resolveType(scope)) == null) {
                    argHasError = true;
                }
                ++i;
            }
            if (argHasError) {
                if (this.actualReceiverType instanceof ReferenceBinding) {
                    MethodBinding closestMatch;
                    TypeBinding[] pseudoArgs = new TypeBinding[length];
                    int i2 = length;
                    while (--i2 >= 0) {
                        TypeBinding typeBinding = pseudoArgs[i2] = argumentTypes[i2] == null ? TypeBinding.NULL : argumentTypes[i2];
                    }
                    MethodBinding methodBinding = this.binding = this.receiver.isImplicitThis() ? scope.getImplicitMethod(this.selector, pseudoArgs, this) : scope.findMethod((ReferenceBinding)this.actualReceiverType, this.selector, pseudoArgs, this);
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
                return null;
            }
        }
        if (this.actualReceiverType == null) {
            return null;
        }
        if (this.actualReceiverType.isBaseType()) {
            scope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, argumentTypes);
            return null;
        }
        MethodBinding methodBinding = this.binding = this.receiver.isImplicitThis() ? scope.getImplicitMethod(this.selector, argumentTypes, this) : scope.getMethod(this.actualReceiverType, this.selector, argumentTypes, this);
        if (!this.binding.isValidBinding()) {
            ReferenceBinding declaringClass;
            boolean avoidSecondary;
            if (this.binding.declaringClass == null) {
                if (this.actualReceiverType instanceof ReferenceBinding) {
                    this.binding.declaringClass = (ReferenceBinding)this.actualReceiverType;
                } else {
                    scope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, argumentTypes);
                    return null;
                }
            }
            boolean bl2 = avoidSecondary = (declaringClass = this.binding.declaringClass) != null && declaringClass.isAnonymousType() && declaringClass.superclass() instanceof MissingTypeBinding;
            if (!avoidSecondary) {
                scope.problemReporter().invalidMethod(this, this.binding);
            }
            MethodBinding closestMatch = ((ProblemMethodBinding)this.binding).closestMatch;
            switch (this.binding.problemId()) {
                case 3: {
                    break;
                }
                case 2: 
                case 6: 
                case 7: 
                case 8: 
                case 10: {
                    if (closestMatch == null) break;
                    this.resolvedType = closestMatch.returnType;
                }
            }
            if (closestMatch != null) {
                this.binding = closestMatch;
                MethodBinding closestMatchOriginal = closestMatch.original();
                if (closestMatchOriginal.isOrEnclosedByPrivateType() && !scope.isDefinedInMethod(closestMatchOriginal)) {
                    closestMatchOriginal.modifiers |= 0x8000000;
                }
            }
            return this.resolvedType != null && (this.resolvedType.tagBits & 0x80L) == 0L ? this.resolvedType : null;
        }
        CompilerOptions compilerOptions = scope.compilerOptions();
        if (compilerOptions.complianceLevel <= 0x320000L && this.binding.isPolymorphic()) {
            scope.problemReporter().polymorphicMethodNotBelow17(this);
            return null;
        }
        if ((this.bits & 0x10) != 0 && this.binding.isPolymorphic()) {
            this.binding = scope.environment().updatePolymorphicMethodReturnType((PolymorphicMethodBinding)this.binding, TypeBinding.VOID);
        }
        if ((this.binding.tagBits & 0x80L) != 0L) {
            scope.problemReporter().missingTypeInMethod(this, this.binding);
        }
        if (!this.binding.isStatic()) {
            if (receiverIsType) {
                scope.problemReporter().mustUseAStaticMethod(this, this.binding);
                if (this.actualReceiverType.isRawType() && (this.receiver.bits & 0x40000000) == 0 && compilerOptions.getSeverity(0x20010000) != 256) {
                    scope.problemReporter().rawTypeReference(this.receiver, this.actualReceiverType);
                }
            } else {
                TypeBinding oldReceiverType = this.actualReceiverType;
                this.actualReceiverType = this.actualReceiverType.getErasureCompatibleType(this.binding.declaringClass);
                this.receiver.computeConversion(scope, this.actualReceiverType, this.actualReceiverType);
                if (this.actualReceiverType != oldReceiverType && this.receiver.postConversionType(scope) != this.actualReceiverType) {
                    this.bits |= 0x40000;
                }
            }
        } else {
            if (!(this.receiver.isImplicitThis() || this.receiver.isSuper() || receiverIsType)) {
                scope.problemReporter().nonStaticAccessToStaticMethod(this, this.binding);
            }
            if (!this.receiver.isImplicitThis() && this.binding.declaringClass != this.actualReceiverType) {
                scope.problemReporter().indirectAccessToStaticMethod(this, this.binding);
            }
        }
        if (MessageSend.checkInvocationArguments(scope, this.receiver, this.actualReceiverType, this.binding, this.arguments, argumentTypes, argsContainCast, this)) {
            this.bits |= 0x10000;
        }
        if (this.binding.isAbstract() && this.receiver.isSuper()) {
            scope.problemReporter().cannotDireclyInvokeAbstractMethod(this, this.binding);
        }
        if (this.isMethodUseDeprecated(this.binding, scope, true)) {
            scope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if (this.binding == scope.environment().arrayClone && compilerOptions.sourceLevel >= 0x310000L) {
            this.resolvedType = this.actualReceiverType;
        } else {
            TypeBinding returnType;
            if ((this.bits & 0x10000) != 0 && this.genericTypeArguments == null) {
                returnType = this.binding.returnType;
                if (returnType != null) {
                    returnType = scope.environment().convertToRawType(returnType.erasure(), true);
                }
            } else {
                returnType = this.binding.returnType;
                if (returnType != null) {
                    returnType = returnType.capture(scope, this.sourceEnd);
                }
            }
            this.resolvedType = returnType;
        }
        if (this.receiver.isSuper() && compilerOptions.getSeverity(0x20100000) != 256 && (referenceContext = scope.methodScope().referenceContext) instanceof AbstractMethodDeclaration) {
            AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration)referenceContext;
            MethodBinding enclosingMethodBinding = abstractMethodDeclaration.binding;
            if (enclosingMethodBinding.isOverriding() && CharOperation.equals(this.binding.selector, enclosingMethodBinding.selector) && this.binding.areParametersEqual(enclosingMethodBinding)) {
                abstractMethodDeclaration.bits |= 0x10;
            }
        }
        if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
            scope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
        }
        return (this.resolvedType.tagBits & 0x80L) == 0L ? this.resolvedType : null;
    }

    public void setActualReceiverType(ReferenceBinding receiverType) {
        if (receiverType == null) {
            return;
        }
        this.actualReceiverType = receiverType;
    }

    public void setDepth(int depth) {
        this.bits &= 0xFFFFE01F;
        if (depth > 0) {
            this.bits |= (depth & 0xFF) << 5;
        }
    }

    public void setExpectedType(TypeBinding expectedType) {
        this.expectedType = expectedType;
    }

    public void setFieldIndex(int depth) {
    }

    public TypeBinding expectedType() {
        return this.expectedType;
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            this.receiver.traverse(visitor, blockScope);
            if (this.typeArguments != null) {
                int i = 0;
                int typeArgumentsLength = this.typeArguments.length;
                while (i < typeArgumentsLength) {
                    this.typeArguments[i].traverse(visitor, blockScope);
                    ++i;
                }
            }
            if (this.arguments != null) {
                int argumentsLength = this.arguments.length;
                int i = 0;
                while (i < argumentsLength) {
                    this.arguments[i].traverse(visitor, blockScope);
                    ++i;
                }
            }
        }
        visitor.endVisit(this, blockScope);
    }
}

