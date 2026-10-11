/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public abstract class TypeReference
extends Expression {
    public static final TypeReference[] NO_TYPE_ARGUMENTS = new TypeReference[0];

    public static final TypeReference baseTypeReference(int baseType, int dim) {
        if (dim == 0) {
            switch (baseType) {
                case 6: {
                    return new SingleTypeReference(TypeBinding.VOID.simpleName, 0L);
                }
                case 5: {
                    return new SingleTypeReference(TypeBinding.BOOLEAN.simpleName, 0L);
                }
                case 2: {
                    return new SingleTypeReference(TypeBinding.CHAR.simpleName, 0L);
                }
                case 9: {
                    return new SingleTypeReference(TypeBinding.FLOAT.simpleName, 0L);
                }
                case 8: {
                    return new SingleTypeReference(TypeBinding.DOUBLE.simpleName, 0L);
                }
                case 3: {
                    return new SingleTypeReference(TypeBinding.BYTE.simpleName, 0L);
                }
                case 4: {
                    return new SingleTypeReference(TypeBinding.SHORT.simpleName, 0L);
                }
                case 10: {
                    return new SingleTypeReference(TypeBinding.INT.simpleName, 0L);
                }
            }
            return new SingleTypeReference(TypeBinding.LONG.simpleName, 0L);
        }
        switch (baseType) {
            case 6: {
                return new ArrayTypeReference(TypeBinding.VOID.simpleName, dim, 0L);
            }
            case 5: {
                return new ArrayTypeReference(TypeBinding.BOOLEAN.simpleName, dim, 0L);
            }
            case 2: {
                return new ArrayTypeReference(TypeBinding.CHAR.simpleName, dim, 0L);
            }
            case 9: {
                return new ArrayTypeReference(TypeBinding.FLOAT.simpleName, dim, 0L);
            }
            case 8: {
                return new ArrayTypeReference(TypeBinding.DOUBLE.simpleName, dim, 0L);
            }
            case 3: {
                return new ArrayTypeReference(TypeBinding.BYTE.simpleName, dim, 0L);
            }
            case 4: {
                return new ArrayTypeReference(TypeBinding.SHORT.simpleName, dim, 0L);
            }
            case 10: {
                return new ArrayTypeReference(TypeBinding.INT.simpleName, dim, 0L);
            }
        }
        return new ArrayTypeReference(TypeBinding.LONG.simpleName, dim, 0L);
    }

    public void aboutToResolve(Scope scope) {
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public void checkBounds(Scope scope) {
    }

    public abstract TypeReference copyDims(int var1);

    public int dimensions() {
        return 0;
    }

    public abstract char[] getLastToken();

    public char[][] getParameterizedTypeName() {
        return this.getTypeName();
    }

    protected abstract TypeBinding getTypeBinding(Scope var1);

    public abstract char[][] getTypeName();

    protected TypeBinding internalResolveType(Scope scope) {
        this.constant = Constant.NotAConstant;
        if (this.resolvedType != null) {
            if (this.resolvedType.isValidBinding()) {
                return this.resolvedType;
            }
            switch (this.resolvedType.problemId()) {
                case 1: 
                case 2: 
                case 5: {
                    TypeBinding type = this.resolvedType.closestMatch();
                    if (type == null) {
                        return null;
                    }
                    return scope.environment().convertToRawType(type, false);
                }
            }
            return null;
        }
        this.resolvedType = this.getTypeBinding(scope);
        TypeBinding type = this.resolvedType;
        if (type == null) {
            return null;
        }
        boolean hasError = !type.isValidBinding();
        if (hasError) {
            this.reportInvalidType(scope);
            switch (type.problemId()) {
                case 1: 
                case 2: 
                case 5: {
                    type = type.closestMatch();
                    if (type != null) break;
                    return null;
                }
                default: {
                    return null;
                }
            }
        }
        if (type.isArrayType() && ((ArrayBinding)type).leafComponentType == TypeBinding.VOID) {
            scope.problemReporter().cannotAllocateVoidArray(this);
            return null;
        }
        if (!(this instanceof QualifiedTypeReference) && this.isTypeUseDeprecated(type, scope)) {
            this.reportDeprecatedType(type, scope);
        }
        if ((type = scope.environment().convertToRawType(type, false)).leafComponentType().isRawType() && (this.bits & 0x40000000) == 0 && scope.compilerOptions().getSeverity(0x20010000) != 256) {
            scope.problemReporter().rawTypeReference(this, type);
        }
        if (hasError) {
            return type;
        }
        this.resolvedType = type;
        return this.resolvedType;
    }

    public boolean isTypeReference() {
        return true;
    }

    protected void reportDeprecatedType(TypeBinding type, Scope scope, int index) {
        scope.problemReporter().deprecatedType(type, this, index);
    }

    protected void reportDeprecatedType(TypeBinding type, Scope scope) {
        scope.problemReporter().deprecatedType(type, this, Integer.MAX_VALUE);
    }

    protected void reportInvalidType(Scope scope) {
        scope.problemReporter().invalidType(this, this.resolvedType);
    }

    public TypeBinding resolveSuperType(ClassScope scope) {
        TypeBinding superType = this.resolveType(scope);
        if (superType == null) {
            return null;
        }
        if (superType.isTypeVariable()) {
            if (this.resolvedType.isValidBinding()) {
                this.resolvedType = new ProblemReferenceBinding(this.getTypeName(), (ReferenceBinding)this.resolvedType, 9);
                this.reportInvalidType(scope);
            }
            return null;
        }
        return superType;
    }

    public final TypeBinding resolveType(BlockScope blockScope) {
        return this.resolveType(blockScope, true);
    }

    public TypeBinding resolveType(BlockScope scope, boolean checkBounds) {
        return this.internalResolveType(scope);
    }

    public TypeBinding resolveType(ClassScope scope) {
        return this.internalResolveType(scope);
    }

    public TypeBinding resolveTypeArgument(BlockScope blockScope, ReferenceBinding genericType, int rank) {
        return this.resolveType(blockScope, true);
    }

    public TypeBinding resolveTypeArgument(ClassScope classScope, ReferenceBinding genericType, int rank) {
        SourceTypeBinding ref = classScope.referenceContext.binding;
        boolean pauseHierarchyCheck = false;
        try {
            if (ref.isHierarchyBeingConnected()) {
                ref.tagBits |= 0x80000L;
                pauseHierarchyCheck = true;
            }
            TypeBinding typeBinding = this.resolveType(classScope);
            return typeBinding;
        }
        finally {
            if (pauseHierarchyCheck) {
                ref.tagBits &= 0xFFFFFFFFFFF7FFFFL;
            }
        }
    }

    public abstract void traverse(ASTVisitor var1, BlockScope var2);

    public abstract void traverse(ASTVisitor var1, ClassScope var2);
}

