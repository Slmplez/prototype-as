/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class CompletionOnArgumentName
extends Argument {
    private static final char[] FAKENAMESUFFIX = " ".toCharArray();
    public char[] realName;
    public boolean isCatchArgument = false;

    public CompletionOnArgumentName(char[] name, long posNom, TypeReference tr, int modifiers) {
        super(CharOperation.concat(name, FAKENAMESUFFIX), posNom, tr, modifiers);
        this.realName = name;
    }

    public void bind(MethodScope scope, TypeBinding typeBinding, boolean used) {
        super.bind(scope, typeBinding, used);
        throw new CompletionNodeFound(this, scope);
    }

    public StringBuffer print(int indent, StringBuffer output) {
        CompletionOnArgumentName.printIndent(indent, output);
        output.append("<CompleteOnArgumentName:");
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

    public void resolve(BlockScope scope) {
        super.resolve(scope);
        throw new CompletionNodeFound(this, scope);
    }
}

