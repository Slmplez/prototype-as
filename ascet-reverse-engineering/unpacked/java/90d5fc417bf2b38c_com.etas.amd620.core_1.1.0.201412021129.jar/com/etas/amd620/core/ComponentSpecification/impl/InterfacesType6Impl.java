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
import com.etas.amd620.core.ComponentSpecification.InterfacesType6;
import com.etas.amd620.core.ComponentSpecification.ReturnPortType2;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class InterfacesType6Impl
extends MinimalEObjectImpl.Container
implements InterfacesType6 {
    protected ReturnPortType2 returnPort;

    protected InterfacesType6Impl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getInterfacesType6();
    }

    @Override
    public ReturnPortType2 getReturnPort() {
        return this.returnPort;
    }

    public NotificationChain basicSetReturnPort(ReturnPortType2 newReturnPort, NotificationChain msgs) {
        ReturnPortType2 oldReturnPort = this.returnPort;
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
    public void setReturnPort(ReturnPortType2 newReturnPort) {
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

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetReturnPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getReturnPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setReturnPort((ReturnPortType2)newValue);
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
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.returnPort != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

