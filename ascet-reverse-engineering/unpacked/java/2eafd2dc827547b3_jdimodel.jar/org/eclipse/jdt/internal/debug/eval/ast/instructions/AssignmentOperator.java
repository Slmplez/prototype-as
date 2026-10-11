/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class AssignmentOperator
extends CompoundInstruction {
    protected int fVariableTypeId;
    protected int fValueTypeId;

    public AssignmentOperator(int variableTypeId, int valueTypeId, int start) {
        super(start);
        this.fVariableTypeId = variableTypeId;
        this.fValueTypeId = valueTypeId;
    }

    public void execute() throws CoreException {
        IJavaValue value = this.popValue();
        IJavaVariable variable = (IJavaVariable)this.pop();
        if (value instanceof IJavaPrimitiveValue) {
            IJavaPrimitiveValue primitiveValue = (IJavaPrimitiveValue)value;
            switch (this.fVariableTypeId) {
                case 5: {
                    variable.setValue(this.newValue(primitiveValue.getBooleanValue()));
                    break;
                }
                case 3: {
                    variable.setValue(this.newValue(primitiveValue.getByteValue()));
                    break;
                }
                case 4: {
                    variable.setValue(this.newValue(primitiveValue.getShortValue()));
                    break;
                }
                case 2: {
                    variable.setValue(this.newValue(primitiveValue.getCharValue()));
                    break;
                }
                case 10: {
                    variable.setValue(this.newValue(primitiveValue.getIntValue()));
                    break;
                }
                case 7: {
                    variable.setValue(this.newValue(primitiveValue.getLongValue()));
                    break;
                }
                case 9: {
                    variable.setValue(this.newValue(primitiveValue.getFloatValue()));
                    break;
                }
                case 8: {
                    variable.setValue(this.newValue(primitiveValue.getDoubleValue()));
                }
            }
        } else {
            variable.setValue(value);
        }
        this.push(variable.getValue());
    }

    public String toString() {
        return InstructionsEvaluationMessages.AssignmentOperator_operator_1;
    }
}

