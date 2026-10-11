/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;

public class CompletionOnExplicitConstructorCall
extends ExplicitConstructorCall {
    public CompletionOnExplicitConstructorCall(int accessMode) {
        super(accessMode);
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        CompletionOnExplicitConstructorCall.printIndent(tab, output);
        output.append("<CompleteOnExplicitConstructorCall:");
        if (this.qualification != null) {
            this.qualification.printExpression(0, output).append('.');
        }
        if (this.accessMode == 3) {
            output.append("this(");
        } else {
            output.append("super(");
        }
        if (this.arguments != null) {
            int i = 0;
            while (i < this.arguments.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.arguments[i].printExpression(0, output);
                ++i;
            }
        }
        return output.append(")>;");
    }

    public void resolve(BlockScope scope) {
        ReferenceBinding receiverType = scope.enclosingSourceType();
        if (this.arguments != null) {
            int argsLength;
            int a = argsLength = this.arguments.length;
            while (--a >= 0) {
                this.arguments[a].resolveType(scope);
            }
        }
        if (this.accessMode != 3 && receiverType != null) {
            if (receiverType.isHierarchyInconsistent()) {
                throw new CompletionNodeFound();
            }
            receiverType = ((ReferenceBinding)receiverType).superclass();
        }
        if (receiverType == null) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound((ASTNode)this, receiverType, scope);
    }
}

