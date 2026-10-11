/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SubRoutineStatement;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;

public abstract class BranchStatement
extends Statement {
    public char[] label;
    public BranchLabel targetLabel;
    public SubRoutineStatement[] subroutines;
    public int initStateIndex = -1;

    public BranchStatement(char[] label, int sourceStart, int sourceEnd) {
        this.label = label;
        this.sourceStart = sourceStart;
        this.sourceEnd = sourceEnd;
    }

    public void generateCode(BlockScope currentScope, CodeStream codeStream) {
        if ((this.bits & Integer.MIN_VALUE) == 0) {
            return;
        }
        int pc = codeStream.position;
        if (this.subroutines != null) {
            int i = 0;
            int max = this.subroutines.length;
            while (i < max) {
                SubRoutineStatement sub = this.subroutines[i];
                boolean didEscape = sub.generateSubRoutineInvocation(currentScope, codeStream, this.targetLabel, this.initStateIndex, null);
                if (didEscape) {
                    codeStream.recordPositionsFrom(pc, this.sourceStart);
                    SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, i, codeStream);
                    if (this.initStateIndex != -1) {
                        codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.initStateIndex);
                        codeStream.addDefinitelyAssignedVariables(currentScope, this.initStateIndex);
                    }
                    return;
                }
                ++i;
            }
        }
        codeStream.goto_(this.targetLabel);
        codeStream.recordPositionsFrom(pc, this.sourceStart);
        SubRoutineStatement.reenterAllExceptionHandlers(this.subroutines, -1, codeStream);
        if (this.initStateIndex != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(currentScope, this.initStateIndex);
            codeStream.addDefinitelyAssignedVariables(currentScope, this.initStateIndex);
        }
    }

    public void resolve(BlockScope scope) {
    }
}

