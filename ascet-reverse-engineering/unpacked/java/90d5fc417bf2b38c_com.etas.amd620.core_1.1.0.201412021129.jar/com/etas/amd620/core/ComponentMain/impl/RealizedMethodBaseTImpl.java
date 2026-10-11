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
import com.etas.amd620.core.ComponentMain.RealizedMethodBaseT;
import com.etas.amd620.core.ComponentMain.impl.MethodBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RealizedMethodBaseTImpl
extends MethodBaseTImpl
implements RealizedMethodBaseT {
    protected static final String INTERFACE_NAME_EDEFAULT = null;
    protected String interfaceName = INTERFACE_NAME_EDEFAULT;
    protected static final String INTERFACE_OID_EDEFAULT = null;
    protected String interfaceOID = INTERFACE_OID_EDEFAULT;
    protected static final String SIGNATURE_NAME_EDEFAULT = null;
    protected String signatureName = SIGNATURE_NAME_EDEFAULT;
    protected static final String SIGNATURE_OID_EDEFAULT = null;
    protected String signatureOID = SIGNATURE_OID_EDEFAULT;

    protected RealizedMethodBaseTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.REALIZED_METHOD_BASE_T;
    }

    @Override
    public String getInterfaceName() {
        return this.interfaceName;
    }

    @Override
    public void setInterfaceName(String newInterfaceName) {
        String oldInterfaceName = this.interfaceName;
        this.interfaceName = newInterfaceName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldInterfaceName, (Object)this.interfaceName));
        }
    }

    @Override
    public String getInterfaceOID() {
        return this.interfaceOID;
    }

    @Override
    public void setInterfaceOID(String newInterfaceOID) {
        String oldInterfaceOID = this.interfaceOID;
        this.interfaceOID = newInterfaceOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldInterfaceOID, (Object)this.interfaceOID));
        }
    }

    @Override
    public String getSignatureName() {
        return this.signatureName;
    }

    @Override
    public void setSignatureName(String newSignatureName) {
        String oldSignatureName = this.signatureName;
        this.signatureName = newSignatureName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldSignatureName, (Object)this.signatureName));
        }
    }

    @Override
    public String getSignatureOID() {
        return this.signatureOID;
    }

    @Override
    public void setSignatureOID(String newSignatureOID) {
        String oldSignatureOID = this.signatureOID;
        this.signatureOID = newSignatureOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldSignatureOID, (Object)this.signatureOID));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.getInterfaceName();
            }
            case 11: {
                return this.getInterfaceOID();
            }
            case 12: {
                return this.getSignatureName();
            }
            case 13: {
                return this.getSignatureOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setInterfaceName((String)newValue);
                return;
            }
            case 11: {
                this.setInterfaceOID((String)newValue);
                return;
            }
            case 12: {
                this.setSignatureName((String)newValue);
                return;
            }
            case 13: {
                this.setSignatureOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.setInterfaceName(INTERFACE_NAME_EDEFAULT);
                return;
            }
            case 11: {
                this.setInterfaceOID(INTERFACE_OID_EDEFAULT);
                return;
            }
            case 12: {
                this.setSignatureName(SIGNATURE_NAME_EDEFAULT);
                return;
            }
            case 13: {
                this.setSignatureOID(SIGNATURE_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return INTERFACE_NAME_EDEFAULT == null ? this.interfaceName != null : !INTERFACE_NAME_EDEFAULT.equals(this.interfaceName);
            }
            case 11: {
                return INTERFACE_OID_EDEFAULT == null ? this.interfaceOID != null : !INTERFACE_OID_EDEFAULT.equals(this.interfaceOID);
            }
            case 12: {
                return SIGNATURE_NAME_EDEFAULT == null ? this.signatureName != null : !SIGNATURE_NAME_EDEFAULT.equals(this.signatureName);
            }
            case 13: {
                return SIGNATURE_OID_EDEFAULT == null ? this.signatureOID != null : !SIGNATURE_OID_EDEFAULT.equals(this.signatureOID);
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
        result.append(" (interfaceName: ");
        result.append(this.interfaceName);
        result.append(", interfaceOID: ");
        result.append(this.interfaceOID);
        result.append(", signatureName: ");
        result.append(this.signatureName);
        result.append(", signatureOID: ");
        result.append(this.signatureOID);
        result.append(')');
        return result.toString();
    }
}

