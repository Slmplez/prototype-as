/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.internalbehavior.rteevents.impl;

import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.internalbehavior.rteevents.TimingEvent;
import autosar21.swcomponent.internalbehavior.rteevents.impl.RTEEventImpl;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TimingEventImpl
extends RTEEventImpl
implements TimingEvent {
    protected static final Double GPERIOD_EDEFAULT = null;
    protected static final Double PERIOD_EDEFAULT = new Double(0.0);
    protected Double period = PERIOD_EDEFAULT;
    protected boolean periodESet;

    protected TimingEventImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.TIMING_EVENT;
    }

    public Double gGetPeriod() {
        Double tgtFeatureValue = this.getPeriod();
        return tgtFeatureValue;
    }

    public void gSetPeriod(Double newGPeriod) {
        this.setPeriod(newGPeriod);
    }

    public void gUnsetPeriod() {
        this.unsetPeriod();
    }

    public boolean gIsSetPeriod() {
        return this.isSetPeriod();
    }

    @Override
    public Double getPeriod() {
        return this.period;
    }

    @Override
    public void setPeriod(Double newPeriod) {
        Double oldPeriod = this.period;
        this.period = newPeriod;
        boolean oldPeriodESet = this.periodESet;
        this.periodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldPeriod, (Object)this.period, !oldPeriodESet));
        }
    }

    @Override
    public void unsetPeriod() {
        Double oldPeriod = this.period;
        boolean oldPeriodESet = this.periodESet;
        this.period = PERIOD_EDEFAULT;
        this.periodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldPeriod, (Object)PERIOD_EDEFAULT, oldPeriodESet));
        }
    }

    @Override
    public boolean isSetPeriod() {
        return this.periodESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.gGetPeriod();
            }
            case 21: {
                return this.getPeriod();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.gSetPeriod((Double)newValue);
                return;
            }
            case 21: {
                this.setPeriod((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.gUnsetPeriod();
                return;
            }
            case 21: {
                this.unsetPeriod();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.gIsSetPeriod();
            }
            case 21: {
                return this.isSetPeriod();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GTimingEvent.class) {
            switch (derivedFeatureID) {
                case 20: {
                    return 7;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GTimingEvent.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 20;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
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

