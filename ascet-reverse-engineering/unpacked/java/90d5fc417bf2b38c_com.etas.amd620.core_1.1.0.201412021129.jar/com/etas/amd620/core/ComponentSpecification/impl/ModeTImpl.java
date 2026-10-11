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
import com.etas.amd620.core.ComponentSpecification.InterfaceElementType;
import com.etas.amd620.core.ComponentSpecification.ModeElementType;
import com.etas.amd620.core.ComponentSpecification.ModeT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ModeTImpl
extends MinimalEObjectImpl.Container
implements ModeT {
    protected InterfaceElementType interfaceElement;
    protected ModeElementType modeElement;
    protected static final String MODE_VALUE_EDEFAULT = null;
    protected String modeValue = MODE_VALUE_EDEFAULT;

    protected ModeTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getModeT();
    }

    @Override
    public InterfaceElementType getInterfaceElement() {
        return this.interfaceElement;
    }

    public NotificationChain basicSetInterfaceElement(InterfaceElementType newInterfaceElement, NotificationChain msgs) {
        InterfaceElementType oldInterfaceElement = this.interfaceElement;
        this.interfaceElement = newInterfaceElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldInterfaceElement, (Object)newInterfaceElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInterfaceElement(InterfaceElementType newInterfaceElement) {
        if (newInterfaceElement != this.interfaceElement) {
            NotificationChain msgs = null;
            if (this.interfaceElement != null) {
                msgs = ((InternalEObject)this.interfaceElement).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newInterfaceElement != null) {
                msgs = ((InternalEObject)newInterfaceElement).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetInterfaceElement(newInterfaceElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newInterfaceElement, (Object)newInterfaceElement));
        }
    }

    @Override
    public ModeElementType getModeElement() {
        return this.modeElement;
    }

    public NotificationChain basicSetModeElement(ModeElementType newModeElement, NotificationChain msgs) {
        ModeElementType oldModeElement = this.modeElement;
        this.modeElement = newModeElement;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldModeElement, (Object)newModeElement);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setModeElement(ModeElementType newModeElement) {
        if (newModeElement != this.modeElement) {
            NotificationChain msgs = null;
            if (this.modeElement != null) {
                msgs = ((InternalEObject)this.modeElement).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newModeElement != null) {
                msgs = ((InternalEObject)newModeElement).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetModeElement(newModeElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newModeElement, (Object)newModeElement));
        }
    }

    @Override
    public String getModeValue() {
        return this.modeValue;
    }

    @Override
    public void setModeValue(String newModeValue) {
        String oldModeValue = this.modeValue;
        this.modeValue = newModeValue;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldModeValue, (Object)this.modeValue));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetInterfaceElement(null, msgs);
            }
            case 1: {
                return this.basicSetModeElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getInterfaceElement();
            }
            case 1: {
                return this.getModeElement();
            }
            case 2: {
                return this.getModeValue();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setInterfaceElement((InterfaceElementType)newValue);
                return;
            }
            case 1: {
                this.setModeElement((ModeElementType)newValue);
                return;
            }
            case 2: {
                this.setModeValue((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setInterfaceElement(null);
                return;
            }
            case 1: {
                this.setModeElement(null);
                return;
            }
            case 2: {
                this.setModeValue(MODE_VALUE_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.interfaceElement != null;
            }
            case 1: {
                return this.modeElement != null;
            }
            case 2: {
                return MODE_VALUE_EDEFAULT == null ? this.modeValue != null : !MODE_VALUE_EDEFAULT.equals(this.modeValue);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (modeValue: ");
        result.append(this.modeValue);
        result.append(')');
        return result.toString();
    }
}

