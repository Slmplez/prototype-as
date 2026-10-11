/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class SelectionOnExplicitConstructorCall
extends ExplicitConstructorCall {
    public SelectionOnExplicitConstructorCall(int accessMode) {
        super(accessMode);
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        SelectionOnExplicitConstructorCall.printIndent(tab, output);
        output.append("<SelectOnExplicitConstructorCall:");
        if (this.qualification != null) {
            this.qualification.printExpression(0, output).append('.');
        }
        if (this.accessMode == 3) {
            output.append("this(");
        } else {
            output.append("super(");
        }
        if (this.arguments != null) {
            int i = 0;
            while (i < this.arguments.length) {
                if (i > 0) {
                    output.append(", ");
                }
                this.arguments[i].printExpression(0, output);
                ++i;
            }
        }
        return output.append(")>;");
    }

    public void resolve(BlockScope scope) {
        super.resolve(scope);
        if (this.binding == null || !this.binding.isValidBinding() && this.binding.problemId() != 2) {
            throw new SelectionNodeFound();
        }
        throw new SelectionNodeFound(this.binding);
    }
}

