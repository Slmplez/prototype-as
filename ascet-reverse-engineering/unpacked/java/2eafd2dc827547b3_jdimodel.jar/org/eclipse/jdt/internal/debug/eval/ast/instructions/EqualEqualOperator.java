/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.BinaryOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class EqualEqualOperator
extends BinaryOperator {
    private boolean fIsEquals;

    public EqualEqualOperator(int leftTypeId, int rightTypeId, boolean isEquals, int start) {
        super(5, leftTypeId, rightTypeId, false, start);
        this.fIsEquals = isEquals;
    }

    protected boolean getBooleanResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        boolean equals = false;
        switch (this.getInternResultType()) {
            case 8: {
                equals = ((IJavaPrimitiveValue)leftOperand).getDoubleValue() == ((IJavaPrimitiveValue)rightOperand).getDoubleValue();
                break;
            }
            case 9: {
                equals = ((IJavaPrimitiveValue)leftOperand).getFloatValue() == ((IJavaPrimitiveValue)rightOperand).getFloatValue();
                break;
            }
            case 7: {
                equals = ((IJavaPrimitiveValue)leftOperand).getLongValue() == ((IJavaPrimitiveValue)rightOperand).getLongValue();
                break;
            }
            case 10: {
                if (leftOperand instanceof IJavaObject) {
                    equals = leftOperand.equals(rightOperand);
                    break;
                }
                equals = ((IJavaPrimitiveValue)leftOperand).getIntValue() == ((IJavaPrimitiveValue)rightOperand).getIntValue();
                break;
            }
            case 5: {
                equals = ((IJavaPrimitiveValue)leftOperand).getBooleanValue() == ((IJavaPrimitiveValue)rightOperand).getBooleanValue();
                break;
            }
            default: {
                equals = leftOperand.equals(rightOperand);
            }
        }
        return this.fIsEquals ? equals : !equals;
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
        return InstructionsEvaluationMessages.EqualEqualOperator_operator_1;
    }
}

