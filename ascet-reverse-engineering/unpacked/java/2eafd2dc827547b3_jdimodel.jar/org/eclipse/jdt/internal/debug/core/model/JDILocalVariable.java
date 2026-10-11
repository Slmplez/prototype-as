/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.ClassNotLoadedException
 *  com.sun.jdi.InvalidTypeException
 *  com.sun.jdi.LocalVariable
 *  com.sun.jdi.ReferenceType
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IThread
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.ClassNotLoadedException;
import com.sun.jdi.InvalidTypeException;
import com.sun.jdi.LocalVariable;
import com.sun.jdi.ReferenceType;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IThread;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIModificationVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.core.model.JDIStackFrame;

public class JDILocalVariable
extends JDIModificationVariable {
    private LocalVariable fLocal;
    private JDIStackFrame fStackFrame;

    public JDILocalVariable(JDIStackFrame frame, LocalVariable local) {
        super((JDIDebugTarget)frame.getDebugTarget());
        this.fStackFrame = frame;
        this.fLocal = local;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected Value retrieveValue() throws DebugException {
        IThread iThread = this.fStackFrame.getThread();
        synchronized (iThread) {
            if (this.getStackFrame().isSuspended()) {
                return this.getStackFrame().getUnderlyingStackFrame().getValue(this.fLocal);
            }
        }
        return this.getLastKnownValue();
    }

    public String getName() throws DebugException {
        try {
            return this.getLocal().name();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_retrieving_local_variable_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setJDIValue(Value value) throws DebugException {
        try {
            IThread iThread = this.getStackFrame().getThread();
            synchronized (iThread) {
                this.getStackFrame().getUnderlyingStackFrame().setValue(this.getLocal(), value);
            }
            this.fireChangeEvent(512);
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_modifying_local_variable_value, (Object[])new String[]{e.toString()}), e);
        }
        catch (InvalidTypeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_modifying_local_variable_value, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_modifying_local_variable_value, (Object[])new String[]{e.toString()}), e);
        }
    }

    public String getReferenceTypeName() throws DebugException {
        try {
            block6: {
                String genericSignature = this.getLocal().genericSignature();
                if (genericSignature != null) {
                    return JDIReferenceType.getTypeName(genericSignature);
                }
                try {
                    Type underlyingType = this.getUnderlyingType();
                    if (underlyingType instanceof ReferenceType) {
                        return JDIReferenceType.getGenericName((ReferenceType)underlyingType);
                    }
                }
                catch (DebugException e) {
                    if (e.getStatus().getException() instanceof ClassNotLoadedException) break block6;
                    throw e;
                }
            }
            return this.getLocal().typeName();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_retrieving_local_variable_type_name, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String getSignature() throws DebugException {
        try {
            return this.getLocal().signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_retrieving_local_variable_type_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    public String getGenericSignature() throws DebugException {
        try {
            String genericSignature = this.fLocal.genericSignature();
            if (genericSignature != null) {
                return genericSignature;
            }
            return this.fLocal.signature();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_retrieving_local_variable_type_signature, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    protected void setLocal(LocalVariable local) {
        this.fLocal = local;
    }

    protected LocalVariable getLocal() {
        return this.fLocal;
    }

    protected JDIStackFrame getStackFrame() {
        return this.fStackFrame;
    }

    public String toString() {
        return this.getLocal().toString();
    }

    protected Type getUnderlyingType() throws DebugException {
        try {
            return this.getLocal().type();
        }
        catch (ClassNotLoadedException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_while_retrieving_type_of_local_variable, (Object[])new String[]{e.toString()}), e);
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDILocalVariable_exception_while_retrieving_type_of_local_variable, (Object[])new String[]{e.toString()}), e);
        }
        return null;
    }

    public boolean isLocal() {
        return true;
    }
}

