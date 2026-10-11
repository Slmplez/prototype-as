/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.OperatorExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CastExpression
extends Expression {
    public Expression expression;
    public TypeReference type;
    public TypeBinding expectedType;

    public CastExpression(Expression expression, TypeReference type) {
        this.expression = expression;
        this.type = type;
        type.bits |= 0x40000000;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        UnconditionalFlowInfo result = this.expression.analyseCode(currentScope, flowContext, flowInfo).unconditionalInits();
        if ((this.expression.implicitConversion & 0x400) != 0) {
            this.expression.checkNPE(currentScope, flowContext, flowInfo);
        }
        return result;
    }

    public static void checkNeedForAssignedCast(BlockScope scope, TypeBinding expectedType, CastExpression rhs) {
        if (scope.compilerOptions().getSeverity(0x4000000) == 256) {
            return;
        }
        TypeBinding castedExpressionType = rhs.expression.resolvedType;
        if (castedExpressionType == null || rhs.resolvedType.isBaseType()) {
            return;
        }
        if (castedExpressionType.isCompatibleWith(expectedType)) {
            scope.problemReporter().unnecessaryCast(rhs);
        }
    }

    public static void checkNeedForCastCast(BlockScope scope, CastExpression enclosingCast) {
        if (scope.compilerOptions().getSeverity(0x4000000) == 256) {
            return;
        }
        CastExpression nestedCast = (CastExpression)enclosingCast.expression;
        if ((nestedCast.bits & 0x4000) == 0) {
            return;
        }
        CastExpression alternateCast = new CastExpression(null, enclosingCast.type);
        alternateCast.resolvedType = enclosingCast.resolvedType;
        if (!alternateCast.checkCastTypesCompatibility(scope, enclosingCast.resolvedType, nestedCast.expression.resolvedType, null)) {
            return;
        }
        scope.problemReporter().unnecessaryCast(nestedCast);
    }

    public static void checkNeedForEnclosingInstanceCast(BlockScope scope, Expression enclosingInstance, TypeBinding enclosingInstanceType, TypeBinding memberType) {
        if (scope.compilerOptions().getSeverity(0x4000000) == 256) {
            return;
        }
        TypeBinding castedExpressionType = ((CastExpression)enclosingInstance).expression.resolvedType;
        if (castedExpressionType == null) {
            return;
        }
        if (castedExpressionType == enclosingInstanceType) {
            scope.problemReporter().unnecessaryCast((CastExpression)enclosingInstance);
        } else {
            if (castedExpressionType == TypeBinding.NULL) {
                return;
            }
            TypeBinding alternateEnclosingInstanceType = castedExpressionType;
            if (castedExpressionType.isBaseType() || castedExpressionType.isArrayType()) {
                return;
            }
            if (memberType == scope.getMemberType(memberType.sourceName(), (ReferenceBinding)alternateEnclosingInstanceType)) {
                scope.problemReporter().unnecessaryCast((CastExpression)enclosingInstance);
            }
        }
    }

    public static void checkNeedForArgumentCast(BlockScope scope, int operator, int operatorSignature, Expression expression, int expressionTypeId) {
        if (scope.compilerOptions().getSeverity(0x4000000) == 256) {
            return;
        }
        if ((expression.bits & 0x4000) == 0 && expression.resolvedType.isBaseType()) {
            return;
        }
        TypeBinding alternateLeftType = ((CastExpression)expression).expression.resolvedType;
        if (alternateLeftType == null) {
            return;
        }
        if (alternateLeftType.id == expressionTypeId) {
            scope.problemReporter().unnecessaryCast((CastExpression)expression);
            return;
        }
    }

    public static void checkNeedForArgumentCasts(BlockScope scope, Expression receiver, TypeBinding receiverType, MethodBinding binding, Expression[] arguments, TypeBinding[] argumentTypes, InvocationSite invocationSite) {
        if (scope.compilerOptions().getSeverity(0x4000000) == 256) {
            return;
        }
        int length = argumentTypes.length;
        TypeBinding[] rawArgumentTypes = argumentTypes;
        int i = 0;
        while (i < length) {
            Expression argument = arguments[i];
            if (argument instanceof CastExpression && ((argument.bits & 0x4000) != 0 || !argument.resolvedType.isBaseType())) {
                TypeBinding castedExpressionType = ((CastExpression)argument).expression.resolvedType;
                if (castedExpressionType == null) {
                    return;
                }
                if (castedExpressionType == argumentTypes[i]) {
                    scope.problemReporter().unnecessaryCast((CastExpression)argument);
                } else if (castedExpressionType != TypeBinding.NULL && (argument.implicitConversion & 0x200) == 0) {
                    if (rawArgumentTypes == argumentTypes) {
                        TypeBinding[] typeBindingArray = rawArgumentTypes;
                        rawArgumentTypes = new TypeBinding[length];
                        System.arraycopy(typeBindingArray, 0, rawArgumentTypes, 0, length);
                    }
                    rawArgumentTypes[i] = castedExpressionType;
                }
            }
            ++i;
        }
        if (rawArgumentTypes != argumentTypes) {
            CastExpression.checkAlternateBinding(scope, receiver, receiverType, binding, arguments, argumentTypes, rawArgumentTypes, invocationSite);
        }
    }

    public static void checkNeedForArgumentCasts(BlockScope scope, int operator, int operatorSignature, Expression left, int leftTypeId, boolean leftIsCast, Expression right, int rightTypeId, boolean rightIsCast) {
        if (scope.compilerOptions().getSeverity(0x4000000) == 256) {
            return;
        }
        int alternateLeftTypeId = leftTypeId;
        if (leftIsCast) {
            if ((left.bits & 0x4000) == 0 && left.resolvedType.isBaseType()) {
                leftIsCast = false;
            } else {
                TypeBinding alternateLeftType = ((CastExpression)left).expression.resolvedType;
                if (alternateLeftType == null) {
                    return;
                }
                alternateLeftTypeId = alternateLeftType.id;
                if (alternateLeftTypeId == leftTypeId || scope.environment().computeBoxingType((TypeBinding)alternateLeftType).id == leftTypeId) {
                    scope.problemReporter().unnecessaryCast((CastExpression)left);
                    leftIsCast = false;
                } else if (alternateLeftTypeId == 12) {
                    alternateLeftTypeId = leftTypeId;
                    leftIsCast = false;
                }
            }
        }
        int alternateRightTypeId = rightTypeId;
        if (rightIsCast) {
            if ((right.bits & 0x4000) == 0 && right.resolvedType.isBaseType()) {
                rightIsCast = false;
            } else {
                TypeBinding alternateRightType = ((CastExpression)right).expression.resolvedType;
                if (alternateRightType == null) {
                    return;
                }
                alternateRightTypeId = alternateRightType.id;
                if (alternateRightTypeId == rightTypeId || scope.environment().computeBoxingType((TypeBinding)alternateRightType).id == rightTypeId) {
                    scope.problemReporter().unnecessaryCast((CastExpression)right);
                    rightIsCast = false;
                } else if (alternateRightTypeId == 12) {
                    alternateRightTypeId = rightTypeId;
                    rightIsCast = false;
                }
            }
        }
        if (leftIsCast || rightIsCast) {
            int alternateOperatorSignature;
            if (alternateLeftTypeId > 15 || alternateRightTypeId > 15) {
                if (alternateLeftTypeId == 11) {
                    alternateRightTypeId = 1;
                } else if (alternateRightTypeId == 11) {
                    alternateLeftTypeId = 1;
                } else {
                    return;
                }
            }
            if ((operatorSignature & 0xF0F0F) == ((alternateOperatorSignature = OperatorExpression.OperatorSignatures[operator][(alternateLeftTypeId << 4) + alternateRightTypeId]) & 0xF0F0F)) {
                if (leftIsCast) {
                    scope.problemReporter().unnecessaryCast((CastExpression)left);
                }
                if (rightIsCast) {
                    scope.problemReporter().unnecessaryCast((CastExpression)right);
                }
            }
        }
    }

    private static void checkAlternateBinding(BlockScope scope, Expression receiver, TypeBinding receiverType, MethodBinding binding, Expression[] arguments, TypeBinding[] originalArgumentTypes, TypeBinding[] alternateArgumentTypes, final InvocationSite invocationSite) {
        MethodBinding bindingIfNoCast;
        InvocationSite fakeInvocationSite = new InvocationSite(){

            public TypeBinding[] genericTypeArguments() {
                return null;
            }

            public boolean isSuperAccess() {
                return invocationSite.isSuperAccess();
            }

            public boolean isTypeAccess() {
                return invocationSite.isTypeAccess();
            }

            public void setActualReceiverType(ReferenceBinding actualReceiverType) {
            }

            public void setDepth(int depth) {
            }

            public void setFieldIndex(int depth) {
            }

            public int sourceStart() {
                return 0;
            }

            public int sourceEnd() {
                return 0;
            }

            public TypeBinding expectedType() {
                return invocationSite.expectedType();
            }
        };
        if (binding.isConstructor()) {
            bindingIfNoCast = scope.getConstructor((ReferenceBinding)receiverType, alternateArgumentTypes, fakeInvocationSite);
        } else {
            MethodBinding methodBinding = bindingIfNoCast = receiver.isImplicitThis() ? scope.getImplicitMethod(binding.selector, alternateArgumentTypes, fakeInvocationSite) : scope.getMethod(receiverType, binding.selector, alternateArgumentTypes, fakeInvocationSite);
        }
        if (bindingIfNoCast == binding) {
            int paramLength;
            int argumentLength = originalArgumentTypes.length;
            if (binding.isVarargs() && (paramLength = binding.parameters.length) == argumentLength) {
                int varargsIndex = paramLength - 1;
                ArrayBinding varargsType = (ArrayBinding)binding.parameters[varargsIndex];
                TypeBinding lastArgType = alternateArgumentTypes[varargsIndex];
                if (varargsType.dimensions != lastArgType.dimensions()) {
                    return;
                }
                if (lastArgType.isCompatibleWith(varargsType.elementsType()) && lastArgType.isCompatibleWith(varargsType)) {
                    return;
                }
            }
            int i = 0;
            while (i < argumentLength) {
                if (originalArgumentTypes[i] != alternateArgumentTypes[i]) {
                    scope.problemReporter().unnecessaryCast((CastExpression)arguments[i]);
                }
                ++i;
            }
        }
    }

    /*
     * Unable to fully structure code
     */
    public boolean checkUnsafeCast(Scope scope, TypeBinding castType, TypeBinding expressionType, TypeBinding match, boolean isNarrowing) {
        if (match == castType) {
            if (!isNarrowing && match == this.resolvedType.leafComponentType()) {
                this.tagAsUnnecessaryCast(scope, castType);
            }
            return true;
        }
        if (match != null && (isNarrowing != false ? match.isProvablyDistinct(expressionType) != false : castType.isProvablyDistinct(match) != false)) {
            return false;
        }
        block0 : switch (castType.kind()) {
            case 260: {
                if (castType.isReifiable()) break;
                if (match == null) {
                    this.bits |= 128;
                    return true;
                }
                switch (match.kind()) {
                    case 260: {
                        if (!isNarrowing) ** GOTO lbl45
                        if (expressionType.isRawType() || !expressionType.isEquivalentTo(match)) {
                            this.bits |= 128;
                            return true;
                        }
                        paramCastType = (ParameterizedTypeBinding)castType;
                        paramMatch = (ParameterizedTypeBinding)match;
                        castArguments = paramCastType.arguments;
                        v0 = length = castArguments == null ? 0 : castArguments.length;
                        if (paramMatch.arguments != null && length <= paramMatch.arguments.length) ** GOTO lbl26
                        this.bits |= 128;
                        ** GOTO lbl44
lbl26:
                        // 1 sources

                        if ((paramCastType.tagBits & 0x60000000L) == 0L) ** GOTO lbl44
                        i = 0;
                        while (i < length) {
                            switch (castArguments[i].kind()) {
                                case 516: 
                                case 4100: {
                                    break;
                                }
                                default: {
                                    ** GOTO lbl42
                                }
                            }
                            alternateArguments = new TypeBinding[length];
                            System.arraycopy(paramCastType.arguments, 0, alternateArguments, 0, length);
                            alternateArguments[i] = scope.getJavaLangObject();
                            environment = scope.environment();
                            alternateCastType = environment.createParameterizedType((ReferenceBinding)castType.erasure(), alternateArguments, castType.enclosingType());
                            if (alternateCastType.findSuperTypeOriginatingFrom(expressionType) == match) {
                                this.bits |= 128;
                                break;
                            }
lbl42:
                            // 3 sources

                            ++i;
                        }
lbl44:
                        // 4 sources

                        return true;
lbl45:
                        // 1 sources

                        if (match.isEquivalentTo(castType)) break block0;
                        this.bits |= 128;
                        return true;
                    }
                    case 1028: {
                        this.bits |= 128;
                        return true;
                    }
                }
                if (!isNarrowing) break;
                this.bits |= 128;
                return true;
            }
            case 68: {
                leafType = castType.leafComponentType();
                if (!isNarrowing || leafType.isReifiable() && !leafType.isTypeVariable()) break;
                this.bits |= 128;
                return true;
            }
            case 4100: {
                this.bits |= 128;
                return true;
            }
        }
        if (!isNarrowing && match == this.resolvedType.leafComponentType()) {
            this.tagAsUnnecessaryCast(scope, castType);
        }
        return true;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        boolean needRuntimeCheckcast;
        int pc = codeStream.position;
        boolean bl = needRuntimeCheckcast = (this.bits & 0x40) != 0;
        if (this.constant != Constant.NotAConstant) {
            if (valueRequired || needRuntimeCheckcast) {
                codeStream.generateConstant(this.constant, this.implicitConversion);
                if (needRuntimeCheckcast) {
                    codeStream.checkcast(this.resolvedType);
                }
                if (!valueRequired) {
                    codeStream.pop();
                }
            }
            codeStream.recordPositionsFrom(pc, this.sourceStart);
            return;
        }
        this.expression.generateCode(currentScope, codeStream, valueRequired || needRuntimeCheckcast);
        if (needRuntimeCheckcast && this.expression.postConversionType(currentScope) != this.resolvedType.erasure()) {
            codeStream.checkcast(this.resolvedType);
        }
        if (valueRequired) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else if (needRuntimeCheckcast) {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public Expression innermostCastedExpression() {
        Expression current = this.expression;
        while (current instanceof CastExpression) {
            current = ((CastExpression)current).expression;
        }
        return current;
    }

    public LocalVariableBinding localVariableBinding() {
        return this.expression.localVariableBinding();
    }

    public int nullStatus(FlowInfo flowInfo) {
        return this.expression.nullStatus(flowInfo);
    }

    public Constant optimizedBooleanConstant() {
        switch (this.resolvedType.id) {
            case 5: 
            case 33: {
                return this.expression.optimizedBooleanConstant();
            }
        }
        return Constant.NotAConstant;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append('(');
        this.type.print(0, output).append(") ");
        return this.expression.printExpression(0, output);
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.constant = Constant.NotAConstant;
        this.implicitConversion = 0;
        boolean exprContainCast = false;
        TypeBinding castType = this.resolvedType = this.type.resolveType(scope);
        if (this.expression instanceof CastExpression) {
            this.expression.bits |= 0x20;
            exprContainCast = true;
        }
        TypeBinding expressionType = this.expression.resolveType(scope);
        if (this.expression instanceof MessageSend) {
            MessageSend messageSend = (MessageSend)this.expression;
            MethodBinding methodBinding = messageSend.binding;
            if (methodBinding != null && methodBinding.isPolymorphic()) {
                messageSend.binding = scope.environment().updatePolymorphicMethodReturnType((PolymorphicMethodBinding)methodBinding, castType);
                expressionType = castType;
            }
        }
        if (castType != null) {
            if (expressionType != null) {
                boolean isLegal = this.checkCastTypesCompatibility(scope, castType, expressionType, this.expression);
                if (isLegal) {
                    this.expression.computeConversion(scope, castType, expressionType);
                    if ((this.bits & 0x80) != 0) {
                        if (scope.compilerOptions().reportUnavoidableGenericTypeProblems || !this.expression.forcedToBeRaw(scope.referenceContext())) {
                            scope.problemReporter().unsafeCast(this, scope);
                        }
                    } else {
                        if (castType.isRawType() && scope.compilerOptions().getSeverity(0x20010000) != 256) {
                            scope.problemReporter().rawTypeReference(this.type, castType);
                        }
                        if ((this.bits & 0x4020) == 16384 && !this.isIndirectlyUsed()) {
                            scope.problemReporter().unnecessaryCast(this);
                        }
                    }
                } else {
                    if ((castType.tagBits & 0x80L) == 0L) {
                        scope.problemReporter().typeCastError(this, castType, expressionType);
                    }
                    this.bits |= 0x20;
                }
            }
            this.resolvedType = castType.capture(scope, this.sourceEnd);
            if (exprContainCast) {
                CastExpression.checkNeedForCastCast(scope, this);
            }
        }
        return this.resolvedType;
    }

    public void setExpectedType(TypeBinding expectedType) {
        this.expectedType = expectedType;
    }

    private boolean isIndirectlyUsed() {
        MethodBinding method;
        if (this.expression instanceof MessageSend && (method = ((MessageSend)this.expression).binding) instanceof ParameterizedGenericMethodBinding && ((ParameterizedGenericMethodBinding)method).inferredReturnType) {
            if (this.expectedType == null) {
                return true;
            }
            if (this.resolvedType != this.expectedType) {
                return true;
            }
        }
        return this.expectedType != null && this.resolvedType.isBaseType() && !this.resolvedType.isCompatibleWith(this.expectedType);
    }

    public void tagAsNeedCheckCast() {
        this.bits |= 0x40;
    }

    public void tagAsUnnecessaryCast(Scope scope, TypeBinding castType) {
        this.bits |= 0x4000;
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        if (visitor.visit(this, blockScope)) {
            this.type.traverse(visitor, blockScope);
            this.expression.traverse(visitor, blockScope);
        }
        visitor.endVisit(this, blockScope);
    }
}

