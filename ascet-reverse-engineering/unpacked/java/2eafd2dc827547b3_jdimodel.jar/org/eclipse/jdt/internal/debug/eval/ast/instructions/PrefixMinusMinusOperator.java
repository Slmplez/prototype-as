/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.XfixOperator;

public class PrefixMinusMinusOperator
extends XfixOperator {
    public PrefixMinusMinusOperator(int variableTypeId, int start) {
        super(variableTypeId, start);
    }

    public void execute() throws CoreException {
        IJavaVariable variable = (IJavaVariable)this.pop();
        switch (this.fVariableTypeId) {
            case 3: {
                variable.setValue(this.newValue((byte)(((IJavaPrimitiveValue)variable.getValue()).getByteValue() - 1)));
                break;
            }
            case 4: {
                variable.setValue(this.newValue((short)(((IJavaPrimitiveValue)variable.getValue()).getShortValue() - 1)));
                break;
            }
            case 2: {
                variable.setValue(this.newValue((char)(((IJavaPrimitiveValue)variable.getValue()).getCharValue() - '\u0001')));
                break;
            }
            case 10: {
                variable.setValue(this.newValue(((IJavaPrimitiveValue)variable.getValue()).getIntValue() - 1));
                break;
            }
            case 7: {
                variable.setValue(this.newValue(((IJavaPrimitiveValue)variable.getValue()).getLongValue() - 1L));
                break;
            }
            case 9: {
                variable.setValue(this.newValue(((IJavaPrimitiveValue)variable.getValue()).getFloatValue() - 1.0f));
                break;
            }
            case 8: {
                variable.setValue(this.newValue(((IJavaPrimitiveValue)variable.getValue()).getDoubleValue() - 1.0));
            }
        }
        this.push(variable.getValue());
    }

    public String toString() {
        return InstructionsEvaluationMessages.PrefixMinusMinusOperator_prefix________operator_1;
    }
}

