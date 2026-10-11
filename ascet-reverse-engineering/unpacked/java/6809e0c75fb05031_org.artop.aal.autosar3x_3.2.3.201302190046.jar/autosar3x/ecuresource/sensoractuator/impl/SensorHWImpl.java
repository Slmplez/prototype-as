/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.sensoractuator.impl;

import autosar3x.ecuresource.sensoractuator.SensorHW;
import autosar3x.ecuresource.sensoractuator.SensorHwSignalQualityEnum;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.ecuresource.sensoractuator.impl.SensorActuatorHWImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SensorHWImpl
extends SensorActuatorHWImpl
implements SensorHW {
    protected static final SensorHwSignalQualityEnum SIGNAL_QUALITY_EDEFAULT = SensorHwSignalQualityEnum.RAW;
    protected SensorHwSignalQualityEnum signalQuality = SIGNAL_QUALITY_EDEFAULT;
    protected boolean signalQualityESet;

    protected SensorHWImpl() {
    }

    protected EClass eStaticClass() {
        return SensoractuatorPackage.Literals.SENSOR_HW;
    }

    public SensorHwSignalQualityEnum getSignalQuality() {
        return this.signalQuality;
    }

    public void setSignalQuality(SensorHwSignalQualityEnum newSignalQuality) {
        SensorHwSignalQualityEnum oldSignalQuality = this.signalQuality;
        this.signalQuality = newSignalQuality == null ? SIGNAL_QUALITY_EDEFAULT : newSignalQuality;
        boolean oldSignalQualityESet = this.signalQualityESet;
        this.signalQualityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldSignalQuality, (Object)this.signalQuality, !oldSignalQualityESet));
        }
    }

    public void unsetSignalQuality() {
        SensorHwSignalQualityEnum oldSignalQuality = this.signalQuality;
        boolean oldSignalQualityESet = this.signalQualityESet;
        this.signalQuality = SIGNAL_QUALITY_EDEFAULT;
        this.signalQualityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldSignalQuality, (Object)SIGNAL_QUALITY_EDEFAULT, oldSignalQualityESet));
        }
    }

    public boolean isSetSignalQuality() {
        return this.signalQualityESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getSignalQuality();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setSignalQuality((SensorHwSignalQualityEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.unsetSignalQuality();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.isSetSignalQuality();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (signalQuality: ");
        if (this.signalQualityESet) {
            result.append((Object)this.signalQuality);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

