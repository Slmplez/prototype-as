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
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.SporadicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventTriggeringConstraintImpl;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SporadicEventTriggeringImpl
extends EventTriggeringConstraintImpl
implements SporadicEventTriggering {
    protected MultidimensionalTime minimumInterArrivalTime;
    protected MultidimensionalTime maximumInterArrivalTime;
    protected MultidimensionalTime jitter;
    protected MultidimensionalTime period;

    protected SporadicEventTriggeringImpl() {
    }

    protected EClass eStaticClass() {
        return EventtriggeringconstraintPackage.Literals.SPORADIC_EVENT_TRIGGERING;
    }

    public MultidimensionalTime getMinimumInterArrivalTime() {
        return this.minimumInterArrivalTime;
    }

    public NotificationChain basicSetMinimumInterArrivalTime(MultidimensionalTime newMinimumInterArrivalTime, NotificationChain msgs) {
        MultidimensionalTime oldMinimumInterArrivalTime = this.minimumInterArrivalTime;
        this.minimumInterArrivalTime = newMinimumInterArrivalTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldMinimumInterArrivalTime, (Object)newMinimumInterArrivalTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMinimumInterArrivalTime(MultidimensionalTime newMinimumInterArrivalTime) {
        if (newMinimumInterArrivalTime != this.minimumInterArrivalTime) {
            NotificationChain msgs = null;
            if (this.minimumInterArrivalTime != null) {
                msgs = ((InternalEObject)this.minimumInterArrivalTime).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newMinimumInterArrivalTime != null) {
                msgs = ((InternalEObject)newMinimumInterArrivalTime).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetMinimumInterArrivalTime(newMinimumInterArrivalTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newMinimumInterArrivalTime, (Object)newMinimumInterArrivalTime));
        }
    }

    public MultidimensionalTime getMaximumInterArrivalTime() {
        return this.maximumInterArrivalTime;
    }

    public NotificationChain basicSetMaximumInterArrivalTime(MultidimensionalTime newMaximumInterArrivalTime, NotificationChain msgs) {
        MultidimensionalTime oldMaximumInterArrivalTime = this.maximumInterArrivalTime;
        this.maximumInterArrivalTime = newMaximumInterArrivalTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMaximumInterArrivalTime, (Object)newMaximumInterArrivalTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMaximumInterArrivalTime(MultidimensionalTime newMaximumInterArrivalTime) {
        if (newMaximumInterArrivalTime != this.maximumInterArrivalTime) {
            NotificationChain msgs = null;
            if (this.maximumInterArrivalTime != null) {
                msgs = ((InternalEObject)this.maximumInterArrivalTime).eInverseRemove((InternalEObject)this, -23, null, msgs);
            }
            if (newMaximumInterArrivalTime != null) {
                msgs = ((InternalEObject)newMaximumInterArrivalTime).eInverseAdd((InternalEObject)this, -23, null, msgs);
            }
            if ((msgs = this.basicSetMaximumInterArrivalTime(newMaximumInterArrivalTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newMaximumInterArrivalTime, (Object)newMaximumInterArrivalTime));
        }
    }

    public MultidimensionalTime getJitter() {
        return this.jitter;
    }

    public NotificationChain basicSetJitter(MultidimensionalTime newJitter, NotificationChain msgs) {
        MultidimensionalTime oldJitter = this.jitter;
        this.jitter = newJitter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldJitter, (Object)newJitter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setJitter(MultidimensionalTime newJitter) {
        if (newJitter != this.jitter) {
            NotificationChain msgs = null;
            if (this.jitter != null) {
                msgs = ((InternalEObject)this.jitter).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newJitter != null) {
                msgs = ((InternalEObject)newJitter).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetJitter(newJitter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newJitter, (Object)newJitter));
        }
    }

    public MultidimensionalTime getPeriod() {
        return this.period;
    }

    public NotificationChain basicSetPeriod(MultidimensionalTime newPeriod, NotificationChain msgs) {
        MultidimensionalTime oldPeriod = this.period;
        this.period = newPeriod;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldPeriod, (Object)newPeriod);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setPeriod(MultidimensionalTime newPeriod) {
        if (newPeriod != this.period) {
            NotificationChain msgs = null;
            if (this.period != null) {
                msgs = ((InternalEObject)this.period).eInverseRemove((InternalEObject)this, -25, null, msgs);
            }
            if (newPeriod != null) {
                msgs = ((InternalEObject)newPeriod).eInverseAdd((InternalEObject)this, -25, null, msgs);
            }
            if ((msgs = this.basicSetPeriod(newPeriod, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newPeriod, (Object)newPeriod));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return this.basicSetMinimumInterArrivalTime(null, msgs);
            }
            case 22: {
                return this.basicSetMaximumInterArrivalTime(null, msgs);
            }
            case 23: {
                return this.basicSetJitter(null, msgs);
            }
            case 24: {
                return this.basicSetPeriod(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getMinimumInterArrivalTime();
            }
            case 22: {
                return this.getMaximumInterArrivalTime();
            }
            case 23: {
                return this.getJitter();
            }
            case 24: {
                return this.getPeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setMinimumInterArrivalTime((MultidimensionalTime)newValue);
                return;
            }
            case 22: {
                this.setMaximumInterArrivalTime((MultidimensionalTime)newValue);
                return;
            }
            case 23: {
                this.setJitter((MultidimensionalTime)newValue);
                return;
            }
            case 24: {
                this.setPeriod((MultidimensionalTime)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setMinimumInterArrivalTime(null);
                return;
            }
            case 22: {
                this.setMaximumInterArrivalTime(null);
                return;
            }
            case 23: {
                this.setJitter(null);
                return;
            }
            case 24: {
                this.setPeriod(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.minimumInterArrivalTime != null;
            }
            case 22: {
                return this.maximumInterArrivalTime != null;
            }
            case 23: {
                return this.jitter != null;
            }
            case 24: {
                return this.period != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

