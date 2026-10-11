/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;

public abstract class XfixOperator
extends CompoundInstruction {
    protected int fVariableTypeId;

    public XfixOperator(int variableTypeId, int start) {
        super(start);
        this.fVariableTypeId = variableTypeId;
    }
}

