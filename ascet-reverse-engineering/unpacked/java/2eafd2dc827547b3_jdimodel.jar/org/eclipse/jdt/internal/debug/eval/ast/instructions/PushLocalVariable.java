/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.engine.IRuntimeContext;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.SimpleInstruction;

public class PushLocalVariable
extends SimpleInstruction {
    private String fName;

    public PushLocalVariable(String name) {
        this.fName = name;
    }

    public void execute() throws CoreException {
        IVariable internalVariable = this.getInternalVariable(this.fName);
        if (internalVariable != null) {
            this.push(internalVariable);
            return;
        }
        IRuntimeContext context = this.getContext();
        IJavaVariable[] locals = context.getLocals();
        int i = 0;
        while (i < locals.length) {
            if (locals[i].getName().equals(this.getName())) {
                this.push(locals[i]);
                return;
            }
            ++i;
        }
        throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.PushLocalVariable_Cannot_find_the_variable____1, (Object[])new String[]{this.fName}), null));
    }

    protected String getName() {
        return this.fName;
    }

    public String toString() {
        return MessageFormat.format((String)InstructionsEvaluationMessages.PushLocalVariable_push____0___2, (Object[])new String[]{this.getName()});
    }
}

