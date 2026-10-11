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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.TimingEventType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TimingEventTypeImpl
extends MinimalEObjectImpl.Container
implements TimingEventType {
    protected static final float PERIOD_EDEFAULT = 0.0f;
    protected float period = 0.0f;
    protected boolean periodESet;

    protected TimingEventTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTimingEventType();
    }

    @Override
    public float getPeriod() {
        return this.period;
    }

    @Override
    public void setPeriod(float newPeriod) {
        float oldPeriod = this.period;
        this.period = newPeriod;
        boolean oldPeriodESet = this.periodESet;
        this.periodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, oldPeriod, this.period, !oldPeriodESet));
        }
    }

    @Override
    public void unsetPeriod() {
        float oldPeriod = this.period;
        boolean oldPeriodESet = this.periodESet;
        this.period = 0.0f;
        this.periodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 0, oldPeriod, 0.0f, oldPeriodESet));
        }
    }

    @Override
    public boolean isSetPeriod() {
        return this.periodESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return Float.valueOf(this.getPeriod());
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPeriod(((Float)newValue).floatValue());
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.unsetPeriod();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.isSetPeriod();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (period: ");
        if (this.periodESet) {
            result.append(this.period);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

