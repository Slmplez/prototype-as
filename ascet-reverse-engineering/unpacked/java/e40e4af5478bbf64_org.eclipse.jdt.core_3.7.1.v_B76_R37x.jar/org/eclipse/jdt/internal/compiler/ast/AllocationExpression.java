/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public class AllocationExpression
extends Expression
implements InvocationSite {
    public TypeReference type;
    public Expression[] arguments;
    public MethodBinding binding;
    MethodBinding syntheticAccessor;
    public TypeReference[] typeArguments;
    public TypeBinding[] genericTypeArguments;
    public FieldDeclaration enumConstant;
    protected TypeBinding typeExpected;
    public boolean inferredReturnType;

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        this.checkCapturedLocalInitializationIfNecessary((ReferenceBinding)this.binding.declaringClass.erasure(), currentScope, flowInfo);
        if (this.arguments != null) {
            int i = 0;
            int count = this.arguments.length;
            while (i < count) {
                flowInfo = this.arguments[i].analyseCode(currentScope, flowContext, flowInfo).unconditionalInits();
                if ((this.arguments[i].implicitConversion & 0x400) != 0) {
                    this.arguments[i].checkNPE(currentScope, flowContext, flowInfo);
                }
                ++i;
            }
        }
        TypeBinding[] thrownExceptions = this.binding.thrownExceptions;
        if (this.binding.thrownExceptions.length != 0) {
            if ((this.bits & 0x10000) != 0 && this.genericTypeArguments == null) {
                thrownExceptions = currentScope.environment().convertToRawTypes(this.binding.thrownExceptions, true, true);
            }
            flowContext.checkExceptionHandlers(thrownExceptions, (ASTNode)this, (FlowInfo)flowInfo.unconditionalCopy(), currentScope);
        }
        if (this.binding.declaringClass.isMemberType() && !this.binding.declaringClass.isStatic()) {
            currentScope.resetEnclosingMethodStaticFlag();
        }
        this.manageEnclosingInstanceAccessIfNecessary(currentScope, flowInfo);
        this.manageSyntheticAccessIfNecessary(currentScope, flowInfo);
        return flowInfo;
    }

    public void checkCapturedLocalInitializationIfNecessary(ReferenceBinding checkedType, BlockScope currentScope, FlowInfo flowInfo) {
        NestedTypeBinding nestedType;
        SyntheticArgumentBinding[] syntheticArguments;
        if ((checkedType.tagBits & 0x834L) == 2068L && !currentScope.isDefinedInType(checkedType) && (syntheticArguments = (nestedType = (NestedTypeBinding)checkedType).syntheticOuterLocalVariables()) != null) {
            int i = 0;
            int count = syntheticArguments.length;
            while (i < count) {
                SyntheticArgumentBinding syntheticArgument = syntheticArguments[i];
                LocalVariableBinding targetLocal = syntheticArgument.actualOuterLocalVariable;
                if (targetLocal != null && targetLocal.declaration != null && !flowInfo.isDefinitelyAssigned(targetLocal)) {
                    currentScope.problemReporter().uninitializedLocalVariable(targetLocal, this);
                }
                ++i;
            }
        }
    }

    public Expression enclosingInstance() {
        return null;
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
    }

    public TypeBinding[] genericTypeArguments() {
        return this.genericTypeArguments;
    }

    public boolean isSuperAccess() {
        return false;
    }

    public boolean isTypeAccess() {
        return true;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        ReferenceBinding allocatedTypeErasure = (ReferenceBinding)this.binding.declaringClass.erasure();
        if (allocatedTypeErasure.isNestedType() && currentScope.enclosingSourceType().isLocalType()) {
            if (allocatedTypeErasure.isLocalType()) {
                ((LocalTypeBinding)allocatedTypeErasure).addInnerEmulationDependent(currentScope, false);
            } else {
                currentScope.propagateInnerEmulation(allocatedTypeErasure, false);
            }
        }
    }

    public void manageSyntheticAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        MethodBinding codegenBinding = this.binding.original();
        if (codegenBinding.isPrivate()) {
            ReferenceBinding declaringClass = codegenBinding.declaringClass;
            if (currentScope.enclosingSourceType() != declaringClass) {
                if ((declaringClass.tagBits & 0x10L) != 0L && currentScope.compilerOptions().complianceLevel >= 0x300000L) {
                    codegenBinding.tagBits |= 0x200L;
                } else {
                    this.syntheticAccessor = ((SourceTypeBinding)declaringClass).addSyntheticMethod(codegenBinding, this.isSuperAccess());
                    currentScope.problemReporter().needToEmulateMethodAccess(codegenBinding, this);
                }
            }
        }
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        if (this.type != null) {
            output.append("new ");
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
        if (this.type != null) {
            this.type.printExpression(0, output);
        }
        output.append('(');
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
        ReferenceBinding allocationType;
        boolean isDiamond;
        this.constant = Constant.NotAConstant;
        if (this.type == null) {
            this.resolvedType = scope.enclosingReceiverType();
        } else {
            this.resolvedType = this.type.resolveType(scope, true);
            if (this.type instanceof ParameterizedQualifiedTypeReference) {
                ReferenceBinding currentType = (ReferenceBinding)this.resolvedType;
                if (currentType == null) {
                    return currentType;
                }
                block0: while ((currentType.modifiers & 8) == 0 && !currentType.isRawType()) {
                    if ((currentType = currentType.enclosingType()) != null) continue;
                    ParameterizedQualifiedTypeReference qRef = (ParameterizedQualifiedTypeReference)this.type;
                    int i = qRef.typeArguments.length - 2;
                    while (i >= 0) {
                        if (qRef.typeArguments[i] != null) {
                            scope.problemReporter().illegalQualifiedParameterizedTypeAllocation(this.type, this.resolvedType);
                            break block0;
                        }
                        --i;
                    }
                    break block0;
                }
            }
        }
        boolean bl = isDiamond = this.type != null && (this.type.bits & 0x80000) != 0;
        if (this.typeArguments != null) {
            int length = this.typeArguments.length;
            boolean argHasError = scope.compilerOptions().sourceLevel < 0x310000L;
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
        boolean argsContainCast = false;
        TypeBinding[] argumentTypes = Binding.NO_PARAMETERS;
        if (this.arguments != null) {
            boolean argHasError = false;
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
                if (isDiamond) {
                    return null;
                }
                if (this.resolvedType instanceof ReferenceBinding) {
                    MethodBinding closestMatch;
                    TypeBinding[] pseudoArgs = new TypeBinding[length];
                    int i2 = length;
                    while (--i2 >= 0) {
                        TypeBinding typeBinding = pseudoArgs[i2] = argumentTypes[i2] == null ? TypeBinding.NULL : argumentTypes[i2];
                    }
                    this.binding = scope.findMethod((ReferenceBinding)this.resolvedType, TypeConstants.INIT, pseudoArgs, this);
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
                return this.resolvedType;
            }
        }
        if (this.resolvedType == null || !this.resolvedType.isValidBinding()) {
            return null;
        }
        if (this.type != null && !this.resolvedType.canBeInstantiated()) {
            scope.problemReporter().cannotInstantiate(this.type, this.resolvedType);
            return this.resolvedType;
        }
        if (isDiamond) {
            TypeBinding[] inferredTypes = this.inferElidedTypes(((ParameterizedTypeBinding)this.resolvedType).genericType(), null, argumentTypes, scope);
            if (inferredTypes == null) {
                scope.problemReporter().cannotInferElidedTypes(this);
                this.resolvedType = null;
                return null;
            }
            this.resolvedType = this.type.resolvedType = scope.environment().createParameterizedType(((ParameterizedTypeBinding)this.resolvedType).genericType(), inferredTypes, ((ParameterizedTypeBinding)this.resolvedType).enclosingType());
        }
        if (!(this.binding = scope.getConstructor(allocationType = (ReferenceBinding)this.resolvedType, argumentTypes, this)).isValidBinding()) {
            if (this.binding.declaringClass == null) {
                this.binding.declaringClass = allocationType;
            }
            if (this.type != null && !this.type.resolvedType.isValidBinding()) {
                return null;
            }
            scope.problemReporter().invalidConstructor(this, this.binding);
            return this.resolvedType;
        }
        if ((this.binding.tagBits & 0x80L) != 0L) {
            scope.problemReporter().missingTypeInConstructor(this, this.binding);
        }
        if (this.isMethodUseDeprecated(this.binding, scope, true)) {
            scope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if (AllocationExpression.checkInvocationArguments(scope, null, allocationType, this.binding, this.arguments, argumentTypes, argsContainCast, this)) {
            this.bits |= 0x10000;
        }
        if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
            scope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
        }
        if (!isDiamond && this.resolvedType.isParameterizedTypeWithActualArguments()) {
            this.checkTypeArgumentRedundancy((ParameterizedTypeBinding)this.resolvedType, null, argumentTypes, scope);
        }
        return allocationType;
    }

    public TypeBinding[] inferElidedTypes(ReferenceBinding allocationType, ReferenceBinding enclosingType, TypeBinding[] argumentTypes, BlockScope scope) {
        MethodBinding factory = scope.getStaticFactory(allocationType, enclosingType, argumentTypes, this);
        if (factory instanceof ParameterizedGenericMethodBinding && factory.isValidBinding()) {
            ParameterizedGenericMethodBinding genericFactory = (ParameterizedGenericMethodBinding)factory;
            this.inferredReturnType = genericFactory.inferredReturnType;
            return ((ParameterizedTypeBinding)factory.returnType).arguments;
        }
        return null;
    }

    public void checkTypeArgumentRedundancy(ParameterizedTypeBinding allocationType, ReferenceBinding enclosingType, TypeBinding[] argumentTypes, BlockScope scope) {
        TypeBinding[] inferredTypes;
        int i;
        ProblemReporter reporter = scope.problemReporter();
        if (reporter.computeSeverity(16778100) == 256 || scope.compilerOptions().sourceLevel < 0x330000L) {
            return;
        }
        if (allocationType.arguments == null) {
            return;
        }
        if (this.genericTypeArguments != null) {
            return;
        }
        if (argumentTypes == Binding.NO_PARAMETERS && this.typeExpected instanceof ParameterizedTypeBinding) {
            ParameterizedTypeBinding expected = (ParameterizedTypeBinding)this.typeExpected;
            if (expected.arguments != null && allocationType.arguments.length == expected.arguments.length) {
                i = 0;
                while (i < allocationType.arguments.length) {
                    if (allocationType.arguments[i] != expected.arguments[i]) break;
                    ++i;
                }
                if (i == allocationType.arguments.length) {
                    reporter.redundantSpecificationOfTypeArguments(this.type, allocationType.arguments);
                    return;
                }
            }
        }
        if ((inferredTypes = this.inferElidedTypes(allocationType.genericType(), enclosingType, argumentTypes, scope)) == null) {
            return;
        }
        i = 0;
        while (i < inferredTypes.length) {
            if (inferredTypes[i] != allocationType.arguments[i]) {
                return;
            }
            ++i;
        }
        reporter.redundantSpecificationOfTypeArguments(this.type, allocationType.arguments);
    }

    public void setActualReceiverType(ReferenceBinding receiverType) {
    }

    public void setDepth(int i) {
    }

    public void setFieldIndex(int i) {
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            int i;
            if (this.typeArguments != null) {
                i = 0;
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
                i = 0;
                int argumentsLength = this.arguments.length;
                while (i < argumentsLength) {
                    this.arguments[i].traverse(visitor, scope);
                    ++i;
                }
            }
        }
        visitor.endVisit(this, scope);
    }

    public void setExpectedType(TypeBinding expectedType) {
        this.typeExpected = expectedType;
    }

    public TypeBinding expectedType() {
        return this.typeExpected;
    }
}

