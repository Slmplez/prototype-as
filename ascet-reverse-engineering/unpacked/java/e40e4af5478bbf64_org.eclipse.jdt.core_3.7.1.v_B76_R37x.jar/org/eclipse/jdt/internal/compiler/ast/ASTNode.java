/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.AccessRestriction;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeIds;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public abstract class ASTNode
implements TypeConstants,
TypeIds {
    public int sourceStart;
    public int sourceEnd;
    public static final int Bit1 = 1;
    public static final int Bit2 = 2;
    public static final int Bit3 = 4;
    public static final int Bit4 = 8;
    public static final int Bit5 = 16;
    public static final int Bit6 = 32;
    public static final int Bit7 = 64;
    public static final int Bit8 = 128;
    public static final int Bit9 = 256;
    public static final int Bit10 = 512;
    public static final int Bit11 = 1024;
    public static final int Bit12 = 2048;
    public static final int Bit13 = 4096;
    public static final int Bit14 = 8192;
    public static final int Bit15 = 16384;
    public static final int Bit16 = 32768;
    public static final int Bit17 = 65536;
    public static final int Bit18 = 131072;
    public static final int Bit19 = 262144;
    public static final int Bit20 = 524288;
    public static final int Bit21 = 0x100000;
    public static final int Bit22 = 0x200000;
    public static final int Bit23 = 0x400000;
    public static final int Bit24 = 0x800000;
    public static final int Bit25 = 0x1000000;
    public static final int Bit26 = 0x2000000;
    public static final int Bit27 = 0x4000000;
    public static final int Bit28 = 0x8000000;
    public static final int Bit29 = 0x10000000;
    public static final int Bit30 = 0x20000000;
    public static final int Bit31 = 0x40000000;
    public static final int Bit32 = Integer.MIN_VALUE;
    public static final long Bit32L = 0x80000000L;
    public static final long Bit33L = 0x100000000L;
    public static final long Bit34L = 0x200000000L;
    public static final long Bit35L = 0x400000000L;
    public static final long Bit36L = 0x800000000L;
    public static final long Bit37L = 0x1000000000L;
    public static final long Bit38L = 0x2000000000L;
    public static final long Bit39L = 0x4000000000L;
    public static final long Bit40L = 0x8000000000L;
    public static final long Bit41L = 0x10000000000L;
    public static final long Bit42L = 0x20000000000L;
    public static final long Bit43L = 0x40000000000L;
    public static final long Bit44L = 0x80000000000L;
    public static final long Bit45L = 0x100000000000L;
    public static final long Bit46L = 0x200000000000L;
    public static final long Bit47L = 0x400000000000L;
    public static final long Bit48L = 0x800000000000L;
    public static final long Bit49L = 0x1000000000000L;
    public static final long Bit50L = 0x2000000000000L;
    public static final long Bit51L = 0x4000000000000L;
    public static final long Bit52L = 0x8000000000000L;
    public static final long Bit53L = 0x10000000000000L;
    public static final long Bit54L = 0x20000000000000L;
    public static final long Bit55L = 0x40000000000000L;
    public static final long Bit56L = 0x80000000000000L;
    public static final long Bit57L = 0x100000000000000L;
    public static final long Bit58L = 0x200000000000000L;
    public static final long Bit59L = 0x400000000000000L;
    public static final long Bit60L = 0x800000000000000L;
    public static final long Bit61L = 0x1000000000000000L;
    public static final long Bit62L = 0x2000000000000000L;
    public static final long Bit63L = 0x4000000000000000L;
    public static final long Bit64L = Long.MIN_VALUE;
    public int bits = Integer.MIN_VALUE;
    public static final int ReturnTypeIDMASK = 15;
    public static final int OperatorSHIFT = 6;
    public static final int OperatorMASK = 4032;
    public static final int IsReturnedValue = 16;
    public static final int UnnecessaryCast = 16384;
    public static final int DisableUnnecessaryCastCheck = 32;
    public static final int GenerateCheckcast = 64;
    public static final int UnsafeCast = 128;
    public static final int RestrictiveFlagMASK = 7;
    public static final int IsArgument = 4;
    public static final int FirstAssignmentToLocal = 8;
    public static final int NeedReceiverGenericCast = 262144;
    public static final int IsImplicitThis = 4;
    public static final int DepthSHIFT = 5;
    public static final int DepthMASK = 8160;
    public static final int IsReachable = Integer.MIN_VALUE;
    public static final int LabelUsed = 64;
    public static final int DocumentedFallthrough = 0x20000000;
    public static final int IsLocalDeclarationReachable = 0x40000000;
    public static final int IsSubRoutineEscaping = 16384;
    public static final int IsTryBlockExiting = 0x20000000;
    public static final int ContainsAssertion = 1;
    public static final int IsLocalType = 256;
    public static final int IsAnonymousType = 512;
    public static final int IsMemberType = 1024;
    public static final int HasAbstractMethods = 2048;
    public static final int IsSecondaryType = 4096;
    public static final int HasBeenGenerated = 8192;
    public static final int HasLocalType = 2;
    public static final int HasBeenResolved = 16;
    public static final int ParenthesizedSHIFT = 21;
    public static final int ParenthesizedMASK = 534773760;
    public static final int IgnoreNoEffectAssignCheck = 0x20000000;
    public static final int IsStrictlyAssigned = 8192;
    public static final int IsCompoundAssigned = 65536;
    public static final int DiscardEnclosingInstance = 8192;
    public static final int Unchecked = 65536;
    public static final int ResolveJavadoc = 65536;
    public static final int IsUsefulEmptyStatement = 1;
    public static final int UndocumentedEmptyBlock = 8;
    public static final int OverridingMethodWithSupercall = 16;
    public static final int CanBeStatic = 256;
    public static final int ErrorInSignature = 32;
    public static final int NeedFreeReturn = 64;
    public static final int IsDefaultConstructor = 128;
    public static final int HasAllMethodBodies = 16;
    public static final int IsImplicitUnit = 1;
    public static final int InsideJavadoc = 32768;
    public static final int SuperAccess = 16384;
    public static final int Empty = 262144;
    public static final int IsElseIfStatement = 0x20000000;
    public static final int ThenExit = 0x40000000;
    public static final int IsElseStatementUnreachable = 128;
    public static final int IsThenStatementUnreachable = 256;
    public static final int IsSuperType = 16;
    public static final int IsVarArgs = 16384;
    public static final int IgnoreRawTypeCheck = 0x40000000;
    public static final int IsAnnotationDefaultValue = 1;
    public static final int IsNonNull = 131072;
    public static final int NeededScope = 0x20000000;
    public static final int OnDemand = 131072;
    public static final int Used = 2;
    public static final int DidResolve = 262144;
    public static final int IsAnySubRoutineEscaping = 0x20000000;
    public static final int IsSynchronized = 0x40000000;
    public static final int BlockExit = 0x20000000;
    public static final int IsRecovered = 32;
    public static final int HasSyntaxErrors = 524288;
    public static final int INVOCATION_ARGUMENT_OK = 0;
    public static final int INVOCATION_ARGUMENT_UNCHECKED = 1;
    public static final int INVOCATION_ARGUMENT_WILDCARD = 2;
    public static final int IsUnionType = 0x20000000;
    public static final int IsDiamond = 524288;
    public static final int InsideExpressionStatement = 16;

    private static int checkInvocationArgument(BlockScope scope, Expression argument, TypeBinding parameterType, TypeBinding argumentType, TypeBinding originalParameterType) {
        TypeBinding checkedParameterType;
        argument.computeConversion(scope, parameterType, argumentType);
        if (argumentType != TypeBinding.NULL && parameterType.kind() == 516) {
            WildcardBinding wildcard = (WildcardBinding)parameterType;
            if (wildcard.boundKind != 2) {
                return 2;
            }
        }
        if (argumentType != (checkedParameterType = parameterType) && argumentType.needsUncheckedConversion(checkedParameterType)) {
            scope.problemReporter().unsafeTypeConversion(argument, argumentType, checkedParameterType);
            return 1;
        }
        return 0;
    }

    public static boolean checkInvocationArguments(BlockScope scope, Expression receiver, TypeBinding receiverType, MethodBinding method, Expression[] arguments, TypeBinding[] argumentTypes, boolean argsContainCast, InvocationSite invocationSite) {
        int invocationStatus;
        MethodBinding rawOriginalGenericMethod;
        boolean uncheckedBoundCheck;
        block20: {
            block22: {
                int paramLength;
                TypeBinding[] params;
                block21: {
                    int dimensions;
                    TypeBinding lastArgType;
                    ArrayBinding varargsType;
                    block24: {
                        block23: {
                            boolean is1_7;
                            block19: {
                                TypeBinding parameterType;
                                boolean bl = is1_7 = scope.compilerOptions().sourceLevel >= 0x330000L;
                                if (is1_7 && method.isPolymorphic()) {
                                    return false;
                                }
                                params = method.parameters;
                                paramLength = params.length;
                                boolean isRawMemberInvocation = !method.isStatic() && !receiverType.isUnboundWildcard() && method.declaringClass.isRawType() && method.hasSubstitutedParameters();
                                uncheckedBoundCheck = (method.tagBits & 0x100L) != 0L;
                                rawOriginalGenericMethod = null;
                                if (!isRawMemberInvocation && method instanceof ParameterizedGenericMethodBinding) {
                                    ParameterizedGenericMethodBinding paramMethod = (ParameterizedGenericMethodBinding)method;
                                    if (paramMethod.isRaw && method.hasSubstitutedParameters()) {
                                        rawOriginalGenericMethod = method.original();
                                    }
                                }
                                invocationStatus = 0;
                                if (arguments != null) break block19;
                                if (!(!method.isVarargs() || (parameterType = ((ArrayBinding)params[paramLength - 1]).elementsType()).isReifiable() || is1_7 && (method.tagBits & 0x8000000000000L) != 0L)) {
                                    scope.problemReporter().unsafeGenericArrayForVarargs(parameterType, (ASTNode)((Object)invocationSite));
                                }
                                break block20;
                            }
                            if (!method.isVarargs()) break block21;
                            int lastIndex = paramLength - 1;
                            int i = 0;
                            while (i < lastIndex) {
                                TypeBinding originalRawParam = rawOriginalGenericMethod == null ? null : rawOriginalGenericMethod.parameters[i];
                                invocationStatus |= ASTNode.checkInvocationArgument(scope, arguments[i], params[i], argumentTypes[i], originalRawParam);
                                ++i;
                            }
                            int argLength = arguments.length;
                            if (lastIndex <= argLength) {
                                TypeBinding parameterType = params[lastIndex];
                                TypeBinding originalRawParam = null;
                                if (paramLength != argLength || parameterType.dimensions() != argumentTypes[lastIndex].dimensions()) {
                                    if (!((parameterType = ((ArrayBinding)parameterType).elementsType()).isReifiable() || is1_7 && (method.tagBits & 0x8000000000000L) != 0L)) {
                                        scope.problemReporter().unsafeGenericArrayForVarargs(parameterType, (ASTNode)((Object)invocationSite));
                                    }
                                    originalRawParam = rawOriginalGenericMethod == null ? null : ((ArrayBinding)rawOriginalGenericMethod.parameters[lastIndex]).elementsType();
                                }
                                int i2 = lastIndex;
                                while (i2 < argLength) {
                                    invocationStatus |= ASTNode.checkInvocationArgument(scope, arguments[i2], parameterType, argumentTypes[i2], originalRawParam);
                                    ++i2;
                                }
                            }
                            if (paramLength != argLength) break block22;
                            int varargsIndex = paramLength - 1;
                            varargsType = (ArrayBinding)params[varargsIndex];
                            lastArgType = argumentTypes[varargsIndex];
                            if (lastArgType != TypeBinding.NULL) break block23;
                            if (!varargsType.leafComponentType().isBaseType() || varargsType.dimensions() != 1) {
                                scope.problemReporter().varargsArgumentNeedCast(method, lastArgType, invocationSite);
                            }
                            break block22;
                        }
                        dimensions = lastArgType.dimensions();
                        if (varargsType.dimensions > dimensions) break block22;
                        if (lastArgType.leafComponentType().isBaseType()) {
                            --dimensions;
                        }
                        if (varargsType.dimensions >= dimensions) break block24;
                        scope.problemReporter().varargsArgumentNeedCast(method, lastArgType, invocationSite);
                        break block22;
                    }
                    if (varargsType.dimensions != dimensions || lastArgType == varargsType || lastArgType.leafComponentType().erasure() == varargsType.leafComponentType.erasure() || !lastArgType.isCompatibleWith(varargsType.elementsType()) || !lastArgType.isCompatibleWith(varargsType)) break block22;
                    scope.problemReporter().varargsArgumentNeedCast(method, lastArgType, invocationSite);
                    break block22;
                }
                int i = 0;
                while (i < paramLength) {
                    TypeBinding originalRawParam = rawOriginalGenericMethod == null ? null : rawOriginalGenericMethod.parameters[i];
                    invocationStatus |= ASTNode.checkInvocationArgument(scope, arguments[i], params[i], argumentTypes[i], originalRawParam);
                    ++i;
                }
            }
            if (argsContainCast) {
                CastExpression.checkNeedForArgumentCasts(scope, receiver, receiverType, method, arguments, argumentTypes, invocationSite);
            }
        }
        if ((invocationStatus & 2) != 0) {
            scope.problemReporter().wildcardInvocation((ASTNode)((Object)invocationSite), receiverType, method, argumentTypes);
        } else if (!method.isStatic() && !receiverType.isUnboundWildcard() && method.declaringClass.isRawType() && method.hasSubstitutedParameters()) {
            if (scope.compilerOptions().reportUnavoidableGenericTypeProblems || receiver == null || !receiver.forcedToBeRaw(scope.referenceContext())) {
                scope.problemReporter().unsafeRawInvocation((ASTNode)((Object)invocationSite), method);
            }
        } else if (rawOriginalGenericMethod != null || uncheckedBoundCheck || (invocationStatus & 1) != 0 && method instanceof ParameterizedGenericMethodBinding) {
            scope.problemReporter().unsafeRawGenericMethodInvocation((ASTNode)((Object)invocationSite), method, argumentTypes);
            return true;
        }
        return false;
    }

    public ASTNode concreteStatement() {
        return this;
    }

    public final boolean isFieldUseDeprecated(FieldBinding field, Scope scope, int filteredBits) {
        AccessRestriction restriction;
        if ((this.bits & 0x8000) == 0 && (filteredBits & 0x2000) == 0 && field.isOrEnclosedByPrivateType() && !scope.isDefinedInField(field)) {
            if ((filteredBits & 0x10000) != 0) {
                ++field.original().compoundUseFlag;
            } else {
                field.original().modifiers |= 0x8000000;
            }
        }
        if ((field.modifiers & 0x40000) != 0 && (restriction = scope.environment().getAccessRestriction(field.declaringClass.erasure())) != null) {
            scope.problemReporter().forbiddenReference(field, this, restriction.classpathEntryType, restriction.classpathEntryName, restriction.getProblemId());
        }
        if (!field.isViewedAsDeprecated()) {
            return false;
        }
        if (scope.isDefinedInSameUnit(field.declaringClass)) {
            return false;
        }
        return scope.compilerOptions().reportDeprecationInsideDeprecatedCode || !scope.isInsideDeprecatedCode();
    }

    public boolean isImplicitThis() {
        return false;
    }

    public final boolean isMethodUseDeprecated(MethodBinding method, Scope scope, boolean isExplicitUse) {
        AccessRestriction restriction;
        if ((this.bits & 0x8000) == 0 && method.isOrEnclosedByPrivateType() && !scope.isDefinedInMethod(method)) {
            method.original().modifiers |= 0x8000000;
        }
        if (isExplicitUse && (method.modifiers & 0x40000) != 0 && (restriction = scope.environment().getAccessRestriction(method.declaringClass.erasure())) != null) {
            scope.problemReporter().forbiddenReference(method, this, restriction.classpathEntryType, restriction.classpathEntryName, restriction.getProblemId());
        }
        if (!method.isViewedAsDeprecated()) {
            return false;
        }
        if (scope.isDefinedInSameUnit(method.declaringClass)) {
            return false;
        }
        if (!isExplicitUse && (method.modifiers & 0x100000) == 0) {
            return false;
        }
        return scope.compilerOptions().reportDeprecationInsideDeprecatedCode || !scope.isInsideDeprecatedCode();
    }

    public boolean isSuper() {
        return false;
    }

    public boolean isThis() {
        return false;
    }

    public final boolean isTypeUseDeprecated(TypeBinding type, Scope scope) {
        AccessRestriction restriction;
        if (type.isArrayType()) {
            type = ((ArrayBinding)type).leafComponentType;
        }
        if (type.isBaseType()) {
            return false;
        }
        ReferenceBinding refType = (ReferenceBinding)type;
        if ((this.bits & 0x8000) == 0 && refType.isOrEnclosedByPrivateType() && !scope.isDefinedInType(refType)) {
            ((ReferenceBinding)refType.erasure()).modifiers |= 0x8000000;
        }
        if (refType.hasRestrictedAccess() && (restriction = scope.environment().getAccessRestriction(type.erasure())) != null) {
            scope.problemReporter().forbiddenReference(type, this, restriction.classpathEntryType, restriction.classpathEntryName, restriction.getProblemId());
        }
        refType.initializeDeprecatedAnnotationTagBits();
        if (!refType.isViewedAsDeprecated()) {
            return false;
        }
        if (scope.isDefinedInSameUnit(refType)) {
            return false;
        }
        return scope.compilerOptions().reportDeprecationInsideDeprecatedCode || !scope.isInsideDeprecatedCode();
    }

    public abstract StringBuffer print(int var1, StringBuffer var2);

    public static StringBuffer printAnnotations(Annotation[] annotations, StringBuffer output) {
        int length = annotations.length;
        int i = 0;
        while (i < length) {
            annotations[i].print(0, output);
            output.append(" ");
            ++i;
        }
        return output;
    }

    public static StringBuffer printIndent(int indent, StringBuffer output) {
        int i = indent;
        while (i > 0) {
            output.append("  ");
            --i;
        }
        return output;
    }

    public static StringBuffer printModifiers(int modifiers, StringBuffer output) {
        if ((modifiers & 1) != 0) {
            output.append("public ");
        }
        if ((modifiers & 2) != 0) {
            output.append("private ");
        }
        if ((modifiers & 4) != 0) {
            output.append("protected ");
        }
        if ((modifiers & 8) != 0) {
            output.append("static ");
        }
        if ((modifiers & 0x10) != 0) {
            output.append("final ");
        }
        if ((modifiers & 0x20) != 0) {
            output.append("synchronized ");
        }
        if ((modifiers & 0x40) != 0) {
            output.append("volatile ");
        }
        if ((modifiers & 0x80) != 0) {
            output.append("transient ");
        }
        if ((modifiers & 0x100) != 0) {
            output.append("native ");
        }
        if ((modifiers & 0x400) != 0) {
            output.append("abstract ");
        }
        return output;
    }

    public static void resolveAnnotations(BlockScope scope, Annotation[] sourceAnnotations, Binding recipient) {
        LocalVariableBinding local;
        FieldBinding field;
        int length;
        AnnotationBinding[] annotations = null;
        int n = length = sourceAnnotations == null ? 0 : sourceAnnotations.length;
        if (recipient != null) {
            switch (recipient.kind()) {
                case 16: {
                    PackageBinding packageBinding = (PackageBinding)recipient;
                    if ((packageBinding.tagBits & 0x200000000L) != 0L) {
                        return;
                    }
                    packageBinding.tagBits |= 0x600000000L;
                    break;
                }
                case 4: 
                case 2052: {
                    ReferenceBinding type = (ReferenceBinding)recipient;
                    if ((type.tagBits & 0x200000000L) != 0L) {
                        return;
                    }
                    type.tagBits |= 0x600000000L;
                    if (length <= 0) break;
                    annotations = new AnnotationBinding[length];
                    type.setAnnotations(annotations);
                    break;
                }
                case 8: {
                    MethodBinding method = (MethodBinding)recipient;
                    if ((method.tagBits & 0x200000000L) != 0L) {
                        return;
                    }
                    method.tagBits |= 0x600000000L;
                    if (length <= 0) break;
                    annotations = new AnnotationBinding[length];
                    method.setAnnotations(annotations);
                    break;
                }
                case 1: {
                    field = (FieldBinding)recipient;
                    if ((field.tagBits & 0x200000000L) != 0L) {
                        return;
                    }
                    field.tagBits |= 0x600000000L;
                    if (length <= 0) break;
                    annotations = new AnnotationBinding[length];
                    field.setAnnotations(annotations);
                    break;
                }
                case 2: {
                    local = (LocalVariableBinding)recipient;
                    if ((local.tagBits & 0x200000000L) != 0L) {
                        return;
                    }
                    local.tagBits |= 0x600000000L;
                    if (length <= 0) break;
                    annotations = new AnnotationBinding[length];
                    local.setAnnotations(annotations);
                    break;
                }
                default: {
                    return;
                }
            }
        }
        if (sourceAnnotations == null) {
            return;
        }
        int i = 0;
        while (i < length) {
            Annotation annotation = sourceAnnotations[i];
            Binding annotationRecipient = annotation.recipient;
            if (annotationRecipient != null && recipient != null) {
                switch (recipient.kind()) {
                    case 1: {
                        field = (FieldBinding)recipient;
                        field.tagBits = ((FieldBinding)annotationRecipient).tagBits;
                        if (annotations == null) break;
                        int j = 0;
                        while (j < length) {
                            Annotation annot = sourceAnnotations[j];
                            annotations[j] = annot.getCompilerAnnotation();
                            ++j;
                        }
                        break;
                    }
                    case 2: {
                        long otherLocalTagBits;
                        local = (LocalVariableBinding)recipient;
                        local.tagBits = otherLocalTagBits = ((LocalVariableBinding)annotationRecipient).tagBits;
                        if ((otherLocalTagBits & 0x4000000000000L) == 0L) {
                            if (annotations == null) break;
                            int j = 0;
                            while (j < length) {
                                Annotation annot = sourceAnnotations[j];
                                annotations[j] = annot.getCompilerAnnotation();
                                ++j;
                            }
                        } else {
                            if (annotations == null) break;
                            LocalDeclaration localDeclaration = local.declaration;
                            int declarationSourceEnd = localDeclaration.declarationSourceEnd;
                            int declarationSourceStart = localDeclaration.declarationSourceStart;
                            int j = 0;
                            while (j < length) {
                                ReferenceBinding annotationType;
                                AnnotationBinding annotationBinding;
                                Annotation annot = sourceAnnotations[j];
                                annotations[j] = annotationBinding = annot.getCompilerAnnotation();
                                if (annotationBinding != null && (annotationType = annotationBinding.getAnnotationType()) != null && annotationType.id == 49) {
                                    annot.recordSuppressWarnings(scope, declarationSourceStart, declarationSourceEnd, scope.compilerOptions().suppressWarnings);
                                }
                                ++j;
                            }
                        }
                        break;
                    }
                }
                return;
            }
            annotation.recipient = recipient;
            annotation.resolveType(scope);
            if (annotations != null) {
                annotations[i] = annotation.getCompilerAnnotation();
            }
            ++i;
        }
        if (annotations != null) {
            AnnotationBinding[] distinctAnnotations = annotations;
            int i2 = 0;
            while (i2 < length) {
                AnnotationBinding annotation = distinctAnnotations[i2];
                if (annotation != null) {
                    ReferenceBinding annotationType = annotation.getAnnotationType();
                    boolean foundDuplicate = false;
                    int j = i2 + 1;
                    while (j < length) {
                        AnnotationBinding otherAnnotation = distinctAnnotations[j];
                        if (otherAnnotation != null && otherAnnotation.getAnnotationType() == annotationType) {
                            foundDuplicate = true;
                            if (distinctAnnotations == annotations) {
                                AnnotationBinding[] annotationBindingArray = distinctAnnotations;
                                distinctAnnotations = new AnnotationBinding[length];
                                System.arraycopy(annotationBindingArray, 0, distinctAnnotations, 0, length);
                            }
                            distinctAnnotations[j] = null;
                            scope.problemReporter().duplicateAnnotation(sourceAnnotations[j]);
                        }
                        ++j;
                    }
                    if (foundDuplicate) {
                        scope.problemReporter().duplicateAnnotation(sourceAnnotations[i2]);
                    }
                }
                ++i2;
            }
        }
    }

    public static void resolveDeprecatedAnnotations(BlockScope scope, Annotation[] annotations, Binding recipient) {
        if (recipient != null) {
            int length;
            int kind = recipient.kind();
            if (annotations != null && (length = annotations.length) >= 0) {
                switch (kind) {
                    case 16: {
                        PackageBinding packageBinding = (PackageBinding)recipient;
                        if ((packageBinding.tagBits & 0x400000000L) == 0L) break;
                        return;
                    }
                    case 4: 
                    case 2052: {
                        ReferenceBinding type = (ReferenceBinding)recipient;
                        if ((type.tagBits & 0x400000000L) == 0L) break;
                        return;
                    }
                    case 8: {
                        MethodBinding method = (MethodBinding)recipient;
                        if ((method.tagBits & 0x400000000L) == 0L) break;
                        return;
                    }
                    case 1: {
                        FieldBinding field = (FieldBinding)recipient;
                        if ((field.tagBits & 0x400000000L) == 0L) break;
                        return;
                    }
                    case 2: {
                        LocalVariableBinding local = (LocalVariableBinding)recipient;
                        if ((local.tagBits & 0x400000000L) == 0L) break;
                        return;
                    }
                    default: {
                        return;
                    }
                }
                int i = 0;
                while (i < length) {
                    TypeReference annotationTypeRef = annotations[i].type;
                    if (!CharOperation.equals(TypeConstants.JAVA_LANG_DEPRECATED[2], annotationTypeRef.getLastToken())) {
                        return;
                    }
                    TypeBinding annotationType = annotations[i].type.resolveType(scope);
                    if (annotationType != null && annotationType.isValidBinding() && annotationType.id == 44) {
                        switch (kind) {
                            case 16: {
                                PackageBinding packageBinding = (PackageBinding)recipient;
                                packageBinding.tagBits |= 0x400400000000L;
                                return;
                            }
                            case 4: 
                            case 2052: 
                            case 4100: {
                                ReferenceBinding type = (ReferenceBinding)recipient;
                                type.tagBits |= 0x400400000000L;
                                return;
                            }
                            case 8: {
                                MethodBinding method = (MethodBinding)recipient;
                                method.tagBits |= 0x400400000000L;
                                return;
                            }
                            case 1: {
                                FieldBinding field = (FieldBinding)recipient;
                                field.tagBits |= 0x400400000000L;
                                return;
                            }
                            case 2: {
                                LocalVariableBinding local = (LocalVariableBinding)recipient;
                                local.tagBits |= 0x400400000000L;
                                return;
                            }
                        }
                        return;
                    }
                    ++i;
                }
            }
            switch (kind) {
                case 16: {
                    PackageBinding packageBinding = (PackageBinding)recipient;
                    packageBinding.tagBits |= 0x400000000L;
                    return;
                }
                case 4: 
                case 2052: 
                case 4100: {
                    ReferenceBinding type = (ReferenceBinding)recipient;
                    type.tagBits |= 0x400000000L;
                    return;
                }
                case 8: {
                    MethodBinding method = (MethodBinding)recipient;
                    method.tagBits |= 0x400000000L;
                    return;
                }
                case 1: {
                    FieldBinding field = (FieldBinding)recipient;
                    field.tagBits |= 0x400000000L;
                    return;
                }
                case 2: {
                    LocalVariableBinding local = (LocalVariableBinding)recipient;
                    local.tagBits |= 0x400000000L;
                    return;
                }
            }
            return;
        }
    }

    public int sourceStart() {
        return this.sourceStart;
    }

    public int sourceEnd() {
        return this.sourceEnd;
    }

    public String toString() {
        return this.print(0, new StringBuffer(30)).toString();
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
    }
}

