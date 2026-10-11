/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.RemainderOperator;

public class RemainderAssignmentOperator
extends RemainderOperator {
    public RemainderAssignmentOperator(int variableTypeId, int valueTypeId, int start) {
        super(variableTypeId, variableTypeId, valueTypeId, true, start);
    }

    public String toString() {
        return InstructionsEvaluationMessages.RemainderAssignmentOperator_operator_1;
    }
}

