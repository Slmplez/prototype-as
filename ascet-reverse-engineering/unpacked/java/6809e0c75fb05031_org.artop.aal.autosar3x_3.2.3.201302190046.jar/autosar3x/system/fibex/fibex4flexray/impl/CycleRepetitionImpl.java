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

import autosar3x.system.fibex.fibex4flexray.CycleRepetition;
import autosar3x.system.fibex.fibex4flexray.CycleRepetitionType;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.impl.CommunicationCycleImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CycleRepetitionImpl
extends CommunicationCycleImpl
implements CycleRepetition {
    protected static final Integer BASE_CYCLE_EDEFAULT = new Integer(0);
    protected Integer baseCycle = BASE_CYCLE_EDEFAULT;
    protected boolean baseCycleESet;
    protected static final CycleRepetitionType CYCLE_REPETITION_EDEFAULT = CycleRepetitionType.CYCLE_REPETITION64;
    protected CycleRepetitionType cycleRepetition = CYCLE_REPETITION_EDEFAULT;
    protected boolean cycleRepetitionESet;

    protected CycleRepetitionImpl() {
    }

    protected EClass eStaticClass() {
        return Fibex4flexrayPackage.Literals.CYCLE_REPETITION;
    }

    public Integer getBaseCycle() {
        return this.baseCycle;
    }

    public void setBaseCycle(Integer newBaseCycle) {
        Integer oldBaseCycle = this.baseCycle;
        this.baseCycle = newBaseCycle;
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldBaseCycle, (Object)this.baseCycle, !oldBaseCycleESet));
        }
    }

    public void unsetBaseCycle() {
        Integer oldBaseCycle = this.baseCycle;
        boolean oldBaseCycleESet = this.baseCycleESet;
        this.baseCycle = BASE_CYCLE_EDEFAULT;
        this.baseCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldBaseCycle, (Object)BASE_CYCLE_EDEFAULT, oldBaseCycleESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCycleRepetition, (Object)this.cycleRepetition, !oldCycleRepetitionESet));
        }
    }

    public void unsetCycleRepetition() {
        CycleRepetitionType oldCycleRepetition = this.cycleRepetition;
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetition = CYCLE_REPETITION_EDEFAULT;
        this.cycleRepetitionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCycleRepetition, (Object)CYCLE_REPETITION_EDEFAULT, oldCycleRepetitionESet));
        }
    }

    public boolean isSetCycleRepetition() {
        return this.cycleRepetitionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getBaseCycle();
            }
            case 6: {
                return this.getCycleRepetition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setBaseCycle((Integer)newValue);
                return;
            }
            case 6: {
                this.setCycleRepetition((CycleRepetitionType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetBaseCycle();
                return;
            }
            case 6: {
                this.unsetCycleRepetition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetBaseCycle();
            }
            case 6: {
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

