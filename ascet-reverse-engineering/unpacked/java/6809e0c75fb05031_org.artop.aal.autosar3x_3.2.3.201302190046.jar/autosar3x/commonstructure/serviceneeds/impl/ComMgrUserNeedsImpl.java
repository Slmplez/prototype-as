/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.commonstructure.serviceneeds.impl;

import autosar3x.commonstructure.serviceneeds.ComMgrUserNeeds;
import autosar3x.commonstructure.serviceneeds.MaxCommModeEnum;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceNeedsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ComMgrUserNeedsImpl
extends ServiceNeedsImpl
implements ComMgrUserNeeds {
    protected static final MaxCommModeEnum MAX_COMM_MODE_EDEFAULT = MaxCommModeEnum.NONE;
    protected MaxCommModeEnum maxCommMode = MAX_COMM_MODE_EDEFAULT;
    protected boolean maxCommModeESet;

    protected ComMgrUserNeedsImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.COM_MGR_USER_NEEDS;
    }

    public MaxCommModeEnum getMaxCommMode() {
        return this.maxCommMode;
    }

    public void setMaxCommMode(MaxCommModeEnum newMaxCommMode) {
        MaxCommModeEnum oldMaxCommMode = this.maxCommMode;
        this.maxCommMode = newMaxCommMode == null ? MAX_COMM_MODE_EDEFAULT : newMaxCommMode;
        boolean oldMaxCommModeESet = this.maxCommModeESet;
        this.maxCommModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldMaxCommMode, (Object)this.maxCommMode, !oldMaxCommModeESet));
        }
    }

    public void unsetMaxCommMode() {
        MaxCommModeEnum oldMaxCommMode = this.maxCommMode;
        boolean oldMaxCommModeESet = this.maxCommModeESet;
        this.maxCommMode = MAX_COMM_MODE_EDEFAULT;
        this.maxCommModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldMaxCommMode, (Object)MAX_COMM_MODE_EDEFAULT, oldMaxCommModeESet));
        }
    }

    public boolean isSetMaxCommMode() {
        return this.maxCommModeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 17: {
                return this.getMaxCommMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 17: {
                this.setMaxCommMode((MaxCommModeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 17: {
                this.unsetMaxCommMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 17: {
                return this.isSetMaxCommMode();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxCommMode: ");
        if (this.maxCommModeESet) {
            result.append((Object)this.maxCommMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

