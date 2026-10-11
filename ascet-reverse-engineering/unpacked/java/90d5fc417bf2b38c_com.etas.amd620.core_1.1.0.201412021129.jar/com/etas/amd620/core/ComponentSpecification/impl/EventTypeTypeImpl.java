/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.EventTypeType;
import com.etas.amd620.core.ComponentSpecification.ModeSwitchEventType;
import com.etas.amd620.core.ComponentSpecification.OperationInvokedEventType;
import com.etas.amd620.core.ComponentSpecification.TimingEventType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class EventTypeTypeImpl
extends MinimalEObjectImpl.Container
implements EventTypeType {
    protected TimingEventType timingEvent;
    protected ModeSwitchEventType modeSwitchEvent;
    protected OperationInvokedEventType operationInvokedEvent;

    protected EventTypeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getEventTypeType();
    }

    @Override
    public TimingEventType getTimingEvent() {
        return this.timingEvent;
    }

    public NotificationChain basicSetTimingEvent(TimingEventType newTimingEvent, NotificationChain msgs) {
        TimingEventType oldTimingEvent = this.timingEvent;
        this.timingEvent = newTimingEvent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldTimingEvent, (Object)newTimingEvent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTimingEvent(TimingEventType newTimingEvent) {
        if (newTimingEvent != this.timingEvent) {
            NotificationChain msgs = null;
            if (this.timingEvent != null) {
                msgs = ((InternalEObject)this.timingEvent).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newTimingEvent != null) {
                msgs = ((InternalEObject)newTimingEvent).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetTimingEvent(newTimingEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newTimingEvent, (Object)newTimingEvent));
        }
    }

    @Override
    public ModeSwitchEventType getModeSwitchEvent() {
        return this.modeSwitchEvent;
    }

    public NotificationChain basicSetModeSwitchEvent(ModeSwitchEventType newModeSwitchEvent, NotificationChain msgs) {
        ModeSwitchEventType oldModeSwitchEvent = this.modeSwitchEvent;
        this.modeSwitchEvent = newModeSwitchEvent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldModeSwitchEvent, (Object)newModeSwitchEvent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setModeSwitchEvent(ModeSwitchEventType newModeSwitchEvent) {
        if (newModeSwitchEvent != this.modeSwitchEvent) {
            NotificationChain msgs = null;
            if (this.modeSwitchEvent != null) {
                msgs = ((InternalEObject)this.modeSwitchEvent).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newModeSwitchEvent != null) {
                msgs = ((InternalEObject)newModeSwitchEvent).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetModeSwitchEvent(newModeSwitchEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newModeSwitchEvent, (Object)newModeSwitchEvent));
        }
    }

    @Override
    public OperationInvokedEventType getOperationInvokedEvent() {
        return this.operationInvokedEvent;
    }

    public NotificationChain basicSetOperationInvokedEvent(OperationInvokedEventType newOperationInvokedEvent, NotificationChain msgs) {
        OperationInvokedEventType oldOperationInvokedEvent = this.operationInvokedEvent;
        this.operationInvokedEvent = newOperationInvokedEvent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldOperationInvokedEvent, (Object)newOperationInvokedEvent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOperationInvokedEvent(OperationInvokedEventType newOperationInvokedEvent) {
        if (newOperationInvokedEvent != this.operationInvokedEvent) {
            NotificationChain msgs = null;
            if (this.operationInvokedEvent != null) {
                msgs = ((InternalEObject)this.operationInvokedEvent).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newOperationInvokedEvent != null) {
                msgs = ((InternalEObject)newOperationInvokedEvent).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetOperationInvokedEvent(newOperationInvokedEvent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newOperationInvokedEvent, (Object)newOperationInvokedEvent));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTimingEvent(null, msgs);
            }
            case 1: {
                return this.basicSetModeSwitchEvent(null, msgs);
            }
            case 2: {
                return this.basicSetOperationInvokedEvent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTimingEvent();
            }
            case 1: {
                return this.getModeSwitchEvent();
            }
            case 2: {
                return this.getOperationInvokedEvent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTimingEvent((TimingEventType)newValue);
                return;
            }
            case 1: {
                this.setModeSwitchEvent((ModeSwitchEventType)newValue);
                return;
            }
            case 2: {
                this.setOperationInvokedEvent((OperationInvokedEventType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTimingEvent(null);
                return;
            }
            case 1: {
                this.setModeSwitchEvent(null);
                return;
            }
            case 2: {
                this.setOperationInvokedEvent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.timingEvent != null;
            }
            case 1: {
                return this.modeSwitchEvent != null;
            }
            case 2: {
                return this.operationInvokedEvent != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

