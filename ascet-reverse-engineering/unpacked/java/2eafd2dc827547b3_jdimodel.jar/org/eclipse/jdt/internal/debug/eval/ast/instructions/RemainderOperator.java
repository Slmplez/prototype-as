/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.BinaryOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class RemainderOperator
extends BinaryOperator {
    public RemainderOperator(int resultId, int leftTypeId, int rightTypeId, int start) {
        this(resultId, leftTypeId, rightTypeId, false, start);
    }

    protected RemainderOperator(int resultId, int leftTypeId, int rightTypeId, boolean isAssignmentOperator, int start) {
        super(resultId, leftTypeId, rightTypeId, isAssignmentOperator, start);
    }

    protected boolean getBooleanResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return false;
    }

    protected double getDoubleResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getDoubleValue() % ((IJavaPrimitiveValue)rightOperand).getDoubleValue();
    }

    protected float getFloatResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getFloatValue() % ((IJavaPrimitiveValue)rightOperand).getFloatValue();
    }

    protected int getIntResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        int divisor = ((IJavaPrimitiveValue)rightOperand).getIntValue();
        if (divisor == 0) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, InstructionsEvaluationMessages.RemainderOperator_Divide_by_zero_1, null));
        }
        return ((IJavaPrimitiveValue)leftOperand).getIntValue() % divisor;
    }

    protected long getLongResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        long divisor = ((IJavaPrimitiveValue)rightOperand).getLongValue();
        if (divisor == 0L) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, InstructionsEvaluationMessages.RemainderOperator_Divide_by_zero_2, null));
        }
        return ((IJavaPrimitiveValue)leftOperand).getLongValue() % divisor;
    }

    protected String getStringResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return null;
    }

    public String toString() {
        return InstructionsEvaluationMessages.RemainderOperator______operator_3;
    }
}

