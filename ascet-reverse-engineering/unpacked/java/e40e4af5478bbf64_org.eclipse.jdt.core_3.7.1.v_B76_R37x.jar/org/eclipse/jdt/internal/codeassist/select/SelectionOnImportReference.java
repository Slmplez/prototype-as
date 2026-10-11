/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class SelectionOnImportReference
extends ImportReference {
    public SelectionOnImportReference(char[][] tokens, long[] positions, int modifiers) {
        super(tokens, positions, false, modifiers);
    }

    public StringBuffer print(int indent, StringBuffer output, boolean withOnDemand) {
        SelectionOnImportReference.printIndent(indent, output).append("<SelectOnImport:");
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

