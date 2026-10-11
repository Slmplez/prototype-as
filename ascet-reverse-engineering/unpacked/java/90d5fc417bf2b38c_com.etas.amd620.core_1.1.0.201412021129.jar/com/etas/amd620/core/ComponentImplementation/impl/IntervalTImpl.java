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
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class IntervalTImpl
extends MinimalEObjectImpl.Container
implements IntervalT {
    protected static final Object MAX_EDEFAULT = null;
    protected Object max = MAX_EDEFAULT;
    protected static final Object MIN_EDEFAULT = null;
    protected Object min = MIN_EDEFAULT;

    protected IntervalTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.INTERVAL_T;
    }

    @Override
    public Object getMax() {
        return this.max;
    }

    @Override
    public void setMax(Object newMax) {
        Object oldMax = this.max;
        this.max = newMax;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, oldMax, this.max));
        }
    }

    @Override
    public Object getMin() {
        return this.min;
    }

    @Override
    public void setMin(Object newMin) {
        Object oldMin = this.min;
        this.min = newMin;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, oldMin, this.min));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getMax();
            }
            case 1: {
                return this.getMin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setMax(newValue);
                return;
            }
            case 1: {
                this.setMin(newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setMax(MAX_EDEFAULT);
                return;
            }
            case 1: {
                this.setMin(MIN_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return MAX_EDEFAULT == null ? this.max != null : !MAX_EDEFAULT.equals(this.max);
            }
            case 1: {
                return MIN_EDEFAULT == null ? this.min != null : !MIN_EDEFAULT.equals(this.min);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (max: ");
        result.append(this.max);
        result.append(", min: ");
        result.append(this.min);
        result.append(')');
        return result.toString();
    }
}

