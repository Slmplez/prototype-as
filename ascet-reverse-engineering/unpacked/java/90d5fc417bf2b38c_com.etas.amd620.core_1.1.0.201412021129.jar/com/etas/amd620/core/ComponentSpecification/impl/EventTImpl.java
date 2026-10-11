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
import com.etas.amd620.core.ComponentSpecification.DisablingModesType;
import com.etas.amd620.core.ComponentSpecification.EventT;
import com.etas.amd620.core.ComponentSpecification.EventTypeType;
import com.etas.amd620.core.ComponentSpecification.RunnablesType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class EventTImpl
extends MinimalEObjectImpl.Container
implements EventT {
    protected RunnablesType runnables;
    protected DisablingModesType disablingModes;
    protected EventTypeType eventType;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;
    protected static final String UUID_EDEFAULT = null;
    protected String uUID = UUID_EDEFAULT;

    protected EventTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getEventT();
    }

    @Override
    public RunnablesType getRunnables() {
        return this.runnables;
    }

    public NotificationChain basicSetRunnables(RunnablesType newRunnables, NotificationChain msgs) {
        RunnablesType oldRunnables = this.runnables;
        this.runnables = newRunnables;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldRunnables, (Object)newRunnables);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRunnables(RunnablesType newRunnables) {
        if (newRunnables != this.runnables) {
            NotificationChain msgs = null;
            if (this.runnables != null) {
                msgs = ((InternalEObject)this.runnables).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newRunnables != null) {
                msgs = ((InternalEObject)newRunnables).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetRunnables(newRunnables, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newRunnables, (Object)newRunnables));
        }
    }

    @Override
    public DisablingModesType getDisablingModes() {
        return this.disablingModes;
    }

    public NotificationChain basicSetDisablingModes(DisablingModesType newDisablingModes, NotificationChain msgs) {
        DisablingModesType oldDisablingModes = this.disablingModes;
        this.disablingModes = newDisablingModes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldDisablingModes, (Object)newDisablingModes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDisablingModes(DisablingModesType newDisablingModes) {
        if (newDisablingModes != this.disablingModes) {
            NotificationChain msgs = null;
            if (this.disablingModes != null) {
                msgs = ((InternalEObject)this.disablingModes).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newDisablingModes != null) {
                msgs = ((InternalEObject)newDisablingModes).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetDisablingModes(newDisablingModes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newDisablingModes, (Object)newDisablingModes));
        }
    }

    @Override
    public EventTypeType getEventType() {
        return this.eventType;
    }

    public NotificationChain basicSetEventType(EventTypeType newEventType, NotificationChain msgs) {
        EventTypeType oldEventType = this.eventType;
        this.eventType = newEventType;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldEventType, (Object)newEventType);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEventType(EventTypeType newEventType) {
        if (newEventType != this.eventType) {
            NotificationChain msgs = null;
            if (this.eventType != null) {
                msgs = ((InternalEObject)this.eventType).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newEventType != null) {
                msgs = ((InternalEObject)newEventType).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetEventType(newEventType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newEventType, (Object)newEventType));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldName, (Object)this.name));
        }
    }

    @Override
    public String getUUID() {
        return this.uUID;
    }

    @Override
    public void setUUID(String newUUID) {
        String oldUUID = this.uUID;
        this.uUID = newUUID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldUUID, (Object)this.uUID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetRunnables(null, msgs);
            }
            case 1: {
                return this.basicSetDisablingModes(null, msgs);
            }
            case 2: {
                return this.basicSetEventType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getRunnables();
            }
            case 1: {
                return this.getDisablingModes();
            }
            case 2: {
                return this.getEventType();
            }
            case 3: {
                return this.getName();
            }
            case 4: {
                return this.getUUID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setRunnables((RunnablesType)newValue);
                return;
            }
            case 1: {
                this.setDisablingModes((DisablingModesType)newValue);
                return;
            }
            case 2: {
                this.setEventType((EventTypeType)newValue);
                return;
            }
            case 3: {
                this.setName((String)newValue);
                return;
            }
            case 4: {
                this.setUUID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setRunnables(null);
                return;
            }
            case 1: {
                this.setDisablingModes(null);
                return;
            }
            case 2: {
                this.setEventType(null);
                return;
            }
            case 3: {
                this.setName(NAME_EDEFAULT);
                return;
            }
            case 4: {
                this.setUUID(UUID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.runnables != null;
            }
            case 1: {
                return this.disablingModes != null;
            }
            case 2: {
                return this.eventType != null;
            }
            case 3: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
            case 4: {
                return UUID_EDEFAULT == null ? this.uUID != null : !UUID_EDEFAULT.equals(this.uUID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append(this.name);
        result.append(", uUID: ");
        result.append(this.uUID);
        result.append(')');
        return result.toString();
    }
}

