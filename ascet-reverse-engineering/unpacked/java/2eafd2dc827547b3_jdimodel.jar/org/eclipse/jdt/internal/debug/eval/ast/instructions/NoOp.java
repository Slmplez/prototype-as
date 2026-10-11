/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class NoOp
extends CompoundInstruction {
    public NoOp(int start) {
        super(start);
    }

    public void execute() {
    }

    public String toString() {
        return InstructionsEvaluationMessages.NoOp_no_op_1;
    }
}

