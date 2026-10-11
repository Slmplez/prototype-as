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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventComImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class TDEventCycleStartImpl
extends TDEventComImpl
implements TDEventCycleStart {
    protected static final IntegerDatatype CYCLE_REPETITION_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype cycleRepetition = CYCLE_REPETITION_EDEFAULT.clone();
    protected boolean cycleRepetitionESet;

    protected TDEventCycleStartImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventcomPackage.Literals.TD_EVENT_CYCLE_START;
    }

    public Integer getCycleRepetition() {
        return (Integer)this.cycleRepetition.basicGetValue();
    }

    public void setCycleRepetition(Integer newCycleRepetition) {
        Integer oldCycleRepetition = (Integer)this.cycleRepetition.basicGetValue();
        this.cycleRepetition.basicSetValue((Object)newCycleRepetition);
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetitionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldCycleRepetition, (Object)newCycleRepetition, !oldCycleRepetitionESet));
        }
    }

    public void unsetCycleRepetition() {
        Integer oldCycleRepetition = (Integer)this.cycleRepetition.basicGetValue();
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetition = CYCLE_REPETITION_EDEFAULT.clone();
        this.cycleRepetitionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldCycleRepetition, (Object)CYCLE_REPETITION_EDEFAULT, oldCycleRepetitionESet));
        }
    }

    public boolean isSetCycleRepetition() {
        return this.cycleRepetitionESet;
    }

    public IntegerDatatype getCycleRepetitionData() {
        return this.cycleRepetition.clone();
    }

    public void setCycleRepetitionData(IntegerDatatype newCycleRepetition) {
        this.cycleRepetition.setRadix((int)newCycleRepetition.getRadix());
        this.cycleRepetition.setNoOfDigits((int)newCycleRepetition.getNoOfDigits());
        this.setCycleRepetition(newCycleRepetition.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                return this.getCycleRepetition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setCycleRepetition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.unsetCycleRepetition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.isSetCycleRepetition();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (cycleRepetition: ");
        if (this.cycleRepetitionESet) {
            result.append(this.cycleRepetition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

