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
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaInterfaceType;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.CompoundInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class PushStaticFieldVariable
extends CompoundInstruction {
    private String fFieldName;
    private String fQualifiedTypeName;

    public PushStaticFieldVariable(String fieldName, String qualifiedTypeName, int start) {
        super(start);
        this.fFieldName = fieldName;
        this.fQualifiedTypeName = qualifiedTypeName;
    }

    public void execute() throws CoreException {
        IJavaType receiver = this.getType(this.fQualifiedTypeName);
        IJavaFieldVariable field = null;
        if (receiver instanceof IJavaInterfaceType) {
            field = ((IJavaInterfaceType)receiver).getField(this.fFieldName);
        } else if (receiver instanceof IJavaClassType) {
            field = ((IJavaClassType)receiver).getField(this.fFieldName);
        }
        if (field == null) {
            String message = MessageFormat.format((String)InstructionsEvaluationMessages.PushStaticFieldVariable_Cannot_find_the_field__0__in__1__1, (Object[])new String[]{this.fFieldName, this.fQualifiedTypeName});
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, message, null));
        }
        this.push(field);
    }

    public String toString() {
        return MessageFormat.format((String)InstructionsEvaluationMessages.PushStaticFieldVariable_push_static_field__0__2, (Object[])new String[]{this.fFieldName});
    }
}

