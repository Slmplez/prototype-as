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
import com.etas.amd620.core.ComponentSpecification.InterfacesType4;
import com.etas.amd620.core.ComponentSpecification.PortT;
import com.etas.amd620.core.ComponentSpecification.SequencedPortT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class InterfacesType4Impl
extends MinimalEObjectImpl.Container
implements InterfacesType4 {
    protected PortT returnPort;
    protected SequencedPortT selectorPort;

    protected InterfacesType4Impl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getInterfacesType4();
    }

    @Override
    public PortT getReturnPort() {
        return this.returnPort;
    }

    public NotificationChain basicSetReturnPort(PortT newReturnPort, NotificationChain msgs) {
        PortT oldReturnPort = this.returnPort;
        this.returnPort = newReturnPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldReturnPort, (Object)newReturnPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setReturnPort(PortT newReturnPort) {
        if (newReturnPort != this.returnPort) {
            NotificationChain msgs = null;
            if (this.returnPort != null) {
                msgs = ((InternalEObject)this.returnPort).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newReturnPort != null) {
                msgs = ((InternalEObject)newReturnPort).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetReturnPort(newReturnPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newReturnPort, (Object)newReturnPort));
        }
    }

    @Override
    public SequencedPortT getSelectorPort() {
        return this.selectorPort;
    }

    public NotificationChain basicSetSelectorPort(SequencedPortT newSelectorPort, NotificationChain msgs) {
        SequencedPortT oldSelectorPort = this.selectorPort;
        this.selectorPort = newSelectorPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldSelectorPort, (Object)newSelectorPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSelectorPort(SequencedPortT newSelectorPort) {
        if (newSelectorPort != this.selectorPort) {
            NotificationChain msgs = null;
            if (this.selectorPort != null) {
                msgs = ((InternalEObject)this.selectorPort).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newSelectorPort != null) {
                msgs = ((InternalEObject)newSelectorPort).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetSelectorPort(newSelectorPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newSelectorPort, (Object)newSelectorPort));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetReturnPort(null, msgs);
            }
            case 1: {
                return this.basicSetSelectorPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getReturnPort();
            }
            case 1: {
                return this.getSelectorPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setReturnPort((PortT)newValue);
                return;
            }
            case 1: {
                this.setSelectorPort((SequencedPortT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setReturnPort(null);
                return;
            }
            case 1: {
                this.setSelectorPort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.returnPort != null;
            }
            case 1: {
                return this.selectorPort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

