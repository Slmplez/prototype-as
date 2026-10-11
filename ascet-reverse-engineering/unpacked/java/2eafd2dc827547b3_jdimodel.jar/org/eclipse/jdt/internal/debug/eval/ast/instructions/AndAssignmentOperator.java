/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.AndOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class AndAssignmentOperator
extends AndOperator {
    public AndAssignmentOperator(int variableTypeId, int valueTypeId, int start) {
        super(variableTypeId, variableTypeId, valueTypeId, true, start);
    }

    public String toString() {
        return InstructionsEvaluationMessages.AndAssignmentOperator_operator_1;
    }
}

