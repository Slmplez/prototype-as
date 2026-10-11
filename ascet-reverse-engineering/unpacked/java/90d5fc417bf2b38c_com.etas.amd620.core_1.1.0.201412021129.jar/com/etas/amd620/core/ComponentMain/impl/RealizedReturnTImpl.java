/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.RealizedReturnT;
import com.etas.amd620.core.ComponentMain.impl.ReturnTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RealizedReturnTImpl
extends ReturnTImpl
implements RealizedReturnT {
    protected static final String MASTER_ELEMENT_OID_EDEFAULT = null;
    protected String masterElementOID = MASTER_ELEMENT_OID_EDEFAULT;

    protected RealizedReturnTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.REALIZED_RETURN_T;
    }

    @Override
    public String getMasterElementOID() {
        return this.masterElementOID;
    }

    @Override
    public void setMasterElementOID(String newMasterElementOID) {
        String oldMasterElementOID = this.masterElementOID;
        this.masterElementOID = newMasterElementOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMasterElementOID, (Object)this.masterElementOID));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getMasterElementOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setMasterElementOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setMasterElementOID(MASTER_ELEMENT_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return MASTER_ELEMENT_OID_EDEFAULT == null ? this.masterElementOID != null : !MASTER_ELEMENT_OID_EDEFAULT.equals(this.masterElementOID);
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (masterElementOID: ");
        result.append(this.masterElementOID);
        result.append(')');
        return result.toString();
    }
}

