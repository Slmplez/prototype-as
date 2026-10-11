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
import com.etas.amd620.core.ComponentSpecification.ResourceInterfaceType;
import com.etas.amd620.core.ComponentSpecification.SequencedPortT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ResourceInterfaceTypeImpl
extends MinimalEObjectImpl.Container
implements ResourceInterfaceType {
    protected SequencedPortT reservePort;
    protected SequencedPortT releasePort;

    protected ResourceInterfaceTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getResourceInterfaceType();
    }

    @Override
    public SequencedPortT getReservePort() {
        return this.reservePort;
    }

    public NotificationChain basicSetReservePort(SequencedPortT newReservePort, NotificationChain msgs) {
        SequencedPortT oldReservePort = this.reservePort;
        this.reservePort = newReservePort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldReservePort, (Object)newReservePort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setReservePort(SequencedPortT newReservePort) {
        if (newReservePort != this.reservePort) {
            NotificationChain msgs = null;
            if (this.reservePort != null) {
                msgs = ((InternalEObject)this.reservePort).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newReservePort != null) {
                msgs = ((InternalEObject)newReservePort).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetReservePort(newReservePort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newReservePort, (Object)newReservePort));
        }
    }

    @Override
    public SequencedPortT getReleasePort() {
        return this.releasePort;
    }

    public NotificationChain basicSetReleasePort(SequencedPortT newReleasePort, NotificationChain msgs) {
        SequencedPortT oldReleasePort = this.releasePort;
        this.releasePort = newReleasePort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldReleasePort, (Object)newReleasePort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setReleasePort(SequencedPortT newReleasePort) {
        if (newReleasePort != this.releasePort) {
            NotificationChain msgs = null;
            if (this.releasePort != null) {
                msgs = ((InternalEObject)this.releasePort).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newReleasePort != null) {
                msgs = ((InternalEObject)newReleasePort).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetReleasePort(newReleasePort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newReleasePort, (Object)newReleasePort));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetReservePort(null, msgs);
            }
            case 1: {
                return this.basicSetReleasePort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getReservePort();
            }
            case 1: {
                return this.getReleasePort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setReservePort((SequencedPortT)newValue);
                return;
            }
            case 1: {
                this.setReleasePort((SequencedPortT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setReservePort(null);
                return;
            }
            case 1: {
                this.setReleasePort(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.reservePort != null;
            }
            case 1: {
                return this.releasePort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

