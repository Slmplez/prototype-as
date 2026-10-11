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
import com.etas.amd620.core.ComponentData.ParameterType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ParameterTypeImpl
extends MinimalEObjectImpl.Container
implements ParameterType {
    protected static final String FORMAL_NAME_EDEFAULT = null;
    protected String formalName = FORMAL_NAME_EDEFAULT;
    protected static final String FORMAL_OID_EDEFAULT = null;
    protected String formalOID = FORMAL_OID_EDEFAULT;
    protected static final String VALUE_NAME_EDEFAULT = null;
    protected String valueName = VALUE_NAME_EDEFAULT;
    protected static final String VALUE_OID_EDEFAULT = null;
    protected String valueOID = VALUE_OID_EDEFAULT;

    protected ParameterTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.PARAMETER_TYPE;
    }

    @Override
    public String getFormalName() {
        return this.formalName;
    }

    @Override
    public void setFormalName(String newFormalName) {
        String oldFormalName = this.formalName;
        this.formalName = newFormalName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldFormalName, (Object)this.formalName));
        }
    }

    @Override
    public String getFormalOID() {
        return this.formalOID;
    }

    @Override
    public void setFormalOID(String newFormalOID) {
        String oldFormalOID = this.formalOID;
        this.formalOID = newFormalOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldFormalOID, (Object)this.formalOID));
        }
    }

    @Override
    public String getValueName() {
        return this.valueName;
    }

    @Override
    public void setValueName(String newValueName) {
        String oldValueName = this.valueName;
        this.valueName = newValueName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldValueName, (Object)this.valueName));
        }
    }

    @Override
    public String getValueOID() {
        return this.valueOID;
    }

    @Override
    public void setValueOID(String newValueOID) {
        String oldValueOID = this.valueOID;
        this.valueOID = newValueOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldValueOID, (Object)this.valueOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getFormalName();
            }
            case 1: {
                return this.getFormalOID();
            }
            case 2: {
                return this.getValueName();
            }
            case 3: {
                return this.getValueOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setFormalName((String)newValue);
                return;
            }
            case 1: {
                this.setFormalOID((String)newValue);
                return;
            }
            case 2: {
                this.setValueName((String)newValue);
                return;
            }
            case 3: {
                this.setValueOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setFormalName(FORMAL_NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setFormalOID(FORMAL_OID_EDEFAULT);
                return;
            }
            case 2: {
                this.setValueName(VALUE_NAME_EDEFAULT);
                return;
            }
            case 3: {
                this.setValueOID(VALUE_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return FORMAL_NAME_EDEFAULT == null ? this.formalName != null : !FORMAL_NAME_EDEFAULT.equals(this.formalName);
            }
            case 1: {
                return FORMAL_OID_EDEFAULT == null ? this.formalOID != null : !FORMAL_OID_EDEFAULT.equals(this.formalOID);
            }
            case 2: {
                return VALUE_NAME_EDEFAULT == null ? this.valueName != null : !VALUE_NAME_EDEFAULT.equals(this.valueName);
            }
            case 3: {
                return VALUE_OID_EDEFAULT == null ? this.valueOID != null : !VALUE_OID_EDEFAULT.equals(this.valueOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (formalName: ");
        result.append(this.formalName);
        result.append(", formalOID: ");
        result.append(this.formalOID);
        result.append(", valueName: ");
        result.append(this.valueName);
        result.append(", valueOID: ");
        result.append(this.valueOID);
        result.append(')');
        return result.toString();
    }
}

