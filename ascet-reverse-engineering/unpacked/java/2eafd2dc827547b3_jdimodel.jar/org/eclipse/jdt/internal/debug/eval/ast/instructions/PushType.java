/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class PushType
extends SimpleInstruction {
    private String fTypeName;

    public PushType(String signature) {
        this.fTypeName = signature;
    }

    public void execute() throws CoreException {
        this.push(this.getType(this.fTypeName));
    }

    public String toString() {
        return String.valueOf(InstructionsEvaluationMessages.PushType_push_type__1) + this.fTypeName;
    }
}

