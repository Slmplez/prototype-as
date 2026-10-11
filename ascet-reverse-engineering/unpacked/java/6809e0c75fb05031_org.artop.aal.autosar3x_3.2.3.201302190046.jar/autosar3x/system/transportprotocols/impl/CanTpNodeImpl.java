/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.transportprotocols.impl;

import autosar3x.system.transportprotocols.CanTpNode;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TpNodeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanTpNodeImpl
extends TpNodeImpl
implements CanTpNode {
    protected static final Integer RX_WFT_MAX_EDEFAULT = new Integer(0);
    protected Integer rxWftMax = RX_WFT_MAX_EDEFAULT;
    protected boolean rxWftMaxESet;
    protected static final Double TIMEOUT_AR_EDEFAULT = new Double(0.0);
    protected Double timeoutAr = TIMEOUT_AR_EDEFAULT;
    protected boolean timeoutArESet;

    protected CanTpNodeImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_NODE;
    }

    public Integer getRxWftMax() {
        return this.rxWftMax;
    }

    public void setRxWftMax(Integer newRxWftMax) {
        Integer oldRxWftMax = this.rxWftMax;
        this.rxWftMax = newRxWftMax;
        boolean oldRxWftMaxESet = this.rxWftMaxESet;
        this.rxWftMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldRxWftMax, (Object)this.rxWftMax, !oldRxWftMaxESet));
        }
    }

    public void unsetRxWftMax() {
        Integer oldRxWftMax = this.rxWftMax;
        boolean oldRxWftMaxESet = this.rxWftMaxESet;
        this.rxWftMax = RX_WFT_MAX_EDEFAULT;
        this.rxWftMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldRxWftMax, (Object)RX_WFT_MAX_EDEFAULT, oldRxWftMaxESet));
        }
    }

    public boolean isSetRxWftMax() {
        return this.rxWftMaxESet;
    }

    public Double getTimeoutAr() {
        return this.timeoutAr;
    }

    public void setTimeoutAr(Double newTimeoutAr) {
        Double oldTimeoutAr = this.timeoutAr;
        this.timeoutAr = newTimeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutArESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldTimeoutAr, (Object)this.timeoutAr, !oldTimeoutArESet));
        }
    }

    public void unsetTimeoutAr() {
        Double oldTimeoutAr = this.timeoutAr;
        boolean oldTimeoutArESet = this.timeoutArESet;
        this.timeoutAr = TIMEOUT_AR_EDEFAULT;
        this.timeoutArESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldTimeoutAr, (Object)TIMEOUT_AR_EDEFAULT, oldTimeoutArESet));
        }
    }

    public boolean isSetTimeoutAr() {
        return this.timeoutArESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getRxWftMax();
            }
            case 21: {
                return this.getTimeoutAr();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setRxWftMax((Integer)newValue);
                return;
            }
            case 21: {
                this.setTimeoutAr((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetRxWftMax();
                return;
            }
            case 21: {
                this.unsetTimeoutAr();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetRxWftMax();
            }
            case 21: {
                return this.isSetTimeoutAr();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (rxWftMax: ");
        if (this.rxWftMaxESet) {
            result.append(this.rxWftMax);
        } else {
            result.append("<unset>");
        }
        result.append(", timeoutAr: ");
        if (this.timeoutArESet) {
            result.append(this.timeoutAr);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

