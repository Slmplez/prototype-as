/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ElementMappingType;
import com.etas.amd620.core.ComponentMain.impl.MappingObjectTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ElementMappingTypeImpl
extends MappingObjectTImpl
implements ElementMappingType {
    protected static final String ELEMENT_NAME_EDEFAULT = null;
    protected String elementName = ELEMENT_NAME_EDEFAULT;

    protected ElementMappingTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ELEMENT_MAPPING_TYPE;
    }

    @Override
    public String getElementName() {
        return this.elementName;
    }

    @Override
    public void setElementName(String newElementName) {
        String oldElementName = this.elementName;
        this.elementName = newElementName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldElementName, (Object)this.elementName));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 2: {
                return this.getElementName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 2: {
                this.setElementName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 2: {
                this.setElementName(ELEMENT_NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 2: {
                return ELEMENT_NAME_EDEFAULT == null ? this.elementName != null : !ELEMENT_NAME_EDEFAULT.equals(this.elementName);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (elementName: ");
        result.append(this.elementName);
        result.append(')');
        return result.toString();
    }
}

