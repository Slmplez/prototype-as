/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IValue
 */
package org.eclipse.jdt.internal.debug.core.logicalstructures;

import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.jdt.debug.core.IJavaType;
import org.eclipse.jdt.debug.core.IJavaValue;
import org.eclipse.jdt.debug.core.IJavaVariable;

public class JDIPlaceholderVariable
extends PlatformObject
implements IJavaVariable {
    private String fName;
    private IJavaValue fValue;
    private IJavaValue fLogicalParent;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;

    public JDIPlaceholderVariable(String name, IJavaValue value) {
        this.fName = name;
        this.fValue = value;
    }

    public JDIPlaceholderVariable(String name, IJavaValue value, IJavaValue logicalParent) {
        this(name, value);
        this.fLogicalParent = logicalParent;
    }

    public String getSignature() throws DebugException {
        return ((IJavaValue)this.getValue()).getSignature();
    }

    public String getGenericSignature() throws DebugException {
        return ((IJavaValue)this.getValue()).getGenericSignature();
    }

    public IJavaType getJavaType() throws DebugException {
        return ((IJavaValue)this.getValue()).getJavaType();
    }

    public boolean isLocal() {
        return false;
    }

    public IValue getValue() {
        return this.fValue;
    }

    public String getName() {
        return this.fName;
    }

    public String getReferenceTypeName() throws DebugException {
        return ((IJavaValue)this.getValue()).getReferenceTypeName();
    }

    public boolean hasValueChanged() {
        return false;
    }

    public boolean isPublic() {
        return false;
    }

    public boolean isPrivate() {
        return false;
    }

    public boolean isProtected() {
        return false;
    }

    public boolean isPackagePrivate() {
        return false;
    }

    public boolean isFinal() {
        return false;
    }

    public boolean isStatic() {
        return false;
    }

    public boolean isSynthetic() {
        return false;
    }

    public String getModelIdentifier() {
        return this.getValue().getModelIdentifier();
    }

    public IDebugTarget getDebugTarget() {
        return ((IJavaValue)this.getValue()).getDebugTarget();
    }

    public ILaunch getLaunch() {
        return this.getValue().getLaunch();
    }

    public void setValue(String expression) {
    }

    public void setValue(IValue value) {
    }

    public boolean supportsValueModification() {
        return false;
    }

    public boolean verifyValue(String expression) {
        return false;
    }

    public boolean verifyValue(IValue value) {
        return false;
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
                if (clazz.equals(adapter)) break block11;
                Class<?> clazz2 = class$1;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$1 = Class.forName("org.eclipse.jdt.debug.core.IJavaModifiers");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if (!clazz2.equals(adapter)) break block12;
            }
            return this;
        }
        return super.getAdapter(adapter);
    }

    public boolean equals(Object obj) {
        if (obj instanceof JDIPlaceholderVariable) {
            JDIPlaceholderVariable var = (JDIPlaceholderVariable)obj;
            if (this.fLogicalParent != null) {
                return var.getName().equals(this.getName()) && this.fLogicalParent.equals(var.fLogicalParent);
            }
            return var.getName().equals(this.getName()) && var.getValue().equals(this.getValue());
        }
        return false;
    }

    public int hashCode() {
        if (this.fLogicalParent != null) {
            return this.fLogicalParent.hashCode() + this.fName.hashCode();
        }
        return this.fName.hashCode() + this.fValue.hashCode();
    }
}

