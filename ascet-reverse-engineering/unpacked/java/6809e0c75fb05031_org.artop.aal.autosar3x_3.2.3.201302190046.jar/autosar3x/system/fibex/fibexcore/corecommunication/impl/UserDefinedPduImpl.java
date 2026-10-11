/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.UserDefinedPdu;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.PduImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class UserDefinedPduImpl
extends PduImpl
implements UserDefinedPdu {
    protected static final String CDD_TYPE_EDEFAULT = "";
    protected String cddType = "";
    protected boolean cddTypeESet;

    protected UserDefinedPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.USER_DEFINED_PDU;
    }

    public String getCddType() {
        return this.cddType;
    }

    public void setCddType(String newCddType) {
        String oldCddType = this.cddType;
        this.cddType = newCddType;
        boolean oldCddTypeESet = this.cddTypeESet;
        this.cddTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCddType, (Object)this.cddType, !oldCddTypeESet));
        }
    }

    public void unsetCddType() {
        String oldCddType = this.cddType;
        boolean oldCddTypeESet = this.cddTypeESet;
        this.cddType = CDD_TYPE_EDEFAULT;
        this.cddTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldCddType, (Object)CDD_TYPE_EDEFAULT, oldCddTypeESet));
        }
    }

    public boolean isSetCddType() {
        return this.cddTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getCddType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setCddType((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetCddType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetCddType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (cddType: ");
        if (this.cddTypeESet) {
            result.append(this.cddType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

