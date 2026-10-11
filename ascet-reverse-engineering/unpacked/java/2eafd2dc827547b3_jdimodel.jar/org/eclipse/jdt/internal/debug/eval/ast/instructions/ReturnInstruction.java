/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class ReturnInstruction
extends CompoundInstruction {
    public ReturnInstruction(int start) {
        super(start);
    }

    public void execute() {
        this.stop();
    }

    public String toString() {
        return InstructionsEvaluationMessages.ReturnInstruction_return;
    }
}

