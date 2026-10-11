/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  com.sun.jdi.Type
 *  com.sun.jdi.Value
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.model.IValue
 */
package org.eclipse.jdt.internal.debug.core.model;

import com.ibm.icu.text.MessageFormat;
import com.sun.jdi.Type;
import com.sun.jdi.Value;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaVariable;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugElement;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugModelMessages;
import org.eclipse.jdt.internal.debug.core.model.JDIDebugTarget;
import org.eclipse.jdt.internal.debug.core.model.JDIType;
import org.eclipse.jdt.internal.debug.core.model.JDIValue;

public abstract class JDIVariable
extends JDIDebugElement
implements IJavaVariable {
    private JDIValue fValue;
    private int fLastChangeIndex = -1;
    protected static final String jdiStringSignature = "Ljava/lang/String;";
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public JDIVariable(JDIDebugTarget target) {
        super(target);
    }

    public Object getAdapter(Class adapter) {
        block12: {
            block11: {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.debug.core.IJavaVariable");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter == clazz) break block11;
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("org.eclipse.jdt.debug.core.IJavaModifiers");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (adapter != clazz2) break block12;
            }
            return this;
        }
        return super.getAdapter(adapter);
    }

    protected final Value getCurrentValue() throws DebugException {
        try {
            return this.retrieveValue();
        }
        catch (RuntimeException e) {
            this.targetRequestFailed(MessageFormat.format((String)JDIDebugModelMessages.JDIVariable_exception_retrieving, (Object[])new String[]{e.toString()}), e);
            return null;
        }
    }

    protected abstract Value retrieveValue() throws DebugException;

    public IValue getValue() throws DebugException {
        Value currentValue = this.getCurrentValue();
        if (this.fValue == null) {
            this.fValue = JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), currentValue);
        } else {
            Value previousValue = this.fValue.getUnderlyingValue();
            if (currentValue == previousValue) {
                return this.fValue;
            }
            if (previousValue == null || currentValue == null) {
                this.fValue = JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), currentValue);
                this.setChangeCount(this.getJavaDebugTarget().getSuspendCount());
            } else if (!previousValue.equals(currentValue)) {
                this.fValue = JDIValue.createValue((JDIDebugTarget)this.getDebugTarget(), currentValue);
                this.setChangeCount(this.getJavaDebugTarget().getSuspendCount());
            }
        }
        return this.fValue;
    }

    public boolean supportsValueModification() {
        return false;
    }

    public void setValue(String expression) throws DebugException {
        this.notSupported(JDIDebugModelMessages.JDIVariable_does_not_support_value_modification);
    }

    public void setValue(IValue value) throws DebugException {
        this.notSupported(JDIDebugModelMessages.JDIVariable_does_not_support_value_modification);
    }

    public boolean verifyValue(String expression) throws DebugException {
        return false;
    }

    public boolean verifyValue(IValue value) throws DebugException {
        return false;
    }

    public boolean isSynthetic() {
        return false;
    }

    public boolean isPublic() throws DebugException {
        return false;
    }

    public boolean isPrivate() throws DebugException {
        return false;
    }

    public boolean isProtected() throws DebugException {
        return false;
    }

    public boolean isPackagePrivate() {
        return false;
    }

    public boolean isStatic() {
        return false;
    }

    public boolean isFinal() {
        return false;
    }

    public boolean isLocal() {
        return false;
    }

    public IJavaType getJavaType() throws DebugException {
        return JDIType.createType((JDIDebugTarget)this.getDebugTarget(), this.getUnderlyingType());
    }

    protected abstract Type getUnderlyingType() throws DebugException;

    protected Value getLastKnownValue() {
        if (this.fValue == null) {
            return null;
        }
        return this.fValue.getUnderlyingValue();
    }

    protected void setChangeCount(int count) {
        this.fLastChangeIndex = count;
    }

    protected int getChangeCount() {
        return this.fLastChangeIndex;
    }

    public boolean hasValueChanged() {
        return this.getChangeCount() == this.getJavaDebugTarget().getSuspendCount();
    }
}

