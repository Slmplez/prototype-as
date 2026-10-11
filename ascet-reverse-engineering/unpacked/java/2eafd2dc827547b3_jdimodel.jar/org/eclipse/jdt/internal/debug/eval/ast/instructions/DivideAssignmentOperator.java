/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.DivideOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class DivideAssignmentOperator
extends DivideOperator {
    public DivideAssignmentOperator(int variableTypeId, int valueTypeId, int start) {
        super(variableTypeId, variableTypeId, valueTypeId, true, start);
    }

    public String toString() {
        return InstructionsEvaluationMessages.DivideAssignmentOperator_operator_1;
    }
}

