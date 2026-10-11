/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayReference
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.core.logicalstructures;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayReference;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaArrayType;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.HeapWalkingManager;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JDIPlaceholderVariable;
import org.eclipse.jdt.internal.debug.core.logicalstructures.LogicalStructuresMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIArrayValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIPlaceholderValue;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;

public class JDIAllInstancesValue
extends JDIArrayValue {
    private IJavaObject[] fInstances;
    private JDIReferenceType fRoot;
    private IJavaArrayType fType;
    private boolean fIsMoreThanPreference;

    public JDIAllInstancesValue(JDIDebugTarget target, JDIReferenceType root) {
        super(target, (ArrayReference)null);
        this.fRoot = root;
        try {
            IJavaType[] javaTypes = target.getJavaTypes("java.lang.Object[]");
            if (javaTypes.length > 0) {
                this.fType = (IJavaArrayType)javaTypes[0];
            }
        }
        catch (DebugException debugException) {}
    }

    protected IJavaObject[] getInstances() {
        if (this.fInstances != null) {
            return this.fInstances;
        }
        IJavaObject[] instances = new IJavaObject[]{};
        this.fIsMoreThanPreference = false;
        if (this.fRoot != null) {
            int max = HeapWalkingManager.getDefault().getAllInstancesMaxCount();
            try {
                if (max == 0) {
                    instances = this.fRoot.getInstances(max);
                } else {
                    instances = this.fRoot.getInstances(max + 1);
                    if (instances.length > max) {
                        instances[max] = new JDIPlaceholderValue((JDIDebugTarget)this.fRoot.getDebugTarget(), MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_2, (Object[])new String[]{Integer.toString(max)}));
                        this.fIsMoreThanPreference = true;
                    }
                }
            }
            catch (DebugException e) {
                JDIDebugPlugin.log(e);
            }
        }
        this.fInstances = instances;
        return instances;
    }

    public synchronized int getLength() throws DebugException {
        return this.getInstances().length;
    }

    public int getSize() throws DebugException {
        return this.getInstances().length;
    }

    public IJavaValue getValue(int index) throws DebugException {
        if (index > this.getInstances().length - 1 || index < 0) {
            this.internalError(LogicalStructuresMessages.JDIAllInstancesValue_0);
        }
        return this.getInstances()[index];
    }

    public IJavaValue[] getValues() throws DebugException {
        return this.getInstances();
    }

    public IVariable getVariable(int offset) throws DebugException {
        if (offset > this.getInstances().length - 1 || offset < 0) {
            this.internalError(LogicalStructuresMessages.JDIAllInstancesValue_1);
        }
        if (this.isMoreThanPreference() && offset == this.getInstances().length - 1) {
            return new JDIPlaceholderVariable(LogicalStructuresMessages.JDIAllInstancesValue_4, this.getInstances()[offset]);
        }
        return new JDIPlaceholderVariable(MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_5, (Object[])new String[]{Integer.toString(offset)}), this.getInstances()[offset]);
    }

    public IVariable[] getVariables(int offset, int length) throws DebugException {
        if (length == 0) {
            return new IVariable[0];
        }
        if (offset > this.getInstances().length - 1 || offset < 0) {
            this.internalError(LogicalStructuresMessages.JDIAllInstancesValue_1);
        }
        IVariable[] vars = new JDIPlaceholderVariable[length];
        int i = 0;
        while (i < length) {
            vars[i] = this.getVariable(i + offset);
            ++i;
        }
        return vars;
    }

    public IVariable[] getVariables() throws DebugException {
        return this.getVariables(0, this.getInstances().length);
    }

    public IJavaObject[] getReferringObjects(long max) throws DebugException {
        return new IJavaObject[0];
    }

    public boolean isAllocated() throws DebugException {
        return this.getJavaDebugTarget().isAvailable();
    }

    public int getInitialOffset() {
        return 0;
    }

    public boolean hasVariables() throws DebugException {
        return this.getInstances().length > 0;
    }

    public IJavaType getJavaType() throws DebugException {
        return this.fType;
    }

    public String getSignature() throws DebugException {
        return this.fType.getSignature();
    }

    public String getReferenceTypeName() throws DebugException {
        return this.fType.getName();
    }

    public String getValueString() throws DebugException {
        if (this.isMoreThanPreference()) {
            return MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_7, (Object[])new String[]{Integer.toString(this.getInstances().length - 1)});
        }
        if (this.getInstances().length == 1) {
            return MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_8, (Object[])new String[]{Integer.toString(this.getInstances().length)});
        }
        return MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_9, (Object[])new String[]{Integer.toString(this.getInstances().length)});
    }

    public String getDetailString() {
        StringBuffer buf = new StringBuffer();
        IJavaObject[] elements = this.getInstances();
        if (elements.length == 0) {
            buf.append(LogicalStructuresMessages.JDIAllInstancesValue_10);
        } else {
            String length = null;
            length = this.isMoreThanPreference() ? MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_11, (Object[])new String[]{Integer.toString(elements.length - 1)}) : Integer.toString(elements.length);
            if (elements.length == 1) {
                buf.append(MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_12, (Object[])new String[]{length}));
            } else {
                buf.append(MessageFormat.format((String)LogicalStructuresMessages.JDIAllInstancesValue_13, (Object[])new String[]{length}));
            }
            int i = 0;
            while (i < elements.length) {
                buf.append(elements[i] + "\n");
                ++i;
            }
        }
        return buf.toString();
    }

    protected boolean isMoreThanPreference() {
        this.getInstances();
        return this.fIsMoreThanPreference;
    }
}

