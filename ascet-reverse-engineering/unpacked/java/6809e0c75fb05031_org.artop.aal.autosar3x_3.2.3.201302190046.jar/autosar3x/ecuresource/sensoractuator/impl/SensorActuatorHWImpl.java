/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.sensoractuator.impl;

import autosar3x.ecuresource.basicelements.TimeRange;
import autosar3x.ecuresource.impl.HWElementImpl;
import autosar3x.ecuresource.sensoractuator.SensorActuatorHW;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SensorActuatorHWImpl
extends HWElementImpl
implements SensorActuatorHW {
    protected static final Double ACCURACY_EDEFAULT = new Double(0.0);
    protected Double accuracy = ACCURACY_EDEFAULT;
    protected boolean accuracyESet;
    protected TimeRange cycleTime;
    protected static final Double RESOLUTION_EDEFAULT = new Double(0.0);
    protected Double resolution = RESOLUTION_EDEFAULT;
    protected boolean resolutionESet;
    protected static final String TYPE_EDEFAULT = "";
    protected String type = "";
    protected boolean typeESet;

    protected SensorActuatorHWImpl() {
    }

    protected EClass eStaticClass() {
        return SensoractuatorPackage.Literals.SENSOR_ACTUATOR_HW;
    }

    public Double getAccuracy() {
        return this.accuracy;
    }

    public void setAccuracy(Double newAccuracy) {
        Double oldAccuracy = this.accuracy;
        this.accuracy = newAccuracy;
        boolean oldAccuracyESet = this.accuracyESet;
        this.accuracyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldAccuracy, (Object)this.accuracy, !oldAccuracyESet));
        }
    }

    public void unsetAccuracy() {
        Double oldAccuracy = this.accuracy;
        boolean oldAccuracyESet = this.accuracyESet;
        this.accuracy = ACCURACY_EDEFAULT;
        this.accuracyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldAccuracy, (Object)ACCURACY_EDEFAULT, oldAccuracyESet));
        }
    }

    public boolean isSetAccuracy() {
        return this.accuracyESet;
    }

    public TimeRange getCycleTime() {
        return this.cycleTime;
    }

    public NotificationChain basicSetCycleTime(TimeRange newCycleTime, NotificationChain msgs) {
        TimeRange oldCycleTime = this.cycleTime;
        this.cycleTime = newCycleTime;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldCycleTime, (Object)newCycleTime);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCycleTime(TimeRange newCycleTime) {
        if (newCycleTime != this.cycleTime) {
            NotificationChain msgs = null;
            if (this.cycleTime != null) {
                msgs = ((InternalEObject)this.cycleTime).eInverseRemove((InternalEObject)this, -28, null, msgs);
            }
            if (newCycleTime != null) {
                msgs = ((InternalEObject)newCycleTime).eInverseAdd((InternalEObject)this, -28, null, msgs);
            }
            if ((msgs = this.basicSetCycleTime(newCycleTime, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newCycleTime, (Object)newCycleTime));
        }
    }

    public Double getResolution() {
        return this.resolution;
    }

    public void setResolution(Double newResolution) {
        Double oldResolution = this.resolution;
        this.resolution = newResolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolutionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldResolution, (Object)this.resolution, !oldResolutionESet));
        }
    }

    public void unsetResolution() {
        Double oldResolution = this.resolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolution = RESOLUTION_EDEFAULT;
        this.resolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldResolution, (Object)RESOLUTION_EDEFAULT, oldResolutionESet));
        }
    }

    public boolean isSetResolution() {
        return this.resolutionESet;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String newType) {
        String oldType = this.type;
        this.type = newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    public void unsetType() {
        String oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    public boolean isSetType() {
        return this.typeESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetCycleTime(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getAccuracy();
            }
            case 27: {
                return this.getCycleTime();
            }
            case 28: {
                return this.getResolution();
            }
            case 29: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setAccuracy((Double)newValue);
                return;
            }
            case 27: {
                this.setCycleTime((TimeRange)newValue);
                return;
            }
            case 28: {
                this.setResolution((Double)newValue);
                return;
            }
            case 29: {
                this.setType((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetAccuracy();
                return;
            }
            case 27: {
                this.setCycleTime(null);
                return;
            }
            case 28: {
                this.unsetResolution();
                return;
            }
            case 29: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.isSetAccuracy();
            }
            case 27: {
                return this.cycleTime != null;
            }
            case 28: {
                return this.isSetResolution();
            }
            case 29: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (accuracy: ");
        if (this.accuracyESet) {
            result.append(this.accuracy);
        } else {
            result.append("<unset>");
        }
        result.append(", resolution: ");
        if (this.resolutionESet) {
            result.append(this.resolution);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append(this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

