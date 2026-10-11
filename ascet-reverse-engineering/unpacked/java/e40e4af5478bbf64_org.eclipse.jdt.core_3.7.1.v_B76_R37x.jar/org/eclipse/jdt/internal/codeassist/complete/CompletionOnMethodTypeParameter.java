/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;

public class CompletionOnMethodTypeParameter
extends MethodDeclaration {
    public CompletionOnMethodTypeParameter(TypeParameter[] typeParameters, CompilationResult compilationResult) {
        super(compilationResult);
        this.selector = CharOperation.NO_CHAR;
        this.typeParameters = typeParameters;
        this.sourceStart = typeParameters[0].sourceStart;
        this.sourceEnd = typeParameters[typeParameters.length - 1].sourceEnd;
    }

    public void resolveStatements() {
        throw new CompletionNodeFound(this, this.scope);
    }

    public StringBuffer print(int tab, StringBuffer output) {
        CompletionOnMethodTypeParameter.printIndent(tab, output);
        output.append('<');
        int max = this.typeParameters.length - 1;
        int j = 0;
        while (j < max) {
            this.typeParameters[j].print(0, output);
            output.append(", ");
            ++j;
        }
        this.typeParameters[max].print(0, output);
        output.append('>');
        return output;
    }
}

