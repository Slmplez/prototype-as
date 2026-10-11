/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.InterfacesType;
import com.etas.amd620.core.ComponentSpecification.ReturnPortType;
import com.etas.amd620.core.ComponentSpecification.SelectorPortType1;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

public class InterfacesTypeImpl
extends MinimalEObjectImpl.Container
implements InterfacesType {
    protected SelectorPortType1 selectorPort;
    protected EList<ReturnPortType> returnPort;

    protected InterfacesTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getInterfacesType();
    }

    @Override
    public SelectorPortType1 getSelectorPort() {
        return this.selectorPort;
    }

    public NotificationChain basicSetSelectorPort(SelectorPortType1 newSelectorPort, NotificationChain msgs) {
        SelectorPortType1 oldSelectorPort = this.selectorPort;
        this.selectorPort = newSelectorPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldSelectorPort, (Object)newSelectorPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSelectorPort(SelectorPortType1 newSelectorPort) {
        if (newSelectorPort != this.selectorPort) {
            NotificationChain msgs = null;
            if (this.selectorPort != null) {
                msgs = ((InternalEObject)this.selectorPort).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newSelectorPort != null) {
                msgs = ((InternalEObject)newSelectorPort).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetSelectorPort(newSelectorPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newSelectorPort, (Object)newSelectorPort));
        }
    }

    @Override
    public EList<ReturnPortType> getReturnPort() {
        if (this.returnPort == null) {
            this.returnPort = new EObjectContainmentEList(ReturnPortType.class, (InternalEObject)this, 1);
        }
        return this.returnPort;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetSelectorPort(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getReturnPort()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getSelectorPort();
            }
            case 1: {
                return this.getReturnPort();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setSelectorPort((SelectorPortType1)newValue);
                return;
            }
            case 1: {
                this.getReturnPort().clear();
                this.getReturnPort().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setSelectorPort(null);
                return;
            }
            case 1: {
                this.getReturnPort().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.selectorPort != null;
            }
            case 1: {
                return this.returnPort != null && !this.returnPort.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

