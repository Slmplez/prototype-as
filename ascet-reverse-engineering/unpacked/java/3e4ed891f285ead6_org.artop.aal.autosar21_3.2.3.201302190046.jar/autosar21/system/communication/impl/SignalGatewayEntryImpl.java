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
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.communication.SignalGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.impl.GatewayEntryImpl;
import autosar21.system.communication.instanceref.SignalGatewayEntryDestinationClusterSignal;
import autosar21.system.communication.instanceref.SignalGatewayEntrySourceClusterSignal;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SignalGatewayEntryImpl
extends GatewayEntryImpl
implements SignalGatewayEntry {
    protected static final SignalGatewayEntryActionOnTimeoutEnum ACTION_ON_TIMEOUT_EDEFAULT = SignalGatewayEntryActionOnTimeoutEnum.USE_DEFAULT_VALUE;
    protected SignalGatewayEntryActionOnTimeoutEnum actionOnTimeout = ACTION_ON_TIMEOUT_EDEFAULT;
    protected boolean actionOnTimeoutESet;
    protected SignalGatewayEntryDestinationClusterSignal destinationClusterSignal;
    protected SignalGatewayEntrySourceClusterSignal sourceClusterSignal;
    protected static final Double TIME_OUT_CYCLE_EDEFAULT = new Double(0.0);
    protected Double timeOutCycle = TIME_OUT_CYCLE_EDEFAULT;
    protected boolean timeOutCycleESet;

    protected SignalGatewayEntryImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.SIGNAL_GATEWAY_ENTRY;
    }

    public SignalGatewayEntryActionOnTimeoutEnum getActionOnTimeout() {
        return this.actionOnTimeout;
    }

    public void setActionOnTimeout(SignalGatewayEntryActionOnTimeoutEnum newActionOnTimeout) {
        SignalGatewayEntryActionOnTimeoutEnum oldActionOnTimeout = this.actionOnTimeout;
        this.actionOnTimeout = newActionOnTimeout == null ? ACTION_ON_TIMEOUT_EDEFAULT : newActionOnTimeout;
        boolean oldActionOnTimeoutESet = this.actionOnTimeoutESet;
        this.actionOnTimeoutESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldActionOnTimeout, (Object)this.actionOnTimeout, !oldActionOnTimeoutESet));
        }
    }

    public void unsetActionOnTimeout() {
        SignalGatewayEntryActionOnTimeoutEnum oldActionOnTimeout = this.actionOnTimeout;
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

    public SignalGatewayEntryDestinationClusterSignal getDestinationClusterSignal() {
        return this.destinationClusterSignal;
    }

    public NotificationChain basicSetDestinationClusterSignal(SignalGatewayEntryDestinationClusterSignal newDestinationClusterSignal, NotificationChain msgs) {
        SignalGatewayEntryDestinationClusterSignal oldDestinationClusterSignal = this.destinationClusterSignal;
        this.destinationClusterSignal = newDestinationClusterSignal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldDestinationClusterSignal, (Object)newDestinationClusterSignal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setDestinationClusterSignal(SignalGatewayEntryDestinationClusterSignal newDestinationClusterSignal) {
        if (newDestinationClusterSignal != this.destinationClusterSignal) {
            NotificationChain msgs = null;
            if (this.destinationClusterSignal != null) {
                msgs = ((InternalEObject)this.destinationClusterSignal).eInverseRemove((InternalEObject)this, 4, SignalGatewayEntryDestinationClusterSignal.class, msgs);
            }
            if (newDestinationClusterSignal != null) {
                msgs = ((InternalEObject)newDestinationClusterSignal).eInverseAdd((InternalEObject)this, 4, SignalGatewayEntryDestinationClusterSignal.class, msgs);
            }
            if ((msgs = this.basicSetDestinationClusterSignal(newDestinationClusterSignal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newDestinationClusterSignal, (Object)newDestinationClusterSignal));
        }
    }

    public SignalGatewayEntrySourceClusterSignal getSourceClusterSignal() {
        return this.sourceClusterSignal;
    }

    public NotificationChain basicSetSourceClusterSignal(SignalGatewayEntrySourceClusterSignal newSourceClusterSignal, NotificationChain msgs) {
        SignalGatewayEntrySourceClusterSignal oldSourceClusterSignal = this.sourceClusterSignal;
        this.sourceClusterSignal = newSourceClusterSignal;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSourceClusterSignal, (Object)newSourceClusterSignal);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSourceClusterSignal(SignalGatewayEntrySourceClusterSignal newSourceClusterSignal) {
        if (newSourceClusterSignal != this.sourceClusterSignal) {
            NotificationChain msgs = null;
            if (this.sourceClusterSignal != null) {
                msgs = ((InternalEObject)this.sourceClusterSignal).eInverseRemove((InternalEObject)this, 4, SignalGatewayEntrySourceClusterSignal.class, msgs);
            }
            if (newSourceClusterSignal != null) {
                msgs = ((InternalEObject)newSourceClusterSignal).eInverseAdd((InternalEObject)this, 4, SignalGatewayEntrySourceClusterSignal.class, msgs);
            }
            if ((msgs = this.basicSetSourceClusterSignal(newSourceClusterSignal, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newSourceClusterSignal, (Object)newSourceClusterSignal));
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
                if (this.destinationClusterSignal != null) {
                    msgs = ((InternalEObject)this.destinationClusterSignal).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetDestinationClusterSignal((SignalGatewayEntryDestinationClusterSignal)otherEnd, msgs);
            }
            case 8: {
                if (this.sourceClusterSignal != null) {
                    msgs = ((InternalEObject)this.sourceClusterSignal).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetSourceClusterSignal((SignalGatewayEntrySourceClusterSignal)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetDestinationClusterSignal(null, msgs);
            }
            case 8: {
                return this.basicSetSourceClusterSignal(null, msgs);
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
                return this.getDestinationClusterSignal();
            }
            case 8: {
                return this.getSourceClusterSignal();
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
                this.setActionOnTimeout((SignalGatewayEntryActionOnTimeoutEnum)((Object)newValue));
                return;
            }
            case 7: {
                this.setDestinationClusterSignal((SignalGatewayEntryDestinationClusterSignal)newValue);
                return;
            }
            case 8: {
                this.setSourceClusterSignal((SignalGatewayEntrySourceClusterSignal)newValue);
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
                this.setDestinationClusterSignal(null);
                return;
            }
            case 8: {
                this.setSourceClusterSignal(null);
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
                return this.destinationClusterSignal != null;
            }
            case 8: {
                return this.sourceClusterSignal != null;
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

