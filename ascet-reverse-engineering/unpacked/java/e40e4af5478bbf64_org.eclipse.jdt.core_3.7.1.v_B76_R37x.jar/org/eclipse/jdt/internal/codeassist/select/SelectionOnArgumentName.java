/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnArgumentName
extends Argument {
    public SelectionOnArgumentName(char[] name, long posNom, TypeReference tr, int modifiers) {
        super(name, posNom, tr, modifiers);
    }

    public void bind(MethodScope scope, TypeBinding typeBinding, boolean used) {
        super.bind(scope, typeBinding, used);
        throw new SelectionNodeFound(this.binding);
    }

    public StringBuffer print(int indent, StringBuffer output) {
        SelectionOnArgumentName.printIndent(indent, output);
        output.append("<SelectionOnArgumentName:");
        if (this.type != null) {
            this.type.print(0, output).append(' ');
        }
        output.append(this.name);
        if (this.initialization != null) {
            output.append(" = ");
            this.initialization.printExpression(0, output);
        }
        return output.append('>');
    }

    public void resolve(BlockScope scope) {
        super.resolve(scope);
        throw new SelectionNodeFound(this.binding);
    }
}

