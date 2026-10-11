/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class ParameterizedQualifiedTypeReference
extends ArrayQualifiedTypeReference {
    public TypeReference[][] typeArguments;

    public ParameterizedQualifiedTypeReference(char[][] tokens, TypeReference[][] typeArguments, int dim, long[] positions) {
        super(tokens, dim, positions);
        this.typeArguments = typeArguments;
    }

    public void checkBounds(Scope scope) {
        if (this.resolvedType == null) {
            return;
        }
        this.checkBounds((ReferenceBinding)this.resolvedType.leafComponentType(), scope, this.typeArguments.length - 1);
    }

    public void checkBounds(ReferenceBinding type, Scope scope, int index) {
        ParameterizedTypeBinding parameterizedType;
        ReferenceBinding currentType;
        TypeVariableBinding[] typeVariables;
        if (index > 0 && type.enclosingType() != null) {
            this.checkBounds(type.enclosingType(), scope, index - 1);
        }
        if (type.isParameterizedTypeWithActualArguments() && (typeVariables = (currentType = (parameterizedType = (ParameterizedTypeBinding)type).genericType()).typeVariables()) != null) {
            parameterizedType.boundCheck(scope, this.typeArguments[index]);
        }
    }

    public TypeReference copyDims(int dim) {
        return new ParameterizedQualifiedTypeReference(this.tokens, this.typeArguments, dim, this.sourcePositions);
    }

    public char[][] getParameterizedTypeName() {
        int length = this.tokens.length;
        char[][] qParamName = new char[length][];
        int i = 0;
        while (i < length) {
            TypeReference[] arguments = this.typeArguments[i];
            if (arguments == null) {
                qParamName[i] = this.tokens[i];
            } else {
                StringBuffer buffer = new StringBuffer(5);
                buffer.append(this.tokens[i]);
                buffer.append('<');
                int j = 0;
                int argLength = arguments.length;
                while (j < argLength) {
                    if (j > 0) {
                        buffer.append(',');
                    }
                    buffer.append(CharOperation.concatWith(arguments[j].getParameterizedTypeName(), '.'));
                    ++j;
                }
                buffer.append('>');
                int nameLength = buffer.length();
                qParamName[i] = new char[nameLength];
                buffer.getChars(0, nameLength, qParamName[i], 0);
            }
            ++i;
        }
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
            qParamName[length - 1] = CharOperation.concat(qParamName[length - 1], dimChars);
        }
        return qParamName;
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        return null;
    }

    private TypeBinding internalResolveType(Scope scope, boolean checkBounds) {
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
        TypeBinding type = this.internalResolveLeafType(scope, checkBounds);
        this.createArrayType(scope);
        return type == null ? type : this.resolvedType;
    }

    private TypeBinding internalResolveLeafType(Scope scope, boolean checkBounds) {
        boolean isClassScope = scope.kind == 3;
        Binding binding = scope.getPackage(this.tokens);
        if (binding != null && !binding.isValidBinding()) {
            this.resolvedType = (ReferenceBinding)binding;
            this.reportInvalidType(scope);
            int i = 0;
            int max = this.tokens.length;
            while (i < max) {
                TypeReference[] args = this.typeArguments[i];
                if (args != null) {
                    int argLength = args.length;
                    int j = 0;
                    while (j < argLength) {
                        TypeReference typeArgument = args[j];
                        if (isClassScope) {
                            typeArgument.resolveType((ClassScope)scope);
                        } else {
                            typeArgument.resolveType((BlockScope)scope, checkBounds);
                        }
                        ++j;
                    }
                }
                ++i;
            }
            return null;
        }
        PackageBinding packageBinding = binding == null ? null : (PackageBinding)binding;
        boolean typeIsConsistent = true;
        ReferenceBinding qualifyingType = null;
        int i = packageBinding == null ? 0 : packageBinding.compoundName.length;
        int max = this.tokens.length;
        while (i < max) {
            TypeReference[] args;
            this.findNextTypeBinding(i, scope, packageBinding);
            if (!this.resolvedType.isValidBinding()) {
                this.reportInvalidType(scope);
                int j = i;
                while (j < max) {
                    args = this.typeArguments[j];
                    if (args != null) {
                        int argLength = args.length;
                        int k = 0;
                        while (k < argLength) {
                            TypeReference typeArgument = args[k];
                            if (isClassScope) {
                                typeArgument.resolveType((ClassScope)scope);
                            } else {
                                typeArgument.resolveType((BlockScope)scope);
                            }
                            ++k;
                        }
                    }
                    ++j;
                }
                return null;
            }
            ReferenceBinding currentType = (ReferenceBinding)this.resolvedType;
            if (qualifyingType == null) {
                qualifyingType = currentType.enclosingType();
                if (qualifyingType != null) {
                    qualifyingType = currentType.isStatic() ? (ReferenceBinding)scope.environment().convertToRawType(qualifyingType, false) : scope.environment().convertToParameterizedType(qualifyingType);
                }
            } else {
                ReferenceBinding enclosingType;
                if (typeIsConsistent && currentType.isStatic() && (qualifyingType.isParameterizedTypeWithActualArguments() || qualifyingType.isGenericType())) {
                    scope.problemReporter().staticMemberOfParameterizedType(this, scope.environment().createParameterizedType((ReferenceBinding)currentType.erasure(), null, qualifyingType), i);
                    typeIsConsistent = false;
                }
                if ((enclosingType = currentType.enclosingType()) != null && enclosingType.erasure() != qualifyingType.erasure()) {
                    qualifyingType = enclosingType;
                }
            }
            if ((args = this.typeArguments[i]) != null) {
                ReferenceBinding actualEnclosing;
                TypeVariableBinding[] typeVariables;
                int argLength;
                TypeReference keep = null;
                if (isClassScope) {
                    keep = ((ClassScope)scope).superTypeReference;
                    ((ClassScope)scope).superTypeReference = null;
                }
                boolean isDiamond = (argLength = args.length) == 0 && i == max - 1 && (this.bits & 0x80000) != 0;
                TypeBinding[] argTypes = new TypeBinding[argLength];
                boolean argHasError = false;
                ReferenceBinding currentOriginal = (ReferenceBinding)currentType.original();
                int j = 0;
                while (j < argLength) {
                    TypeBinding argType;
                    TypeReference arg = args[j];
                    TypeBinding typeBinding = argType = isClassScope ? arg.resolveTypeArgument((ClassScope)scope, currentOriginal, j) : arg.resolveTypeArgument((BlockScope)scope, currentOriginal, j);
                    if (argType == null) {
                        argHasError = true;
                    } else {
                        argTypes[j] = argType;
                    }
                    ++j;
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
                if ((typeVariables = currentOriginal.typeVariables()) == Binding.NO_TYPE_VARIABLES) {
                    if (scope.compilerOptions().originalSourceLevel >= 0x310000L) {
                        scope.problemReporter().nonGenericTypeCannotBeParameterized(i, this, currentType, argTypes);
                        return null;
                    }
                    this.resolvedType = qualifyingType != null && qualifyingType.isParameterizedType() ? scope.environment().createParameterizedType(currentOriginal, null, qualifyingType) : currentType;
                    return this.resolvedType;
                }
                if (argLength != typeVariables.length && !isDiamond) {
                    scope.problemReporter().incorrectArityForParameterizedType(this, currentType, argTypes, i);
                    return null;
                }
                if (typeIsConsistent && !currentType.isStatic() && (actualEnclosing = currentType.enclosingType()) != null && actualEnclosing.isRawType()) {
                    scope.problemReporter().rawMemberTypeCannotBeParameterized(this, scope.environment().createRawType(currentOriginal, actualEnclosing), argTypes);
                    typeIsConsistent = false;
                }
                ParameterizedTypeBinding parameterizedType = scope.environment().createParameterizedType(currentOriginal, argTypes, qualifyingType);
                if (!isDiamond) {
                    if (checkBounds) {
                        parameterizedType.boundCheck(scope, args);
                    } else {
                        scope.deferBoundCheck(this);
                    }
                }
                qualifyingType = parameterizedType;
            } else {
                ReferenceBinding currentOriginal = (ReferenceBinding)currentType.original();
                if (isClassScope && ((ClassScope)scope).detectHierarchyCycle(currentOriginal, this)) {
                    return null;
                }
                if (currentOriginal.isGenericType()) {
                    if (typeIsConsistent && qualifyingType != null && qualifyingType.isParameterizedType()) {
                        scope.problemReporter().parameterizedMemberTypeMissingArguments(this, scope.environment().createParameterizedType(currentOriginal, null, qualifyingType), i);
                        typeIsConsistent = false;
                    }
                    qualifyingType = scope.environment().createRawType(currentOriginal, qualifyingType);
                } else {
                    ReferenceBinding referenceBinding = qualifyingType = qualifyingType != null && qualifyingType.isParameterizedType() ? scope.environment().createParameterizedType(currentOriginal, null, qualifyingType) : currentType;
                }
            }
            if (this.isTypeUseDeprecated(qualifyingType, scope)) {
                this.reportDeprecatedType(qualifyingType, scope, i);
            }
            this.resolvedType = qualifyingType;
            ++i;
        }
        return this.resolvedType;
    }

    private void createArrayType(Scope scope) {
        if (this.dimensions > 0) {
            if (this.dimensions > 255) {
                scope.problemReporter().tooManyDimensions(this);
            }
            this.resolvedType = scope.createArrayType(this.resolvedType, this.dimensions);
        }
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        int length = this.tokens.length;
        int i = 0;
        while (i < length - 1) {
            output.append(this.tokens[i]);
            TypeReference[] typeArgument = this.typeArguments[i];
            if (typeArgument != null) {
                output.append('<');
                int typeArgumentLength = typeArgument.length;
                if (typeArgumentLength > 0) {
                    int max = typeArgumentLength - 1;
                    int j = 0;
                    while (j < max) {
                        typeArgument[j].print(0, output);
                        output.append(", ");
                        ++j;
                    }
                    typeArgument[max].print(0, output);
                }
                output.append('>');
            }
            output.append('.');
            ++i;
        }
        output.append(this.tokens[length - 1]);
        TypeReference[] typeArgument = this.typeArguments[length - 1];
        if (typeArgument != null) {
            output.append('<');
            int typeArgumentLength = typeArgument.length;
            if (typeArgumentLength > 0) {
                int max = typeArgumentLength - 1;
                int j = 0;
                while (j < max) {
                    typeArgument[j].print(0, output);
                    output.append(", ");
                    ++j;
                }
                typeArgument[max].print(0, output);
            }
            output.append('>');
        }
        if ((this.bits & 0x4000) != 0) {
            int i2 = 0;
            while (i2 < this.dimensions - 1) {
                output.append("[]");
                ++i2;
            }
            output.append("...");
        } else {
            int i3 = 0;
            while (i3 < this.dimensions) {
                output.append("[]");
                ++i3;
            }
        }
        return output;
    }

    public TypeBinding resolveType(BlockScope scope, boolean checkBounds) {
        return this.internalResolveType(scope, checkBounds);
    }

    public TypeBinding resolveType(ClassScope scope) {
        return this.internalResolveType(scope, false);
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        if (visitor.visit(this, scope)) {
            int i = 0;
            int max = this.typeArguments.length;
            while (i < max) {
                if (this.typeArguments[i] != null) {
                    int j = 0;
                    int max2 = this.typeArguments[i].length;
                    while (j < max2) {
                        this.typeArguments[i][j].traverse(visitor, scope);
                        ++j;
                    }
                }
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
                if (this.typeArguments[i] != null) {
                    int j = 0;
                    int max2 = this.typeArguments[i].length;
                    while (j < max2) {
                        this.typeArguments[i][j].traverse(visitor, scope);
                        ++j;
                    }
                }
                ++i;
            }
        }
        visitor.endVisit(this, scope);
    }
}

