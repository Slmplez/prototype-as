/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.Field
 *  com.sun.jdi.InterfaceType
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.ObjectReference
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.ClassType;
import com.sun.jdi.Field;
import com.sun.jdi.InterfaceType;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.ObjectReference;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.debug.core.IJavaFieldVariable;
import org.eclipse.jdt.debug.core.IJavaObject;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIModificationVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public class JDIFieldVariable
extends JDIModificationVariable
implements IJavaFieldVariable {
    private Field fField;
    private ObjectReference fObject;
    private ReferenceType fType;
    private IJavaValue fLogicalParent;

    public JDIFieldVariable(JDIDebugTarget target, Field field, ObjectReference objectRef, IJavaValue logicalParent) {
        super(target);
        this.fField = field;
        if (!field.isStatic()) {
            this.fObject = objectRef;
        }
        this.fType = (ReferenceType)objectRef.type();
        this.fLogicalParent = logicalParent;
    }

    public JDIFieldVariable(JDIDebugTarget target, Field field, ReferenceType refType) {
        super(target);
        this.fField = field;
        this.fType = refType;
    }

    protected Value retrieveValue() {
        if (this.getField().isStatic()) {
            return this.getField().declaringType().getValue(this.getField());
        }
        return this.getObjectReference().getValue(this.getField());
    }

    public IJavaType getDeclaringType() {
        return JDIType.createType((JDIDebugTarget)this.getDebugTarget(), (Type)this.fField.declaringType());
    }

    public String getName() throws DebugException {
        try {
            return this.getField().name();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_retrieving_field_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    protected void setJDIValue(Value value) throws DebugException {
        try {
            if (this.isStatic()) {
                ReferenceType declaringType = this.getField().declaringType();
                if (declaringType instanceof InterfaceType) {
                    this.requestFailed(JDIDebugModelMessages.JDIFieldVariable_0, null);
                }
                ((ClassType)declaringType).setValue(this.getField(), value);
            } else {
                this.getObjectReference().setValue(this.getField(), value);
            }
            this.fireChangeEvent(512);
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_modifying_value, (Object[])new String[]{e.toString()}), e);
        }
        catch (InvalidTypeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_modifying_value, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_modifying_value, (Object[])new String[]{e.toString()}), e);
        }
    }

    public boolean isVolatile() {
        return this.getField().isVolatile();
    }

    public boolean isTransient() {
        return this.getField().isTransient();
    }

    public boolean isSynthetic() {
        return this.getField().isSynthetic();
    }

    public boolean isPublic() {
        return this.getField().isPublic();
    }

    public boolean isPrivate() {
        return this.getField().isPrivate();
    }

    public boolean isProtected() {
        return this.getField().isProtected();
    }

    public boolean isPackagePrivate() {
        return this.getField().isPackagePrivate();
    }

    public boolean isStatic() {
        return this.getField().isStatic();
    }

    public boolean isFinal() {
        return this.getField().isFinal();
    }

    public String getReferenceTypeName() throws DebugException {
        String genericSignature = this.getField().genericSignature();
        if (genericSignature != null) {
            return JDIReferenceType.getTypeName(genericSignature);
        }
        Type underlyingType = this.getUnderlyingType();
        if (underlyingType instanceof ReferenceType) {
            return JDIReferenceType.getGenericName((ReferenceType)underlyingType);
        }
        return this.getField().typeName();
    }

    public String getSignature() throws DebugException {
        try {
            return this.getField().signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_retrieving_field_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String getGenericSignature() throws DebugException {
        try {
            String genericSignature = this.fField.genericSignature();
            if (genericSignature != null) {
                return genericSignature;
            }
            return this.fField.signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_retrieving_field_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public Field getField() {
        return this.fField;
    }

    public ObjectReference getObjectReference() {
        return this.fObject;
    }

    public ReferenceType getReferenceType() {
        return this.fType;
    }

    public boolean supportsValueModification() {
        if (this.getField().declaringType() instanceof InterfaceType) {
            return false;
        }
        return super.supportsValueModification();
    }

    public String toString() {
        return this.getField().toString();
    }

    protected Type getUnderlyingType() throws DebugException {
        try {
            return this.getField().type();
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_while_retrieving_type_of_field, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIFieldVariable_exception_while_retrieving_type_of_field, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public boolean equals(Object o) {
        if (o instanceof JDIFieldVariable) {
            JDIFieldVariable f = (JDIFieldVariable)o;
            if (this.fLogicalParent != null) {
                return this.fLogicalParent.equals(f.fLogicalParent) && f.fField.equals((Object)this.fField);
            }
            if (this.fObject != null) {
                return this.fObject.equals((Object)f.fObject) && f.fField.equals((Object)this.fField);
            }
            return f.fField.equals((Object)this.fField);
        }
        return false;
    }

    public int hashCode() {
        if (this.fLogicalParent != null) {
            return this.fLogicalParent.hashCode() + this.fField.hashCode();
        }
        if (this.fObject != null) {
            return this.fField.hashCode() + this.fObject.hashCode();
        }
        return this.fField.hashCode();
    }

    public IJavaObject getReceiver() {
        ObjectReference objectReference = this.getObjectReference();
        if (objectReference == null) {
            return null;
        }
        return (IJavaObject)((Object)JDIValue.createValue(this.getJavaDebugTarget(), (Value)objectReference));
    }

    public IJavaReferenceType getReceivingType() {
        return (IJavaReferenceType)((Object)JDIType.createType(this.getJavaDebugTarget(), (Type)this.getReferenceType()));
    }
}

