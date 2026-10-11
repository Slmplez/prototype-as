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
package autosar3x.system.fibex.fibexcore.corecommunication.timing.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.CyclicTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.EventControlledTiming;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TransmissionModeFalseTiming;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class TransmissionModeFalseTimingImpl
extends ARObjectImpl
implements TransmissionModeFalseTiming {
    protected CyclicTiming cyclicTiming;
    protected EventControlledTiming eventControlledTiming;

    protected TransmissionModeFalseTimingImpl() {
    }

    protected EClass eStaticClass() {
        return TimingPackage.Literals.TRANSMISSION_MODE_FALSE_TIMING;
    }

    public TransmissionModeDeclaration getTransmissionModeDeclaration() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (TransmissionModeDeclaration)this.eContainer();
    }

    public NotificationChain basicSetTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newTransmissionModeDeclaration, 4, msgs);
        return msgs;
    }

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration) {
        if (newTransmissionModeDeclaration != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newTransmissionModeDeclaration != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newTransmissionModeDeclaration)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newTransmissionModeDeclaration != null) {
                msgs = ((InternalEObject)newTransmissionModeDeclaration).eInverseAdd((InternalEObject)this, 6, TransmissionModeDeclaration.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeDeclaration(newTransmissionModeDeclaration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newTransmissionModeDeclaration, (Object)newTransmissionModeDeclaration));
        }
    }

    public CyclicTiming getCyclicTiming() {
        return this.cyclicTiming;
    }

    public NotificationChain basicSetCyclicTiming(CyclicTiming newCyclicTiming, NotificationChain msgs) {
        CyclicTiming oldCyclicTiming = this.cyclicTiming;
        this.cyclicTiming = newCyclicTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCyclicTiming, (Object)newCyclicTiming);
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
                msgs = ((InternalEObject)this.cyclicTiming).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newCyclicTiming != null) {
                msgs = ((InternalEObject)newCyclicTiming).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetCyclicTiming(newCyclicTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCyclicTiming, (Object)newCyclicTiming));
        }
    }

    public EventControlledTiming getEventControlledTiming() {
        return this.eventControlledTiming;
    }

    public NotificationChain basicSetEventControlledTiming(EventControlledTiming newEventControlledTiming, NotificationChain msgs) {
        EventControlledTiming oldEventControlledTiming = this.eventControlledTiming;
        this.eventControlledTiming = newEventControlledTiming;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldEventControlledTiming, (Object)newEventControlledTiming);
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
                msgs = ((InternalEObject)this.eventControlledTiming).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newEventControlledTiming != null) {
                msgs = ((InternalEObject)newEventControlledTiming).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetEventControlledTiming(newEventControlledTiming, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newEventControlledTiming, (Object)newEventControlledTiming));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetTransmissionModeDeclaration((TransmissionModeDeclaration)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetTransmissionModeDeclaration(null, msgs);
            }
            case 5: {
                return this.basicSetCyclicTiming(null, msgs);
            }
            case 6: {
                return this.basicSetEventControlledTiming(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, TransmissionModeDeclaration.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeDeclaration();
            }
            case 5: {
                return this.getCyclicTiming();
            }
            case 6: {
                return this.getEventControlledTiming();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeDeclaration((TransmissionModeDeclaration)newValue);
                return;
            }
            case 5: {
                this.setCyclicTiming((CyclicTiming)newValue);
                return;
            }
            case 6: {
                this.setEventControlledTiming((EventControlledTiming)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setTransmissionModeDeclaration(null);
                return;
            }
            case 5: {
                this.setCyclicTiming(null);
                return;
            }
            case 6: {
                this.setEventControlledTiming(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getTransmissionModeDeclaration() != null;
            }
            case 5: {
                return this.cyclicTiming != null;
            }
            case 6: {
                return this.eventControlledTiming != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

