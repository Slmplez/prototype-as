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
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.RequestControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class IPduTimingImpl
extends ARObjectImpl
implements IPduTiming {
    protected CyclicTiming cyclicTiming;
    protected EventControlledTiming eventControlledTiming;
    protected static final Double MINIMUM_DELAY_EDEFAULT = new Double(0.0);
    protected Double minimumDelay = MINIMUM_DELAY_EDEFAULT;
    protected boolean minimumDelayESet;
    protected RequestControlledTiming requestControlledTiming;
    protected TransmissionModeDeclaration transmissionModeDeclaration;

    protected IPduTimingImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.IPDU_TIMING;
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
                msgs = ((InternalEObject)this.cyclicTiming).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newCyclicTiming != null) {
                msgs = ((InternalEObject)newCyclicTiming).eInverseAdd((InternalEObject)this, -5, null, msgs);
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
                msgs = ((InternalEObject)this.eventControlledTiming).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newEventControlledTiming != null) {
                msgs = ((InternalEObject)newEventControlledTiming).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetEventControlledTiming(newEventControlledTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newEventControlledTiming, (Object)newEventControlledTiming));
        }
    }

    public Double getMinimumDelay() {
        return this.minimumDelay;
    }

    public void setMinimumDelay(Double newMinimumDelay) {
        Double oldMinimumDelay = this.minimumDelay;
        this.minimumDelay = newMinimumDelay;
        boolean oldMinimumDelayESet = this.minimumDelayESet;
        this.minimumDelayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMinimumDelay, (Object)this.minimumDelay, !oldMinimumDelayESet));
        }
    }

    public void unsetMinimumDelay() {
        Double oldMinimumDelay = this.minimumDelay;
        boolean oldMinimumDelayESet = this.minimumDelayESet;
        this.minimumDelay = MINIMUM_DELAY_EDEFAULT;
        this.minimumDelayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMinimumDelay, (Object)MINIMUM_DELAY_EDEFAULT, oldMinimumDelayESet));
        }
    }

    public boolean isSetMinimumDelay() {
        return this.minimumDelayESet;
    }

    public RequestControlledTiming getRequestControlledTiming() {
        return this.requestControlledTiming;
    }

    public NotificationChain basicSetRequestControlledTiming(RequestControlledTiming newRequestControlledTiming, NotificationChain msgs) {
        RequestControlledTiming oldRequestControlledTiming = this.requestControlledTiming;
        this.requestControlledTiming = newRequestControlledTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldRequestControlledTiming, (Object)newRequestControlledTiming);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setRequestControlledTiming(RequestControlledTiming newRequestControlledTiming) {
        if (newRequestControlledTiming != this.requestControlledTiming) {
            NotificationChain msgs = null;
            if (this.requestControlledTiming != null) {
                msgs = ((InternalEObject)this.requestControlledTiming).eInverseRemove((InternalEObject)this, 4, RequestControlledTiming.class, msgs);
            }
            if (newRequestControlledTiming != null) {
                msgs = ((InternalEObject)newRequestControlledTiming).eInverseAdd((InternalEObject)this, 4, RequestControlledTiming.class, msgs);
            }
            if ((msgs = this.basicSetRequestControlledTiming(newRequestControlledTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newRequestControlledTiming, (Object)newRequestControlledTiming));
        }
    }

    public TransmissionModeDeclaration getTransmissionModeDeclaration() {
        return this.transmissionModeDeclaration;
    }

    public NotificationChain basicSetTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration, NotificationChain msgs) {
        TransmissionModeDeclaration oldTransmissionModeDeclaration = this.transmissionModeDeclaration;
        this.transmissionModeDeclaration = newTransmissionModeDeclaration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldTransmissionModeDeclaration, (Object)newTransmissionModeDeclaration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration) {
        if (newTransmissionModeDeclaration != this.transmissionModeDeclaration) {
            NotificationChain msgs = null;
            if (this.transmissionModeDeclaration != null) {
                msgs = ((InternalEObject)this.transmissionModeDeclaration).eInverseRemove((InternalEObject)this, 4, TransmissionModeDeclaration.class, msgs);
            }
            if (newTransmissionModeDeclaration != null) {
                msgs = ((InternalEObject)newTransmissionModeDeclaration).eInverseAdd((InternalEObject)this, 4, TransmissionModeDeclaration.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeDeclaration(newTransmissionModeDeclaration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newTransmissionModeDeclaration, (Object)newTransmissionModeDeclaration));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.requestControlledTiming != null) {
                    msgs = ((InternalEObject)this.requestControlledTiming).eInverseRemove((InternalEObject)this, -8, null, msgs);
                }
                return this.basicSetRequestControlledTiming((RequestControlledTiming)otherEnd, msgs);
            }
            case 8: {
                if (this.transmissionModeDeclaration != null) {
                    msgs = ((InternalEObject)this.transmissionModeDeclaration).eInverseRemove((InternalEObject)this, -9, null, msgs);
                }
                return this.basicSetTransmissionModeDeclaration((TransmissionModeDeclaration)otherEnd, msgs);
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
            case 7: {
                return this.basicSetRequestControlledTiming(null, msgs);
            }
            case 8: {
                return this.basicSetTransmissionModeDeclaration(null, msgs);
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
            case 6: {
                return this.getMinimumDelay();
            }
            case 7: {
                return this.getRequestControlledTiming();
            }
            case 8: {
                return this.getTransmissionModeDeclaration();
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
            case 6: {
                this.setMinimumDelay((Double)newValue);
                return;
            }
            case 7: {
                this.setRequestControlledTiming((RequestControlledTiming)newValue);
                return;
            }
            case 8: {
                this.setTransmissionModeDeclaration((TransmissionModeDeclaration)newValue);
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
            case 6: {
                this.unsetMinimumDelay();
                return;
            }
            case 7: {
                this.setRequestControlledTiming(null);
                return;
            }
            case 8: {
                this.setTransmissionModeDeclaration(null);
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
            case 6: {
                return this.isSetMinimumDelay();
            }
            case 7: {
                return this.requestControlledTiming != null;
            }
            case 8: {
                return this.transmissionModeDeclaration != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (minimumDelay: ");
        if (this.minimumDelayESet) {
            result.append(this.minimumDelay);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

