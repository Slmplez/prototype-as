/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.serviceneeds.impl;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceTimeBased;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceneeds.impl.DiagEventDebounceAlgorithmImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DiagEventDebounceTimeBasedImpl
extends DiagEventDebounceAlgorithmImpl
implements DiagEventDebounceTimeBased {
    protected static final Double TIME_FAILED_THRESHOLD_EDEFAULT = new Double(0.0);
    protected Double timeFailedThreshold = TIME_FAILED_THRESHOLD_EDEFAULT;
    protected boolean timeFailedThresholdESet;
    protected static final Double TIME_PASSED_THRESHOLD_EDEFAULT = new Double(0.0);
    protected Double timePassedThreshold = TIME_PASSED_THRESHOLD_EDEFAULT;
    protected boolean timePassedThresholdESet;

    protected DiagEventDebounceTimeBasedImpl() {
    }

    protected EClass eStaticClass() {
        return ServiceneedsPackage.Literals.DIAG_EVENT_DEBOUNCE_TIME_BASED;
    }

    public Double getTimeFailedThreshold() {
        return this.timeFailedThreshold;
    }

    public void setTimeFailedThreshold(Double newTimeFailedThreshold) {
        Double oldTimeFailedThreshold = this.timeFailedThreshold;
        this.timeFailedThreshold = newTimeFailedThreshold;
        boolean oldTimeFailedThresholdESet = this.timeFailedThresholdESet;
        this.timeFailedThresholdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTimeFailedThreshold, (Object)this.timeFailedThreshold, !oldTimeFailedThresholdESet));
        }
    }

    public void unsetTimeFailedThreshold() {
        Double oldTimeFailedThreshold = this.timeFailedThreshold;
        boolean oldTimeFailedThresholdESet = this.timeFailedThresholdESet;
        this.timeFailedThreshold = TIME_FAILED_THRESHOLD_EDEFAULT;
        this.timeFailedThresholdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldTimeFailedThreshold, (Object)TIME_FAILED_THRESHOLD_EDEFAULT, oldTimeFailedThresholdESet));
        }
    }

    public boolean isSetTimeFailedThreshold() {
        return this.timeFailedThresholdESet;
    }

    public Double getTimePassedThreshold() {
        return this.timePassedThreshold;
    }

    public void setTimePassedThreshold(Double newTimePassedThreshold) {
        Double oldTimePassedThreshold = this.timePassedThreshold;
        this.timePassedThreshold = newTimePassedThreshold;
        boolean oldTimePassedThresholdESet = this.timePassedThresholdESet;
        this.timePassedThresholdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTimePassedThreshold, (Object)this.timePassedThreshold, !oldTimePassedThresholdESet));
        }
    }

    public void unsetTimePassedThreshold() {
        Double oldTimePassedThreshold = this.timePassedThreshold;
        boolean oldTimePassedThresholdESet = this.timePassedThresholdESet;
        this.timePassedThreshold = TIME_PASSED_THRESHOLD_EDEFAULT;
        this.timePassedThresholdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldTimePassedThreshold, (Object)TIME_PASSED_THRESHOLD_EDEFAULT, oldTimePassedThresholdESet));
        }
    }

    public boolean isSetTimePassedThreshold() {
        return this.timePassedThresholdESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getTimeFailedThreshold();
            }
            case 20: {
                return this.getTimePassedThreshold();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setTimeFailedThreshold((Double)newValue);
                return;
            }
            case 20: {
                this.setTimePassedThreshold((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetTimeFailedThreshold();
                return;
            }
            case 20: {
                this.unsetTimePassedThreshold();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetTimeFailedThreshold();
            }
            case 20: {
                return this.isSetTimePassedThreshold();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (timeFailedThreshold: ");
        if (this.timeFailedThresholdESet) {
            result.append(this.timeFailedThreshold);
        } else {
            result.append("<unset>");
        }
        result.append(", timePassedThreshold: ");
        if (this.timePassedThresholdESet) {
            result.append(this.timePassedThreshold);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

