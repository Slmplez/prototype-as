/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.jdt.internal.debug.eval.ast.instructions;

import com.ibm.icu.text.MessageFormat;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class SendMessage
extends CompoundInstruction {
    private int fArgCount;
    private String fSelector;
    private String fSignature;
    private String fDeclaringType;

    public SendMessage(String selector, String signature, int argCount, String declaringType, int start) {
        super(start);
        this.fArgCount = argCount;
        this.fSelector = selector;
        this.fSignature = signature;
        this.fDeclaringType = declaringType;
    }

    public void execute() throws CoreException {
        IJavaValue[] args = new IJavaValue[this.fArgCount];
        int i = this.fArgCount - 1;
        while (i >= 0) {
            args[i] = this.popValue();
            --i;
        }
        Object receiver = this.pop();
        IJavaValue result = null;
        if (receiver instanceof IJavaVariable) {
            receiver = ((IJavaVariable)receiver).getValue();
        }
        if (!(receiver instanceof IJavaObject)) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, InstructionsEvaluationMessages.SendMessage_Attempt_to_send_a_message_to_a_non_object_value_1, null));
        }
        result = ((IJavaObject)receiver).sendMessage(this.fSelector, this.fSignature, args, this.getContext().getThread(), this.fDeclaringType);
        this.setLastValue(result);
        if (!this.fSignature.endsWith(")V")) {
            this.push(result);
        }
    }

    public String toString() {
        return MessageFormat.format((String)InstructionsEvaluationMessages.SendMessage_send_message__0___1__2, (Object[])new String[]{this.fSelector, this.fSignature});
    }
}

