/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class SelectionOnLocalName
extends LocalDeclaration {
    public SelectionOnLocalName(char[] name, int sourceStart, int sourceEnd) {
        super(name, sourceStart, sourceEnd);
    }

    public void resolve(BlockScope scope) {
        super.resolve(scope);
        throw new SelectionNodeFound(this.binding);
    }

    public StringBuffer printAsExpression(int indent, StringBuffer output) {
        SelectionOnLocalName.printIndent(indent, output);
        output.append("<SelectionOnLocalName:");
        SelectionOnLocalName.printModifiers(this.modifiers, output);
        this.type.print(0, output).append(' ').append(this.name);
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

