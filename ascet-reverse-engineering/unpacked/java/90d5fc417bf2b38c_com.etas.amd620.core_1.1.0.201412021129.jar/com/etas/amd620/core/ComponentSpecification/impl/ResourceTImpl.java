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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ResourceInterfaceType;
import com.etas.amd620.core.ComponentSpecification.ResourceT;
import com.etas.amd620.core.ComponentSpecification.impl.SimpleElementBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ResourceTImpl
extends SimpleElementBaseTImpl
implements ResourceT {
    protected ResourceInterfaceType interfaces;

    protected ResourceTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getResourceT();
    }

    @Override
    public ResourceInterfaceType getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(ResourceInterfaceType newInterfaces, NotificationChain msgs) {
        ResourceInterfaceType oldInterfaces = this.interfaces;
        this.interfaces = newInterfaces;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldInterfaces, (Object)newInterfaces);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInterfaces(ResourceInterfaceType newInterfaces) {
        if (newInterfaces != this.interfaces) {
            NotificationChain msgs = null;
            if (this.interfaces != null) {
                msgs = ((InternalEObject)this.interfaces).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newInterfaces != null) {
                msgs = ((InternalEObject)newInterfaces).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetInterfaces(newInterfaces, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newInterfaces, (Object)newInterfaces));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return this.basicSetInterfaces(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getInterfaces();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setInterfaces((ResourceInterfaceType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setInterfaces(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.interfaces != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

