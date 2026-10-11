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
import com.etas.amd620.core.ComponentImplementation.ImplementationCastImplementationType;
import com.etas.amd620.core.ComponentImplementation.impl.NumericImplementationTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ImplementationCastImplementationTypeImpl
extends NumericImplementationTImpl
implements ImplementationCastImplementationType {
    protected static final boolean IGNORE_IMPLEMENTATION_CAST_EDEFAULT = false;
    protected boolean ignoreImplementationCast = false;
    protected boolean ignoreImplementationCastESet;

    protected ImplementationCastImplementationTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.IMPLEMENTATION_CAST_IMPLEMENTATION_TYPE;
    }

    @Override
    public boolean isIgnoreImplementationCast() {
        return this.ignoreImplementationCast;
    }

    @Override
    public void setIgnoreImplementationCast(boolean newIgnoreImplementationCast) {
        boolean oldIgnoreImplementationCast = this.ignoreImplementationCast;
        this.ignoreImplementationCast = newIgnoreImplementationCast;
        boolean oldIgnoreImplementationCastESet = this.ignoreImplementationCastESet;
        this.ignoreImplementationCastESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, oldIgnoreImplementationCast, this.ignoreImplementationCast, !oldIgnoreImplementationCastESet));
        }
    }

    @Override
    public void unsetIgnoreImplementationCast() {
        boolean oldIgnoreImplementationCast = this.ignoreImplementationCast;
        boolean oldIgnoreImplementationCastESet = this.ignoreImplementationCastESet;
        this.ignoreImplementationCast = false;
        this.ignoreImplementationCastESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, oldIgnoreImplementationCast, false, oldIgnoreImplementationCastESet));
        }
    }

    @Override
    public boolean isSetIgnoreImplementationCast() {
        return this.ignoreImplementationCastESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.isIgnoreImplementationCast();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setIgnoreImplementationCast((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetIgnoreImplementationCast();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetIgnoreImplementationCast();
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
        result.append(" (ignoreImplementationCast: ");
        if (this.ignoreImplementationCastESet) {
            result.append(this.ignoreImplementationCast);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

