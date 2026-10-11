/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.Instruction;

public abstract class CompoundInstruction
extends Instruction {
    private int fSize;

    protected CompoundInstruction(int start) {
        this.fSize = -start;
    }

    public void setEnd(int end) {
        this.fSize += end;
    }

    public int getSize() {
        return this.fSize;
    }
}

