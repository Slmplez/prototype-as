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
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import com.etas.amd620.core.ComponentSpecification.MethodBodiesComplexType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ESDLCodeTImpl
extends MinimalEObjectImpl.Container
implements ESDLCodeT {
    protected MethodBodiesComplexType methodBodies;

    protected ESDLCodeTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getESDLCodeT();
    }

    @Override
    public MethodBodiesComplexType getMethodBodies() {
        return this.methodBodies;
    }

    public NotificationChain basicSetMethodBodies(MethodBodiesComplexType newMethodBodies, NotificationChain msgs) {
        MethodBodiesComplexType oldMethodBodies = this.methodBodies;
        this.methodBodies = newMethodBodies;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldMethodBodies, (Object)newMethodBodies);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMethodBodies(MethodBodiesComplexType newMethodBodies) {
        if (newMethodBodies != this.methodBodies) {
            NotificationChain msgs = null;
            if (this.methodBodies != null) {
                msgs = ((InternalEObject)this.methodBodies).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newMethodBodies != null) {
                msgs = ((InternalEObject)newMethodBodies).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetMethodBodies(newMethodBodies, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newMethodBodies, (Object)newMethodBodies));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetMethodBodies(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getMethodBodies();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setMethodBodies((MethodBodiesComplexType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setMethodBodies(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.methodBodies != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

