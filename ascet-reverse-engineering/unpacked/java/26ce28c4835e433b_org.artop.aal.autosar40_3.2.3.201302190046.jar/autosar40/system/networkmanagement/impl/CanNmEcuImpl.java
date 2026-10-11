/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.networkmanagement.impl;

import autosar40.system.networkmanagement.CanNmEcu;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.BusspecificNmEcuImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanNmEcuImpl
extends BusspecificNmEcuImpl
implements CanNmEcu {
    protected static final Boolean NM_REPEAT_MSG_INDICATION_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmRepeatMsgIndicationEnabled = NM_REPEAT_MSG_INDICATION_ENABLED_EDEFAULT;
    protected boolean nmRepeatMsgIndicationEnabledESet;

    protected CanNmEcuImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.CAN_NM_ECU;
    }

    public Boolean getNmRepeatMsgIndicationEnabled() {
        return this.nmRepeatMsgIndicationEnabled;
    }

    public void setNmRepeatMsgIndicationEnabled(Boolean newNmRepeatMsgIndicationEnabled) {
        Boolean oldNmRepeatMsgIndicationEnabled = this.nmRepeatMsgIndicationEnabled;
        this.nmRepeatMsgIndicationEnabled = newNmRepeatMsgIndicationEnabled;
        boolean oldNmRepeatMsgIndicationEnabledESet = this.nmRepeatMsgIndicationEnabledESet;
        this.nmRepeatMsgIndicationEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNmRepeatMsgIndicationEnabled, (Object)this.nmRepeatMsgIndicationEnabled, !oldNmRepeatMsgIndicationEnabledESet));
        }
    }

    public void unsetNmRepeatMsgIndicationEnabled() {
        Boolean oldNmRepeatMsgIndicationEnabled = this.nmRepeatMsgIndicationEnabled;
        boolean oldNmRepeatMsgIndicationEnabledESet = this.nmRepeatMsgIndicationEnabledESet;
        this.nmRepeatMsgIndicationEnabled = NM_REPEAT_MSG_INDICATION_ENABLED_EDEFAULT;
        this.nmRepeatMsgIndicationEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldNmRepeatMsgIndicationEnabled, (Object)NM_REPEAT_MSG_INDICATION_ENABLED_EDEFAULT, oldNmRepeatMsgIndicationEnabledESet));
        }
    }

    public boolean isSetNmRepeatMsgIndicationEnabled() {
        return this.nmRepeatMsgIndicationEnabledESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getNmRepeatMsgIndicationEnabled();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setNmRepeatMsgIndicationEnabled((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetNmRepeatMsgIndicationEnabled();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetNmRepeatMsgIndicationEnabled();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmRepeatMsgIndicationEnabled: ");
        if (this.nmRepeatMsgIndicationEnabledESet) {
            result.append(this.nmRepeatMsgIndicationEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

