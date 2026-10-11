/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ObjectReference
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IIndexedValue
 *  org.eclipse.debug.core.model.IVariable
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ObjectReference;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IIndexedValue;
import org.eclipse.debug.core.model.IVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.HeapWalkingManager;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.logicalstructures.JDIPlaceholderVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIObjectValue;
import org.eclipse.jdt.internal.debug.core.model.JDIPlaceholderValue;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceListEntryVariable;

public class JDIReferenceListValue
extends JDIObjectValue
implements IIndexedValue {
    private IJavaObject fRoot;
    private boolean fIsMoreThanPreference;
    private IJavaType fType = null;

    public JDIReferenceListValue(IJavaObject root) {
        super((JDIDebugTarget)root.getDebugTarget(), ((JDIObjectValue)root).getUnderlyingObject());
        this.fRoot = root;
        try {
            IJavaType[] javaTypes = ((JDIDebugTarget)root.getDebugTarget()).getJavaTypes("java.lang.Object[]");
            if (javaTypes.length > 0) {
                this.fType = javaTypes[0];
            }
        }
        catch (DebugException debugException) {}
    }

    protected synchronized IJavaObject[] getReferences() {
        try {
            int max = HeapWalkingManager.getDefault().getAllReferencesMaxCount();
            IJavaObject[] referringObjects = null;
            this.fIsMoreThanPreference = false;
            if (max == 0) {
                referringObjects = this.fRoot.getReferringObjects(max);
            } else {
                referringObjects = this.fRoot.getReferringObjects(max + 1);
                if (referringObjects.length > max) {
                    this.fIsMoreThanPreference = true;
                    referringObjects[max] = new JDIPlaceholderValue((JDIDebugTarget)this.fRoot.getDebugTarget(), MessageFormat.format((String)JDIDebugModelMessages.JDIReferenceListValue_9, (Object[])new String[]{Integer.toString(max)}));
                }
            }
            return referringObjects;
        }
        catch (DebugException e) {
            JDIDebugPlugin.log(e);
            return new IJavaObject[0];
        }
    }

    protected synchronized boolean referencesLoaded() {
        if (this.fRoot instanceof JDIObjectValue) {
            return ((JDIObjectValue)this.fRoot).isReferencesLoaded();
        }
        return false;
    }

    public IVariable[] getVariables() throws DebugException {
        IJavaObject[] elements = this.getReferences();
        IVariable[] vars = new JDIPlaceholderVariable[elements.length];
        int length = elements.length;
        if (this.fIsMoreThanPreference) {
            vars[--length] = new JDIPlaceholderVariable(JDIDebugModelMessages.JDIReferenceListValue_11, elements[length]);
        }
        int i = 0;
        while (i < length) {
            vars[i] = new JDIReferenceListEntryVariable(MessageFormat.format((String)JDIDebugModelMessages.JDIReferenceListValue_0, (Object[])new String[]{Integer.toString(i)}), elements[i]);
            ++i;
        }
        return vars;
    }

    public ObjectReference getUnderlyingObject() {
        return null;
    }

    public boolean hasVariables() throws DebugException {
        if (this.referencesLoaded()) {
            return this.getReferences().length > 0;
        }
        return true;
    }

    public boolean isAllocated() throws DebugException {
        return this.fRoot.isAllocated();
    }

    public IJavaType getJavaType() throws DebugException {
        return this.fType;
    }

    public String getSignature() throws DebugException {
        return "[Ljava/lang/Object;";
    }

    public String getReferenceTypeName() throws DebugException {
        return "java.lang.Object[]";
    }

    public String getValueString() throws DebugException {
        return "";
    }

    public String getDetailString() {
        StringBuffer buf = new StringBuffer();
        IJavaObject[] elements = this.getReferences();
        if (elements.length == 0) {
            buf.append(JDIDebugModelMessages.JDIReferenceListValue_2);
        } else {
            String length = null;
            length = this.fIsMoreThanPreference ? MessageFormat.format((String)JDIDebugModelMessages.JDIReferenceListValue_15, (Object[])new String[]{Integer.toString(elements.length - 1)}) : Integer.toString(elements.length);
            if (elements.length == 1) {
                buf.append(MessageFormat.format((String)JDIDebugModelMessages.JDIReferenceListValue_3, (Object[])new String[]{length}));
            } else {
                buf.append(MessageFormat.format((String)JDIDebugModelMessages.JDIReferenceListValue_4, (Object[])new String[]{length}));
            }
            int i = 0;
            while (i < elements.length) {
                buf.append(elements[i] + "\n");
                ++i;
            }
        }
        return buf.toString();
    }

    public String toString() {
        return MessageFormat.format((String)JDIDebugModelMessages.JDIReferenceListValue_6, (Object[])new String[]{this.getUnderlyingValue().toString()});
    }

    public boolean equals(Object o) {
        if (o instanceof JDIReferenceListValue) {
            JDIReferenceListValue ref = (JDIReferenceListValue)o;
            return ref.fRoot.equals(this.fRoot);
        }
        return false;
    }

    public int hashCode() {
        return this.getClass().hashCode() + this.fRoot.hashCode();
    }

    public int getInitialOffset() {
        return 0;
    }

    public int getSize() throws DebugException {
        return this.getVariables().length;
    }

    public IVariable getVariable(int offset) throws DebugException {
        IVariable[] variables = this.getVariables();
        if (offset < variables.length) {
            return variables[offset];
        }
        this.requestFailed(JDIDebugModelMessages.JDIReferenceListValue_7, new IndexOutOfBoundsException());
        return null;
    }

    public IVariable[] getVariables(int offset, int length) throws DebugException {
        IVariable[] variables = this.getVariables();
        if (offset < variables.length && offset + length <= variables.length) {
            IVariable[] vars = new IJavaVariable[length];
            System.arraycopy(variables, offset, vars, 0, length);
            return vars;
        }
        this.requestFailed(JDIDebugModelMessages.JDIReferenceListValue_8, new IndexOutOfBoundsException());
        return null;
    }
}

