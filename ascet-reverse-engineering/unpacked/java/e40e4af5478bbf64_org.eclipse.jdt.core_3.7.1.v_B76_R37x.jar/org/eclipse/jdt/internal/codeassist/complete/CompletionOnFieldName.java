/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;

public class CompletionOnFieldName
extends FieldDeclaration {
    private static final char[] FAKENAMESUFFIX = " ".toCharArray();
    public char[] realName;

    public CompletionOnFieldName(char[] name, int sourceStart, int sourceEnd) {
        super(CharOperation.concat(name, FAKENAMESUFFIX), sourceStart, sourceEnd);
        this.realName = name;
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        CompletionOnFieldName.printIndent(tab, output).append("<CompleteOnFieldName:");
        if (this.type != null) {
            this.type.print(0, output).append(' ');
        }
        output.append(this.realName);
        if (this.initialization != null) {
            output.append(" = ");
            this.initialization.printExpression(0, output);
        }
        return output.append(">;");
    }

    public void resolve(MethodScope initializationScope) {
        super.resolve(initializationScope);
        throw new CompletionNodeFound(this, initializationScope);
    }
}

