/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.model.JDINullValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.BinaryOperator;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class PlusOperator
extends BinaryOperator {
    public static final String NULL = "null";
    public static final String TOSTRING_SELECTOR = "toString";
    public static final String TOSTRING_SIGNATURE = "()Ljava/lang/String;";

    public PlusOperator(int resultId, int leftTypeId, int rightTypeId, int start) {
        this(resultId, leftTypeId, rightTypeId, false, start);
    }

    protected PlusOperator(int resultId, int leftTypeId, int rightTypeId, boolean isAssignmentOperator, int start) {
        super(resultId, leftTypeId, rightTypeId, isAssignmentOperator, start);
    }

    private String getString(IJavaValue value, int typeId) throws DebugException {
        if (value instanceof JDINullValue) {
            return NULL;
        }
        if (value instanceof IJavaObject) {
            if (typeId == 11) {
                return value.getValueString();
            }
            return ((IJavaObject)value).sendMessage(TOSTRING_SELECTOR, TOSTRING_SIGNATURE, null, this.getContext().getThread(), null).getValueString();
        }
        IJavaPrimitiveValue primitiveValue = (IJavaPrimitiveValue)value;
        switch (typeId) {
            case 5: {
                return Boolean.valueOf(primitiveValue.getBooleanValue()).toString();
            }
            case 3: {
                return new Integer(primitiveValue.getByteValue()).toString();
            }
            case 2: {
                return new Character(primitiveValue.getCharValue()).toString();
            }
            case 8: {
                return new Double(primitiveValue.getDoubleValue()).toString();
            }
            case 9: {
                return new Float(primitiveValue.getFloatValue()).toString();
            }
            case 10: {
                return new Integer(primitiveValue.getIntValue()).toString();
            }
            case 7: {
                return new Long(primitiveValue.getLongValue()).toString();
            }
            case 4: {
                return new Integer(primitiveValue.getShortValue()).toString();
            }
        }
        return NULL;
    }

    protected boolean getBooleanResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return false;
    }

    protected double getDoubleResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getDoubleValue() + ((IJavaPrimitiveValue)rightOperand).getDoubleValue();
    }

    protected float getFloatResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getFloatValue() + ((IJavaPrimitiveValue)rightOperand).getFloatValue();
    }

    protected int getIntResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getIntValue() + ((IJavaPrimitiveValue)rightOperand).getIntValue();
    }

    protected long getLongResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return ((IJavaPrimitiveValue)leftOperand).getLongValue() + ((IJavaPrimitiveValue)rightOperand).getLongValue();
    }

    protected String getStringResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        return String.valueOf(this.getString(leftOperand, this.fLeftTypeId)) + this.getString(rightOperand, this.fRightTypeId);
    }

    public String toString() {
        return InstructionsEvaluationMessages.PlusOperator______operator_2;
    }
}

