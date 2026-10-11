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
import com.etas.amd620.core.ComponentMain.RealizedElementT;
import com.etas.amd620.core.ComponentMain.impl.ElementTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RealizedElementTImpl
extends ElementTImpl
implements RealizedElementT {
    protected static final String MASTER_ELEMENT_NAME_EDEFAULT = null;
    protected String masterElementName = MASTER_ELEMENT_NAME_EDEFAULT;
    protected static final String MASTER_ELEMENT_OID_EDEFAULT = null;
    protected String masterElementOID = MASTER_ELEMENT_OID_EDEFAULT;

    protected RealizedElementTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.REALIZED_ELEMENT_T;
    }

    @Override
    public String getMasterElementName() {
        return this.masterElementName;
    }

    @Override
    public void setMasterElementName(String newMasterElementName) {
        String oldMasterElementName = this.masterElementName;
        this.masterElementName = newMasterElementName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMasterElementName, (Object)this.masterElementName));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldMasterElementOID, (Object)this.masterElementOID));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getMasterElementName();
            }
            case 8: {
                return this.getMasterElementOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setMasterElementName((String)newValue);
                return;
            }
            case 8: {
                this.setMasterElementOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setMasterElementName(MASTER_ELEMENT_NAME_EDEFAULT);
                return;
            }
            case 8: {
                this.setMasterElementOID(MASTER_ELEMENT_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return MASTER_ELEMENT_NAME_EDEFAULT == null ? this.masterElementName != null : !MASTER_ELEMENT_NAME_EDEFAULT.equals(this.masterElementName);
            }
            case 8: {
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
        result.append(" (masterElementName: ");
        result.append(this.masterElementName);
        result.append(", masterElementOID: ");
        result.append(this.masterElementOID);
        result.append(')');
        return result.toString();
    }
}

