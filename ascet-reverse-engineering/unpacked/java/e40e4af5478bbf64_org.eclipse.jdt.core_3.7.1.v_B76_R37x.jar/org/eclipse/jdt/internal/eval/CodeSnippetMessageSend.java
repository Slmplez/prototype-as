/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.eval.CodeSnippetScope;
import org.eclipse.jdt.internal.eval.CodeSnippetThisReference;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;

public class CodeSnippetMessageSend
extends MessageSend {
    EvaluationContext evaluationContext;
    FieldBinding delegateThis;

    public CodeSnippetMessageSend(EvaluationContext evaluationContext) {
        this.evaluationContext = evaluationContext;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        boolean isStatic;
        int pc = codeStream.position;
        MethodBinding codegenBinding = this.binding.original();
        if (codegenBinding.canBeSeenBy(this.actualReceiverType, this, currentScope)) {
            isStatic = codegenBinding.isStatic();
            if (!isStatic && (this.bits & 0x1FE0) != 0) {
                ReferenceBinding targetType = currentScope.enclosingSourceType().enclosingTypeAt((this.bits & 0x1FE0) >> 5);
                Object[] path = currentScope.getEmulationPath(targetType, true, false);
                if (path == null) {
                    currentScope.problemReporter().needImplementation(this);
                } else {
                    codeStream.generateOuterAccess(path, this, targetType, currentScope);
                }
            } else {
                this.receiver.generateCode(currentScope, codeStream, !isStatic);
                if ((this.bits & 0x40000) != 0) {
                    codeStream.checkcast(this.actualReceiverType);
                }
                codeStream.recordPositionsFrom(pc, this.sourceStart);
            }
            this.generateArguments(this.binding, this.arguments, currentScope, codeStream);
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
            codeStream.generateEmulationForMethod(currentScope, codegenBinding);
            isStatic = codegenBinding.isStatic();
            if (!isStatic && (this.bits & 0x1FE0) != 0) {
                currentScope.problemReporter().needImplementation(this);
            } else {
                this.receiver.generateCode(currentScope, codeStream, !isStatic);
                if ((this.bits & 0x40000) != 0) {
                    codeStream.checkcast(this.actualReceiverType);
                }
                codeStream.recordPositionsFrom(pc, this.sourceStart);
            }
            if (isStatic) {
                codeStream.aconst_null();
            }
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
            codeStream.invokeJavaLangReflectMethodInvoke();
            if (codegenBinding.returnType.isBaseType()) {
                int typeID = codegenBinding.returnType.id;
                if (typeID == 6) {
                    codeStream.pop();
                }
                codeStream.checkcast(typeID);
                codeStream.getBaseTypeValue(typeID);
            } else {
                codeStream.checkcast(codegenBinding.returnType);
            }
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

    public void manageSyntheticAccessIfNecessary(BlockScope currentScope, FlowInfo flowInfo) {
        MethodBinding codegenBinding;
        if ((flowInfo.tagBits & 1) == 0 && (codegenBinding = this.binding.original()) != this.binding && codegenBinding.returnType.isTypeVariable()) {
            TypeVariableBinding variableReturnType = (TypeVariableBinding)codegenBinding.returnType;
            if (variableReturnType.firstBound != this.binding.returnType) {
                this.valueCast = this.binding.returnType;
            }
        }
    }

    public TypeBinding resolveType(BlockScope scope) {
        boolean argHasError;
        this.constant = Constant.NotAConstant;
        boolean receiverCast = false;
        boolean argsContainCast = false;
        if (this.receiver instanceof CastExpression) {
            this.receiver.bits |= 0x20;
            receiverCast = true;
        }
        this.actualReceiverType = this.receiver.resolveType(scope);
        if (receiverCast && this.actualReceiverType != null && ((CastExpression)this.receiver).expression.resolvedType == this.actualReceiverType) {
            scope.problemReporter().unnecessaryCast((CastExpression)this.receiver);
        }
        if (this.typeArguments != null) {
            int length = this.typeArguments.length;
            argHasError = false;
            this.genericTypeArguments = new TypeBinding[length];
            int i = 0;
            while (i < length) {
                this.genericTypeArguments[i] = this.typeArguments[i].resolveType(scope, true);
                if (this.genericTypeArguments[i] == null) {
                    argHasError = true;
                }
                ++i;
            }
            if (argHasError) {
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
                if ((argumentTypes[i] = this.arguments[i].resolveType(scope)) == null) {
                    argHasError = true;
                }
                ++i;
            }
            if (argHasError) {
                if (this.actualReceiverType instanceof ReferenceBinding) {
                    this.binding = scope.findMethod((ReferenceBinding)this.actualReceiverType, this.selector, new TypeBinding[0], this);
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
            if (this.binding instanceof ProblemMethodBinding && ((ProblemMethodBinding)this.binding).problemId() == 2) {
                MethodBinding privateBinding;
                if (this.evaluationContext.declaringTypeName != null) {
                    this.delegateThis = scope.getField(scope.enclosingSourceType(), EvaluationConstants.DELEGATE_THIS, this);
                    if (this.delegateThis == null) {
                        this.constant = Constant.NotAConstant;
                        scope.problemReporter().invalidMethod(this, this.binding);
                        return null;
                    }
                } else {
                    this.constant = Constant.NotAConstant;
                    scope.problemReporter().invalidMethod(this, this.binding);
                    return null;
                }
                CodeSnippetScope localScope = new CodeSnippetScope(scope);
                MethodBinding methodBinding2 = privateBinding = this.receiver instanceof CodeSnippetThisReference && ((CodeSnippetThisReference)this.receiver).isImplicit ? localScope.getImplicitMethod((ReferenceBinding)this.delegateThis.type, this.selector, argumentTypes, this) : localScope.getMethod(this.delegateThis.type, this.selector, argumentTypes, this);
                if (!privateBinding.isValidBinding()) {
                    if (this.binding.declaringClass == null) {
                        if (this.actualReceiverType instanceof ReferenceBinding) {
                            this.binding.declaringClass = (ReferenceBinding)this.actualReceiverType;
                        } else {
                            scope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, argumentTypes);
                            return null;
                        }
                    }
                    scope.problemReporter().invalidMethod(this, this.binding);
                    return null;
                }
                this.binding = privateBinding;
            } else {
                if (this.binding.declaringClass == null) {
                    if (this.actualReceiverType instanceof ReferenceBinding) {
                        this.binding.declaringClass = (ReferenceBinding)this.actualReceiverType;
                    } else {
                        scope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, argumentTypes);
                        return null;
                    }
                }
                scope.problemReporter().invalidMethod(this, this.binding);
                return null;
            }
        }
        if (!this.binding.isStatic()) {
            if (this.receiver instanceof NameReference && (((NameReference)this.receiver).bits & 4) != 0) {
                scope.problemReporter().mustUseAStaticMethod(this, this.binding);
            } else {
                TypeBinding oldReceiverType = this.actualReceiverType;
                this.actualReceiverType = this.actualReceiverType.getErasureCompatibleType(this.binding.declaringClass);
                this.receiver.computeConversion(scope, this.actualReceiverType, this.actualReceiverType);
                if (this.actualReceiverType != oldReceiverType && this.receiver.postConversionType(scope) != this.actualReceiverType) {
                    this.bits |= 0x40000;
                }
            }
        }
        if (CodeSnippetMessageSend.checkInvocationArguments(scope, this.receiver, this.actualReceiverType, this.binding, this.arguments, argumentTypes, argsContainCast, this)) {
            this.bits |= 0x10000;
        }
        if (this.binding.isAbstract() && this.receiver.isSuper()) {
            scope.problemReporter().cannotDireclyInvokeAbstractMethod(this, this.binding);
        }
        if (this.isMethodUseDeprecated(this.binding, scope, true)) {
            scope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if (this.actualReceiverType.isArrayType() && this.binding.parameters == Binding.NO_PARAMETERS && scope.compilerOptions().complianceLevel >= 0x310000L && CharOperation.equals(this.binding.selector, CLONE)) {
            this.resolvedType = this.actualReceiverType;
        } else {
            TypeBinding returnType = this.binding.returnType;
            if (returnType != null) {
                if ((this.bits & 0x10000) != 0 && this.genericTypeArguments == null) {
                    returnType = scope.environment().convertToRawType(returnType.erasure(), true);
                }
                returnType = returnType.capture(scope, this.sourceEnd);
            }
            this.resolvedType = returnType;
        }
        return this.resolvedType;
    }
}

