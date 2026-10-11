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

public class TwiddleOperator
extends UnaryOperator {
    public TwiddleOperator(int expressionTypeId, int start) {
        super(expressionTypeId, start);
    }

    public void execute() throws CoreException {
        IJavaPrimitiveValue value = (IJavaPrimitiveValue)this.popValue();
        switch (this.fExpressionTypeId) {
            case 7: {
                this.pushNewValue(value.getLongValue() ^ 0xFFFFFFFFFFFFFFFFL);
                break;
            }
            case 2: 
            case 3: 
            case 4: 
            case 10: {
                this.pushNewValue(~value.getIntValue());
            }
        }
    }

    public String toString() {
        return InstructionsEvaluationMessages.TwiddleOperator______operator_1;
    }
}

