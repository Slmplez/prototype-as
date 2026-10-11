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
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDINullValue;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class PushFieldVariable
extends CompoundInstruction {
    private String fDeclaringTypeSignature;
    private String fName;
    private int fSuperClassLevel;

    public PushFieldVariable(String name, int superClassLevel, int start) {
        super(start);
        this.fName = name;
        this.fSuperClassLevel = superClassLevel;
    }

    public PushFieldVariable(String name, String declaringTypeSignature, int start) {
        super(start);
        this.fName = name;
        this.fDeclaringTypeSignature = declaringTypeSignature;
    }

    public void execute() throws CoreException {
        IJavaValue value = this.popValue();
        if (value instanceof JDINullValue) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, InstructionsEvaluationMessages.PushFieldVariable_0, null));
        }
        IJavaObject receiver = (IJavaObject)value;
        IJavaFieldVariable field = null;
        field = this.fDeclaringTypeSignature == null ? ((JDIObjectValue)receiver).getField(this.fName, this.fSuperClassLevel) : receiver.getField(this.fName, this.fDeclaringTypeSignature);
        if (field == null) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.PushFieldVariable_Cannot_find_the_field__0__for_the_object__1__1, (Object[])new String[]{this.fName, receiver.toString()}), null));
        }
        this.push(field);
    }

    public String toString() {
        return MessageFormat.format((String)InstructionsEvaluationMessages.PushFieldVariable_push_field__0__2, (Object[])new String[]{this.fName});
    }
}

