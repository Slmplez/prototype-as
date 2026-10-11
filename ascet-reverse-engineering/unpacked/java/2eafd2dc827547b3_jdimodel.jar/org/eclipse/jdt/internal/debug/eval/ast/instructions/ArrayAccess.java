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
import org.eclipse.jdt.debug.core.IJavaArray;
import org.eclipse.jdt.debug.core.IJavaPrimitiveValue;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.ArrayInstruction;
import org.eclipse.jdt.internal.debug.eval.ast.instructions.InstructionsEvaluationMessages;

public class ArrayAccess
extends ArrayInstruction {
    public ArrayAccess(int start) {
        super(start);
    }

    public void execute() throws CoreException {
        IJavaArray array;
        int index = ((IJavaPrimitiveValue)this.popValue()).getIntValue();
        if (index >= (array = this.popArray()).getLength() || index < 0) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, MessageFormat.format((String)InstructionsEvaluationMessages.ArrayAccess_illegal_index, (Object[])new Object[]{new Integer(index)}), null));
        }
        this.push(array.getVariable(index));
    }

    public String toString() {
        return InstructionsEvaluationMessages.ArrayAccess_array_access_1;
    }

    protected IJavaArray popArray() throws CoreException {
        IJavaValue value = this.popValue();
        if (value instanceof IJavaArray) {
            return (IJavaArray)value;
        }
        if (value.isNull()) {
            throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, InstructionsEvaluationMessages.ArrayAccess_0, null));
        }
        throw new CoreException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, "Internal error: attempt to access non-array object", null));
    }
}

