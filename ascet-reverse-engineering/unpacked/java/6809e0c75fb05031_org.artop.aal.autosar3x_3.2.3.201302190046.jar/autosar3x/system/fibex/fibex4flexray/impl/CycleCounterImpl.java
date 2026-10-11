/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4flexray.impl;

import autosar3x.system.fibex.fibex4flexray.CycleCounter;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.impl.CommunicationCycleImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CycleCounterImpl
extends CommunicationCycleImpl
implements CycleCounter {
    protected static final Integer CYCLE_COUNTER_EDEFAULT = new Integer(0);
    protected Integer cycleCounter = CYCLE_COUNTER_EDEFAULT;
    protected boolean cycleCounterESet;

    protected CycleCounterImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4flexrayPackage.Literals.CYCLE_COUNTER;
    }

    public Integer getCycleCounter() {
        return this.cycleCounter;
    }

    public void setCycleCounter(Integer newCycleCounter) {
        Integer oldCycleCounter = this.cycleCounter;
        this.cycleCounter = newCycleCounter;
        boolean oldCycleCounterESet = this.cycleCounterESet;
        this.cycleCounterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCycleCounter, (Object)this.cycleCounter, !oldCycleCounterESet));
        }
    }

    public void unsetCycleCounter() {
        Integer oldCycleCounter = this.cycleCounter;
        boolean oldCycleCounterESet = this.cycleCounterESet;
        this.cycleCounter = CYCLE_COUNTER_EDEFAULT;
        this.cycleCounterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCycleCounter, (Object)CYCLE_COUNTER_EDEFAULT, oldCycleCounterESet));
        }
    }

    public boolean isSetCycleCounter() {
        return this.cycleCounterESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getCycleCounter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setCycleCounter((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetCycleCounter();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetCycleCounter();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (CycleCounter: ");
        if (this.cycleCounterESet) {
            result.append(this.cycleCounter);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

