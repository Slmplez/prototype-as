/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.BinaryOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class AndOperator
extends BinaryOperator {
    public AndOperator(int resultId, int leftTypeId, int rightTypeId, int start) {
        this(resultId, leftTypeId, rightTypeId, false, start);
    }

    protected AndOperator(int resultId, int leftTypeId, int rightTypeId, boolean isAssignmentOperateur, int start) {
        super(resultId, leftTypeId, rightTypeId, isAssignmentOperateur, start);
    }

    protected boolean getBooleanResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getBooleanValue() & ((IJavaPrimitiveValue)rightOperand).getBooleanValue();
    }

    protected double getDoubleResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return 0.0;
    }

    protected float getFloatResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return 0.0f;
    }

    protected int getIntResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getIntValue() & ((IJavaPrimitiveValue)rightOperand).getIntValue();
    }

    protected long getLongResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getLongValue() & ((IJavaPrimitiveValue)rightOperand).getLongValue();
    }

    protected String getStringResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return null;
    }

    public String toString() {
        return InstructionsEvaluationMessages.AndOperator_____operator_1;
    }
}

