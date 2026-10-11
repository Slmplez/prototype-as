/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.eval.ast.engine.IRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class PushThis
extends SimpleInstruction {
    private int fEnclosingLevel;

    public PushThis(int enclosingLevel) {
        this.fEnclosingLevel = enclosingLevel;
    }

    public void execute() throws CoreException {
        IRuntimeContext context = this.getContext();
        IJavaObject thisInstance = context.getThis();
        if (thisInstance == null) {
            this.push(context.getReceivingType());
        } else {
            if (this.fEnclosingLevel != 0 && (thisInstance = ((JDIObjectValue)thisInstance).getEnclosingObject(this.fEnclosingLevel)) == null) {
                throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, InstructionsEvaluationMessages.PushThis_Unable_to_retrieve_the_correct_enclosing_instance_of__this__2, null));
            }
            this.push(thisInstance);
        }
    }

    public String toString() {
        return InstructionsEvaluationMessages.PushThis_push___this__1;
    }
}

