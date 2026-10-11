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

import com.etas.amd620.core.ComponentProject.AlarmType;
import com.etas.amd620.core.ComponentProject.ComponentProjectPackage;
import com.etas.amd620.core.ComponentProject.impl.TaskSwBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class AlarmTypeImpl
extends TaskSwBaseTImpl
implements AlarmType {
    protected static final Object DELAY_EDEFAULT = null;
    protected Object delay = DELAY_EDEFAULT;
    protected static final double PERIOD_EDEFAULT = 0.0;
    protected double period = 0.0;
    protected boolean periodESet;
    protected static final boolean START_ALARM_EDEFAULT = false;
    protected boolean startAlarm = false;
    protected boolean startAlarmESet;

    protected AlarmTypeImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentProjectPackage.Literals.ALARM_TYPE;
    }

    @Override
    public Object getDelay() {
        return this.delay;
    }

    @Override
    public void setDelay(Object newDelay) {
        Object oldDelay = this.delay;
        this.delay = newDelay;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, oldDelay, this.delay));
        }
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
    public boolean isStartAlarm() {
        return this.startAlarm;
    }

    @Override
    public void setStartAlarm(boolean newStartAlarm) {
        boolean oldStartAlarm = this.startAlarm;
        this.startAlarm = newStartAlarm;
        boolean oldStartAlarmESet = this.startAlarmESet;
        this.startAlarmESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, oldStartAlarm, this.startAlarm, !oldStartAlarmESet));
        }
    }

    @Override
    public void unsetStartAlarm() {
        boolean oldStartAlarm = this.startAlarm;
        boolean oldStartAlarmESet = this.startAlarmESet;
        this.startAlarm = false;
        this.startAlarmESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, oldStartAlarm, false, oldStartAlarmESet));
        }
    }

    @Override
    public boolean isSetStartAlarm() {
        return this.startAlarmESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getDelay();
            }
            case 7: {
                return this.getPeriod();
            }
            case 8: {
                return this.isStartAlarm();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setDelay(newValue);
                return;
            }
            case 7: {
                this.setPeriod((Double)newValue);
                return;
            }
            case 8: {
                this.setStartAlarm((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.setDelay(DELAY_EDEFAULT);
                return;
            }
            case 7: {
                this.unsetPeriod();
                return;
            }
            case 8: {
                this.unsetStartAlarm();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return DELAY_EDEFAULT == null ? this.delay != null : !DELAY_EDEFAULT.equals(this.delay);
            }
            case 7: {
                return this.isSetPeriod();
            }
            case 8: {
                return this.isSetStartAlarm();
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
        result.append(this.delay);
        result.append(", period: ");
        if (this.periodESet) {
            result.append(this.period);
        } else {
            result.append("<unset>");
        }
        result.append(", startAlarm: ");
        if (this.startAlarmESet) {
            result.append(this.startAlarm);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

