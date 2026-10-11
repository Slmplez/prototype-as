/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIVariable;

public class JDIThisVariable
extends JDIVariable {
    private ObjectReference fObject;

    public JDIThisVariable(JDIDebugTarget target, ObjectReference object) {
        super(target);
        this.fObject = object;
    }

    protected Value retrieveValue() {
        return this.fObject;
    }

    public String getName() {
        return "this";
    }

    public String getSignature() throws DebugException {
        try {
            return this.retrieveValue().type().signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThisVariableexception_retrieving_type_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String getGenericSignature() throws DebugException {
        return this.getSignature();
    }

    public String getReferenceTypeName() throws DebugException {
        try {
            return this.getValue().getReferenceTypeName();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThisVariableexception_retrieving_reference_type_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    protected Type getUnderlyingType() throws DebugException {
        try {
            return this.retrieveValue().type();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIThisVariable_exception_while_retrieving_type_this, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public boolean isPrivate() throws DebugException {
        try {
            return ((ReferenceType)this.getUnderlyingType()).isPrivate();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThisVariable_Exception_occurred_while_retrieving_modifiers__1, e);
            return false;
        }
    }

    public boolean isProtected() throws DebugException {
        try {
            return ((ReferenceType)this.getUnderlyingType()).isProtected();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThisVariable_Exception_occurred_while_retrieving_modifiers__1, e);
            return false;
        }
    }

    public boolean isPublic() throws DebugException {
        try {
            return ((ReferenceType)this.getUnderlyingType()).isPublic();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(JDIDebugModelMessages.JDIThisVariable_Exception_occurred_while_retrieving_modifiers__1, e);
            return false;
        }
    }

    public boolean equals(Object o) {
        if (o instanceof JDIThisVariable) {
            return ((JDIThisVariable)o).fObject.equals((Object)this.fObject);
        }
        return false;
    }

    public int hashCode() {
        return this.fObject.hashCode();
    }
}

