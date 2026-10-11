/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnQualifiedAllocationExpression
extends QualifiedAllocationExpression {
    public SelectionOnQualifiedAllocationExpression() {
    }

    public SelectionOnQualifiedAllocationExpression(TypeDeclaration anonymous) {
        super(anonymous);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        if (this.enclosingInstance == null) {
            output.append("<SelectOnAllocationExpression:");
        } else {
            output.append("<SelectOnQualifiedAllocationExpression:");
        }
        return super.printExpression(indent, output).append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        super.resolveType(scope);
        if (this.binding == null) {
            throw new SelectionNodeFound();
        }
        if (!this.binding.isValidBinding()) {
            switch (this.binding.problemId()) {
                case 2: {
                    break;
                }
                case 1: {
                    if (this.resolvedType != null && this.resolvedType.isValidBinding()) {
                        throw new SelectionNodeFound(this.resolvedType);
                    }
                    throw new SelectionNodeFound();
                }
                default: {
                    throw new SelectionNodeFound();
                }
            }
        }
        if (this.anonymousType == null) {
            throw new SelectionNodeFound(this.binding);
        }
        if (this.anonymousType.binding != null) {
            LocalTypeBinding localType = (LocalTypeBinding)this.anonymousType.binding;
            if (localType.superInterfaces == Binding.NO_SUPERINTERFACES) {
                ConstructorDeclaration constructor = (ConstructorDeclaration)this.anonymousType.declarationOf(this.binding.original());
                if (constructor != null) {
                    throw new SelectionNodeFound(constructor.constructorCall.binding);
                }
                throw new SelectionNodeFound(this.binding);
            }
            throw new SelectionNodeFound(localType.superInterfaces[0]);
        }
        if (this.resolvedType.isInterface()) {
            throw new SelectionNodeFound(this.resolvedType);
        }
        throw new SelectionNodeFound(this.binding);
    }
}

