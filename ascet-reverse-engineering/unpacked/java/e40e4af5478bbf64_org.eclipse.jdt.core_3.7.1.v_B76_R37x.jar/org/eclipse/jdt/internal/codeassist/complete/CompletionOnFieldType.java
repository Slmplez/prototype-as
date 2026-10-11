/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class CompletionOnFieldType
extends FieldDeclaration {
    public boolean isLocalVariable;

    public CompletionOnFieldType(TypeReference type, boolean isLocalVariable) {
        this.sourceStart = type.sourceStart;
        this.sourceEnd = type.sourceEnd;
        this.type = type;
        this.name = CharOperation.NO_CHAR;
        this.isLocalVariable = isLocalVariable;
        if (type instanceof CompletionOnSingleTypeReference) {
            ((CompletionOnSingleTypeReference)type).fieldTypeCompletionNode = this;
        }
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        return this.type.print(tab, output).append(';');
    }
}

