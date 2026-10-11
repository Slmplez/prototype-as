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
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.DataConfigurationType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class DataConfigurationTypeImpl
extends MinimalEObjectImpl.Container
implements DataConfigurationType {
    protected static final String DATA_SET_NAME_EDEFAULT = null;
    protected String dataSetName = DATA_SET_NAME_EDEFAULT;
    protected static final String DATA_SET_OID_EDEFAULT = null;
    protected String dataSetOID = DATA_SET_OID_EDEFAULT;

    protected DataConfigurationTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.DATA_CONFIGURATION_TYPE;
    }

    @Override
    public String getDataSetName() {
        return this.dataSetName;
    }

    @Override
    public void setDataSetName(String newDataSetName) {
        String oldDataSetName = this.dataSetName;
        this.dataSetName = newDataSetName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldDataSetName, (Object)this.dataSetName));
        }
    }

    @Override
    public String getDataSetOID() {
        return this.dataSetOID;
    }

    @Override
    public void setDataSetOID(String newDataSetOID) {
        String oldDataSetOID = this.dataSetOID;
        this.dataSetOID = newDataSetOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDataSetOID, (Object)this.dataSetOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getDataSetName();
            }
            case 1: {
                return this.getDataSetOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setDataSetName((String)newValue);
                return;
            }
            case 1: {
                this.setDataSetOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setDataSetName(DATA_SET_NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setDataSetOID(DATA_SET_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return DATA_SET_NAME_EDEFAULT == null ? this.dataSetName != null : !DATA_SET_NAME_EDEFAULT.equals(this.dataSetName);
            }
            case 1: {
                return DATA_SET_OID_EDEFAULT == null ? this.dataSetOID != null : !DATA_SET_OID_EDEFAULT.equals(this.dataSetOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (dataSetName: ");
        result.append(this.dataSetName);
        result.append(", dataSetOID: ");
        result.append(this.dataSetOID);
        result.append(')');
        return result.toString();
    }
}

