/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class ParameterizedSingleTypeReference
extends ArrayTypeReference {
    public TypeReference[] typeArguments;

    public ParameterizedSingleTypeReference(char[] name, TypeReference[] typeArguments, int dim, long pos) {
        super(name, dim, pos);
        this.originalSourceEnd = this.sourceEnd;
        this.typeArguments = typeArguments;
    }

    public void checkBounds(Scope scope) {
        if (this.resolvedType == null) {
            return;
        }
        if (this.resolvedType.leafComponentType() instanceof ParameterizedTypeBinding) {
            ParameterizedTypeBinding parameterizedType = (ParameterizedTypeBinding)this.resolvedType.leafComponentType();
            ReferenceBinding currentType = parameterizedType.genericType();
            TypeVariableBinding[] typeVariables = currentType.typeVariables();
            TypeBinding[] argTypes = parameterizedType.arguments;
            if (argTypes != null && typeVariables != null) {
                parameterizedType.boundCheck(scope, this.typeArguments);
            }
        }
    }

    public TypeReference copyDims(int dim) {
        return new ParameterizedSingleTypeReference(this.token, this.typeArguments, dim, ((long)this.sourceStart << 32) + (long)this.sourceEnd);
    }

    public char[][] getParameterizedTypeName() {
        StringBuffer buffer = new StringBuffer(5);
        buffer.append(this.token).append('<');
        int i = 0;
        int length = this.typeArguments.length;
        while (i < length) {
            if (i > 0) {
                buffer.append(',');
            }
            buffer.append(CharOperation.concatWith(this.typeArguments[i].getParameterizedTypeName(), '.'));
            ++i;
        }
        buffer.append('>');
        int nameLength = buffer.length();
        char[] name = new char[nameLength];
        buffer.getChars(0, nameLength, name, 0);
        int dim = this.dimensions;
        if (dim > 0) {
            char[] dimChars = new char[dim * 2];
            int i2 = 0;
            while (i2 < dim) {
                int index = i2 * 2;
                dimChars[index] = 91;
                dimChars[index + 1] = 93;
                ++i2;
            }
            name = CharOperation.concat(name, dimChars);
        }
        return new char[][]{name};
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        return null;
    }

    private TypeBinding internalResolveType(Scope scope, ReferenceBinding enclosingType, boolean checkBounds) {
        this.constant = Constant.NotAConstant;
        if ((this.bits & 0x40000) != 0 && this.resolvedType != null) {
            if (this.resolvedType.isValidBinding()) {
                return this.resolvedType;
            }
            switch (this.resolvedType.problemId()) {
                case 1: 
                case 2: 
                case 5: {
                    TypeBinding type = this.resolvedType.closestMatch();
                    return type;
                }
            }
            return null;
        }
        this.bits |= 0x40000;
        TypeBinding type = this.internalResolveLeafType(scope, enclosingType, checkBounds);
        if (type == null) {
            this.resolvedType = this.createArrayType(scope, this.resolvedType);
            return null;
        }
        type = this.createArrayType(scope, type);
        if (!this.resolvedType.isValidBinding()) {
            return type;
        }
        this.resolvedType = type;
        return this.resolvedType;
    }

    private TypeBinding internalResolveLeafType(Scope scope, ReferenceBinding enclosingType, boolean checkBounds) {
        ReferenceBinding actualEnclosing;
        ReferenceBinding currentType;
        if (enclosingType == null) {
            this.resolvedType = scope.getType(this.token);
            if (this.resolvedType.isValidBinding()) {
                currentType = (ReferenceBinding)this.resolvedType;
            } else {
                this.reportInvalidType(scope);
                switch (this.resolvedType.problemId()) {
                    case 1: 
                    case 2: 
                    case 5: {
                        TypeBinding type = this.resolvedType.closestMatch();
                        if (type instanceof ReferenceBinding) {
                            currentType = (ReferenceBinding)type;
                            break;
                        }
                    }
                    default: {
                        boolean isClassScope = scope.kind == 3;
                        int argLength = this.typeArguments.length;
                        int i = 0;
                        while (i < argLength) {
                            TypeReference typeArgument = this.typeArguments[i];
                            if (isClassScope) {
                                typeArgument.resolveType((ClassScope)scope);
                            } else {
                                typeArgument.resolveType((BlockScope)scope, checkBounds);
                            }
                            ++i;
                        }
                        return null;
                    }
                }
            }
            enclosingType = currentType.enclosingType();
            if (enclosingType != null) {
                enclosingType = currentType.isStatic() ? (ReferenceBinding)scope.environment().convertToRawType(enclosingType, false) : scope.environment().convertToParameterizedType(enclosingType);
                currentType = scope.environment().createParameterizedType((ReferenceBinding)currentType.erasure(), null, enclosingType);
            }
        } else {
            ReferenceBinding currentEnclosing;
            currentType = scope.getMemberType(this.token, enclosingType);
            this.resolvedType = currentType;
            if (!this.resolvedType.isValidBinding()) {
                scope.problemReporter().invalidEnclosingType(this, currentType, enclosingType);
                return null;
            }
            if (this.isTypeUseDeprecated(currentType, scope)) {
                scope.problemReporter().deprecatedType(currentType, this);
            }
            if ((currentEnclosing = currentType.enclosingType()) != null && currentEnclosing.erasure() != enclosingType.erasure()) {
                enclosingType = currentEnclosing;
            }
        }
        boolean isClassScope = scope.kind == 3;
        TypeReference keep = null;
        if (isClassScope) {
            keep = ((ClassScope)scope).superTypeReference;
            ((ClassScope)scope).superTypeReference = null;
        }
        int argLength = this.typeArguments.length;
        TypeBinding[] argTypes = new TypeBinding[argLength];
        boolean argHasError = false;
        ReferenceBinding currentOriginal = (ReferenceBinding)currentType.original();
        int i = 0;
        while (i < argLength) {
            TypeBinding argType;
            TypeReference typeArgument = this.typeArguments[i];
            TypeBinding typeBinding = argType = isClassScope ? typeArgument.resolveTypeArgument((ClassScope)scope, currentOriginal, i) : typeArgument.resolveTypeArgument((BlockScope)scope, currentOriginal, i);
            if (argType == null) {
                argHasError = true;
            } else {
                argTypes[i] = argType;
            }
            ++i;
        }
        if (argHasError) {
            return null;
        }
        if (isClassScope) {
            ((ClassScope)scope).superTypeReference = keep;
            if (((ClassScope)scope).detectHierarchyCycle(currentOriginal, this)) {
                return null;
            }
        }
        boolean isDiamond = (this.bits & 0x80000) != 0;
        TypeVariableBinding[] typeVariables = currentOriginal.typeVariables();
        if (typeVariables == Binding.NO_TYPE_VARIABLES) {
            boolean isCompliant15;
            boolean bl = isCompliant15 = scope.compilerOptions().originalSourceLevel >= 0x310000L;
            if ((currentOriginal.tagBits & 0x80L) == 0L && isCompliant15) {
                this.resolvedType = currentType;
                scope.problemReporter().nonGenericTypeCannotBeParameterized(0, this, currentType, argTypes);
                return null;
            }
            if (!isCompliant15) {
                if (!this.resolvedType.isValidBinding()) {
                    return currentType;
                }
                this.resolvedType = currentType;
                return this.resolvedType;
            }
        } else if (argLength != typeVariables.length) {
            if (!isDiamond) {
                scope.problemReporter().incorrectArityForParameterizedType(this, currentType, argTypes);
                return null;
            }
        } else if (!currentType.isStatic() && (actualEnclosing = currentType.enclosingType()) != null && actualEnclosing.isRawType()) {
            scope.problemReporter().rawMemberTypeCannotBeParameterized(this, scope.environment().createRawType(currentOriginal, actualEnclosing), argTypes);
            return null;
        }
        ParameterizedTypeBinding parameterizedType = scope.environment().createParameterizedType(currentOriginal, argTypes, enclosingType);
        if (!isDiamond) {
            if (checkBounds) {
                parameterizedType.boundCheck(scope, this.typeArguments);
            } else {
                scope.deferBoundCheck(this);
            }
        }
        if (this.isTypeUseDeprecated(parameterizedType, scope)) {
            this.reportDeprecatedType(parameterizedType, scope);
        }
        if (!this.resolvedType.isValidBinding()) {
            return parameterizedType;
        }
        this.resolvedType = parameterizedType;
        return this.resolvedType;
    }

    private TypeBinding createArrayType(Scope scope, TypeBinding type) {
        if (this.dimensions > 0) {
            if (this.dimensions > 255) {
                scope.problemReporter().tooManyDimensions(this);
            }
            return scope.createArrayType(type, this.dimensions);
        }
        return type;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        int i;
        output.append(this.token);
        output.append("<");
        int length = this.typeArguments.length;
        if (length > 0) {
            int max = length - 1;
            int i2 = 0;
            while (i2 < max) {
                this.typeArguments[i2].print(0, output);
                output.append(", ");
                ++i2;
            }
            this.typeArguments[max].print(0, output);
        }
        output.append(">");
        if ((this.bits & 0x4000) != 0) {
            i = 0;
            while (i < this.dimensions - 1) {
                output.append("[]");
                ++i;
            }
            output.append("...");
        } else {
            i = 0;
            while (i < this.dimensions) {
                output.append("[]");
                ++i;
            }
        }
        return output;
    }

    public TypeBinding resolveType(BlockScope scope, boolean checkBounds) {
        return this.internalResolveType(scope, null, checkBounds);
    }

    public TypeBinding resolveType(ClassScope scope) {
        return this.internalResolveType(scope, null, false);
    }

    public TypeBinding resolveTypeEnclosing(BlockScope scope, ReferenceBinding enclosingType) {
        return this.internalResolveType(scope, enclosingType, true);
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            int i = 0;
            int max = this.typeArguments.length;
            while (i < max) {
                this.typeArguments[i].traverse(visitor, scope);
                ++i;
            }
        }
        visitor.endVisit(this, scope);
    }

    public void traverse(ASTVisitor visitor, ClassScope scope) {
        if (visitor.visit(this, scope)) {
            int i = 0;
            int max = this.typeArguments.length;
            while (i < max) {
                this.typeArguments[i].traverse(visitor, scope);
                ++i;
            }
        }
        visitor.endVisit(this, scope);
    }
}

