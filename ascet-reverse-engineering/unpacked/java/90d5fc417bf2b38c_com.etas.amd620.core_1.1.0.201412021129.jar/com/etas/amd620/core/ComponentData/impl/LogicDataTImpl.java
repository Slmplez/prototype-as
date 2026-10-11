/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.LogicDataT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class LogicDataTImpl
extends MinimalEObjectImpl.Container
implements LogicDataT {
    protected static final boolean VALUE_EDEFAULT = false;
    protected boolean value = false;
    protected boolean valueESet;

    protected LogicDataTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.LOGIC_DATA_T;
    }

    @Override
    public boolean isValue() {
        return this.value;
    }

    @Override
    public void setValue(boolean newValue) {
        boolean oldValue = this.value;
        this.value = newValue;
        boolean oldValueESet = this.valueESet;
        this.valueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, oldValue, this.value, !oldValueESet));
        }
    }

    @Override
    public void unsetValue() {
        boolean oldValue = this.value;
        boolean oldValueESet = this.valueESet;
        this.value = false;
        this.valueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, oldValue, false, oldValueESet));
        }
    }

    @Override
    public boolean isSetValue() {
        return this.valueESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.isValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setValue((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetValue();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetValue();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (value: ");
        if (this.valueESet) {
            result.append(this.value);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

