/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.networkmanagement.impl;

import autosar40.system.networkmanagement.CanNmNode;
import autosar40.system.networkmanagement.CanNmRangeConfig;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.NmNodeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanNmNodeImpl
extends NmNodeImpl
implements CanNmNode {
    protected static final Double NM_MSG_CYCLE_OFFSET_EDEFAULT = new Double(0.0);
    protected Double nmMsgCycleOffset = NM_MSG_CYCLE_OFFSET_EDEFAULT;
    protected boolean nmMsgCycleOffsetESet;
    protected static final Double NM_MSG_REDUCED_TIME_EDEFAULT = new Double(0.0);
    protected Double nmMsgReducedTime = NM_MSG_REDUCED_TIME_EDEFAULT;
    protected boolean nmMsgReducedTimeESet;
    protected CanNmRangeConfig nmRangeConfig;

    protected CanNmNodeImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.CAN_NM_NODE;
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

    public Double getNmMsgReducedTime() {
        return this.nmMsgReducedTime;
    }

    public void setNmMsgReducedTime(Double newNmMsgReducedTime) {
        Double oldNmMsgReducedTime = this.nmMsgReducedTime;
        this.nmMsgReducedTime = newNmMsgReducedTime;
        boolean oldNmMsgReducedTimeESet = this.nmMsgReducedTimeESet;
        this.nmMsgReducedTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldNmMsgReducedTime, (Object)this.nmMsgReducedTime, !oldNmMsgReducedTimeESet));
        }
    }

    public void unsetNmMsgReducedTime() {
        Double oldNmMsgReducedTime = this.nmMsgReducedTime;
        boolean oldNmMsgReducedTimeESet = this.nmMsgReducedTimeESet;
        this.nmMsgReducedTime = NM_MSG_REDUCED_TIME_EDEFAULT;
        this.nmMsgReducedTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldNmMsgReducedTime, (Object)NM_MSG_REDUCED_TIME_EDEFAULT, oldNmMsgReducedTimeESet));
        }
    }

    public boolean isSetNmMsgReducedTime() {
        return this.nmMsgReducedTimeESet;
    }

    public CanNmRangeConfig getNmRangeConfig() {
        return this.nmRangeConfig;
    }

    public NotificationChain basicSetNmRangeConfig(CanNmRangeConfig newNmRangeConfig, NotificationChain msgs) {
        CanNmRangeConfig oldNmRangeConfig = this.nmRangeConfig;
        this.nmRangeConfig = newNmRangeConfig;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldNmRangeConfig, (Object)newNmRangeConfig);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNmRangeConfig(CanNmRangeConfig newNmRangeConfig) {
        if (newNmRangeConfig != this.nmRangeConfig) {
            NotificationChain msgs = null;
            if (this.nmRangeConfig != null) {
                msgs = ((InternalEObject)this.nmRangeConfig).eInverseRemove((InternalEObject)this, 4, CanNmRangeConfig.class, msgs);
            }
            if (newNmRangeConfig != null) {
                msgs = ((InternalEObject)newNmRangeConfig).eInverseAdd((InternalEObject)this, 4, CanNmRangeConfig.class, msgs);
            }
            if ((msgs = this.basicSetNmRangeConfig(newNmRangeConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newNmRangeConfig, (Object)newNmRangeConfig));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                if (this.nmRangeConfig != null) {
                    msgs = ((InternalEObject)this.nmRangeConfig).eInverseRemove((InternalEObject)this, -29, null, msgs);
                }
                return this.basicSetNmRangeConfig((CanNmRangeConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return this.basicSetNmRangeConfig(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getNmMsgCycleOffset();
            }
            case 27: {
                return this.getNmMsgReducedTime();
            }
            case 28: {
                return this.getNmRangeConfig();
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
            case 27: {
                this.setNmMsgReducedTime((Double)newValue);
                return;
            }
            case 28: {
                this.setNmRangeConfig((CanNmRangeConfig)newValue);
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
            case 27: {
                this.unsetNmMsgReducedTime();
                return;
            }
            case 28: {
                this.setNmRangeConfig(null);
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
            case 27: {
                return this.isSetNmMsgReducedTime();
            }
            case 28: {
                return this.nmRangeConfig != null;
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
        result.append(", nmMsgReducedTime: ");
        if (this.nmMsgReducedTimeESet) {
            result.append(this.nmMsgReducedTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

