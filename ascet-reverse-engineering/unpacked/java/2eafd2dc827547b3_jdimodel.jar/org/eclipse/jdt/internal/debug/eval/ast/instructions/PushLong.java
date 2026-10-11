/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class PushLong
extends SimpleInstruction {
    private long fValue;

    public PushLong(long value) {
        this.fValue = value;
    }

    public void execute() {
        this.pushNewValue(this.fValue);
    }

    public String toString() {
        return String.valueOf(InstructionsEvaluationMessages.PushLong_push__1) + this.fValue;
    }
}

