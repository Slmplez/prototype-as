/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.Instruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class Pop
extends Instruction {
    private int fSize;

    public Pop(int size) {
        this.fSize = size;
    }

    public void execute() {
        this.pop();
    }

    public String toString() {
        return InstructionsEvaluationMessages.Pop_pop_1;
    }

    public int getSize() {
        return this.fSize;
    }
}

