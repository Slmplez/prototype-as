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
import org.eclipse.jdt.debug.core.IJavaClassType;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class SendStaticMessage
extends CompoundInstruction {
    private int fArgCount;
    private String fSelector;
    private String fSignature;
    private String fTypeName;

    public SendStaticMessage(String typeName, String selector, String signature, int argCount, int start) {
        super(start);
        this.fArgCount = argCount;
        this.fSelector = selector;
        this.fSignature = signature;
        this.fTypeName = typeName;
    }

    public void execute() throws CoreException {
        IJavaValue[] args = new IJavaValue[this.fArgCount];
        int i = this.fArgCount - 1;
        while (i >= 0) {
            args[i] = this.popValue();
            --i;
        }
        IJavaType receiver = this.getType(this.fTypeName);
        if (!(receiver instanceof IJavaClassType)) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, InstructionsEvaluationMessages.SendStaticMessage_Cannot_send_a_static_message_to_a_non_class_type_object_1, null));
        }
        IJavaValue result = ((IJavaClassType)receiver).sendMessage(this.fSelector, this.fSignature, args, this.getContext().getThread());
        this.setLastValue(result);
        if (!this.fSignature.endsWith(")V")) {
            this.push(result);
        }
    }

    public String toString() {
        return MessageFormat.format((String)InstructionsEvaluationMessages.SendStaticMessage_send_static_message__0___1__2, (Object[])new String[]{this.fSelector, this.fSignature});
    }
}

