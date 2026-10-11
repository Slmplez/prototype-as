/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.internal.codeassist.select.SelectionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class SelectionOnNameOfMemberValuePair
extends MemberValuePair {
    public SelectionOnNameOfMemberValuePair(char[] token, int sourceStart, int sourceEnd, Expression value) {
        super(token, sourceStart, sourceEnd, value);
    }

    public StringBuffer print(int indent, StringBuffer output) {
        output.append("<SelectOnName:");
        output.append(this.name);
        output.append(">");
        return output;
    }

    public void resolveTypeExpecting(BlockScope scope, TypeBinding requiredType) {
        super.resolveTypeExpecting(scope, requiredType);
        if (this.binding != null) {
            throw new SelectionNodeFound(this.binding);
        }
        throw new SelectionNodeFound();
    }
}

