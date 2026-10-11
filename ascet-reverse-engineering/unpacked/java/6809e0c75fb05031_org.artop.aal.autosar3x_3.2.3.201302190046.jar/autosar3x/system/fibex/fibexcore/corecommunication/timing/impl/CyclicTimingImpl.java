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
package autosar3x.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CyclicTimingImpl
extends ARObjectImpl
implements CyclicTiming {
    protected static final Integer FINAL_REPETITIONS_EDEFAULT = new Integer(0);
    protected Integer finalRepetitions = FINAL_REPETITIONS_EDEFAULT;
    protected boolean finalRepetitionsESet;
    protected TimeRangeType repeatingTime;
    protected TimeRangeType startingTime;

    protected CyclicTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.CYCLIC_TIMING;
    }

    public Integer getFinalRepetitions() {
        return this.finalRepetitions;
    }

    public void setFinalRepetitions(Integer newFinalRepetitions) {
        Integer oldFinalRepetitions = this.finalRepetitions;
        this.finalRepetitions = newFinalRepetitions;
        boolean oldFinalRepetitionsESet = this.finalRepetitionsESet;
        this.finalRepetitionsESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldFinalRepetitions, (Object)this.finalRepetitions, !oldFinalRepetitionsESet));
        }
    }

    public void unsetFinalRepetitions() {
        Integer oldFinalRepetitions = this.finalRepetitions;
        boolean oldFinalRepetitionsESet = this.finalRepetitionsESet;
        this.finalRepetitions = FINAL_REPETITIONS_EDEFAULT;
        this.finalRepetitionsESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldFinalRepetitions, (Object)FINAL_REPETITIONS_EDEFAULT, oldFinalRepetitionsESet));
        }
    }

    public boolean isSetFinalRepetitions() {
        return this.finalRepetitionsESet;
    }

    public TimeRangeType getRepeatingTime() {
        return this.repeatingTime;
    }

    public NotificationChain basicSetRepeatingTime(TimeRangeType newRepeatingTime, NotificationChain msgs) {
        TimeRangeType oldRepeatingTime = this.repeatingTime;
        this.repeatingTime = newRepeatingTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRepeatingTime, (Object)newRepeatingTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRepeatingTime(TimeRangeType newRepeatingTime) {
        if (newRepeatingTime != this.repeatingTime) {
            NotificationChain msgs = null;
            if (this.repeatingTime != null) {
                msgs = ((InternalEObject)this.repeatingTime).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newRepeatingTime != null) {
                msgs = ((InternalEObject)newRepeatingTime).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetRepeatingTime(newRepeatingTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newRepeatingTime, (Object)newRepeatingTime));
        }
    }

    public TimeRangeType getStartingTime() {
        return this.startingTime;
    }

    public NotificationChain basicSetStartingTime(TimeRangeType newStartingTime, NotificationChain msgs) {
        TimeRangeType oldStartingTime = this.startingTime;
        this.startingTime = newStartingTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldStartingTime, (Object)newStartingTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setStartingTime(TimeRangeType newStartingTime) {
        if (newStartingTime != this.startingTime) {
            NotificationChain msgs = null;
            if (this.startingTime != null) {
                msgs = ((InternalEObject)this.startingTime).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newStartingTime != null) {
                msgs = ((InternalEObject)newStartingTime).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetStartingTime(newStartingTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newStartingTime, (Object)newStartingTime));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetRepeatingTime(null, msgs);
            }
            case 6: {
                return this.basicSetStartingTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFinalRepetitions();
            }
            case 5: {
                return this.getRepeatingTime();
            }
            case 6: {
                return this.getStartingTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFinalRepetitions((Integer)newValue);
                return;
            }
            case 5: {
                this.setRepeatingTime((TimeRangeType)newValue);
                return;
            }
            case 6: {
                this.setStartingTime((TimeRangeType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetFinalRepetitions();
                return;
            }
            case 5: {
                this.setRepeatingTime(null);
                return;
            }
            case 6: {
                this.setStartingTime(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetFinalRepetitions();
            }
            case 5: {
                return this.repeatingTime != null;
            }
            case 6: {
                return this.startingTime != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (finalRepetitions: ");
        if (this.finalRepetitionsESet) {
            result.append(this.finalRepetitions);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

