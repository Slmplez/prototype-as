/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.DcmIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.DiagPduType;
import autosar40.system.fibex.fibexcore.corecommunication.impl.IPduImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DcmIPduImpl
extends IPduImpl
implements DcmIPdu {
    protected static final DiagPduType DIAG_PDU_TYPE_EDEFAULT = DiagPduType.DIAG_RESPONSE;
    protected DiagPduType diagPduType = DIAG_PDU_TYPE_EDEFAULT;
    protected boolean diagPduTypeESet;

    protected DcmIPduImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.DCM_IPDU;
    }

    public DiagPduType getDiagPduType() {
        return this.diagPduType;
    }

    public void setDiagPduType(DiagPduType newDiagPduType) {
        DiagPduType oldDiagPduType = this.diagPduType;
        this.diagPduType = newDiagPduType == null ? DIAG_PDU_TYPE_EDEFAULT : newDiagPduType;
        boolean oldDiagPduTypeESet = this.diagPduTypeESet;
        this.diagPduTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldDiagPduType, (Object)this.diagPduType, !oldDiagPduTypeESet));
        }
    }

    public void unsetDiagPduType() {
        DiagPduType oldDiagPduType = this.diagPduType;
        boolean oldDiagPduTypeESet = this.diagPduTypeESet;
        this.diagPduType = DIAG_PDU_TYPE_EDEFAULT;
        this.diagPduTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldDiagPduType, (Object)DIAG_PDU_TYPE_EDEFAULT, oldDiagPduTypeESet));
        }
    }

    public boolean isSetDiagPduType() {
        return this.diagPduTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getDiagPduType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setDiagPduType((DiagPduType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.unsetDiagPduType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.isSetDiagPduType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (DiagPduType: ");
        if (this.diagPduTypeESet) {
            result.append((Object)this.diagPduType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

