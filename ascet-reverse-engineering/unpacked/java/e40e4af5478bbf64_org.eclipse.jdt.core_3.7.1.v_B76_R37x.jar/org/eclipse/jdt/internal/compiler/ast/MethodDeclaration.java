/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.InitializationFlowContext;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MemberTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;

public class MethodDeclaration
extends AbstractMethodDeclaration {
    public TypeReference returnType;
    public TypeParameter[] typeParameters;

    public MethodDeclaration(CompilationResult compilationResult) {
        super(compilationResult);
    }

    public void analyseCode(ClassScope classScope, InitializationFlowContext initializationContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return;
        }
        try {
            if (this.binding == null) {
                return;
            }
            if (!this.binding.isUsed() && !this.binding.isAbstract() && (this.binding.isPrivate() || (this.binding.modifiers & 0x30000000) == 0 && this.binding.isOrEnclosedByPrivateType()) && !classScope.referenceCompilationUnit().compilationResult.hasSyntaxError) {
                this.scope.problemReporter().unusedPrivateMethod(this);
            }
            if (this.binding.declaringClass.isEnum() && (this.selector == TypeConstants.VALUES || this.selector == TypeConstants.VALUEOF)) {
                return;
            }
            if (this.binding.isAbstract() || this.binding.isNative()) {
                return;
            }
            ExceptionHandlingFlowContext methodContext = new ExceptionHandlingFlowContext(initializationContext, this, this.binding.thrownExceptions, null, this.scope, FlowInfo.DEAD_END);
            if (this.arguments != null) {
                int i = 0;
                int count = this.arguments.length;
                while (i < count) {
                    flowInfo.markAsDefinitelyAssigned(this.arguments[i].binding);
                    if (this.arguments[i].binding != null && this.arguments[i].binding.type instanceof TypeVariableBinding) {
                        Binding declaringElement = ((TypeVariableBinding)this.arguments[i].binding.type).declaringElement;
                        if (this.binding != null && this.binding.declaringClass == declaringElement) {
                            this.bits &= 0xFFFFFEFF;
                        }
                    }
                    ++i;
                }
            }
            if (this.binding.declaringClass instanceof MemberTypeBinding && !this.binding.declaringClass.isStatic()) {
                this.bits &= 0xFFFFFEFF;
            }
            if (this.statements != null) {
                int complaintLevel = (flowInfo.reachMode() & 3) == 0 ? 0 : 1;
                int i = 0;
                int count = this.statements.length;
                while (i < count) {
                    Statement stat = this.statements[i];
                    if ((complaintLevel = stat.complainIfUnreachable(flowInfo, this.scope, complaintLevel)) < 2) {
                        flowInfo = stat.analyseCode(this.scope, methodContext, flowInfo);
                    }
                    ++i;
                }
            } else {
                this.bits &= 0xFFFFFEFF;
            }
            TypeBinding returnTypeBinding = this.binding.returnType;
            if (returnTypeBinding == TypeBinding.VOID || this.isAbstract()) {
                if ((flowInfo.tagBits & 1) == 0) {
                    this.bits |= 0x40;
                }
            } else if (flowInfo != FlowInfo.DEAD_END) {
                this.scope.problemReporter().shouldReturn(returnTypeBinding, this);
            }
            methodContext.complainIfUnusedExceptionHandlers(this);
            this.scope.checkUnusedParameters(this.binding);
            if (!(this.binding.isStatic() || (this.bits & 0x100) == 0 || this.binding.isOverriding() || this.binding.isImplementing())) {
                if (this.binding.isPrivate() || this.binding.isFinal() || this.binding.declaringClass.isFinal()) {
                    this.scope.problemReporter().methodCanBeDeclaredStatic(this);
                } else {
                    this.scope.problemReporter().methodCanBePotentiallyDeclaredStatic(this);
                }
            }
        }
        catch (AbortMethod abortMethod) {
            this.ignoreFurtherInvestigation = true;
        }
    }

    public boolean isMethod() {
        return true;
    }

    public void parseStatements(Parser parser, CompilationUnitDeclaration unit) {
        parser.parse(this, unit);
    }

    public StringBuffer printReturnType(int indent, StringBuffer output) {
        if (this.returnType == null) {
            return output;
        }
        return this.returnType.printExpression(0, output).append(' ');
    }

    public void resolveStatements() {
        int bindingModifiers;
        long complianceLevel;
        if (this.returnType != null && this.binding != null) {
            this.returnType.resolvedType = this.binding.returnType;
        }
        if (CharOperation.equals(this.scope.enclosingSourceType().sourceName, this.selector)) {
            this.scope.problemReporter().methodWithConstructorName(this);
        }
        boolean returnsUndeclTypeVar = false;
        if (this.returnType != null && this.returnType.resolvedType instanceof TypeVariableBinding) {
            returnsUndeclTypeVar = true;
        }
        if (this.typeParameters != null) {
            int i = 0;
            int length = this.typeParameters.length;
            while (i < length) {
                this.typeParameters[i].resolve(this.scope);
                if (returnsUndeclTypeVar && this.typeParameters[i].binding == this.returnType.resolvedType) {
                    returnsUndeclTypeVar = false;
                }
                ++i;
            }
        }
        CompilerOptions compilerOptions = this.scope.compilerOptions();
        if (this.binding != null && (complianceLevel = compilerOptions.complianceLevel) >= 0x310000L) {
            boolean hasUnresolvedArguments;
            int bindingModifiers2 = this.binding.modifiers;
            boolean hasOverrideAnnotation = (this.binding.tagBits & 0x2000000000000L) != 0L;
            boolean bl = hasUnresolvedArguments = (this.binding.tagBits & 0x200L) != 0L;
            if (hasOverrideAnnotation && !hasUnresolvedArguments) {
                if ((bindingModifiers2 & 0x10000008) != 0x10000000 && (complianceLevel < 0x320000L || (bindingModifiers2 & 0x20000008) != 0x20000000)) {
                    this.scope.problemReporter().methodMustOverride(this, complianceLevel);
                }
            } else if (!this.binding.declaringClass.isInterface()) {
                if ((bindingModifiers2 & 0x10000008) == 0x10000000) {
                    this.scope.problemReporter().missingOverrideAnnotation(this);
                } else if (complianceLevel >= 0x320000L && compilerOptions.reportMissingOverrideAnnotationForInterfaceMethodImplementation && this.binding.isImplementing()) {
                    this.scope.problemReporter().missingOverrideAnnotationForInterfaceMethodImplementation(this);
                }
            } else if (complianceLevel >= 0x320000L && compilerOptions.reportMissingOverrideAnnotationForInterfaceMethodImplementation && ((bindingModifiers2 & 0x10000008) == 0x10000000 || this.binding.isImplementing())) {
                this.scope.problemReporter().missingOverrideAnnotationForInterfaceMethodImplementation(this);
            }
        }
        switch (TypeDeclaration.kind(this.scope.referenceType().modifiers)) {
            case 3: {
                if (this.selector == TypeConstants.VALUES || this.selector == TypeConstants.VALUEOF) break;
            }
            case 1: {
                if ((this.modifiers & 0x1000000) != 0) {
                    if ((this.modifiers & 0x100) != 0 || (this.modifiers & 0x400) != 0) break;
                    this.scope.problemReporter().methodNeedBody(this);
                    break;
                }
                if ((this.modifiers & 0x100) != 0 || (this.modifiers & 0x400) != 0) {
                    this.scope.problemReporter().methodNeedingNoBody(this);
                    break;
                }
                if (this.binding == null || this.binding.isStatic() || this.binding.declaringClass instanceof LocalTypeBinding || returnsUndeclTypeVar) break;
                this.bits |= 0x100;
            }
        }
        super.resolveStatements();
        if (compilerOptions.getSeverity(0x20100000) != 256 && this.binding != null && ((bindingModifiers = this.binding.modifiers) & 0x30000000) == 0x10000000 && (this.bits & 0x10) == 0) {
            this.scope.problemReporter().overridesMethodWithoutSuperInvocation(this.binding);
        }
    }

    public void traverse(ASTVisitor visitor, ClassScope classScope) {
        if (visitor.visit(this, classScope)) {
            int i;
            if (this.javadoc != null) {
                this.javadoc.traverse(visitor, this.scope);
            }
            if (this.annotations != null) {
                int annotationsLength = this.annotations.length;
                i = 0;
                while (i < annotationsLength) {
                    this.annotations[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.typeParameters != null) {
                int typeParametersLength = this.typeParameters.length;
                i = 0;
                while (i < typeParametersLength) {
                    this.typeParameters[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.returnType != null) {
                this.returnType.traverse(visitor, this.scope);
            }
            if (this.arguments != null) {
                int argumentLength = this.arguments.length;
                i = 0;
                while (i < argumentLength) {
                    this.arguments[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.thrownExceptions != null) {
                int thrownExceptionsLength = this.thrownExceptions.length;
                i = 0;
                while (i < thrownExceptionsLength) {
                    this.thrownExceptions[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
            if (this.statements != null) {
                int statementsLength = this.statements.length;
                i = 0;
                while (i < statementsLength) {
                    this.statements[i].traverse(visitor, this.scope);
                    ++i;
                }
            }
        }
        visitor.endVisit(this, classScope);
    }

    public TypeParameter[] typeParameters() {
        return this.typeParameters;
    }
}

