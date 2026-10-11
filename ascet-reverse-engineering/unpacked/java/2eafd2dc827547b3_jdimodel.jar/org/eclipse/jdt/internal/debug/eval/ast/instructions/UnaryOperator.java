/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;

public abstract class UnaryOperator
extends CompoundInstruction {
    protected int fExpressionTypeId;

    public UnaryOperator(int expressionTypeId, int start) {
        super(start);
        this.fExpressionTypeId = expressionTypeId;
    }
}

