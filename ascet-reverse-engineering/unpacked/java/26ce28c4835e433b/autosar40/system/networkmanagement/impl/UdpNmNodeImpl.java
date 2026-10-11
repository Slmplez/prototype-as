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

import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.UdpNmNode;
import autosar40.system.networkmanagement.impl.NmNodeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class UdpNmNodeImpl
extends NmNodeImpl
implements UdpNmNode {
    protected static final Double NM_MSG_CYCLE_OFFSET_EDEFAULT = new Double(0.0);
    protected Double nmMsgCycleOffset = NM_MSG_CYCLE_OFFSET_EDEFAULT;
    protected boolean nmMsgCycleOffsetESet;

    protected UdpNmNodeImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.UDP_NM_NODE;
    }

    public Double getNmMsgCycleOffset() {
        return this.nmMsgCycleOffset;
    }

    public void setNmMsgCycleOffset(Double newNmMsgCycleOffset) {
        Double oldNmMsgCycleOffset = this.nmMsgCycleOffset;
        this.nmMsgCycleOffset = newNmMsgCycleOffset;
        boolean oldNmMsgCycleOffsetESet = this.nmMsgCycleOffsetESet;
        this.nmMsgCycleOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldNmMsgCycleOffset, (Object)this.nmMsgCycleOffset, !oldNmMsgCycleOffsetESet));
        }
    }

    public void unsetNmMsgCycleOffset() {
        Double oldNmMsgCycleOffset = this.nmMsgCycleOffset;
        boolean oldNmMsgCycleOffsetESet = this.nmMsgCycleOffsetESet;
        this.nmMsgCycleOffset = NM_MSG_CYCLE_OFFSET_EDEFAULT;
        this.nmMsgCycleOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldNmMsgCycleOffset, (Object)NM_MSG_CYCLE_OFFSET_EDEFAULT, oldNmMsgCycleOffsetESet));
        }
    }

    public boolean isSetNmMsgCycleOffset() {
        return this.nmMsgCycleOffsetESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getNmMsgCycleOffset();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setNmMsgCycleOffset((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetNmMsgCycleOffset();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.isSetNmMsgCycleOffset();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmMsgCycleOffset: ");
        if (this.nmMsgCycleOffsetESet) {
            result.append(this.nmMsgCycleOffset);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

