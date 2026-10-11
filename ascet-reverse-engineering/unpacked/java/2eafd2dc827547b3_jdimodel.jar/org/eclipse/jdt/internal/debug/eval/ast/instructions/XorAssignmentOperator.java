/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.XorOperator;

public class XorAssignmentOperator
extends XorOperator {
    public XorAssignmentOperator(int variableTypeId, int valueTypeId, int start) {
        super(variableTypeId, variableTypeId, valueTypeId, true, start);
    }

    public String toString() {
        return InstructionsEvaluationMessages.XorAssignmentOperator_operator_1;
    }
}

