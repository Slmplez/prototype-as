/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.bswmodule.bswbehavior.impl;

import autosar3x.bswmodule.bswbehavior.BswCyclicEvent;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.impl.BswEventImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BswCyclicEventImpl
extends BswEventImpl
implements BswCyclicEvent {
    protected static final Double CYCLE_TIME_EDEFAULT = new Double(0.0);
    protected Double cycleTime = CYCLE_TIME_EDEFAULT;
    protected boolean cycleTimeESet;

    protected BswCyclicEventImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_CYCLIC_EVENT;
    }

    public Double getCycleTime() {
        return this.cycleTime;
    }

    public void setCycleTime(Double newCycleTime) {
        Double oldCycleTime = this.cycleTime;
        this.cycleTime = newCycleTime;
        boolean oldCycleTimeESet = this.cycleTimeESet;
        this.cycleTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCycleTime, (Object)this.cycleTime, !oldCycleTimeESet));
        }
    }

    public void unsetCycleTime() {
        Double oldCycleTime = this.cycleTime;
        boolean oldCycleTimeESet = this.cycleTimeESet;
        this.cycleTime = CYCLE_TIME_EDEFAULT;
        this.cycleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldCycleTime, (Object)CYCLE_TIME_EDEFAULT, oldCycleTimeESet));
        }
    }

    public boolean isSetCycleTime() {
        return this.cycleTimeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getCycleTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setCycleTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetCycleTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetCycleTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (cycleTime: ");
        if (this.cycleTimeESet) {
            result.append(this.cycleTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

