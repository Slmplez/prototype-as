/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.topology.impl;

import autosar21.system.topology.CANBus;
import autosar21.system.topology.CANBusCanAddressingModeEnum;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.CommunicationClusterImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CANBusImpl
extends CommunicationClusterImpl
implements CANBus {
    protected static final CANBusCanAddressingModeEnum CAN_ADDRESSING_MODE_EDEFAULT = CANBusCanAddressingModeEnum.STANDARD;
    protected CANBusCanAddressingModeEnum canAddressingMode = CAN_ADDRESSING_MODE_EDEFAULT;
    protected boolean canAddressingModeESet;

    protected CANBusImpl() {
    }

    protected EClass eStaticClass() {
        return TopologyPackage.Literals.CAN_BUS;
    }

    public CANBusCanAddressingModeEnum getCanAddressingMode() {
        return this.canAddressingMode;
    }

    public void setCanAddressingMode(CANBusCanAddressingModeEnum newCanAddressingMode) {
        CANBusCanAddressingModeEnum oldCanAddressingMode = this.canAddressingMode;
        this.canAddressingMode = newCanAddressingMode == null ? CAN_ADDRESSING_MODE_EDEFAULT : newCanAddressingMode;
        boolean oldCanAddressingModeESet = this.canAddressingModeESet;
        this.canAddressingModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldCanAddressingMode, (Object)this.canAddressingMode, !oldCanAddressingModeESet));
        }
    }

    public void unsetCanAddressingMode() {
        CANBusCanAddressingModeEnum oldCanAddressingMode = this.canAddressingMode;
        boolean oldCanAddressingModeESet = this.canAddressingModeESet;
        this.canAddressingMode = CAN_ADDRESSING_MODE_EDEFAULT;
        this.canAddressingModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldCanAddressingMode, (Object)CAN_ADDRESSING_MODE_EDEFAULT, oldCanAddressingModeESet));
        }
    }

    public boolean isSetCanAddressingMode() {
        return this.canAddressingModeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getCanAddressingMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setCanAddressingMode((CANBusCanAddressingModeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetCanAddressingMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetCanAddressingMode();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (canAddressingMode: ");
        if (this.canAddressingModeESet) {
            result.append((Object)this.canAddressingMode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

