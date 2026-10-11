/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimeRangeType;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeTiming;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CyclicTimingImpl
extends ARObjectImpl
implements CyclicTiming {
    protected TimeRangeType timeOffset;
    protected TimeRangeType timePeriod;

    protected CyclicTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.CYCLIC_TIMING;
    }

    public TransmissionModeTiming getTransmissionModeTiming() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TransmissionModeTiming)this.eContainer();
    }

    public NotificationChain basicSetTransmissionModeTiming(TransmissionModeTiming newTransmissionModeTiming, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTransmissionModeTiming, 4, msgs);
        return msgs;
    }

    public void setTransmissionModeTiming(TransmissionModeTiming newTransmissionModeTiming) {
        if (newTransmissionModeTiming != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTransmissionModeTiming != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTransmissionModeTiming)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTransmissionModeTiming != null) {
                msgs = ((InternalEObject)newTransmissionModeTiming).eInverseAdd((InternalEObject)this, 4, TransmissionModeTiming.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeTiming(newTransmissionModeTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTransmissionModeTiming, (Object)newTransmissionModeTiming));
        }
    }

    public TimeRangeType getTimeOffset() {
        return this.timeOffset;
    }

    public NotificationChain basicSetTimeOffset(TimeRangeType newTimeOffset, NotificationChain msgs) {
        TimeRangeType oldTimeOffset = this.timeOffset;
        this.timeOffset = newTimeOffset;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldTimeOffset, (Object)newTimeOffset);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTimeOffset(TimeRangeType newTimeOffset) {
        if (newTimeOffset != this.timeOffset) {
            NotificationChain msgs = null;
            if (this.timeOffset != null) {
                msgs = ((InternalEObject)this.timeOffset).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newTimeOffset != null) {
                msgs = ((InternalEObject)newTimeOffset).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetTimeOffset(newTimeOffset, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newTimeOffset, (Object)newTimeOffset));
        }
    }

    public TimeRangeType getTimePeriod() {
        return this.timePeriod;
    }

    public NotificationChain basicSetTimePeriod(TimeRangeType newTimePeriod, NotificationChain msgs) {
        TimeRangeType oldTimePeriod = this.timePeriod;
        this.timePeriod = newTimePeriod;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTimePeriod, (Object)newTimePeriod);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTimePeriod(TimeRangeType newTimePeriod) {
        if (newTimePeriod != this.timePeriod) {
            NotificationChain msgs = null;
            if (this.timePeriod != null) {
                msgs = ((InternalEObject)this.timePeriod).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newTimePeriod != null) {
                msgs = ((InternalEObject)newTimePeriod).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetTimePeriod(newTimePeriod, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newTimePeriod, (Object)newTimePeriod));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTransmissionModeTiming((TransmissionModeTiming)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTransmissionModeTiming(null, msgs);
            }
            case 5: {
                return this.basicSetTimeOffset(null, msgs);
            }
            case 6: {
                return this.basicSetTimePeriod(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 4, TransmissionModeTiming.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeTiming();
            }
            case 5: {
                return this.getTimeOffset();
            }
            case 6: {
                return this.getTimePeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeTiming((TransmissionModeTiming)newValue);
                return;
            }
            case 5: {
                this.setTimeOffset((TimeRangeType)newValue);
                return;
            }
            case 6: {
                this.setTimePeriod((TimeRangeType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeTiming(null);
                return;
            }
            case 5: {
                this.setTimeOffset(null);
                return;
            }
            case 6: {
                this.setTimePeriod(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeTiming() != null;
            }
            case 5: {
                return this.timeOffset != null;
            }
            case 6: {
                return this.timePeriod != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

