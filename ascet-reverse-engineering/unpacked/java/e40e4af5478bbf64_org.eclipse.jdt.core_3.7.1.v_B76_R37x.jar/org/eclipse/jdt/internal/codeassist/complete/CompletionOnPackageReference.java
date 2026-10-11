/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class CompletionOnPackageReference
extends ImportReference {
    public CompletionOnPackageReference(char[][] tokens, long[] positions) {
        super(tokens, positions, false, 0);
    }

    public StringBuffer print(int indent, StringBuffer output, boolean withOnDemand) {
        CompletionOnPackageReference.printIndent(indent, output).append("<CompleteOnPackage:");
        int i = 0;
        while (i < this.tokens.length) {
            if (i > 0) {
                output.append('.');
            }
            output.append(this.tokens[i]);
            ++i;
        }
        return output.append('>');
    }
}

