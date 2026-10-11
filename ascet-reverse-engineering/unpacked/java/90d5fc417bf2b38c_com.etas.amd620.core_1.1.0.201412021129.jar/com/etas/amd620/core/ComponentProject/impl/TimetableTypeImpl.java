/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentProject.impl;

import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.TimetableType;
import com.etas.amd620.core.ComponentProject.impl.TaskSwBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TimetableTypeImpl
extends TaskSwBaseTImpl
implements TimetableType {
    protected static final float DELAY_EDEFAULT = 0.0f;
    protected float delay = 0.0f;
    protected boolean delayESet;
    protected static final double PERIOD_EDEFAULT = 0.0;
    protected double period = 0.0;
    protected boolean periodESet;

    protected TimetableTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.TIMETABLE_TYPE;
    }

    @Override
    public float getDelay() {
        return this.delay;
    }

    @Override
    public void setDelay(float newDelay) {
        float oldDelay = this.delay;
        this.delay = newDelay;
        boolean oldDelayESet = this.delayESet;
        this.delayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldDelay, this.delay, !oldDelayESet));
        }
    }

    @Override
    public void unsetDelay() {
        float oldDelay = this.delay;
        boolean oldDelayESet = this.delayESet;
        this.delay = 0.0f;
        this.delayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, oldDelay, 0.0f, oldDelayESet));
        }
    }

    @Override
    public boolean isSetDelay() {
        return this.delayESet;
    }

    @Override
    public double getPeriod() {
        return this.period;
    }

    @Override
    public void setPeriod(double newPeriod) {
        double oldPeriod = this.period;
        this.period = newPeriod;
        boolean oldPeriodESet = this.periodESet;
        this.periodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldPeriod, this.period, !oldPeriodESet));
        }
    }

    @Override
    public void unsetPeriod() {
        double oldPeriod = this.period;
        boolean oldPeriodESet = this.periodESet;
        this.period = 0.0;
        this.periodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, oldPeriod, 0.0, oldPeriodESet));
        }
    }

    @Override
    public boolean isSetPeriod() {
        return this.periodESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return Float.valueOf(this.getDelay());
            }
            case 7: {
                return this.getPeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setDelay(((Float)newValue).floatValue());
                return;
            }
            case 7: {
                this.setPeriod((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetDelay();
                return;
            }
            case 7: {
                this.unsetPeriod();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetDelay();
            }
            case 7: {
                return this.isSetPeriod();
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
        result.append(" (delay: ");
        if (this.delayESet) {
            result.append(this.delay);
        } else {
            result.append("<unset>");
        }
        result.append(", period: ");
        if (this.periodESet) {
            result.append(this.period);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

