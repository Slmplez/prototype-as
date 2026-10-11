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
import com.etas.amd620.core.ComponentProject.ImplementationConfigurationType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ImplementationConfigurationTypeImpl
extends MinimalEObjectImpl.Container
implements ImplementationConfigurationType {
    protected static final String IMPLEMENTATION_SET_NAME_EDEFAULT = null;
    protected String implementationSetName = IMPLEMENTATION_SET_NAME_EDEFAULT;
    protected static final String IMPLEMENTATION_SET_OID_EDEFAULT = null;
    protected String implementationSetOID = IMPLEMENTATION_SET_OID_EDEFAULT;

    protected ImplementationConfigurationTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.IMPLEMENTATION_CONFIGURATION_TYPE;
    }

    @Override
    public String getImplementationSetName() {
        return this.implementationSetName;
    }

    @Override
    public void setImplementationSetName(String newImplementationSetName) {
        String oldImplementationSetName = this.implementationSetName;
        this.implementationSetName = newImplementationSetName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldImplementationSetName, (Object)this.implementationSetName));
        }
    }

    @Override
    public String getImplementationSetOID() {
        return this.implementationSetOID;
    }

    @Override
    public void setImplementationSetOID(String newImplementationSetOID) {
        String oldImplementationSetOID = this.implementationSetOID;
        this.implementationSetOID = newImplementationSetOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldImplementationSetOID, (Object)this.implementationSetOID));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getImplementationSetName();
            }
            case 1: {
                return this.getImplementationSetOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setImplementationSetName((String)newValue);
                return;
            }
            case 1: {
                this.setImplementationSetOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setImplementationSetName(IMPLEMENTATION_SET_NAME_EDEFAULT);
                return;
            }
            case 1: {
                this.setImplementationSetOID(IMPLEMENTATION_SET_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return IMPLEMENTATION_SET_NAME_EDEFAULT == null ? this.implementationSetName != null : !IMPLEMENTATION_SET_NAME_EDEFAULT.equals(this.implementationSetName);
            }
            case 1: {
                return IMPLEMENTATION_SET_OID_EDEFAULT == null ? this.implementationSetOID != null : !IMPLEMENTATION_SET_OID_EDEFAULT.equals(this.implementationSetOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (implementationSetName: ");
        result.append(this.implementationSetName);
        result.append(", implementationSetOID: ");
        result.append(this.implementationSetOID);
        result.append(')');
        return result.toString();
    }
}

