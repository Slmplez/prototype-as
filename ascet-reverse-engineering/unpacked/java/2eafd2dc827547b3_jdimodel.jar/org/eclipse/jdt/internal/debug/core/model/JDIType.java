/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ArrayType
 *  com.sun.jdi.ClassType
 *  com.sun.jdi.InterfaceType
 *  com.sun.jdi.Type
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ArrayType;
import com.sun.jdi.ClassType;
import com.sun.jdi.InterfaceType;
import com.sun.jdi.Type;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdi.TimeoutException;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.JDIDebugModel;
import org.eclipse.jdt.internal.debug.core.model.JDIArrayType;
import org.eclipse.jdt.internal.debug.core.model.JDIClassType;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugElement;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIInterfaceType;

public class JDIType
extends JDIDebugElement
implements IJavaType {
    private Type fType;

    protected JDIType(JDIDebugTarget target, Type type) {
        super(target);
        this.setUnderlyingType(type);
    }

    public void requestFailed(String message, Throwable e, int code) throws DebugException {
        this.throwDebugException(message, code, e);
    }

    protected void throwDebugException(String message, int code, Throwable exception) throws DebugException {
        throw new DebugException((IStatus)new Status(4, JDIDebugModel.getPluginIdentifier(), code, message, exception));
    }

    public void targetRequestFailed(String message, RuntimeException e) throws DebugException {
        if (e != null && !e.getClass().getName().startsWith("com.sun.jdi") && !(e instanceof TimeoutException)) {
            throw e;
        }
        this.requestFailed(message, e, 5010);
    }

    public static JDIType createType(JDIDebugTarget target, Type type) {
        if (type instanceof ArrayType) {
            return new JDIArrayType(target, (ArrayType)type);
        }
        if (type instanceof ClassType) {
            return new JDIClassType(target, (ClassType)type);
        }
        if (type instanceof InterfaceType) {
            return new JDIInterfaceType(target, (InterfaceType)type);
        }
        return new JDIType(target, type);
    }

    public String getSignature() throws DebugException {
        try {
            return this.getUnderlyingType().signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIType_exception_while_retrieving_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public Type getUnderlyingType() {
        return this.fType;
    }

    protected void setUnderlyingType(Type type) {
        this.fType = type;
    }

    public String toString() {
        return this.getUnderlyingType().toString();
    }

    public String getName() throws DebugException {
        try {
            return this.getUnderlyingType().name();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIType_exception_while_retrieving_type_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public boolean equals(Object object) {
        return object instanceof JDIType && this.fType.equals(((JDIType)object).fType);
    }

    public int hashCode() {
        return this.fType.hashCode();
    }
}

