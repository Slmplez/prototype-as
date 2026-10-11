/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMessageSendName
extends MessageSend {
    public CompletionOnMessageSendName(char[] selector, int start, int end) {
        this.selector = selector;
        this.sourceStart = start;
        this.sourceEnd = end;
        this.nameSourcePosition = end;
    }

    public TypeBinding resolveType(BlockScope scope) {
        if (this.receiver.isImplicitThis()) {
            throw new CompletionNodeFound();
        }
        this.actualReceiverType = this.receiver.resolveType(scope);
        if (this.actualReceiverType == null || this.actualReceiverType.isBaseType() || this.actualReceiverType.isArrayType()) {
            throw new CompletionNodeFound();
        }
        if (this.typeArguments != null) {
            int length = this.typeArguments.length;
            this.genericTypeArguments = new TypeBinding[length];
            int i = 0;
            while (i < length) {
                this.genericTypeArguments[i] = this.typeArguments[i].resolveType(scope, true);
                ++i;
            }
        }
        throw new CompletionNodeFound((ASTNode)this, this.actualReceiverType, scope);
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompleteOnMessageSendName:");
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
        return output.append(")>");
    }
}

