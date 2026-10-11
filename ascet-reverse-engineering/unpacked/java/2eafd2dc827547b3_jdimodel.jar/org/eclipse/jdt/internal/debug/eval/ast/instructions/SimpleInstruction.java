/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.Instruction;

public abstract class SimpleInstruction
extends Instruction {
    protected SimpleInstruction() {
    }

    public int getSize() {
        return 1;
    }
}

