/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.communication.impl;

import autosar21.system.communication.AbsolutelyScheduledTiming;
import autosar21.system.communication.AbsolutelyScheduledTimingCycleRepetitionEnum;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.impl.TimingImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AbsolutelyScheduledTimingImpl
extends TimingImpl
implements AbsolutelyScheduledTiming {
    protected static final Integer BASE_CYCLE_EDEFAULT = new Integer(0);
    protected Integer baseCycle = BASE_CYCLE_EDEFAULT;
    protected boolean baseCycleESet;
    protected static final AbsolutelyScheduledTimingCycleRepetitionEnum CYCLE_REPETITION_EDEFAULT = AbsolutelyScheduledTimingCycleRepetitionEnum._1;
    protected AbsolutelyScheduledTimingCycleRepetitionEnum cycleRepetition = CYCLE_REPETITION_EDEFAULT;
    protected boolean cycleRepetitionESet;
    protected static final Integer SLOT_ID_EDEFAULT = new Integer(0);
    protected Integer slotID = SLOT_ID_EDEFAULT;
    protected boolean slotIDESet;

    protected AbsolutelyScheduledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.ABSOLUTELY_SCHEDULED_TIMING;
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

    public AbsolutelyScheduledTimingCycleRepetitionEnum getCycleRepetition() {
        return this.cycleRepetition;
    }

    public void setCycleRepetition(AbsolutelyScheduledTimingCycleRepetitionEnum newCycleRepetition) {
        AbsolutelyScheduledTimingCycleRepetitionEnum oldCycleRepetition = this.cycleRepetition;
        this.cycleRepetition = newCycleRepetition == null ? CYCLE_REPETITION_EDEFAULT : newCycleRepetition;
        boolean oldCycleRepetitionESet = this.cycleRepetitionESet;
        this.cycleRepetitionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCycleRepetition, (Object)this.cycleRepetition, !oldCycleRepetitionESet));
        }
    }

    public void unsetCycleRepetition() {
        AbsolutelyScheduledTimingCycleRepetitionEnum oldCycleRepetition = this.cycleRepetition;
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

    public Integer getSlotID() {
        return this.slotID;
    }

    public void setSlotID(Integer newSlotID) {
        Integer oldSlotID = this.slotID;
        this.slotID = newSlotID;
        boolean oldSlotIDESet = this.slotIDESet;
        this.slotIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSlotID, (Object)this.slotID, !oldSlotIDESet));
        }
    }

    public void unsetSlotID() {
        Integer oldSlotID = this.slotID;
        boolean oldSlotIDESet = this.slotIDESet;
        this.slotID = SLOT_ID_EDEFAULT;
        this.slotIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldSlotID, (Object)SLOT_ID_EDEFAULT, oldSlotIDESet));
        }
    }

    public boolean isSetSlotID() {
        return this.slotIDESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getBaseCycle();
            }
            case 6: {
                return this.getCycleRepetition();
            }
            case 7: {
                return this.getSlotID();
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
                this.setCycleRepetition((AbsolutelyScheduledTimingCycleRepetitionEnum)((Object)newValue));
                return;
            }
            case 7: {
                this.setSlotID((Integer)newValue);
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
            case 7: {
                this.unsetSlotID();
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
            case 7: {
                return this.isSetSlotID();
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
        result.append(", slotID: ");
        if (this.slotIDESet) {
            result.append(this.slotID);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

