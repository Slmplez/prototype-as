/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class PushClassLiteralValue
extends CompoundInstruction {
    public PushClassLiteralValue(int start) {
        super(start);
    }

    public void execute() throws CoreException {
        IJavaType type = (IJavaType)this.pop();
        this.push(this.getClassObject(type));
    }

    public String toString() {
        return InstructionsEvaluationMessages.PushClassLiteralValue_push_class_literal_value_1;
    }
}

