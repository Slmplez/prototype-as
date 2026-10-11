/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaArray;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayAccess;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class PushArrayLength
extends ArrayAccess {
    public PushArrayLength(int start) {
        super(start);
    }

    public void execute() throws CoreException {
        IJavaArray receiver = this.popArray();
        int length = receiver.getLength();
        this.pushNewValue(length);
    }

    public String toString() {
        return InstructionsEvaluationMessages.PushArrayLength_push_array_length__1;
    }
}

