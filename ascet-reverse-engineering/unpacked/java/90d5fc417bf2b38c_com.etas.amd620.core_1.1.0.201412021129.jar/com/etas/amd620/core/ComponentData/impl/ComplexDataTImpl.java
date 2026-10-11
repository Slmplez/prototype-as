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

import com.etas.amd620.core.ComponentData.ComplexDataT;
import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ComplexDataTImpl
extends MinimalEObjectImpl.Container
implements ComplexDataT {
    protected static final byte[] CHECKSUM_EDEFAULT = null;
    protected byte[] checksum = CHECKSUM_EDEFAULT;
    protected static final String DATA_NAME_EDEFAULT = null;
    protected String dataName = DATA_NAME_EDEFAULT;
    protected static final String DATA_OID_EDEFAULT = null;
    protected String dataOID = DATA_OID_EDEFAULT;

    protected ComplexDataTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.COMPLEX_DATA_T;
    }

    @Override
    public byte[] getChecksum() {
        return this.checksum;
    }

    @Override
    public void setChecksum(byte[] newChecksum) {
        byte[] oldChecksum = this.checksum;
        this.checksum = newChecksum;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldChecksum, (Object)this.checksum));
        }
    }

    @Override
    public String getDataName() {
        return this.dataName;
    }

    @Override
    public void setDataName(String newDataName) {
        String oldDataName = this.dataName;
        this.dataName = newDataName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDataName, (Object)this.dataName));
        }
    }

    @Override
    public String getDataOID() {
        return this.dataOID;
    }

    @Override
    public void setDataOID(String newDataOID) {
        String oldDataOID = this.dataOID;
        this.dataOID = newDataOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldDataOID, (Object)this.dataOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getChecksum();
            }
            case 1: {
                return this.getDataName();
            }
            case 2: {
                return this.getDataOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setChecksum((byte[])newValue);
                return;
            }
            case 1: {
                this.setDataName((String)newValue);
                return;
            }
            case 2: {
                this.setDataOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setChecksum(CHECKSUM_EDEFAULT);
                return;
            }
            case 1: {
                this.setDataName(DATA_NAME_EDEFAULT);
                return;
            }
            case 2: {
                this.setDataOID(DATA_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return CHECKSUM_EDEFAULT == null ? this.checksum != null : !CHECKSUM_EDEFAULT.equals(this.checksum);
            }
            case 1: {
                return DATA_NAME_EDEFAULT == null ? this.dataName != null : !DATA_NAME_EDEFAULT.equals(this.dataName);
            }
            case 2: {
                return DATA_OID_EDEFAULT == null ? this.dataOID != null : !DATA_OID_EDEFAULT.equals(this.dataOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (checksum: ");
        result.append(this.checksum);
        result.append(", dataName: ");
        result.append(this.dataName);
        result.append(", dataOID: ");
        result.append(this.dataOID);
        result.append(')');
        return result.toString();
    }
}

