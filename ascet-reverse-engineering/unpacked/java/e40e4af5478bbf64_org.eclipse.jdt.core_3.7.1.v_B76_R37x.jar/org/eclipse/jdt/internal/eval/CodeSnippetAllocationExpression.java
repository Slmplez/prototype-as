/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReasons;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.eval.CodeSnippetScope;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetAllocationExpression
extends AllocationExpression
implements ProblemReasons,
EvaluationConstants {
    EvaluationContext evaluationContext;
    FieldBinding delegateThis;

    public CodeSnippetAllocationExpression(EvaluationContext evaluationContext) {
        this.evaluationContext = evaluationContext;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        ReferenceBinding allocatedType;
        int pc = codeStream.position;
        MethodBinding codegenBinding = this.binding.original();
        if (codegenBinding.canBeSeenBy(allocatedType = codegenBinding.declaringClass, this, currentScope)) {
            codeStream.new_(allocatedType);
            if (valueRequired) {
                codeStream.dup();
            }
            codeStream.recordPositionsFrom(pc, this.type.sourceStart);
            if (allocatedType.isNestedType()) {
                codeStream.generateSyntheticEnclosingInstanceValues(currentScope, allocatedType, this.enclosingInstance(), this);
            }
            if (this.arguments != null) {
                int i = 0;
                int count = this.arguments.length;
                while (i < count) {
                    this.arguments[i].generateCode(currentScope, codeStream, true);
                    ++i;
                }
            }
            if (allocatedType.isNestedType()) {
                codeStream.generateSyntheticOuterArgumentValues(currentScope, allocatedType, this);
            }
            codeStream.invoke((byte)-73, codegenBinding, null);
        } else {
            codeStream.generateEmulationForConstructor(currentScope, codegenBinding);
            if (this.arguments != null) {
                int argsLength = this.arguments.length;
                codeStream.generateInlinedValue(argsLength);
                codeStream.newArray(currentScope.createArrayType(currentScope.getType(TypeConstants.JAVA_LANG_OBJECT, 3), 1));
                codeStream.dup();
                int i = 0;
                while (i < argsLength) {
                    codeStream.generateInlinedValue(i);
                    this.arguments[i].generateCode(currentScope, codeStream, true);
                    TypeBinding parameterBinding = codegenBinding.parameters[i];
                    if (parameterBinding.isBaseType() && parameterBinding != TypeBinding.NULL) {
                        codeStream.generateBoxingConversion(codegenBinding.parameters[i].id);
                    }
                    codeStream.aastore();
                    if (i < argsLength - 1) {
                        codeStream.dup();
                    }
                    ++i;
                }
            } else {
                codeStream.generateInlinedValue(0);
                codeStream.newArray(currentScope.createArrayType(currentScope.getType(TypeConstants.JAVA_LANG_OBJECT, 3), 1));
            }
            codeStream.invokeJavaLangReflectConstructorNewInstance();
            codeStream.checkcast(allocatedType);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
    }

    public void manageSyntheticAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
    }

    public TypeBinding resolveType(BlockScope scope) {
        ReferenceBinding allocatedType;
        boolean isDiamond;
        this.constant = Constant.NotAConstant;
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
                return this.resolvedType;
            }
        }
        if (this.resolvedType == null) {
            return null;
        }
        if (!this.resolvedType.canBeInstantiated()) {
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
        if (!(this.binding = scope.getConstructor(allocatedType = (ReferenceBinding)this.resolvedType, argumentTypes, this)).isValidBinding()) {
            if (this.binding instanceof ProblemMethodBinding && ((ProblemMethodBinding)this.binding).problemId() == 2) {
                if (this.evaluationContext.declaringTypeName != null) {
                    this.delegateThis = scope.getField(scope.enclosingSourceType(), DELEGATE_THIS, this);
                    if (this.delegateThis == null) {
                        if (this.binding.declaringClass == null) {
                            this.binding.declaringClass = allocatedType;
                        }
                        if (this.type != null && !this.type.resolvedType.isValidBinding()) {
                            return null;
                        }
                        scope.problemReporter().invalidConstructor(this, this.binding);
                        return this.resolvedType;
                    }
                } else {
                    if (this.binding.declaringClass == null) {
                        this.binding.declaringClass = allocatedType;
                    }
                    if (this.type != null && !this.type.resolvedType.isValidBinding()) {
                        return null;
                    }
                    scope.problemReporter().invalidConstructor(this, this.binding);
                    return this.resolvedType;
                }
                CodeSnippetScope localScope = new CodeSnippetScope(scope);
                MethodBinding privateBinding = localScope.getConstructor((ReferenceBinding)this.delegateThis.type, argumentTypes, this);
                if (!privateBinding.isValidBinding()) {
                    if (this.binding.declaringClass == null) {
                        this.binding.declaringClass = allocatedType;
                    }
                    if (this.type != null && !this.type.resolvedType.isValidBinding()) {
                        return null;
                    }
                    scope.problemReporter().invalidConstructor(this, this.binding);
                    return this.resolvedType;
                }
                this.binding = privateBinding;
            } else {
                if (this.binding.declaringClass == null) {
                    this.binding.declaringClass = allocatedType;
                }
                if (this.type != null && !this.type.resolvedType.isValidBinding()) {
                    return null;
                }
                scope.problemReporter().invalidConstructor(this, this.binding);
                return this.resolvedType;
            }
        }
        if (this.isMethodUseDeprecated(this.binding, scope, true)) {
            scope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if (this.arguments != null) {
            int i = 0;
            while (i < this.arguments.length) {
                TypeBinding parameterType = this.binding.parameters[i];
                TypeBinding argumentType = argumentTypes[i];
                this.arguments[i].computeConversion(scope, parameterType, argumentType);
                if (argumentType.needsUncheckedConversion(parameterType)) {
                    scope.problemReporter().unsafeTypeConversion(this.arguments[i], argumentType, parameterType);
                }
                ++i;
            }
            if (argsContainCast) {
                CastExpression.checkNeedForArgumentCasts(scope, null, allocatedType, this.binding, this.arguments, argumentTypes, this);
            }
        }
        if (allocatedType.isRawType() && this.binding.hasSubstitutedParameters()) {
            scope.problemReporter().unsafeRawInvocation(this, this.binding);
        }
        if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
            scope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
        }
        return allocatedType;
    }
}

