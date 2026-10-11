/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaArray;
import org.eclipse.jdt.debug.core.IJavaArrayType;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class ArrayAllocation
extends ArrayInstruction {
    private int fDimension;
    private int fExprDimension;
    private boolean fHasInitializer;
    private IJavaArrayType[] fCachedArrayTypes;

    public ArrayAllocation(int dimension, int exprDimension, boolean hasInitializer, int start) {
        super(start);
        this.fDimension = dimension;
        this.fExprDimension = exprDimension;
        this.fHasInitializer = hasInitializer;
    }

    public void execute() throws CoreException {
        if (this.fHasInitializer) {
            IJavaArray array = (IJavaArray)this.popValue();
            this.pop();
            this.push(array);
        } else {
            int[] exprDimensions = new int[this.fExprDimension];
            int i = this.fExprDimension - 1;
            while (i >= 0) {
                exprDimensions[i] = ((IJavaPrimitiveValue)this.popValue()).getIntValue();
                --i;
            }
            IJavaType type = (IJavaType)this.pop();
            this.fCachedArrayTypes = new IJavaArrayType[this.fDimension + 1];
            int i2 = this.fDimension;
            int lim = this.fDimension - this.fExprDimension;
            while (i2 > lim) {
                this.fCachedArrayTypes[i2] = (IJavaArrayType)type;
                type = ((IJavaArrayType)type).getComponentType();
                --i2;
            }
            IJavaArray array = this.createArray(this.fDimension, exprDimensions);
            this.push(array);
        }
    }

    private IJavaArray createArray(int dimension, int[] exprDimensions) throws CoreException {
        IJavaArray array = this.fCachedArrayTypes[dimension].newInstance(exprDimensions[0]);
        if (exprDimensions.length > 1) {
            int[] newExprDimension = new int[exprDimensions.length - 1];
            int i = 0;
            while (i < newExprDimension.length) {
                newExprDimension[i] = exprDimensions[i + 1];
                ++i;
            }
            i = 0;
            while (i < exprDimensions[0]) {
                array.setValue(i, this.createArray(dimension - 1, newExprDimension));
                ++i;
            }
        }
        return array;
    }

    public String toString() {
        return InstructionsEvaluationMessages.ArrayAllocation_array_allocation_1;
    }
}

