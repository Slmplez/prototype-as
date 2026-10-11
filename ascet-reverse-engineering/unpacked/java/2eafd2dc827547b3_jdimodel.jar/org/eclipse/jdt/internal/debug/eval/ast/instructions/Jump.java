/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class Jump
extends SimpleInstruction {
    protected int fOffset;

    public void setOffset(int offset) {
        this.fOffset = offset;
    }

    public void execute() throws CoreException {
        this.jump(this.fOffset);
    }

    public String toString() {
        return InstructionsEvaluationMessages.Jump_jump_1;
    }
}

