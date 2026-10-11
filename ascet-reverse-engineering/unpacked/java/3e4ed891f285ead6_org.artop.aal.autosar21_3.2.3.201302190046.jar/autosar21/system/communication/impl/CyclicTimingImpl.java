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
package autosar21.system.communication.impl;

import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.CyclicTiming;
import autosar21.system.communication.StartCondition;
import autosar21.system.communication.StopCondition;
import autosar21.system.communication.impl.TimingImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CyclicTimingImpl
extends TimingImpl
implements CyclicTiming {
    protected ActiveCondition activeCondition;
    protected static final Double CYCLE_TIME_EDEFAULT = new Double(0.0);
    protected Double cycleTime = CYCLE_TIME_EDEFAULT;
    protected boolean cycleTimeESet;
    protected StartCondition startCondition;
    protected static final Double STARTING_TIME_EDEFAULT = new Double(0.0);
    protected Double startingTime = STARTING_TIME_EDEFAULT;
    protected boolean startingTimeESet;
    protected StopCondition stopCondition;

    protected CyclicTimingImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.CYCLIC_TIMING;
    }

    public ActiveCondition getActiveCondition() {
        return this.activeCondition;
    }

    public NotificationChain basicSetActiveCondition(ActiveCondition newActiveCondition, NotificationChain msgs) {
        ActiveCondition oldActiveCondition = this.activeCondition;
        this.activeCondition = newActiveCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldActiveCondition, (Object)newActiveCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setActiveCondition(ActiveCondition newActiveCondition) {
        if (newActiveCondition != this.activeCondition) {
            NotificationChain msgs = null;
            if (this.activeCondition != null) {
                msgs = ((InternalEObject)this.activeCondition).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newActiveCondition != null) {
                msgs = ((InternalEObject)newActiveCondition).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetActiveCondition(newActiveCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newActiveCondition, (Object)newActiveCondition));
        }
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldCycleTime, (Object)this.cycleTime, !oldCycleTimeESet));
        }
    }

    public void unsetCycleTime() {
        Double oldCycleTime = this.cycleTime;
        boolean oldCycleTimeESet = this.cycleTimeESet;
        this.cycleTime = CYCLE_TIME_EDEFAULT;
        this.cycleTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldCycleTime, (Object)CYCLE_TIME_EDEFAULT, oldCycleTimeESet));
        }
    }

    public boolean isSetCycleTime() {
        return this.cycleTimeESet;
    }

    public StartCondition getStartCondition() {
        return this.startCondition;
    }

    public NotificationChain basicSetStartCondition(StartCondition newStartCondition, NotificationChain msgs) {
        StartCondition oldStartCondition = this.startCondition;
        this.startCondition = newStartCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldStartCondition, (Object)newStartCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setStartCondition(StartCondition newStartCondition) {
        if (newStartCondition != this.startCondition) {
            NotificationChain msgs = null;
            if (this.startCondition != null) {
                msgs = ((InternalEObject)this.startCondition).eInverseRemove((InternalEObject)this, 4, StartCondition.class, msgs);
            }
            if (newStartCondition != null) {
                msgs = ((InternalEObject)newStartCondition).eInverseAdd((InternalEObject)this, 4, StartCondition.class, msgs);
            }
            if ((msgs = this.basicSetStartCondition(newStartCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newStartCondition, (Object)newStartCondition));
        }
    }

    public Double getStartingTime() {
        return this.startingTime;
    }

    public void setStartingTime(Double newStartingTime) {
        Double oldStartingTime = this.startingTime;
        this.startingTime = newStartingTime;
        boolean oldStartingTimeESet = this.startingTimeESet;
        this.startingTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldStartingTime, (Object)this.startingTime, !oldStartingTimeESet));
        }
    }

    public void unsetStartingTime() {
        Double oldStartingTime = this.startingTime;
        boolean oldStartingTimeESet = this.startingTimeESet;
        this.startingTime = STARTING_TIME_EDEFAULT;
        this.startingTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldStartingTime, (Object)STARTING_TIME_EDEFAULT, oldStartingTimeESet));
        }
    }

    public boolean isSetStartingTime() {
        return this.startingTimeESet;
    }

    public StopCondition getStopCondition() {
        return this.stopCondition;
    }

    public NotificationChain basicSetStopCondition(StopCondition newStopCondition, NotificationChain msgs) {
        StopCondition oldStopCondition = this.stopCondition;
        this.stopCondition = newStopCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldStopCondition, (Object)newStopCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setStopCondition(StopCondition newStopCondition) {
        if (newStopCondition != this.stopCondition) {
            NotificationChain msgs = null;
            if (this.stopCondition != null) {
                msgs = ((InternalEObject)this.stopCondition).eInverseRemove((InternalEObject)this, 4, StopCondition.class, msgs);
            }
            if (newStopCondition != null) {
                msgs = ((InternalEObject)newStopCondition).eInverseAdd((InternalEObject)this, 4, StopCondition.class, msgs);
            }
            if ((msgs = this.basicSetStopCondition(newStopCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newStopCondition, (Object)newStopCondition));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.startCondition != null) {
                    msgs = ((InternalEObject)this.startCondition).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetStartCondition((StartCondition)otherEnd, msgs);
            }
            case 9: {
                if (this.stopCondition != null) {
                    msgs = ((InternalEObject)this.stopCondition).eInverseRemove((InternalEObject)this, -10, null, msgs);
                }
                return this.basicSetStopCondition((StopCondition)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.basicSetActiveCondition(null, msgs);
            }
            case 7: {
                return this.basicSetStartCondition(null, msgs);
            }
            case 9: {
                return this.basicSetStopCondition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getActiveCondition();
            }
            case 6: {
                return this.getCycleTime();
            }
            case 7: {
                return this.getStartCondition();
            }
            case 8: {
                return this.getStartingTime();
            }
            case 9: {
                return this.getStopCondition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setActiveCondition((ActiveCondition)newValue);
                return;
            }
            case 6: {
                this.setCycleTime((Double)newValue);
                return;
            }
            case 7: {
                this.setStartCondition((StartCondition)newValue);
                return;
            }
            case 8: {
                this.setStartingTime((Double)newValue);
                return;
            }
            case 9: {
                this.setStopCondition((StopCondition)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setActiveCondition(null);
                return;
            }
            case 6: {
                this.unsetCycleTime();
                return;
            }
            case 7: {
                this.setStartCondition(null);
                return;
            }
            case 8: {
                this.unsetStartingTime();
                return;
            }
            case 9: {
                this.setStopCondition(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.activeCondition != null;
            }
            case 6: {
                return this.isSetCycleTime();
            }
            case 7: {
                return this.startCondition != null;
            }
            case 8: {
                return this.isSetStartingTime();
            }
            case 9: {
                return this.stopCondition != null;
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
        result.append(", startingTime: ");
        if (this.startingTimeESet) {
            result.append(this.startingTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

