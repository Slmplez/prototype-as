/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class PushNull
extends SimpleInstruction {
    public void execute() {
        this.pushNullValue();
    }

    public String toString() {
        return InstructionsEvaluationMessages.PushNull_push___null__1;
    }
}

