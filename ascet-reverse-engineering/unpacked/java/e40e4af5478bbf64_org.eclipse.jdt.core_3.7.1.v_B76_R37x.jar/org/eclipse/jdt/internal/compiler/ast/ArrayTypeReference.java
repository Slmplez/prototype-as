/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ArrayTypeReference
extends SingleTypeReference {
    public int dimensions;
    public int originalSourceEnd;

    public ArrayTypeReference(char[] source, int dimensions, long pos) {
        super(source, pos);
        this.originalSourceEnd = this.sourceEnd;
        this.dimensions = dimensions;
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
        return new char[][]{CharOperation.concat(this.token, dimChars)};
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        if (this.resolvedType != null) {
            return this.resolvedType;
        }
        if (this.dimensions > 255) {
            scope.problemReporter().tooManyDimensions(this);
        }
        TypeBinding leafComponentType = scope.getType(this.token);
        return scope.createArrayType(leafComponentType, this.dimensions);
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

