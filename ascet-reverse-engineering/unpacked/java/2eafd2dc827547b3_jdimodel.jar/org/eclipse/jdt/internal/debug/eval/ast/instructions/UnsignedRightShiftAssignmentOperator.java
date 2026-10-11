/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.UnsignedRightShiftOperator;

public class UnsignedRightShiftAssignmentOperator
extends UnsignedRightShiftOperator {
    public UnsignedRightShiftAssignmentOperator(int variableTypeId, int valueTypeId, int start) {
        super(variableTypeId, variableTypeId, valueTypeId, true, start);
    }

    public String toString() {
        return InstructionsEvaluationMessages.UnsignedRightShiftAssignmentOperator_operator_1;
    }
}

