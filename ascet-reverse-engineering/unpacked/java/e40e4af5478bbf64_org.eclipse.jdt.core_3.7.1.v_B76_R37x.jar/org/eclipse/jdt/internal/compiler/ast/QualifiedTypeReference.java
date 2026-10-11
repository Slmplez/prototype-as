/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;

public class QualifiedTypeReference
extends TypeReference {
    public char[][] tokens;
    public long[] sourcePositions;

    public QualifiedTypeReference(char[][] sources, long[] poss) {
        this.tokens = sources;
        this.sourcePositions = poss;
        this.sourceStart = (int)(this.sourcePositions[0] >>> 32);
        this.sourceEnd = (int)(this.sourcePositions[this.sourcePositions.length - 1] & 0xFFFFFFFFL);
    }

    public TypeReference copyDims(int dim) {
        return new ArrayQualifiedTypeReference(this.tokens, dim, this.sourcePositions);
    }

    protected TypeBinding findNextTypeBinding(int tokenIndex, Scope scope, PackageBinding packageBinding) {
        LookupEnvironment env = scope.environment();
        try {
            env.missingClassFileLocation = this;
            if (this.resolvedType == null) {
                this.resolvedType = scope.getType(this.tokens[tokenIndex], packageBinding);
            } else {
                this.resolvedType = scope.getMemberType(this.tokens[tokenIndex], (ReferenceBinding)this.resolvedType);
                if (!this.resolvedType.isValidBinding()) {
                    this.resolvedType = new ProblemReferenceBinding(CharOperation.subarray(this.tokens, 0, tokenIndex + 1), (ReferenceBinding)this.resolvedType.closestMatch(), this.resolvedType.problemId());
                }
            }
            TypeBinding typeBinding = this.resolvedType;
            return typeBinding;
        }
        catch (AbortCompilation e) {
            e.updateContext(this, scope.referenceCompilationUnit().compilationResult);
            throw e;
        }
        finally {
            env.missingClassFileLocation = null;
        }
    }

    public char[] getLastToken() {
        return this.tokens[this.tokens.length - 1];
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        if (this.resolvedType != null) {
            return this.resolvedType;
        }
        Binding binding = scope.getPackage(this.tokens);
        if (binding != null && !binding.isValidBinding()) {
            if (binding instanceof ProblemReferenceBinding && binding.problemId() == 1) {
                ProblemReferenceBinding problemBinding = (ProblemReferenceBinding)binding;
                Binding pkg = scope.getTypeOrPackage(this.tokens);
                return new ProblemReferenceBinding(problemBinding.compoundName, pkg instanceof PackageBinding ? null : scope.environment().createMissingType(null, this.tokens), 1);
            }
            return (ReferenceBinding)binding;
        }
        PackageBinding packageBinding = binding == null ? null : (PackageBinding)binding;
        boolean isClassScope = scope.kind == 3;
        ReferenceBinding qualifiedType = null;
        int i = packageBinding == null ? 0 : packageBinding.compoundName.length;
        int max = this.tokens.length;
        int last = max - 1;
        while (i < max) {
            this.findNextTypeBinding(i, scope, packageBinding);
            if (!this.resolvedType.isValidBinding()) {
                return this.resolvedType;
            }
            if (i == 0 && this.resolvedType.isTypeVariable() && ((TypeVariableBinding)this.resolvedType).firstBound == null) {
                scope.problemReporter().illegalAccessFromTypeVariable((TypeVariableBinding)this.resolvedType, this);
                return null;
            }
            if (i <= last && this.isTypeUseDeprecated(this.resolvedType, scope)) {
                this.reportDeprecatedType(this.resolvedType, scope, i);
            }
            if (isClassScope && ((ClassScope)scope).detectHierarchyCycle(this.resolvedType, this)) {
                return null;
            }
            ReferenceBinding currentType = (ReferenceBinding)this.resolvedType;
            if (qualifiedType != null) {
                boolean rawQualified;
                ReferenceBinding enclosingType = currentType.enclosingType();
                if (enclosingType != null && enclosingType.erasure() != qualifiedType.erasure()) {
                    qualifiedType = enclosingType;
                }
                qualifiedType = currentType.isGenericType() ? scope.environment().createRawType(currentType, qualifiedType) : ((rawQualified = qualifiedType.isRawType()) && !currentType.isStatic() ? scope.environment().createRawType((ReferenceBinding)currentType.erasure(), qualifiedType) : ((rawQualified || qualifiedType.isParameterizedType()) && qualifiedType.erasure() == currentType.enclosingType().erasure() ? scope.environment().createParameterizedType((ReferenceBinding)currentType.erasure(), null, qualifiedType) : currentType));
            } else {
                qualifiedType = currentType.isGenericType() ? (ReferenceBinding)scope.environment().convertToRawType(currentType, false) : currentType;
            }
            ++i;
        }
        this.resolvedType = qualifiedType;
        return this.resolvedType;
    }

    public char[][] getTypeName() {
        return this.tokens;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        int i = 0;
        while (i < this.tokens.length) {
            if (i > 0) {
                output.append('.');
            }
            output.append(this.tokens[i]);
            ++i;
        }
        return output;
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        visitor.visit(this, scope);
        visitor.endVisit(this, scope);
    }

    public void traverse(ASTVisitor visitor, ClassScope scope) {
        visitor.visit(this, scope);
        visitor.endVisit(this, scope);
    }
}

