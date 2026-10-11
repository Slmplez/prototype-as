/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;

public class CompletionOnMethodName
extends MethodDeclaration {
    public int selectorEnd;

    public CompletionOnMethodName(CompilationResult compilationResult) {
        super(compilationResult);
    }

    public StringBuffer print(int indent, StringBuffer output) {
        int i;
        CompletionOnMethodName.printIndent(indent, output);
        output.append("<CompletionOnMethodName:");
        CompletionOnMethodName.printModifiers(this.modifiers, output);
        this.printReturnType(0, output);
        output.append(this.selector).append('(');
        if (this.arguments != null) {
            i = 0;
            while (i < this.arguments.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.arguments[i].print(0, output);
                ++i;
            }
        }
        output.append(')');
        if (this.thrownExceptions != null) {
            output.append(" throws ");
            i = 0;
            while (i < this.thrownExceptions.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.thrownExceptions[i].print(0, output);
                ++i;
            }
        }
        return output.append('>');
    }

    public void resolve(ClassScope upperScope) {
        super.resolve(upperScope);
        throw new CompletionNodeFound(this, upperScope);
    }
}

