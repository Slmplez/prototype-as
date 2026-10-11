/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavadocAllocationExpression
extends AllocationExpression {
    public int tagSourceStart;
    public int tagSourceEnd;
    public int tagValue;
    public int memberStart;
    public char[][] qualification;

    public JavadocAllocationExpression(int start, int end) {
        this.sourceStart = start;
        this.sourceEnd = end;
        this.bits |= 0x8000;
    }

    public JavadocAllocationExpression(long pos) {
        this((int)(pos >>> 32), (int)pos);
    }

    TypeBinding internalResolveType(Scope scope) {
        int length;
        this.constant = Constant.NotAConstant;
        this.resolvedType = this.type == null ? scope.enclosingSourceType() : (scope.kind == 3 ? this.type.resolveType((ClassScope)scope) : this.type.resolveType((BlockScope)scope, true));
        TypeBinding[] argumentTypes = Binding.NO_PARAMETERS;
        boolean hasTypeVarArgs = false;
        if (this.arguments != null) {
            boolean argHasError = false;
            int length2 = this.arguments.length;
            argumentTypes = new TypeBinding[length2];
            int i = 0;
            while (i < length2) {
                Expression argument = this.arguments[i];
                argumentTypes[i] = scope.kind == 3 ? argument.resolveType((ClassScope)scope) : argument.resolveType((BlockScope)scope);
                if (argumentTypes[i] == null) {
                    argHasError = true;
                } else if (!hasTypeVarArgs) {
                    hasTypeVarArgs = argumentTypes[i].isTypeVariable();
                }
                ++i;
            }
            if (argHasError) {
                return null;
            }
        }
        if (this.resolvedType == null) {
            return null;
        }
        this.resolvedType = scope.environment().convertToRawType(this.type.resolvedType, true);
        SourceTypeBinding enclosingType = scope.enclosingSourceType();
        if (enclosingType != null && enclosingType.isCompatibleWith(this.resolvedType)) {
            this.bits |= 0x4000;
        }
        ReferenceBinding allocationType = (ReferenceBinding)this.resolvedType;
        this.binding = scope.getConstructor(allocationType, argumentTypes, this);
        if (!this.binding.isValidBinding()) {
            ReferenceBinding enclosingTypeBinding = allocationType;
            MethodBinding contructorBinding = this.binding;
            while (!contructorBinding.isValidBinding() && (enclosingTypeBinding.isMemberType() || enclosingTypeBinding.isLocalType())) {
                enclosingTypeBinding = enclosingTypeBinding.enclosingType();
                contructorBinding = scope.getConstructor(enclosingTypeBinding, argumentTypes, this);
            }
            if (contructorBinding.isValidBinding()) {
                this.binding = contructorBinding;
            }
        }
        if (!this.binding.isValidBinding()) {
            MethodBinding methodBinding = scope.getMethod(this.resolvedType, this.resolvedType.sourceName(), argumentTypes, this);
            if (methodBinding.isValidBinding()) {
                this.binding = methodBinding;
            } else {
                if (this.binding.declaringClass == null) {
                    this.binding.declaringClass = allocationType;
                }
                scope.problemReporter().javadocInvalidConstructor(this, this.binding, scope.getDeclarationModifiers());
            }
            return this.resolvedType;
        }
        if (this.binding.isVarargs()) {
            int length3 = argumentTypes.length;
            if (this.binding.parameters.length != length3 || !argumentTypes[length3 - 1].isArrayType()) {
                ProblemMethodBinding problem = new ProblemMethodBinding(this.binding, this.binding.selector, argumentTypes, 1);
                scope.problemReporter().javadocInvalidConstructor(this, problem, scope.getDeclarationModifiers());
            }
        } else if (hasTypeVarArgs) {
            ProblemMethodBinding problem = new ProblemMethodBinding(this.binding, this.binding.selector, argumentTypes, 1);
            scope.problemReporter().javadocInvalidConstructor(this, problem, scope.getDeclarationModifiers());
        } else if (this.binding instanceof ParameterizedMethodBinding) {
            ParameterizedMethodBinding paramMethodBinding = (ParameterizedMethodBinding)this.binding;
            if (paramMethodBinding.hasSubstitutedParameters()) {
                int length4 = argumentTypes.length;
                int i = 0;
                while (i < length4) {
                    if (paramMethodBinding.parameters[i] != argumentTypes[i] && paramMethodBinding.parameters[i].erasure() != argumentTypes[i].erasure()) {
                        ProblemMethodBinding problem = new ProblemMethodBinding(this.binding, this.binding.selector, argumentTypes, 1);
                        scope.problemReporter().javadocInvalidConstructor(this, problem, scope.getDeclarationModifiers());
                        break;
                    }
                    ++i;
                }
            }
        } else if (this.resolvedType.isMemberType() && (length = this.qualification.length) > 1) {
            ReferenceBinding enclosingTypeBinding = allocationType;
            if (this.type instanceof JavadocQualifiedTypeReference && ((JavadocQualifiedTypeReference)this.type).tokens.length != length) {
                scope.problemReporter().javadocInvalidMemberTypeQualification(this.memberStart + 1, this.sourceEnd, scope.getDeclarationModifiers());
            } else {
                int idx = length;
                while (idx > 0 && CharOperation.equals(this.qualification[--idx], enclosingTypeBinding.sourceName) && (enclosingTypeBinding = enclosingTypeBinding.enclosingType()) != null) {
                }
                if (idx > 0 || enclosingTypeBinding != null) {
                    scope.problemReporter().javadocInvalidMemberTypeQualification(this.memberStart + 1, this.sourceEnd, scope.getDeclarationModifiers());
                }
            }
        }
        if (this.isMethodUseDeprecated(this.binding, scope, true)) {
            scope.problemReporter().javadocDeprecatedMethod(this.binding, this, scope.getDeclarationModifiers());
        }
        return allocationType;
    }

    public boolean isSuperAccess() {
        return (this.bits & 0x4000) != 0;
    }

    public TypeBinding resolveType(BlockScope scope) {
        return this.internalResolveType(scope);
    }

    public TypeBinding resolveType(ClassScope scope) {
        return this.internalResolveType(scope);
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

    public void traverse(ASTVisitor visitor, ClassScope scope) {
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
}

