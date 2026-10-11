/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.compiler.ast.ImportReference;

public class SelectionOnPackageReference
extends ImportReference {
    public SelectionOnPackageReference(char[][] tokens, long[] positions) {
        super(tokens, positions, false, 0);
    }

    public StringBuffer print(int tab, StringBuffer output, boolean withOnDemand) {
        SelectionOnPackageReference.printIndent(tab, output).append("<SelectOnPackage:");
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

