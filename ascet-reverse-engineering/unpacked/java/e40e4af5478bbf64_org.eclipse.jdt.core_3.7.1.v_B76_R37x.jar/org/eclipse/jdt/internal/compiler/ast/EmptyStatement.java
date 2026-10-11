/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class EmptyStatement
extends Statement {
    public EmptyStatement(int startPosition, int endPosition) {
        this.sourceStart = startPosition;
        this.sourceEnd = endPosition;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public int complainIfUnreachable(FlowInfo flowInfo, BlockScope scope, int complaintLevel) {
        if (scope.compilerOptions().complianceLevel < 0x300000L) {
            return complaintLevel;
        }
        return super.complainIfUnreachable(flowInfo, scope, complaintLevel);
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
    }

    public StringBuffer printStatement(int tab, StringBuffer output) {
        return EmptyStatement.printIndent(tab, output).append(';');
    }

    public void resolve(BlockScope scope) {
        if ((this.bits & 1) == 0) {
            scope.problemReporter().superfluousSemicolon(this.sourceStart, this.sourceEnd);
        } else {
            scope.problemReporter().emptyControlFlowStatement(this.sourceStart, this.sourceEnd);
        }
    }

    public void traverse(ASTVisitor visitor, BlockScope scope) {
        visitor.visit(this, scope);
        visitor.endVisit(this, scope);
    }
}

