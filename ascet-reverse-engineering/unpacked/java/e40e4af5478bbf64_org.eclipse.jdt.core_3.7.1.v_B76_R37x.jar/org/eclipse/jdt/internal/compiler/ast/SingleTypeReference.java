/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SingleTypeReference
extends TypeReference {
    public char[] token;

    public SingleTypeReference(char[] source, long pos) {
        this.token = source;
        this.sourceStart = (int)(pos >>> 32);
        this.sourceEnd = (int)(pos & 0xFFFFFFFFL);
    }

    public TypeReference copyDims(int dim) {
        return new ArrayTypeReference(this.token, dim, ((long)this.sourceStart << 32) + (long)this.sourceEnd);
    }

    public char[] getLastToken() {
        return this.token;
    }

    protected TypeBinding getTypeBinding(Scope scope) {
        if (this.resolvedType != null) {
            return this.resolvedType;
        }
        this.resolvedType = scope.getType(this.token);
        if (scope.kind == 3 && this.resolvedType.isValidBinding() && ((ClassScope)scope).detectHierarchyCycle(this.resolvedType, this)) {
            return null;
        }
        return this.resolvedType;
    }

    public char[][] getTypeName() {
        return new char[][]{this.token};
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        return output.append(this.token);
    }

    public TypeBinding resolveTypeEnclosing(BlockScope scope, ReferenceBinding enclosingType) {
        TypeBinding memberType = this.resolvedType = scope.getMemberType(this.token, enclosingType);
        boolean hasError = false;
        if (!memberType.isValidBinding()) {
            hasError = true;
            scope.problemReporter().invalidEnclosingType(this, memberType, enclosingType);
            memberType = memberType.closestMatch();
            if (memberType == null) {
                return null;
            }
        }
        if (this.isTypeUseDeprecated(memberType, scope)) {
            this.reportDeprecatedType(memberType, scope);
        }
        if ((memberType = scope.environment().convertToRawType(memberType, false)).isRawType() && (this.bits & 0x40000000) == 0 && scope.compilerOptions().getSeverity(0x20010000) != 256) {
            scope.problemReporter().rawTypeReference(this, memberType);
        }
        if (hasError) {
            return memberType;
        }
        this.resolvedType = memberType;
        return this.resolvedType;
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

