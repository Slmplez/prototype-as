/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;

public abstract class BinaryOperator
extends CompoundInstruction {
    protected int fResultTypeId;
    protected int fLeftTypeId;
    protected int fRightTypeId;
    protected boolean fIsAssignmentOperator;

    protected BinaryOperator(int resultId, int leftTypeId, int rightTypeId, boolean isAssignementOperator, int start) {
        super(start);
        this.fResultTypeId = resultId;
        this.fLeftTypeId = leftTypeId;
        this.fRightTypeId = rightTypeId;
        this.fIsAssignmentOperator = isAssignementOperator;
    }

    public final void execute() throws CoreException {
        if (this.fIsAssignmentOperator) {
            this.executeAssignment();
        } else {
            this.executeBinary();
        }
    }

    private void executeAssignment() throws CoreException {
        IJavaValue value = this.popValue();
        IJavaVariable variable = (IJavaVariable)this.pop();
        IJavaValue variableValue = (IJavaValue)variable.getValue();
        switch (this.fResultTypeId) {
            case 3: {
                variableValue = this.getByteValueResult(variableValue, value);
                break;
            }
            case 4: {
                variableValue = this.getShortValueResult(variableValue, value);
                break;
            }
            case 2: {
                variableValue = this.getCharValueResult(variableValue, value);
                break;
            }
            case 10: {
                variableValue = this.getIntValueResult(variableValue, value);
                break;
            }
            case 7: {
                variableValue = this.getLongValueResult(variableValue, value);
                break;
            }
            case 9: {
                variableValue = this.getFloatValueResult(variableValue, value);
                break;
            }
            case 8: {
                variableValue = this.getDoubleValueResult(variableValue, value);
                break;
            }
            case 5: {
                variableValue = this.getBooleanValueResult(variableValue, value);
                break;
            }
            case 11: {
                variableValue = this.getStringValueResult(variableValue, value);
            }
        }
        variable.setValue(variableValue);
        this.push(variableValue);
    }

    private void executeBinary() throws CoreException {
        IJavaValue right = this.popValue();
        IJavaValue left = this.popValue();
        switch (this.fResultTypeId) {
            case 11: {
                this.pushNewValue(this.getStringResult(left, right));
                break;
            }
            case 8: {
                this.pushNewValue(this.getDoubleResult(left, right));
                break;
            }
            case 9: {
                this.pushNewValue(this.getFloatResult(left, right));
                break;
            }
            case 7: {
                this.pushNewValue(this.getLongResult(left, right));
                break;
            }
            case 10: {
                this.pushNewValue(this.getIntResult(left, right));
                break;
            }
            case 5: {
                this.pushNewValue(this.getBooleanResult(left, right));
            }
        }
    }

    private IJavaValue getByteValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        switch (this.getInternResultType()) {
            case 8: {
                return this.newValue((byte)this.getDoubleResult(leftOperand, rightOperand));
            }
            case 9: {
                return this.newValue((byte)this.getFloatResult(leftOperand, rightOperand));
            }
            case 7: {
                return this.newValue((byte)this.getLongResult(leftOperand, rightOperand));
            }
            case 10: {
                return this.newValue((byte)this.getIntResult(leftOperand, rightOperand));
            }
        }
        return null;
    }

    private IJavaValue getShortValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        switch (this.getInternResultType()) {
            case 8: {
                return this.newValue((short)this.getDoubleResult(leftOperand, rightOperand));
            }
            case 9: {
                return this.newValue((short)this.getFloatResult(leftOperand, rightOperand));
            }
            case 7: {
                return this.newValue((short)this.getLongResult(leftOperand, rightOperand));
            }
            case 10: {
                return this.newValue((short)this.getIntResult(leftOperand, rightOperand));
            }
        }
        return null;
    }

    private IJavaValue getCharValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        switch (this.getInternResultType()) {
            case 8: {
                return this.newValue((char)this.getDoubleResult(leftOperand, rightOperand));
            }
            case 9: {
                return this.newValue((char)this.getFloatResult(leftOperand, rightOperand));
            }
            case 7: {
                return this.newValue((char)this.getLongResult(leftOperand, rightOperand));
            }
            case 10: {
                return this.newValue((char)this.getIntResult(leftOperand, rightOperand));
            }
        }
        return null;
    }

    private IJavaValue getIntValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        switch (this.getInternResultType()) {
            case 8: {
                return this.newValue((int)this.getDoubleResult(leftOperand, rightOperand));
            }
            case 9: {
                return this.newValue((int)this.getFloatResult(leftOperand, rightOperand));
            }
            case 7: {
                return this.newValue((int)this.getLongResult(leftOperand, rightOperand));
            }
            case 10: {
                return this.newValue(this.getIntResult(leftOperand, rightOperand));
            }
        }
        return null;
    }

    private IJavaValue getLongValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        switch (this.getInternResultType()) {
            case 8: {
                return this.newValue((long)this.getDoubleResult(leftOperand, rightOperand));
            }
            case 9: {
                return this.newValue((long)this.getFloatResult(leftOperand, rightOperand));
            }
            case 7: {
                return this.newValue(this.getLongResult(leftOperand, rightOperand));
            }
            case 10: {
                return this.newValue((long)this.getIntResult(leftOperand, rightOperand));
            }
        }
        return null;
    }

    private IJavaValue getFloatValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        switch (this.getInternResultType()) {
            case 8: {
                return this.newValue((float)this.getDoubleResult(leftOperand, rightOperand));
            }
            case 9: {
                return this.newValue(this.getFloatResult(leftOperand, rightOperand));
            }
            case 7: {
                return this.newValue((float)this.getLongResult(leftOperand, rightOperand));
            }
            case 10: {
                return this.newValue((float)this.getIntResult(leftOperand, rightOperand));
            }
        }
        return null;
    }

    private IJavaValue getDoubleValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        switch (this.getInternResultType()) {
            case 8: {
                return this.newValue(this.getDoubleResult(leftOperand, rightOperand));
            }
            case 9: {
                return this.newValue((double)this.getFloatResult(leftOperand, rightOperand));
            }
            case 7: {
                return this.newValue((double)this.getLongResult(leftOperand, rightOperand));
            }
            case 10: {
                return this.newValue((double)this.getIntResult(leftOperand, rightOperand));
            }
        }
        return null;
    }

    private IJavaValue getBooleanValueResult(IJavaValue leftOperand, IJavaValue rightOperand) {
        return this.newValue(this.getBooleanResult(leftOperand, rightOperand));
    }

    private IJavaValue getStringValueResult(IJavaValue leftOperand, IJavaValue rightOperand) throws CoreException {
        return this.newValue(this.getStringResult(leftOperand, rightOperand));
    }

    protected abstract int getIntResult(IJavaValue var1, IJavaValue var2) throws CoreException;

    protected abstract long getLongResult(IJavaValue var1, IJavaValue var2) throws CoreException;

    protected abstract float getFloatResult(IJavaValue var1, IJavaValue var2);

    protected abstract double getDoubleResult(IJavaValue var1, IJavaValue var2);

    protected abstract boolean getBooleanResult(IJavaValue var1, IJavaValue var2);

    protected abstract String getStringResult(IJavaValue var1, IJavaValue var2) throws CoreException;

    protected int getInternResultType() {
        return BinaryOperator.getBinaryPromotionType(this.fLeftTypeId, this.fRightTypeId);
    }
}

