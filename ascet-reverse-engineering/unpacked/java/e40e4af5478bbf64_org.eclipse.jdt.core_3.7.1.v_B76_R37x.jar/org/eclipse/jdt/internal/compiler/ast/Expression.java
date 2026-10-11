/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import java.util.ArrayList;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.PrefixExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedThisReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.problem.ShouldNotImplement;
import org.eclipse.jdt.internal.compiler.util.Messages;

public abstract class Expression
extends Statement {
    public Constant constant;
    public int statementEnd = -1;
    public int implicitConversion;
    public TypeBinding resolvedType;

    public static final boolean isConstantValueRepresentable(Constant constant, int constantTypeID, int targetTypeID) {
        if (targetTypeID == constantTypeID) {
            return true;
        }
        switch (targetTypeID) {
            case 2: {
                switch (constantTypeID) {
                    case 2: {
                        return true;
                    }
                    case 8: {
                        return constant.doubleValue() == (double)constant.charValue();
                    }
                    case 9: {
                        return constant.floatValue() == (float)constant.charValue();
                    }
                    case 10: {
                        return constant.intValue() == constant.charValue();
                    }
                    case 4: {
                        return constant.shortValue() == constant.charValue();
                    }
                    case 3: {
                        return constant.byteValue() == constant.charValue();
                    }
                    case 7: {
                        return constant.longValue() == (long)constant.charValue();
                    }
                }
                return false;
            }
            case 9: {
                switch (constantTypeID) {
                    case 2: {
                        return (float)constant.charValue() == constant.floatValue();
                    }
                    case 8: {
                        return constant.doubleValue() == (double)constant.floatValue();
                    }
                    case 9: {
                        return true;
                    }
                    case 10: {
                        return (float)constant.intValue() == constant.floatValue();
                    }
                    case 4: {
                        return (float)constant.shortValue() == constant.floatValue();
                    }
                    case 3: {
                        return (float)constant.byteValue() == constant.floatValue();
                    }
                    case 7: {
                        return (float)constant.longValue() == constant.floatValue();
                    }
                }
                return false;
            }
            case 8: {
                switch (constantTypeID) {
                    case 2: {
                        return (double)constant.charValue() == constant.doubleValue();
                    }
                    case 8: {
                        return true;
                    }
                    case 9: {
                        return (double)constant.floatValue() == constant.doubleValue();
                    }
                    case 10: {
                        return (double)constant.intValue() == constant.doubleValue();
                    }
                    case 4: {
                        return (double)constant.shortValue() == constant.doubleValue();
                    }
                    case 3: {
                        return (double)constant.byteValue() == constant.doubleValue();
                    }
                    case 7: {
                        return (double)constant.longValue() == constant.doubleValue();
                    }
                }
                return false;
            }
            case 3: {
                switch (constantTypeID) {
                    case 2: {
                        return constant.charValue() == constant.byteValue();
                    }
                    case 8: {
                        return constant.doubleValue() == (double)constant.byteValue();
                    }
                    case 9: {
                        return constant.floatValue() == (float)constant.byteValue();
                    }
                    case 10: {
                        return constant.intValue() == constant.byteValue();
                    }
                    case 4: {
                        return constant.shortValue() == constant.byteValue();
                    }
                    case 3: {
                        return true;
                    }
                    case 7: {
                        return constant.longValue() == (long)constant.byteValue();
                    }
                }
                return false;
            }
            case 4: {
                switch (constantTypeID) {
                    case 2: {
                        return constant.charValue() == constant.shortValue();
                    }
                    case 8: {
                        return constant.doubleValue() == (double)constant.shortValue();
                    }
                    case 9: {
                        return constant.floatValue() == (float)constant.shortValue();
                    }
                    case 10: {
                        return constant.intValue() == constant.shortValue();
                    }
                    case 4: {
                        return true;
                    }
                    case 3: {
                        return constant.byteValue() == constant.shortValue();
                    }
                    case 7: {
                        return constant.longValue() == (long)constant.shortValue();
                    }
                }
                return false;
            }
            case 10: {
                switch (constantTypeID) {
                    case 2: {
                        return constant.charValue() == constant.intValue();
                    }
                    case 8: {
                        return constant.doubleValue() == (double)constant.intValue();
                    }
                    case 9: {
                        return constant.floatValue() == (float)constant.intValue();
                    }
                    case 10: {
                        return true;
                    }
                    case 4: {
                        return constant.shortValue() == constant.intValue();
                    }
                    case 3: {
                        return constant.byteValue() == constant.intValue();
                    }
                    case 7: {
                        return constant.longValue() == (long)constant.intValue();
                    }
                }
                return false;
            }
            case 7: {
                switch (constantTypeID) {
                    case 2: {
                        return (long)constant.charValue() == constant.longValue();
                    }
                    case 8: {
                        return constant.doubleValue() == (double)constant.longValue();
                    }
                    case 9: {
                        return constant.floatValue() == (float)constant.longValue();
                    }
                    case 10: {
                        return (long)constant.intValue() == constant.longValue();
                    }
                    case 4: {
                        return (long)constant.shortValue() == constant.longValue();
                    }
                    case 3: {
                        return (long)constant.byteValue() == constant.longValue();
                    }
                    case 7: {
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo, boolean valueRequired) {
        return this.analyseCode(currentScope, flowContext, flowInfo);
    }

    public final boolean checkCastTypesCompatibility(Scope scope, TypeBinding castType, TypeBinding expressionType, Expression expression) {
        boolean use17specifics;
        if (castType == null || expressionType == null) {
            return true;
        }
        boolean use15specifics = scope.compilerOptions().sourceLevel >= 0x310000L;
        boolean bl = use17specifics = scope.compilerOptions().sourceLevel >= 0x330000L;
        if (castType.isBaseType()) {
            if (expressionType.isBaseType()) {
                if (expressionType == castType) {
                    if (expression != null) {
                        this.constant = expression.constant;
                    }
                    this.tagAsUnnecessaryCast(scope, castType);
                    return true;
                }
                boolean necessary = false;
                if (expressionType.isCompatibleWith(castType) || (necessary = BaseTypeBinding.isNarrowing(castType.id, expressionType.id))) {
                    if (expression != null) {
                        expression.implicitConversion = (castType.id << 4) + expressionType.id;
                        if (expression.constant != Constant.NotAConstant) {
                            this.constant = expression.constant.castTo(expression.implicitConversion);
                        }
                    }
                    if (!necessary) {
                        this.tagAsUnnecessaryCast(scope, castType);
                    }
                    return true;
                }
            } else {
                if (use17specifics && expressionType.id == 1) {
                    return true;
                }
                if (use15specifics && scope.environment().computeBoxingType(expressionType).isCompatibleWith(castType)) {
                    this.tagAsUnnecessaryCast(scope, castType);
                    return true;
                }
            }
            return false;
        }
        if (use15specifics && expressionType.isBaseType() && scope.environment().computeBoxingType(expressionType).isCompatibleWith(castType)) {
            this.tagAsUnnecessaryCast(scope, castType);
            return true;
        }
        switch (expressionType.kind()) {
            case 132: {
                if (expressionType == TypeBinding.NULL) {
                    this.tagAsUnnecessaryCast(scope, castType);
                    return true;
                }
                return false;
            }
            case 68: {
                if (castType == expressionType) {
                    this.tagAsUnnecessaryCast(scope, castType);
                    return true;
                }
                switch (castType.kind()) {
                    case 68: {
                        TypeBinding castElementType = ((ArrayBinding)castType).elementsType();
                        TypeBinding exprElementType = ((ArrayBinding)expressionType).elementsType();
                        if (exprElementType.isBaseType() || castElementType.isBaseType()) {
                            if (castElementType == exprElementType) {
                                this.tagAsNeedCheckCast();
                                return true;
                            }
                            return false;
                        }
                        return this.checkCastTypesCompatibility(scope, castElementType, exprElementType, expression);
                    }
                    case 4100: {
                        TypeBinding match = expressionType.findSuperTypeOriginatingFrom(castType);
                        if (match == null) {
                            this.checkUnsafeCast(scope, castType, expressionType, null, true);
                        }
                        return this.checkCastTypesCompatibility(scope, ((TypeVariableBinding)castType).upperBound(), expressionType, expression);
                    }
                }
                switch (castType.id) {
                    case 36: 
                    case 37: {
                        this.tagAsNeedCheckCast();
                        return true;
                    }
                    case 1: {
                        this.tagAsUnnecessaryCast(scope, castType);
                        return true;
                    }
                }
                return false;
            }
            case 4100: {
                TypeBinding match = expressionType.findSuperTypeOriginatingFrom(castType);
                if (match != null) {
                    return this.checkUnsafeCast(scope, castType, expressionType, match, false);
                }
                return this.checkCastTypesCompatibility(scope, castType, ((TypeVariableBinding)expressionType).upperBound(), expression);
            }
            case 516: 
            case 8196: {
                TypeBinding match = expressionType.findSuperTypeOriginatingFrom(castType);
                if (match != null) {
                    return this.checkUnsafeCast(scope, castType, expressionType, match, false);
                }
                return this.checkCastTypesCompatibility(scope, castType, ((WildcardBinding)expressionType).bound, expression);
            }
        }
        if (expressionType.isInterface()) {
            switch (castType.kind()) {
                case 68: {
                    switch (expressionType.id) {
                        case 36: 
                        case 37: {
                            this.tagAsNeedCheckCast();
                            return true;
                        }
                    }
                    return false;
                }
                case 4100: {
                    TypeBinding match = expressionType.findSuperTypeOriginatingFrom(castType);
                    if (match == null) {
                        this.checkUnsafeCast(scope, castType, expressionType, null, true);
                    }
                    return this.checkCastTypesCompatibility(scope, ((TypeVariableBinding)castType).upperBound(), expressionType, expression);
                }
            }
            if (castType.isInterface()) {
                ReferenceBinding interfaceType = (ReferenceBinding)expressionType;
                TypeBinding match = interfaceType.findSuperTypeOriginatingFrom(castType);
                if (match != null) {
                    return this.checkUnsafeCast(scope, castType, interfaceType, match, false);
                }
                this.tagAsNeedCheckCast();
                match = castType.findSuperTypeOriginatingFrom(interfaceType);
                if (match != null) {
                    return this.checkUnsafeCast(scope, castType, interfaceType, match, true);
                }
                if (use15specifics) {
                    this.checkUnsafeCast(scope, castType, expressionType, null, true);
                    if (scope.compilerOptions().complianceLevel < 0x330000L ? interfaceType.hasIncompatibleSuperType((ReferenceBinding)castType) : !castType.isRawType() && interfaceType.hasIncompatibleSuperType((ReferenceBinding)castType)) {
                        return false;
                    }
                } else {
                    MethodBinding[] castTypeMethods = this.getAllOriginalInheritedMethods((ReferenceBinding)castType);
                    MethodBinding[] expressionTypeMethods = this.getAllOriginalInheritedMethods((ReferenceBinding)expressionType);
                    int exprMethodsLength = expressionTypeMethods.length;
                    int i = 0;
                    int castMethodsLength = castTypeMethods.length;
                    while (i < castMethodsLength) {
                        int j = 0;
                        while (j < exprMethodsLength) {
                            if (castTypeMethods[i].returnType != expressionTypeMethods[j].returnType && CharOperation.equals(castTypeMethods[i].selector, expressionTypeMethods[j].selector) && castTypeMethods[i].areParametersEqual(expressionTypeMethods[j])) {
                                return false;
                            }
                            ++j;
                        }
                        ++i;
                    }
                }
                return true;
            }
            if (castType.id == 1) {
                this.tagAsUnnecessaryCast(scope, castType);
                return true;
            }
            this.tagAsNeedCheckCast();
            TypeBinding match = castType.findSuperTypeOriginatingFrom(expressionType);
            if (match != null) {
                return this.checkUnsafeCast(scope, castType, expressionType, match, true);
            }
            if (((ReferenceBinding)castType).isFinal()) {
                return false;
            }
            if (use15specifics) {
                this.checkUnsafeCast(scope, castType, expressionType, null, true);
                if (scope.compilerOptions().complianceLevel < 0x330000L ? ((ReferenceBinding)castType).hasIncompatibleSuperType((ReferenceBinding)expressionType) : !castType.isRawType() && ((ReferenceBinding)castType).hasIncompatibleSuperType((ReferenceBinding)expressionType)) {
                    return false;
                }
            }
            return true;
        }
        switch (castType.kind()) {
            case 68: {
                if (expressionType.id == 1) {
                    if (use15specifics) {
                        this.checkUnsafeCast(scope, castType, expressionType, expressionType, true);
                    }
                    this.tagAsNeedCheckCast();
                    return true;
                }
                return false;
            }
            case 4100: {
                TypeBinding match = expressionType.findSuperTypeOriginatingFrom(castType);
                if (match == null) {
                    this.checkUnsafeCast(scope, castType, expressionType, null, true);
                }
                return this.checkCastTypesCompatibility(scope, ((TypeVariableBinding)castType).upperBound(), expressionType, expression);
            }
        }
        if (castType.isInterface()) {
            ReferenceBinding refExprType = (ReferenceBinding)expressionType;
            TypeBinding match = refExprType.findSuperTypeOriginatingFrom(castType);
            if (match != null) {
                return this.checkUnsafeCast(scope, castType, expressionType, match, false);
            }
            if (refExprType.isFinal()) {
                return false;
            }
            this.tagAsNeedCheckCast();
            match = castType.findSuperTypeOriginatingFrom(expressionType);
            if (match != null) {
                return this.checkUnsafeCast(scope, castType, expressionType, match, true);
            }
            if (use15specifics) {
                this.checkUnsafeCast(scope, castType, expressionType, null, true);
                if (scope.compilerOptions().complianceLevel < 0x330000L ? refExprType.hasIncompatibleSuperType((ReferenceBinding)castType) : !castType.isRawType() && refExprType.hasIncompatibleSuperType((ReferenceBinding)castType)) {
                    return false;
                }
            }
            return true;
        }
        TypeBinding match = expressionType.findSuperTypeOriginatingFrom(castType);
        if (match != null) {
            if (expression != null && castType.id == 11) {
                this.constant = expression.constant;
            }
            return this.checkUnsafeCast(scope, castType, expressionType, match, false);
        }
        match = castType.findSuperTypeOriginatingFrom(expressionType);
        if (match != null) {
            this.tagAsNeedCheckCast();
            return this.checkUnsafeCast(scope, castType, expressionType, match, true);
        }
        return false;
    }

    public void checkNPE(BlockScope scope, FlowContext flowContext, FlowInfo flowInfo) {
        LocalVariableBinding local = this.localVariableBinding();
        if (local != null && (local.type.tagBits & 2L) == 0L) {
            if ((this.bits & 0x20000) == 0) {
                flowContext.recordUsingNullReference(scope, local, this, 3, flowInfo);
            }
            flowInfo.markAsComparedEqualToNonNull(local);
            if ((flowContext.tagBits & 4) != 0) {
                flowInfo.markedAsNullOrNonNullInAssertExpression(local);
            }
            if (flowContext.initsOnFinally != null) {
                flowContext.initsOnFinally.markAsComparedEqualToNonNull(local);
                if ((flowContext.tagBits & 4) != 0) {
                    flowContext.initsOnFinally.markedAsNullOrNonNullInAssertExpression(local);
                }
            }
        }
    }

    public boolean checkUnsafeCast(Scope scope, TypeBinding castType, TypeBinding expressionType, TypeBinding match, boolean isNarrowing) {
        if (match == castType) {
            if (!isNarrowing) {
                this.tagAsUnnecessaryCast(scope, castType);
            }
            return true;
        }
        if (!(match == null || castType.isReifiable() && expressionType.isReifiable() || !(isNarrowing ? match.isProvablyDistinct(expressionType) : castType.isProvablyDistinct(match)))) {
            return false;
        }
        if (!isNarrowing) {
            this.tagAsUnnecessaryCast(scope, castType);
        }
        return true;
    }

    public void computeConversion(Scope scope, TypeBinding runtimeType, TypeBinding compileTimeType) {
        int compileTimeTypeID;
        if (runtimeType == null || compileTimeType == null) {
            return;
        }
        if (this.implicitConversion != 0) {
            return;
        }
        if (runtimeType != TypeBinding.NULL && runtimeType.isBaseType()) {
            if (!compileTimeType.isBaseType()) {
                TypeBinding unboxedType = scope.environment().computeBoxingType(compileTimeType);
                this.implicitConversion = 1024;
                scope.problemReporter().autoboxing(this, compileTimeType, runtimeType);
                compileTimeType = unboxedType;
            }
        } else {
            if (compileTimeType != TypeBinding.NULL && compileTimeType.isBaseType()) {
                TypeBinding boxedType = scope.environment().computeBoxingType(runtimeType);
                if (boxedType == runtimeType) {
                    boxedType = compileTimeType;
                }
                this.implicitConversion = 0x200 | (boxedType.id << 4) + compileTimeType.id;
                scope.problemReporter().autoboxing(this, compileTimeType, scope.environment().computeBoxingType(boxedType));
                return;
            }
            if (this.constant != Constant.NotAConstant && this.constant.typeID() != 11) {
                this.implicitConversion = 512;
                return;
            }
        }
        if ((compileTimeTypeID = compileTimeType.id) == Integer.MAX_VALUE) {
            compileTimeTypeID = compileTimeType.erasure().id == 11 ? 11 : 1;
        }
        int runtimeTypeID = runtimeType.id;
        switch (runtimeTypeID) {
            case 2: 
            case 3: 
            case 4: {
                if (compileTimeTypeID == 1) {
                    this.implicitConversion |= (runtimeTypeID << 4) + compileTimeTypeID;
                    break;
                }
                this.implicitConversion |= 160 + compileTimeTypeID;
                break;
            }
            case 5: 
            case 7: 
            case 8: 
            case 9: 
            case 10: 
            case 11: {
                this.implicitConversion |= (runtimeTypeID << 4) + compileTimeTypeID;
            }
        }
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        this.generateCode(currentScope, codeStream, false);
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream, boolean valueRequired) {
        if (this.constant == Constant.NotAConstant) {
            throw new ShouldNotImplement(Messages.ast_missingCode);
        }
        int pc = codeStream.position;
        codeStream.generateConstant(this.constant, this.implicitConversion);
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public void generateOptimizedBoolean(BlockScope currentScope, CodeStream codeStream, BranchLabel trueLabel, BranchLabel falseLabel, boolean valueRequired) {
        Constant cst = this.optimizedBooleanConstant();
        this.generateCode(currentScope, codeStream, valueRequired && cst == Constant.NotAConstant);
        if (cst != Constant.NotAConstant && cst.typeID() == 5) {
            int pc = codeStream.position;
            if (cst.booleanValue()) {
                if (valueRequired && falseLabel == null && trueLabel != null) {
                    codeStream.goto_(trueLabel);
                }
            } else if (valueRequired && falseLabel != null && trueLabel == null) {
                codeStream.goto_(falseLabel);
            }
            codeStream.recordPositionsFrom(pc, this.sourceStart);
            return;
        }
        int position = codeStream.position;
        if (valueRequired) {
            if (falseLabel == null) {
                if (trueLabel != null) {
                    codeStream.ifne(trueLabel);
                }
            } else if (trueLabel == null) {
                codeStream.ifeq(falseLabel);
            }
        }
        codeStream.updateLastRecordedEndPC(currentScope, position);
    }

    public void generateOptimizedStringConcatenation(BlockScope blockScope, CodeStream codeStream, int typeID) {
        if (typeID == 11 && this.constant != Constant.NotAConstant && this.constant.stringValue().length() == 0) {
            return;
        }
        this.generateCode(blockScope, codeStream, true);
        codeStream.invokeStringConcatenationAppendForType(typeID);
    }

    public void generateOptimizedStringConcatenationCreation(BlockScope blockScope, CodeStream codeStream, int typeID) {
        codeStream.newStringContatenation();
        codeStream.dup();
        switch (typeID) {
            case 0: 
            case 1: {
                codeStream.invokeStringConcatenationDefaultConstructor();
                this.generateCode(blockScope, codeStream, true);
                codeStream.invokeStringConcatenationAppendForType(1);
                return;
            }
            case 11: 
            case 12: {
                if (this.constant != Constant.NotAConstant) {
                    String stringValue = this.constant.stringValue();
                    if (stringValue.length() == 0) {
                        codeStream.invokeStringConcatenationDefaultConstructor();
                        return;
                    }
                    codeStream.ldc(stringValue);
                    break;
                }
                this.generateCode(blockScope, codeStream, true);
                codeStream.invokeStringValueOf(1);
                break;
            }
            default: {
                this.generateCode(blockScope, codeStream, true);
                codeStream.invokeStringValueOf(typeID);
            }
        }
        codeStream.invokeStringConcatenationStringConstructor();
    }

    private MethodBinding[] getAllOriginalInheritedMethods(ReferenceBinding binding) {
        ArrayList<MethodBinding> collector = new ArrayList<MethodBinding>();
        this.getAllInheritedMethods0(binding, collector);
        int i = 0;
        int len = collector.size();
        while (i < len) {
            collector.set(i, ((MethodBinding)collector.get(i)).original());
            ++i;
        }
        return collector.toArray(new MethodBinding[collector.size()]);
    }

    private void getAllInheritedMethods0(ReferenceBinding binding, ArrayList collector) {
        if (!binding.isInterface()) {
            return;
        }
        MethodBinding[] methodBindings = binding.methods();
        int i = 0;
        int max = methodBindings.length;
        while (i < max) {
            collector.add(methodBindings[i]);
            ++i;
        }
        ReferenceBinding[] superInterfaces = binding.superInterfaces();
        int i2 = 0;
        int max2 = superInterfaces.length;
        while (i2 < max2) {
            this.getAllInheritedMethods0(superInterfaces[i2], collector);
            ++i2;
        }
    }

    public static Binding getDirectBinding(Expression someExpression) {
        if ((someExpression.bits & 0x20000000) != 0) {
            return null;
        }
        if (someExpression instanceof SingleNameReference) {
            return ((SingleNameReference)someExpression).binding;
        }
        if (someExpression instanceof FieldReference) {
            FieldReference fieldRef = (FieldReference)someExpression;
            if (fieldRef.receiver.isThis() && !(fieldRef.receiver instanceof QualifiedThisReference)) {
                return fieldRef.binding;
            }
        } else if (someExpression instanceof Assignment) {
            Expression lhs = ((Assignment)someExpression).lhs;
            if ((lhs.bits & 0x2000) != 0) {
                return Expression.getDirectBinding(((Assignment)someExpression).lhs);
            }
            if (someExpression instanceof PrefixExpression) {
                return Expression.getDirectBinding(((Assignment)someExpression).lhs);
            }
        } else if (someExpression instanceof QualifiedNameReference) {
            QualifiedNameReference qualifiedNameReference = (QualifiedNameReference)someExpression;
            if (qualifiedNameReference.indexOfFirstFieldBinding != 1 && qualifiedNameReference.otherBindings == null) {
                return qualifiedNameReference.binding;
            }
        } else if (someExpression.isThis()) {
            return someExpression.resolvedType;
        }
        return null;
    }

    public boolean isCompactableOperation() {
        return false;
    }

    public boolean isConstantValueOfTypeAssignableToType(TypeBinding constantType, TypeBinding targetType) {
        if (this.constant == Constant.NotAConstant) {
            return false;
        }
        if (constantType == targetType) {
            return true;
        }
        if (BaseTypeBinding.isWidening(10, constantType.id) && BaseTypeBinding.isNarrowing(targetType.id, 10)) {
            return Expression.isConstantValueRepresentable(this.constant, constantType.id, targetType.id);
        }
        return false;
    }

    public boolean isTypeReference() {
        return false;
    }

    public LocalVariableBinding localVariableBinding() {
        return null;
    }

    public void markAsNonNull() {
        this.bits |= 0x20000;
    }

    public int nullStatus(FlowInfo flowInfo) {
        if (this.constant != null && this.constant != Constant.NotAConstant) {
            return 4;
        }
        LocalVariableBinding local = this.localVariableBinding();
        if (local != null) {
            return flowInfo.nullStatus(local);
        }
        return 4;
    }

    public Constant optimizedBooleanConstant() {
        return this.constant;
    }

    public TypeBinding postConversionType(Scope scope) {
        TypeBinding convertedType = this.resolvedType;
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

    public StringBuffer print(int indent, StringBuffer output) {
        Expression.printIndent(indent, output);
        return this.printExpression(indent, output);
    }

    public abstract StringBuffer printExpression(int var1, StringBuffer var2);

    public StringBuffer printStatement(int indent, StringBuffer output) {
        return this.print(indent, output).append(";");
    }

    public void resolve(BlockScope scope) {
        this.resolveType(scope);
    }

    public TypeBinding resolveType(BlockScope scope) {
        return null;
    }

    public TypeBinding resolveType(ClassScope scope) {
        return null;
    }

    public TypeBinding resolveTypeExpecting(BlockScope scope, TypeBinding expectedType) {
        this.setExpectedType(expectedType);
        TypeBinding expressionType = this.resolveType(scope);
        if (expressionType == null) {
            return null;
        }
        if (expressionType == expectedType) {
            return expressionType;
        }
        if (!expressionType.isCompatibleWith(expectedType)) {
            if (scope.isBoxingCompatibleWith(expressionType, expectedType)) {
                this.computeConversion(scope, expectedType, expressionType);
            } else {
                scope.problemReporter().typeMismatchError(expressionType, expectedType, this, null);
                return null;
            }
        }
        return expressionType;
    }

    public boolean forcedToBeRaw(ReferenceContext referenceContext) {
        if (this instanceof NameReference) {
            Binding receiverBinding = ((NameReference)this).binding;
            if (receiverBinding.isParameter() && (((LocalVariableBinding)receiverBinding).tagBits & 0x200L) != 0L) {
                return true;
            }
            if (receiverBinding instanceof FieldBinding) {
                FieldBinding field = (FieldBinding)receiverBinding;
                if (field.type.isRawType()) {
                    if (referenceContext instanceof AbstractMethodDeclaration) {
                        AbstractMethodDeclaration methodDecl = (AbstractMethodDeclaration)referenceContext;
                        if (field.declaringClass != methodDecl.binding.declaringClass) {
                            return true;
                        }
                    } else if (referenceContext instanceof TypeDeclaration) {
                        TypeDeclaration type = (TypeDeclaration)referenceContext;
                        if (field.declaringClass != type.binding) {
                            return true;
                        }
                    }
                }
            }
        } else if (this instanceof MessageSend) {
            if (!CharOperation.equals(((MessageSend)this).binding.declaringClass.getFileName(), referenceContext.compilationResult().getFileName())) {
                return true;
            }
        } else if (this instanceof FieldReference) {
            FieldBinding field = ((FieldReference)this).binding;
            if (!CharOperation.equals(field.declaringClass.getFileName(), referenceContext.compilationResult().getFileName())) {
                return true;
            }
            if (field.type.isRawType()) {
                if (referenceContext instanceof AbstractMethodDeclaration) {
                    AbstractMethodDeclaration methodDecl = (AbstractMethodDeclaration)referenceContext;
                    if (field.declaringClass != methodDecl.binding.declaringClass) {
                        return true;
                    }
                } else if (referenceContext instanceof TypeDeclaration) {
                    TypeDeclaration type = (TypeDeclaration)referenceContext;
                    if (field.declaringClass != type.binding) {
                        return true;
                    }
                }
            }
        } else if (this instanceof ConditionalExpression) {
            ConditionalExpression ternary = (ConditionalExpression)this;
            if (ternary.valueIfTrue.forcedToBeRaw(referenceContext) || ternary.valueIfFalse.forcedToBeRaw(referenceContext)) {
                return true;
            }
        }
        return false;
    }

    public Object reusableJSRTarget() {
        if (this.constant != Constant.NotAConstant) {
            return this.constant;
        }
        return null;
    }

    public void setExpectedType(TypeBinding expectedType) {
    }

    public void tagAsNeedCheckCast() {
    }

    public void tagAsUnnecessaryCast(Scope scope, TypeBinding castType) {
    }

    public Expression toTypeReference() {
        return this;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
    }

    public void traverse(ASTVisitor visitor, ClassScope scope) {
    }
}

