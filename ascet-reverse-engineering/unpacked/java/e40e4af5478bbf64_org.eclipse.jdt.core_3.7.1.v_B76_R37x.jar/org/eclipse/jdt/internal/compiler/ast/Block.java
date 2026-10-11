/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public class Block
extends Statement {
    public Statement[] statements;
    public int explicitDeclarations;
    public BlockScope scope;

    public Block(int explicitDeclarations) {
        this.explicitDeclarations = explicitDeclarations;
    }

    public FlowInfo analyseCode(BlockScope currentScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.statements == null) {
            return flowInfo;
        }
        int complaintLevel = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        int i = 0;
        int max = this.statements.length;
        while (i < max) {
            Statement stat = this.statements[i];
            if ((complaintLevel = stat.complainIfUnreachable(flowInfo, this.scope, complaintLevel)) < 2) {
                flowInfo = stat.analyseCode(this.scope, flowContext, flowInfo);
            }
            ++i;
        }
        return flowInfo;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int pc = codeStream.position;
        if (this.statements != null) {
            int i = 0;
            int max = this.statements.length;
            while (i < max) {
                this.statements[i].generateCode(this.scope, codeStream);
                ++i;
            }
        }
        if (this.scope != currentScope) {
            codeStream.exitUserScope(this.scope);
        }
        codeStream.recordPositionsFrom(pc, this.sourceStart);
    }

    public boolean isEmptyBlock() {
        return this.statements == null;
    }

    public StringBuffer printBody(int indent, StringBuffer output) {
        if (this.statements == null) {
            return output;
        }
        int i = 0;
        while (i < this.statements.length) {
            this.statements[i].printStatement(indent + 1, output);
            output.append('\n');
            ++i;
        }
        return output;
    }

    public StringBuffer printStatement(int indent, StringBuffer output) {
        Block.printIndent(indent, output);
        output.append("{\n");
        this.printBody(indent, output);
        return Block.printIndent(indent, output).append('}');
    }

    public void resolve(BlockScope upperScope) {
        if ((this.bits & 8) != 0) {
            upperScope.problemReporter().undocumentedEmptyBlock(this.sourceStart, this.sourceEnd);
        }
        if (this.statements != null) {
            this.scope = this.explicitDeclarations == 0 ? upperScope : new BlockScope(upperScope, this.explicitDeclarations);
            int i = 0;
            int length = this.statements.length;
            while (i < length) {
                this.statements[i].resolve(this.scope);
                ++i;
            }
        }
    }

    public void resolveUsing(BlockScope givenScope) {
        if ((this.bits & 8) != 0) {
            givenScope.problemReporter().undocumentedEmptyBlock(this.sourceStart, this.sourceEnd);
        }
        this.scope = givenScope;
        if (this.statements != null) {
            int i = 0;
            int length = this.statements.length;
            while (i < length) {
                this.statements[i].resolve(this.scope);
                ++i;
            }
        }
    }

    public void traverse(ASTVisitor visitor, BlockScope blockScope) {
        if (visitor.visit(this, blockScope) && this.statements != null) {
            int i = 0;
            int length = this.statements.length;
            while (i < length) {
                this.statements[i].traverse(visitor, this.scope);
                ++i;
            }
        }
        visitor.endVisit(this, blockScope);
    }

    public void branchChainTo(BranchLabel label) {
        if (this.statements != null) {
            this.statements[this.statements.length - 1].branchChainTo(label);
        }
    }
}

