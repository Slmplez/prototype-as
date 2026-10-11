/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.Jump;

public class ConditionalJump
extends Jump {
    private boolean fJumpOnTrue;

    public ConditionalJump(boolean jumpOnTrue) {
        this.fJumpOnTrue = jumpOnTrue;
    }

    public void execute() throws CoreException {
        IJavaPrimitiveValue condition = (IJavaPrimitiveValue)this.popValue();
        if (!(this.fJumpOnTrue ^ condition.getBooleanValue())) {
            this.jump(this.fOffset);
        }
    }

    public String toString() {
        return InstructionsEvaluationMessages.ConditionalJump_conditional_jump_1;
    }
}

