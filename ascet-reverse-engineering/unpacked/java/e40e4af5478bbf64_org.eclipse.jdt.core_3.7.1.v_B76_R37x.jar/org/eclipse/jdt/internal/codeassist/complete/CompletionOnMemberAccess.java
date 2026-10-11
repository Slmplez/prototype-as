/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnMemberAccess
extends FieldReference {
    public boolean isInsideAnnotation;

    public CompletionOnMemberAccess(char[] source, long pos, boolean isInsideAnnotation) {
        super(source, pos);
        this.isInsideAnnotation = isInsideAnnotation;
    }

    public StringBuffer printExpression(int indent, StringBuffer output) {
        output.append("<CompleteOnMemberAccess:");
        return super.printExpression(0, output).append('>');
    }

    public TypeBinding resolveType(BlockScope scope) {
        this.actualReceiverType = this.receiver.resolveType(scope);
        if ((this.actualReceiverType == null || !this.actualReceiverType.isValidBinding()) && this.receiver instanceof MessageSend) {
            MessageSend messageSend = (MessageSend)this.receiver;
            if (messageSend.receiver instanceof ThisReference) {
                Expression[] arguments = messageSend.arguments;
                int length = arguments == null ? 0 : arguments.length;
                TypeBinding[] argBindings = new TypeBinding[length];
                int i = 0;
                while (i < length) {
                    argBindings[i] = arguments[i].resolvedType;
                    if (argBindings[i] == null || !argBindings[i].isValidBinding()) {
                        throw new CompletionNodeFound();
                    }
                    ++i;
                }
                ProblemMethodBinding problemMethodBinding = new ProblemMethodBinding(messageSend.selector, argBindings, 1);
                throw new CompletionNodeFound((ASTNode)this, problemMethodBinding, scope);
            }
        }
        if (this.actualReceiverType == null || this.actualReceiverType.isBaseType() || !this.actualReceiverType.isValidBinding()) {
            throw new CompletionNodeFound();
        }
        throw new CompletionNodeFound((ASTNode)this, this.actualReceiverType, scope);
    }
}

