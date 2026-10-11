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
import autosar40.system.fibex.fibexcore.coretopology.CycleRepetition;
import autosar40.system.fibex.fibexcore.coretopology.CycleRepetitionType;
import autosar40.system.fibex.fibexcore.coretopology.impl.CommunicationCycleImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CycleRepetitionImpl
extends CommunicationCycleImpl
implements CycleRepetition {
    protected static final IntegerDatatype BASE_CYCLE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype baseCycle = BASE_CYCLE_EDEFAULT.clone();
    protected boolean baseCycleESet;
    protected static final CycleRepetitionType CYCLE_REPETITION_EDEFAULT = CycleRepetitionType.CYCLE_REPETITION1;
    protected CycleRepetitionType cycleRepetition = CYCLE_REPETITION_EDEFAULT;
    protected boolean cycleRepetitionESet;

    protected CycleRepetitionImpl() {
    }

    protected EClass eStaticClass() {
        return CoretopologyPackage.Literals.CYCLE_REPETITION;
    }

    public Integer getBaseCycle() {
        return (Integer)this.baseCycle.basicGetValue();
    }

    public void setBaseCycle(Integer newBaseCycle) {
        Integer oldBaseCycle = (Integer)this.baseCycle.basicGetValue();
        this.baseCycle.basicSetValue((Object)newBaseCycle);
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldBaseCycle, (Object)newBaseCycle, !oldBaseCycleESet));
        }
    }

    public void unsetBaseCycle() {
        Integer oldBaseCycle = (Integer)this.baseCycle.basicGetValue();
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycle = BASE_CYCLE_EDEFAULT.clone();
        this.baseCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldBaseCycle, (Object)BASE_CYCLE_EDEFAULT, oldBaseCycleESet));
        }
    }

    public boolean isSetBaseCycle() {
        return this.baseCycleESet;
    }

    public CycleRepetitionType getCycleRepetition() {
        return this.cycleRepetition;
    }

    public void setCycleRepetition(CycleRepetitionType newCycleRepetition) {
        CycleRepetitionType oldCycleRepetition = this.cycleRepetition;
        this.cycleRepetition = newCycleRepetition == null ? CYCLE_REPETITION_EDEFAULT : newCycleRepetition;
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetitionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCycleRepetition, (Object)this.cycleRepetition, !oldCycleRepetitionESet));
        }
    }

    public void unsetCycleRepetition() {
        CycleRepetitionType oldCycleRepetition = this.cycleRepetition;
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetition = CYCLE_REPETITION_EDEFAULT;
        this.cycleRepetitionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCycleRepetition, (Object)CYCLE_REPETITION_EDEFAULT, oldCycleRepetitionESet));
        }
    }

    public boolean isSetCycleRepetition() {
        return this.cycleRepetitionESet;
    }

    public IntegerDatatype getBaseCycleData() {
        return this.baseCycle.clone();
    }

    public void setBaseCycleData(IntegerDatatype newBaseCycle) {
        this.baseCycle.setRadix((int)newBaseCycle.getRadix());
        this.baseCycle.setNoOfDigits((int)newBaseCycle.getNoOfDigits());
        this.setBaseCycle(newBaseCycle.getValue());
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getBaseCycle();
            }
            case 5: {
                return this.getCycleRepetition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setBaseCycle((Integer)newValue);
                return;
            }
            case 5: {
                this.setCycleRepetition((CycleRepetitionType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetBaseCycle();
                return;
            }
            case 5: {
                this.unsetCycleRepetition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetBaseCycle();
            }
            case 5: {
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
        result.append(" (BaseCycle: ");
        if (this.baseCycleESet) {
            result.append(this.baseCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", CycleRepetition: ");
        if (this.cycleRepetitionESet) {
            result.append((Object)this.cycleRepetition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

