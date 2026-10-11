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
import org.eclipse.jdt.internal.debug.eval.ast.instructions.UnaryOperator;

public class NotOperator
extends UnaryOperator {
    public NotOperator(int expressionTypeId, int start) {
        super(expressionTypeId, start);
    }

    public void execute() throws CoreException {
        IJavaPrimitiveValue value = (IJavaPrimitiveValue)this.popValue();
        this.pushNewValue(!value.getBooleanValue());
    }

    public String toString() {
        return InstructionsEvaluationMessages.NotOperator______operator_1;
    }
}

