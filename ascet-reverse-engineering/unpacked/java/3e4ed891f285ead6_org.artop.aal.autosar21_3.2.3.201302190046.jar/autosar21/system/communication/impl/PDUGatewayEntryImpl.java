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
package autosar21.system.communication.impl;

import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.PDUGatewayEntry;
import autosar21.system.communication.PDUGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.impl.GatewayEntryImpl;
import autosar21.system.communication.instanceref.PDUGatewayEntryDestinationPDU;
import autosar21.system.communication.instanceref.PDUGatewayEntrySourcePDU;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PDUGatewayEntryImpl
extends GatewayEntryImpl
implements PDUGatewayEntry {
    protected static final PDUGatewayEntryActionOnTimeoutEnum ACTION_ON_TIMEOUT_EDEFAULT = PDUGatewayEntryActionOnTimeoutEnum.USE_DEFAULT_VALUE;
    protected PDUGatewayEntryActionOnTimeoutEnum actionOnTimeout = ACTION_ON_TIMEOUT_EDEFAULT;
    protected boolean actionOnTimeoutESet;
    protected PDUGatewayEntryDestinationPDU destinationPDU;
    protected PDUGatewayEntrySourcePDU sourcePDU;
    protected static final Double TIME_OUT_CYCLE_EDEFAULT = new Double(0.0);
    protected Double timeOutCycle = TIME_OUT_CYCLE_EDEFAULT;
    protected boolean timeOutCycleESet;

    protected PDUGatewayEntryImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.PDU_GATEWAY_ENTRY;
    }

    public PDUGatewayEntryActionOnTimeoutEnum getActionOnTimeout() {
        return this.actionOnTimeout;
    }

    public void setActionOnTimeout(PDUGatewayEntryActionOnTimeoutEnum newActionOnTimeout) {
        PDUGatewayEntryActionOnTimeoutEnum oldActionOnTimeout = this.actionOnTimeout;
        this.actionOnTimeout = newActionOnTimeout == null ? ACTION_ON_TIMEOUT_EDEFAULT : newActionOnTimeout;
        boolean oldActionOnTimeoutESet = this.actionOnTimeoutESet;
        this.actionOnTimeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldActionOnTimeout, (Object)this.actionOnTimeout, !oldActionOnTimeoutESet));
        }
    }

    public void unsetActionOnTimeout() {
        PDUGatewayEntryActionOnTimeoutEnum oldActionOnTimeout = this.actionOnTimeout;
        boolean oldActionOnTimeoutESet = this.actionOnTimeoutESet;
        this.actionOnTimeout = ACTION_ON_TIMEOUT_EDEFAULT;
        this.actionOnTimeoutESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldActionOnTimeout, (Object)ACTION_ON_TIMEOUT_EDEFAULT, oldActionOnTimeoutESet));
        }
    }

    public boolean isSetActionOnTimeout() {
        return this.actionOnTimeoutESet;
    }

    public PDUGatewayEntryDestinationPDU getDestinationPDU() {
        return this.destinationPDU;
    }

    public NotificationChain basicSetDestinationPDU(PDUGatewayEntryDestinationPDU newDestinationPDU, NotificationChain msgs) {
        PDUGatewayEntryDestinationPDU oldDestinationPDU = this.destinationPDU;
        this.destinationPDU = newDestinationPDU;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDestinationPDU, (Object)newDestinationPDU);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDestinationPDU(PDUGatewayEntryDestinationPDU newDestinationPDU) {
        if (newDestinationPDU != this.destinationPDU) {
            NotificationChain msgs = null;
            if (this.destinationPDU != null) {
                msgs = ((InternalEObject)this.destinationPDU).eInverseRemove((InternalEObject)this, 4, PDUGatewayEntryDestinationPDU.class, msgs);
            }
            if (newDestinationPDU != null) {
                msgs = ((InternalEObject)newDestinationPDU).eInverseAdd((InternalEObject)this, 4, PDUGatewayEntryDestinationPDU.class, msgs);
            }
            if ((msgs = this.basicSetDestinationPDU(newDestinationPDU, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newDestinationPDU, (Object)newDestinationPDU));
        }
    }

    public PDUGatewayEntrySourcePDU getSourcePDU() {
        return this.sourcePDU;
    }

    public NotificationChain basicSetSourcePDU(PDUGatewayEntrySourcePDU newSourcePDU, NotificationChain msgs) {
        PDUGatewayEntrySourcePDU oldSourcePDU = this.sourcePDU;
        this.sourcePDU = newSourcePDU;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSourcePDU, (Object)newSourcePDU);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSourcePDU(PDUGatewayEntrySourcePDU newSourcePDU) {
        if (newSourcePDU != this.sourcePDU) {
            NotificationChain msgs = null;
            if (this.sourcePDU != null) {
                msgs = ((InternalEObject)this.sourcePDU).eInverseRemove((InternalEObject)this, 4, PDUGatewayEntrySourcePDU.class, msgs);
            }
            if (newSourcePDU != null) {
                msgs = ((InternalEObject)newSourcePDU).eInverseAdd((InternalEObject)this, 4, PDUGatewayEntrySourcePDU.class, msgs);
            }
            if ((msgs = this.basicSetSourcePDU(newSourcePDU, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newSourcePDU, (Object)newSourcePDU));
        }
    }

    public Double getTimeOutCycle() {
        return this.timeOutCycle;
    }

    public void setTimeOutCycle(Double newTimeOutCycle) {
        Double oldTimeOutCycle = this.timeOutCycle;
        this.timeOutCycle = newTimeOutCycle;
        boolean oldTimeOutCycleESet = this.timeOutCycleESet;
        this.timeOutCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldTimeOutCycle, (Object)this.timeOutCycle, !oldTimeOutCycleESet));
        }
    }

    public void unsetTimeOutCycle() {
        Double oldTimeOutCycle = this.timeOutCycle;
        boolean oldTimeOutCycleESet = this.timeOutCycleESet;
        this.timeOutCycle = TIME_OUT_CYCLE_EDEFAULT;
        this.timeOutCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldTimeOutCycle, (Object)TIME_OUT_CYCLE_EDEFAULT, oldTimeOutCycleESet));
        }
    }

    public boolean isSetTimeOutCycle() {
        return this.timeOutCycleESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.destinationPDU != null) {
                    msgs = ((InternalEObject)this.destinationPDU).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetDestinationPDU((PDUGatewayEntryDestinationPDU)otherEnd, msgs);
            }
            case 8: {
                if (this.sourcePDU != null) {
                    msgs = ((InternalEObject)this.sourcePDU).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetSourcePDU((PDUGatewayEntrySourcePDU)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetDestinationPDU(null, msgs);
            }
            case 8: {
                return this.basicSetSourcePDU(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getActionOnTimeout();
            }
            case 7: {
                return this.getDestinationPDU();
            }
            case 8: {
                return this.getSourcePDU();
            }
            case 9: {
                return this.getTimeOutCycle();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setActionOnTimeout((PDUGatewayEntryActionOnTimeoutEnum)((Object)newValue));
                return;
            }
            case 7: {
                this.setDestinationPDU((PDUGatewayEntryDestinationPDU)newValue);
                return;
            }
            case 8: {
                this.setSourcePDU((PDUGatewayEntrySourcePDU)newValue);
                return;
            }
            case 9: {
                this.setTimeOutCycle((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetActionOnTimeout();
                return;
            }
            case 7: {
                this.setDestinationPDU(null);
                return;
            }
            case 8: {
                this.setSourcePDU(null);
                return;
            }
            case 9: {
                this.unsetTimeOutCycle();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetActionOnTimeout();
            }
            case 7: {
                return this.destinationPDU != null;
            }
            case 8: {
                return this.sourcePDU != null;
            }
            case 9: {
                return this.isSetTimeOutCycle();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (actionOnTimeout: ");
        if (this.actionOnTimeoutESet) {
            result.append((Object)this.actionOnTimeout);
        } else {
            result.append("<unset>");
        }
        result.append(", timeOutCycle: ");
        if (this.timeOutCycleESet) {
            result.append(this.timeOutCycle);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

