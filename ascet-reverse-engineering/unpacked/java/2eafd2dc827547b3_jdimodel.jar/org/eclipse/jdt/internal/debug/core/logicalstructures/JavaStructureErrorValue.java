/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.core.logicalstructures;

import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JDIPlaceholderVariable;
import org.eclipse.jdt.internal.debug.core.logicalstructures.LogicalStructuresMessages;

public class JavaStructureErrorValue
implements IJavaValue {
    private String[] fMessages;
    private IJavaValue fValue;

    public JavaStructureErrorValue(String errorMessage, IJavaValue value) {
        this.fMessages = new String[]{errorMessage};
        this.fValue = value;
    }

    public JavaStructureErrorValue(String[] errorMessages, IJavaValue value) {
        this.fMessages = errorMessages;
        this.fValue = value;
    }

    public IJavaValue getParentValue() {
        return this.fValue;
    }

    public String getSignature() throws DebugException {
        return null;
    }

    public String getGenericSignature() throws DebugException {
        return null;
    }

    public IJavaType getJavaType() throws DebugException {
        return null;
    }

    public String getReferenceTypeName() throws DebugException {
        return "";
    }

    public String getValueString() throws DebugException {
        return this.fMessages[0];
    }

    public boolean isAllocated() throws DebugException {
        return false;
    }

    public IVariable[] getVariables() throws DebugException {
        IVariable[] variables = new IVariable[this.fMessages.length];
        int i = 0;
        while (i < variables.length) {
            StringBuffer varName = new StringBuffer();
            if (variables.length > 1) {
                varName.append(LogicalStructuresMessages.JavaStructureErrorValue_0).append('[').append(i).append(']');
            } else {
                varName.append(LogicalStructuresMessages.JavaStructureErrorValue_1);
            }
            variables[i] = new JDIPlaceholderVariable(varName.toString(), new JavaStructureErrorValue(this.fMessages[i], this.fValue));
            ++i;
        }
        return variables;
    }

    public boolean hasVariables() throws DebugException {
        return false;
    }

    public String getModelIdentifier() {
        return JDIDebugModel.getPluginIdentifier();
    }

    public IDebugTarget getDebugTarget() {
        return this.fValue.getDebugTarget();
    }

    public ILaunch getLaunch() {
        return this.getDebugTarget().getLaunch();
    }

    public Object getAdapter(Class adapter) {
        return null;
    }

    public boolean isNull() {
        return false;
    }
}

