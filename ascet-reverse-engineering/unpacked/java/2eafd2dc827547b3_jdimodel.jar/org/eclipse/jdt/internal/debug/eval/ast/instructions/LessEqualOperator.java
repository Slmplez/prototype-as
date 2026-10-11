/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.BinaryOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class LessEqualOperator
extends BinaryOperator {
    public LessEqualOperator(int leftTypeId, int rightTypeId, int start) {
        super(5, leftTypeId, rightTypeId, false, start);
    }

    protected boolean getBooleanResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        switch (this.getInternResultType()) {
            case 8: {
                return ((IJavaPrimitiveValue)leftOperand).getDoubleValue() <= ((IJavaPrimitiveValue)rightOperand).getDoubleValue();
            }
            case 9: {
                return ((IJavaPrimitiveValue)leftOperand).getFloatValue() <= ((IJavaPrimitiveValue)rightOperand).getFloatValue();
            }
            case 7: {
                return ((IJavaPrimitiveValue)leftOperand).getLongValue() <= ((IJavaPrimitiveValue)rightOperand).getLongValue();
            }
            case 10: {
                return ((IJavaPrimitiveValue)leftOperand).getIntValue() <= ((IJavaPrimitiveValue)rightOperand).getIntValue();
            }
        }
        return false;
    }

    protected double getDoubleResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return 0.0;
    }

    protected float getFloatResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return 0.0f;
    }

    protected int getIntResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return 0;
    }

    protected long getLongResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return 0L;
    }

    protected String getStringResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return null;
    }

    public String toString() {
        return InstructionsEvaluationMessages.LessEqualOperator_operator_1;
    }
}

