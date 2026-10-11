/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class CompletionOnLocalName
extends LocalDeclaration {
    private static final char[] FAKENAMESUFFIX = " ".toCharArray();
    public char[] realName;

    public CompletionOnLocalName(char[] name, int sourceStart, int sourceEnd) {
        super(CharOperation.concat(name, FAKENAMESUFFIX), sourceStart, sourceEnd);
        this.realName = name;
    }

    public void resolve(BlockScope scope) {
        super.resolve(scope);
        throw new CompletionNodeFound(this, scope);
    }

    public StringBuffer printAsExpression(int indent, StringBuffer output) {
        CompletionOnLocalName.printIndent(indent, output);
        output.append("<CompleteOnLocalName:");
        if (this.type != null) {
            this.type.print(0, output).append(' ');
        }
        output.append(this.realName);
        if (this.initialization != null) {
            output.append(" = ");
            this.initialization.printExpression(0, output);
        }
        return output.append('>');
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        this.printAsExpression(indent, output);
        return output.append(';');
    }
}

