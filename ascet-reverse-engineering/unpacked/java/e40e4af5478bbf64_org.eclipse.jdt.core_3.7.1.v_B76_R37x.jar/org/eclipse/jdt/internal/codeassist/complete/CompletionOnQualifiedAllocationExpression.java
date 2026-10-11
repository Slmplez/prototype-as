/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnQualifiedAllocationExpression
extends QualifiedAllocationExpression {
    public TypeBinding resolveType(BlockScope scope) {
        boolean isDiamond;
        TypeBinding[] argumentTypes = Binding.NO_PARAMETERS;
        if (this.arguments != null) {
            int argsLength = this.arguments.length;
            int length = this.arguments.length;
            argumentTypes = new TypeBinding[length];
            int a = argsLength;
            while (--a >= 0) {
                argumentTypes[a] = this.arguments[a].resolveType(scope);
            }
        }
        boolean bl = isDiamond = this.type != null && (this.type.bits & 0x80000) != 0;
        if (this.enclosingInstance != null) {
            TypeReference enclosingInstanceType;
            TypeBinding enclosingType = this.enclosingInstance.resolveType(scope);
            if (enclosingType == null && this.enclosingInstance instanceof AllocationExpression && (enclosingInstanceType = ((AllocationExpression)this.enclosingInstance).type) != null) {
                enclosingType = enclosingInstanceType.resolvedType;
            }
            if (enclosingType == null || !(enclosingType instanceof ReferenceBinding)) {
                throw new CompletionNodeFound();
            }
            this.resolvedType = ((SingleTypeReference)this.type).resolveTypeEnclosing(scope, (ReferenceBinding)enclosingType);
            if (isDiamond && this.resolvedType instanceof ParameterizedTypeBinding) {
                TypeBinding[] inferredTypes = this.inferElidedTypes(((ParameterizedTypeBinding)this.resolvedType).genericType(), null, argumentTypes, scope);
                if (inferredTypes != null) {
                    this.resolvedType = this.type.resolvedType = scope.environment().createParameterizedType(((ParameterizedTypeBinding)this.resolvedType).genericType(), inferredTypes, ((ParameterizedTypeBinding)this.resolvedType).enclosingType());
                } else {
                    this.bits |= 0x80000;
                }
            }
            if (!(this.resolvedType instanceof ReferenceBinding)) {
                throw new CompletionNodeFound();
            }
            if (this.resolvedType.isInterface()) {
                this.resolvedType = scope.getJavaLangObject();
            }
        } else {
            this.resolvedType = this.type.resolveType(scope, true);
            if (isDiamond && this.resolvedType instanceof ParameterizedTypeBinding) {
                TypeBinding[] inferredTypes = this.inferElidedTypes(((ParameterizedTypeBinding)this.resolvedType).genericType(), null, argumentTypes, scope);
                if (inferredTypes != null) {
                    this.resolvedType = this.type.resolvedType = scope.environment().createParameterizedType(((ParameterizedTypeBinding)this.resolvedType).genericType(), inferredTypes, ((ParameterizedTypeBinding)this.resolvedType).enclosingType());
                } else {
                    this.bits |= 0x80000;
                }
            }
            if (!(this.resolvedType instanceof ReferenceBinding)) {
                throw new CompletionNodeFound();
            }
        }
        throw new CompletionNodeFound((ASTNode)this, this.resolvedType, scope);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        if (this.enclosingInstance == null) {
            output.append("<CompleteOnAllocationExpression:");
        } else {
            output.append("<CompleteOnQualifiedAllocationExpression:");
        }
        return super.printExpression(indent, output).append('>');
    }
}

