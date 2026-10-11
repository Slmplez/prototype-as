/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.codeassist.complete;

import org.eclipse.jdt.internal.codeassist.complete.CompletionNodeFound;
import org.eclipse.jdt.internal.compiler.ast.BranchStatement;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class CompletionOnBranchStatementLabel
extends BranchStatement {
    public static final int BREAK = 1;
    public static final int CONTINUE = 2;
    private int kind;
    public char[][] possibleLabels;

    public CompletionOnBranchStatementLabel(int kind, char[] l, int s, int e, char[][] possibleLabels) {
        super(l, s, e);
        this.kind = kind;
        this.possibleLabels = possibleLabels;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        return null;
    }

    public void resolve(BlockScope scope) {
        throw new CompletionNodeFound(this, scope);
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        CompletionOnBranchStatementLabel.printIndent(indent, output);
        if (this.kind == 2) {
            output.append("continue ");
        } else {
            output.append("break ");
        }
        output.append("<CompleteOnLabel:");
        output.append(this.label);
        return output.append(">;");
    }
}

