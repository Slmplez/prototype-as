/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class Constructor
extends CompoundInstruction {
    private int fArgCount;
    private String fSignature;

    public Constructor(String signature, int argCount, int start) {
        super(start);
        this.fArgCount = argCount;
        this.fSignature = signature;
    }

    public void execute() throws CoreException {
        IJavaValue[] args = new IJavaValue[this.fArgCount];
        int i = this.fArgCount - 1;
        while (i >= 0) {
            args[i] = this.popValue();
            --i;
        }
        IJavaClassType clazz = (IJavaClassType)this.pop();
        IJavaObject result = clazz.newInstance(this.fSignature, args, this.getContext().getThread());
        this.push(result);
    }

    public String toString() {
        return String.valueOf(InstructionsEvaluationMessages.Constructor_constructor__1) + this.fSignature;
    }
}

