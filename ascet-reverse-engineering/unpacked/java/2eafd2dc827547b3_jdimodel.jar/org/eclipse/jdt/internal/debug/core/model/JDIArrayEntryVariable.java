/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayReference
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayReference;
import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIModificationVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;

public class JDIArrayEntryVariable
extends JDIModificationVariable {
    private int fIndex;
    private ArrayReference fArray;
    private String fReferenceTypeName = null;
    private IJavaValue fLogicalParent;

    public JDIArrayEntryVariable(JDIDebugTarget target, ArrayReference array, int index, IJavaValue logicalParent) {
        super(target);
        this.fArray = array;
        this.fIndex = index;
        this.fLogicalParent = logicalParent;
    }

    protected Value retrieveValue() {
        ArrayReference ar = this.getArrayReference();
        if (ar != null) {
            return ar.getValue(this.getIndex());
        }
        return null;
    }

    public String getName() {
        return "[" + this.getIndex() + "]";
    }

    protected void setJDIValue(Value value) throws DebugException {
        ArrayReference ar = this.getArrayReference();
        if (ar == null) {
            this.requestFailed(JDIDebugModelMessages.JDIArrayEntryVariable_value_modification_failed, null);
        }
        try {
            ar.setValue(this.getIndex(), value);
            this.fireChangeEvent(512);
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_modifying_variable_value, (Object[])new String[]{e.toString()}), e);
        }
        catch (InvalidTypeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_modifying_variable_value, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_modifying_variable_value, (Object[])new String[]{e.toString()}), e);
        }
    }

    protected ArrayReference getArrayReference() {
        return this.fArray;
    }

    protected int getIndex() {
        return this.fIndex;
    }

    public String getReferenceTypeName() throws DebugException {
        try {
            if (this.fReferenceTypeName == null) {
                this.fReferenceTypeName = this.stripBrackets(JDIReferenceType.getGenericName(this.getArrayReference().referenceType()));
            }
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_retrieving_reference_type, (Object[])new String[]{e.toString()}), e);
            return null;
        }
        return this.fReferenceTypeName;
    }

    protected String stripBrackets(String typeName) {
        int lastLeft = typeName.lastIndexOf("[]");
        if (lastLeft < 0) {
            return typeName;
        }
        StringBuffer buffer = new StringBuffer(typeName);
        buffer.replace(lastLeft, lastLeft + 2, "");
        return buffer.toString();
    }

    public String getSignature() throws DebugException {
        try {
            return ((ArrayType)this.getArrayReference().type()).componentSignature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_retrieving_type_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String getGenericSignature() throws DebugException {
        try {
            ReferenceType referenceType = this.getArrayReference().referenceType();
            String genericSignature = referenceType.genericSignature();
            if (genericSignature != null) {
                return genericSignature;
            }
            return referenceType.signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_retrieving_type_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    protected Type getUnderlyingType() throws DebugException {
        try {
            return ((ArrayType)this.getArrayReference().type()).componentType();
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_while_retrieving_type_of_array_entry, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIArrayEntryVariable_exception_while_retrieving_type_of_array_entry, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof JDIArrayEntryVariable) {
            JDIArrayEntryVariable entry = (JDIArrayEntryVariable)obj;
            if (this.fLogicalParent != null) {
                try {
                    return this.fLogicalParent.equals(entry.fLogicalParent) && this.getValue().equals(entry.getValue());
                }
                catch (CoreException coreException) {}
            }
            return entry.getArrayReference().equals((Object)this.getArrayReference()) && entry.getIndex() == this.getIndex();
        }
        return false;
    }

    public int hashCode() {
        if (this.fLogicalParent != null) {
            return this.fLogicalParent.hashCode() + this.getIndex();
        }
        return this.getArrayReference().hashCode() + this.getIndex();
    }
}

