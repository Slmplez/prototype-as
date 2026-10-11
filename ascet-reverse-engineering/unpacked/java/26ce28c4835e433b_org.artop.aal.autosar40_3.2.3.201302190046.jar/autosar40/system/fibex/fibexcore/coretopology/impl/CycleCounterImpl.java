/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.coretopology.impl;

import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.fibex.fibexcore.coretopology.CycleCounter;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationCycleImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CycleCounterImpl
extends CommunicationCycleImpl
implements CycleCounter {
    protected static final IntegerDatatype CYCLE_COUNTER_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype cycleCounter = CYCLE_COUNTER_EDEFAULT.clone();
    protected boolean cycleCounterESet;

    protected CycleCounterImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.CYCLE_COUNTER;
    }

    public Integer getCycleCounter() {
        return (Integer)this.cycleCounter.basicGetValue();
    }

    public void setCycleCounter(Integer newCycleCounter) {
        Integer oldCycleCounter = (Integer)this.cycleCounter.basicGetValue();
        this.cycleCounter.basicSetValue((Object)newCycleCounter);
        boolean oldCycleCounterESet = this.cycleCounterESet;
        this.cycleCounterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldCycleCounter, (Object)newCycleCounter, !oldCycleCounterESet));
        }
    }

    public void unsetCycleCounter() {
        Integer oldCycleCounter = (Integer)this.cycleCounter.basicGetValue();
        boolean oldCycleCounterESet = this.cycleCounterESet;
        this.cycleCounter = CYCLE_COUNTER_EDEFAULT.clone();
        this.cycleCounterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldCycleCounter, (Object)CYCLE_COUNTER_EDEFAULT, oldCycleCounterESet));
        }
    }

    public boolean isSetCycleCounter() {
        return this.cycleCounterESet;
    }

    public IntegerDatatype getCycleCounterData() {
        return this.cycleCounter.clone();
    }

    public void setCycleCounterData(IntegerDatatype newCycleCounter) {
        this.cycleCounter.setRadix((int)newCycleCounter.getRadix());
        this.cycleCounter.setNoOfDigits((int)newCycleCounter.getNoOfDigits());
        this.setCycleCounter(newCycleCounter.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCycleCounter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCycleCounter((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetCycleCounter();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
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

