/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMessageSend
extends MessageSend {
    public TypeBinding resolveType(BlockScope scope) {
        if (this.arguments != null) {
            int argsLength;
            int a = argsLength = this.arguments.length;
            while (--a >= 0) {
                this.arguments[a].resolveType(scope);
            }
        }
        if (this.receiver.isImplicitThis()) {
            throw new CompletionNodeFound((ASTNode)this, null, scope);
        }
        this.actualReceiverType = this.receiver.resolveType(scope);
        if (this.actualReceiverType == null || this.actualReceiverType.isBaseType()) {
            throw new CompletionNodeFound();
        }
        if (this.actualReceiverType.isArrayType()) {
            this.actualReceiverType = scope.getJavaLangObject();
        }
        throw new CompletionNodeFound((ASTNode)this, this.actualReceiverType, scope);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompleteOnMessageSend:");
        if (!this.receiver.isImplicitThis()) {
            this.receiver.printExpression(0, output).append('.');
        }
        if (this.typeArguments != null) {
            output.append('<');
            int max = this.typeArguments.length - 1;
            int j = 0;
            while (j < max) {
                this.typeArguments[j].print(0, output);
                output.append(", ");
                ++j;
            }
            this.typeArguments[max].print(0, output);
            output.append('>');
        }
        output.append(this.selector).append('(');
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
        return output.append(")>");
    }
}

