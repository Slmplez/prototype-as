/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.impl.PrimitiveImplementationTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class LogicImplementationTImpl
extends PrimitiveImplementationTImpl
implements LogicImplementationT {
    protected static final String IMPL_TYPE_EDEFAULT = null;
    protected String implType = IMPL_TYPE_EDEFAULT;
    protected static final String PHYS_TYPE_EDEFAULT = null;
    protected String physType = PHYS_TYPE_EDEFAULT;

    protected LogicImplementationTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.LOGIC_IMPLEMENTATION_T;
    }

    @Override
    public String getImplType() {
        return this.implType;
    }

    @Override
    public void setImplType(String newImplType) {
        String oldImplType = this.implType;
        this.implType = newImplType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldImplType, (Object)this.implType));
        }
    }

    @Override
    public String getPhysType() {
        return this.physType;
    }

    @Override
    public void setPhysType(String newPhysType) {
        String oldPhysType = this.physType;
        this.physType = newPhysType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldPhysType, (Object)this.physType));
        }
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getImplType();
            }
            case 8: {
                return this.getPhysType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setImplType((String)newValue);
                return;
            }
            case 8: {
                this.setPhysType((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setImplType(IMPL_TYPE_EDEFAULT);
                return;
            }
            case 8: {
                this.setPhysType(PHYS_TYPE_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return IMPL_TYPE_EDEFAULT == null ? this.implType != null : !IMPL_TYPE_EDEFAULT.equals(this.implType);
            }
            case 8: {
                return PHYS_TYPE_EDEFAULT == null ? this.physType != null : !PHYS_TYPE_EDEFAULT.equals(this.physType);
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
        result.append(" (implType: ");
        result.append(this.implType);
        result.append(", physType: ");
        result.append(this.physType);
        result.append(')');
        return result.toString();
    }
}

