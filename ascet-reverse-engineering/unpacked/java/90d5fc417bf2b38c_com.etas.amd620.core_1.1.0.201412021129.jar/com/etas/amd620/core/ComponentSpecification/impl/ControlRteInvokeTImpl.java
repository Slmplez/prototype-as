/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.AccessType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ControlRteInvokeT;
import com.etas.amd620.core.ComponentSpecification.impl.ControlTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ControlRteInvokeTImpl
extends ControlTImpl
implements ControlRteInvokeT {
    protected static final AccessType ACCESS_EDEFAULT = AccessType.EXPLICIT;
    protected AccessType access = ACCESS_EDEFAULT;
    protected boolean accessESet;

    protected ControlRteInvokeTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getControlRteInvokeT();
    }

    @Override
    public AccessType getAccess() {
        return this.access;
    }

    @Override
    public void setAccess(AccessType newAccess) {
        AccessType oldAccess = this.access;
        this.access = newAccess == null ? ACCESS_EDEFAULT : newAccess;
        boolean oldAccessESet = this.accessESet;
        this.accessESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldAccess, (Object)this.access, !oldAccessESet));
        }
    }

    @Override
    public void unsetAccess() {
        AccessType oldAccess = this.access;
        boolean oldAccessESet = this.accessESet;
        this.access = ACCESS_EDEFAULT;
        this.accessESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldAccess, (Object)ACCESS_EDEFAULT, oldAccessESet));
        }
    }

    @Override
    public boolean isSetAccess() {
        return this.accessESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 10: {
                return this.getAccess();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 10: {
                this.setAccess((AccessType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 10: {
                this.unsetAccess();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 10: {
                return this.isSetAccess();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (access: ");
        if (this.accessESet) {
            result.append((Object)this.access);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

