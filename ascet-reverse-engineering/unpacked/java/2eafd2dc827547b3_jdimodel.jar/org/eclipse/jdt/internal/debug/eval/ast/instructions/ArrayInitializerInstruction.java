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
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class ArrayInitializerInstruction
extends ArrayInstruction {
    private String fTypeSignature;
    private int fDimensions;
    private int fLength;

    public ArrayInitializerInstruction(String typeSignature, int length, int dimensions, int start) {
        super(start);
        this.fTypeSignature = typeSignature;
        this.fDimensions = dimensions;
        this.fLength = length;
    }

    public void execute() throws CoreException {
        IJavaArrayType arrayType = this.getArrayType(this.fTypeSignature.replace('/', '.'), this.fDimensions);
        IJavaArray array = arrayType.newInstance(this.fLength);
        int i = this.fLength - 1;
        while (i >= 0) {
            array.setValue(i, this.popValue());
            --i;
        }
        this.push(array);
    }

    public String toString() {
        return InstructionsEvaluationMessages.ArrayInitializerInstruction_array_initializer_1;
    }
}

