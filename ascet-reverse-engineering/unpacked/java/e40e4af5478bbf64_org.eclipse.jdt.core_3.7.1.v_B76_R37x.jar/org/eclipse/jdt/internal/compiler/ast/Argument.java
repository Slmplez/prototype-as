/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CatchParameterBinding;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class Argument
extends LocalDeclaration {
    private static final char[] SET = "set".toCharArray();

    public Argument(char[] name, long posNom, TypeReference tr, int modifiers) {
        super(name, (int)(posNom >>> 32), (int)posNom);
        this.declarationSourceEnd = (int)posNom;
        this.modifiers = modifiers;
        this.type = tr;
        this.bits |= 0x40000004;
    }

    public void bind(MethodScope scope, TypeBinding typeBinding, boolean used) {
        MethodBinding methodBinding;
        AbstractMethodDeclaration methodDecl;
        Binding existingVariable = scope.getBinding(this.name, 3, (InvocationSite)this, false);
        if (existingVariable != null && existingVariable.isValidBinding()) {
            if (existingVariable instanceof LocalVariableBinding && this.hiddenVariableDepth == 0) {
                scope.problemReporter().redefineArgument(this);
            } else {
                boolean isSpecialArgument = false;
                if (existingVariable instanceof FieldBinding) {
                    if (scope.isInsideConstructor()) {
                        isSpecialArgument = true;
                    } else {
                        AbstractMethodDeclaration methodDecl2 = scope.referenceMethod();
                        if (methodDecl2 != null && CharOperation.prefixEquals(SET, methodDecl2.selector)) {
                            isSpecialArgument = true;
                        }
                    }
                }
                scope.problemReporter().localVariableHiding(this, existingVariable, isSpecialArgument);
            }
        }
        if (this.binding == null) {
            this.binding = new LocalVariableBinding(this, typeBinding, this.modifiers, true);
        } else if (!this.binding.type.isValidBinding() && (methodDecl = scope.referenceMethod()) != null && (methodBinding = methodDecl.binding) != null) {
            methodBinding.tagBits |= 0x200L;
        }
        scope.addLocalVariable(this.binding);
        Argument.resolveAnnotations(scope, this.annotations, this.binding);
        this.binding.declaration = this;
        this.binding.useFlag = used ? 1 : 0;
    }

    public int getKind() {
        return (this.bits & 4) != 0 ? 5 : 4;
    }

    public boolean isVarArgs() {
        return this.type != null && (this.type.bits & 0x4000) != 0;
    }

    public StringBuffer print(int indent, StringBuffer output) {
        Argument.printIndent(indent, output);
        Argument.printModifiers(this.modifiers, output);
        if (this.annotations != null) {
            Argument.printAnnotations(this.annotations, output);
        }
        if (this.type == null) {
            output.append("<no type> ");
        } else {
            this.type.print(0, output).append(' ');
        }
        return output.append(this.name);
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        return this.print(indent, output).append(';');
    }

    public TypeBinding resolveForCatch(BlockScope scope) {
        boolean hasError;
        TypeBinding exceptionType = this.type.resolveType(scope, true);
        if (exceptionType == null) {
            hasError = true;
        } else {
            hasError = false;
            switch (exceptionType.kind()) {
                case 260: {
                    if (!exceptionType.isBoundParameterizedType()) break;
                    hasError = true;
                    scope.problemReporter().invalidParameterizedExceptionType(exceptionType, this);
                    break;
                }
                case 4100: {
                    scope.problemReporter().invalidTypeVariableAsException(exceptionType, this);
                    hasError = true;
                }
            }
            if (exceptionType.findSuperTypeOriginatingFrom(21, true) == null && exceptionType.isValidBinding()) {
                scope.problemReporter().cannotThrowType(this.type, exceptionType);
                hasError = true;
            }
        }
        Binding existingVariable = scope.getBinding(this.name, 3, (InvocationSite)this, false);
        if (existingVariable != null && existingVariable.isValidBinding()) {
            if (existingVariable instanceof LocalVariableBinding && this.hiddenVariableDepth == 0) {
                scope.problemReporter().redefineArgument(this);
            } else {
                scope.problemReporter().localVariableHiding(this, existingVariable, false);
            }
        }
        if ((this.type.bits & 0x20000000) != 0) {
            this.binding = new CatchParameterBinding(this, exceptionType, this.modifiers | 0x10, false);
            this.binding.tagBits |= 0x1000L;
        } else {
            this.binding = new CatchParameterBinding(this, exceptionType, this.modifiers, false);
        }
        Argument.resolveAnnotations(scope, this.annotations, this.binding);
        scope.addLocalVariable(this.binding);
        this.binding.setConstant(Constant.NotAConstant);
        if (hasError) {
            return null;
        }
        return exceptionType;
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
            if (this.type != null) {
                this.type.traverse(visitor, scope);
            }
        }
        visitor.endVisit(this, scope);
    }

    public void traverse(ASTVisitor visitor, ClassScope scope) {
        if (visitor.visit(this, scope)) {
            if (this.annotations != null) {
                int annotationsLength = this.annotations.length;
                int i = 0;
                while (i < annotationsLength) {
                    this.annotations[i].traverse(visitor, scope);
                    ++i;
                }
            }
            if (this.type != null) {
                this.type.traverse(visitor, scope);
            }
        }
        visitor.endVisit(this, scope);
    }
}

