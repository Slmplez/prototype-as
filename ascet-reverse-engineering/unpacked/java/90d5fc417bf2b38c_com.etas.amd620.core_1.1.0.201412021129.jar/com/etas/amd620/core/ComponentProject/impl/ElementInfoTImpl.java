/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.ElementInfoT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ElementInfoTImpl
extends MinimalEObjectImpl.Container
implements ElementInfoT {
    protected static final String ELEMENT_ID_EDEFAULT = null;
    protected String elementId = ELEMENT_ID_EDEFAULT;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;

    protected ElementInfoTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.ELEMENT_INFO_T;
    }

    @Override
    public String getElementId() {
        return this.elementId;
    }

    @Override
    public void setElementId(String newElementId) {
        String oldElementId = this.elementId;
        this.elementId = newElementId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldElementId, (Object)this.elementId));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldName, (Object)this.name));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getElementId();
            }
            case 1: {
                return this.getName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setElementId((String)newValue);
                return;
            }
            case 1: {
                this.setName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setElementId(ELEMENT_ID_EDEFAULT);
                return;
            }
            case 1: {
                this.setName(NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return ELEMENT_ID_EDEFAULT == null ? this.elementId != null : !ELEMENT_ID_EDEFAULT.equals(this.elementId);
            }
            case 1: {
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
        result.append(" (elementId: ");
        result.append(this.elementId);
        result.append(", name: ");
        result.append(this.name);
        result.append(')');
        return result.toString();
    }
}

