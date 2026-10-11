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
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import com.etas.amd620.core.ComponentImplementation.MethodImplementationT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ImplementationVariantTImpl
extends MinimalEObjectImpl.Container
implements ImplementationVariantT {
    protected ElementImplementationType elementImplementation;
    protected MethodImplementationT methodImplementation;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;

    protected ImplementationVariantTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.IMPLEMENTATION_VARIANT_T;
    }

    @Override
    public ElementImplementationType getElementImplementation() {
        return this.elementImplementation;
    }

    public NotificationChain basicSetElementImplementation(ElementImplementationType newElementImplementation, NotificationChain msgs) {
        ElementImplementationType oldElementImplementation = this.elementImplementation;
        this.elementImplementation = newElementImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldElementImplementation, (Object)newElementImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setElementImplementation(ElementImplementationType newElementImplementation) {
        if (newElementImplementation != this.elementImplementation) {
            NotificationChain msgs = null;
            if (this.elementImplementation != null) {
                msgs = ((InternalEObject)this.elementImplementation).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newElementImplementation != null) {
                msgs = ((InternalEObject)newElementImplementation).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetElementImplementation(newElementImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newElementImplementation, (Object)newElementImplementation));
        }
    }

    @Override
    public MethodImplementationT getMethodImplementation() {
        return this.methodImplementation;
    }

    public NotificationChain basicSetMethodImplementation(MethodImplementationT newMethodImplementation, NotificationChain msgs) {
        MethodImplementationT oldMethodImplementation = this.methodImplementation;
        this.methodImplementation = newMethodImplementation;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldMethodImplementation, (Object)newMethodImplementation);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMethodImplementation(MethodImplementationT newMethodImplementation) {
        if (newMethodImplementation != this.methodImplementation) {
            NotificationChain msgs = null;
            if (this.methodImplementation != null) {
                msgs = ((InternalEObject)this.methodImplementation).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newMethodImplementation != null) {
                msgs = ((InternalEObject)newMethodImplementation).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetMethodImplementation(newMethodImplementation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newMethodImplementation, (Object)newMethodImplementation));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldName, (Object)this.name));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetElementImplementation(null, msgs);
            }
            case 1: {
                return this.basicSetMethodImplementation(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getElementImplementation();
            }
            case 1: {
                return this.getMethodImplementation();
            }
            case 2: {
                return this.getName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setElementImplementation((ElementImplementationType)newValue);
                return;
            }
            case 1: {
                this.setMethodImplementation((MethodImplementationT)newValue);
                return;
            }
            case 2: {
                this.setName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setElementImplementation(null);
                return;
            }
            case 1: {
                this.setMethodImplementation(null);
                return;
            }
            case 2: {
                this.setName(NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.elementImplementation != null;
            }
            case 1: {
                return this.methodImplementation != null;
            }
            case 2: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
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
        result.append(')');
        return result.toString();
    }
}

