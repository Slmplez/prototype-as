/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;

public class SelectionOnFieldType
extends FieldDeclaration {
    public SelectionOnFieldType(TypeReference type) {
        this.sourceStart = type.sourceStart;
        this.sourceEnd = type.sourceEnd;
        this.type = type;
        this.name = CharOperation.NO_CHAR;
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        return this.type.print(tab, output).append(';');
    }
}

