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
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.model.JDINullValue;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class InstanceOfOperator
extends CompoundInstruction {
    public static final String IS_INSTANCE = "isInstance";
    public static final String IS_INSTANCE_SIGNATURE = "(Ljava/lang/Object;)Z";

    public InstanceOfOperator(int start) {
        super(start);
    }

    public void execute() throws CoreException {
        IJavaType type = (IJavaType)this.pop();
        IJavaValue value = this.popValue();
        if (value instanceof JDINullValue) {
            this.pushNewValue(false);
            return;
        }
        IJavaObject object = (IJavaObject)value;
        IJavaObject classObject = this.getClassObject(type);
        if (classObject == null) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.InstanceOfOperator_No_class_object, (Object[])new String[]{type.getName()}), null));
        }
        this.push(classObject.sendMessage(IS_INSTANCE, IS_INSTANCE_SIGNATURE, new IJavaValue[]{object}, this.getContext().getThread(), false));
    }

    public String toString() {
        return InstructionsEvaluationMessages.InstanceOfOperator__instanceof___operator_3;
    }
}

