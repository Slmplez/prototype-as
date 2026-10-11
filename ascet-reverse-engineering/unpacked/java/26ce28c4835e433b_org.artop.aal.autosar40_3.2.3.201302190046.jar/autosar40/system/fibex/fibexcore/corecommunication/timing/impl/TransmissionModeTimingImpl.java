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
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TransmissionModeTimingImpl
extends ARObjectImpl
implements TransmissionModeTiming {
    protected CyclicTiming cyclicTiming;
    protected EventControlledTiming eventControlledTiming;

    protected TransmissionModeTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.TRANSMISSION_MODE_TIMING;
    }

    public CyclicTiming getCyclicTiming() {
        return this.cyclicTiming;
    }

    public NotificationChain basicSetCyclicTiming(CyclicTiming newCyclicTiming, NotificationChain msgs) {
        CyclicTiming oldCyclicTiming = this.cyclicTiming;
        this.cyclicTiming = newCyclicTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldCyclicTiming, (Object)newCyclicTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCyclicTiming(CyclicTiming newCyclicTiming) {
        if (newCyclicTiming != this.cyclicTiming) {
            NotificationChain msgs = null;
            if (this.cyclicTiming != null) {
                msgs = ((InternalEObject)this.cyclicTiming).eInverseRemove((InternalEObject)this, 4, CyclicTiming.class, msgs);
            }
            if (newCyclicTiming != null) {
                msgs = ((InternalEObject)newCyclicTiming).eInverseAdd((InternalEObject)this, 4, CyclicTiming.class, msgs);
            }
            if ((msgs = this.basicSetCyclicTiming(newCyclicTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCyclicTiming, (Object)newCyclicTiming));
        }
    }

    public EventControlledTiming getEventControlledTiming() {
        return this.eventControlledTiming;
    }

    public NotificationChain basicSetEventControlledTiming(EventControlledTiming newEventControlledTiming, NotificationChain msgs) {
        EventControlledTiming oldEventControlledTiming = this.eventControlledTiming;
        this.eventControlledTiming = newEventControlledTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldEventControlledTiming, (Object)newEventControlledTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setEventControlledTiming(EventControlledTiming newEventControlledTiming) {
        if (newEventControlledTiming != this.eventControlledTiming) {
            NotificationChain msgs = null;
            if (this.eventControlledTiming != null) {
                msgs = ((InternalEObject)this.eventControlledTiming).eInverseRemove((InternalEObject)this, 4, EventControlledTiming.class, msgs);
            }
            if (newEventControlledTiming != null) {
                msgs = ((InternalEObject)newEventControlledTiming).eInverseAdd((InternalEObject)this, 4, EventControlledTiming.class, msgs);
            }
            if ((msgs = this.basicSetEventControlledTiming(newEventControlledTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newEventControlledTiming, (Object)newEventControlledTiming));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.cyclicTiming != null) {
                    msgs = ((InternalEObject)this.cyclicTiming).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetCyclicTiming((CyclicTiming)otherEnd, msgs);
            }
            case 5: {
                if (this.eventControlledTiming != null) {
                    msgs = ((InternalEObject)this.eventControlledTiming).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetEventControlledTiming((EventControlledTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCyclicTiming(null, msgs);
            }
            case 5: {
                return this.basicSetEventControlledTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCyclicTiming();
            }
            case 5: {
                return this.getEventControlledTiming();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCyclicTiming((CyclicTiming)newValue);
                return;
            }
            case 5: {
                this.setEventControlledTiming((EventControlledTiming)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCyclicTiming(null);
                return;
            }
            case 5: {
                this.setEventControlledTiming(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.cyclicTiming != null;
            }
            case 5: {
                return this.eventControlledTiming != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

