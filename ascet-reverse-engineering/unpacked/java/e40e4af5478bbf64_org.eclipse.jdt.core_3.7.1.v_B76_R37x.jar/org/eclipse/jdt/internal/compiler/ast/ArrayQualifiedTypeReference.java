/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;

public class ArrayQualifiedTypeReference
extends QualifiedTypeReference {
    int dimensions;

    public ArrayQualifiedTypeReference(char[][] sources, int dim, long[] poss) {
        super(sources, poss);
        this.dimensions = dim;
    }

    public int dimensions() {
        return this.dimensions;
    }

    public char[][] getParameterizedTypeName() {
        int dim = this.dimensions;
        char[] dimChars = new char[dim * 2];
        int i = 0;
        while (i < dim) {
            int index = i * 2;
            dimChars[index] = 91;
            dimChars[index + 1] = 93;
            ++i;
        }
        int length = this.tokens.length;
        char[][] qParamName = new char[length][];
        System.arraycopy(this.tokens, 0, qParamName, 0, length - 1);
        qParamName[length - 1] = CharOperation.concat(this.tokens[length - 1], dimChars);
        return qParamName;
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        if (this.resolvedType != null) {
            return this.resolvedType;
        }
        if (this.dimensions > 255) {
            scope.problemReporter().tooManyDimensions(this);
        }
        LookupEnvironment env = scope.environment();
        try {
            env.missingClassFileLocation = this;
            TypeBinding leafComponentType = super.getTypeBinding(scope);
            if (leafComponentType != null) {
                this.resolvedType = scope.createArrayType(leafComponentType, this.dimensions);
                ArrayBinding arrayBinding = this.resolvedType;
                return arrayBinding;
            }
            return null;
        }
        catch (AbortCompilation e) {
            e.updateContext(this, scope.referenceCompilationUnit().compilationResult);
            throw e;
        }
        finally {
            env.missingClassFileLocation = null;
        }
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        super.printExpression(indent, output);
        if ((this.bits & 0x4000) != 0) {
            int i = 0;
            while (i < this.dimensions - 1) {
                output.append("[]");
                ++i;
            }
            output.append("...");
        } else {
            int i = 0;
            while (i < this.dimensions) {
                output.append("[]");
                ++i;
            }
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

