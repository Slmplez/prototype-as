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
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.basicelements.ElectricalRange;
import autosar21.ecuresource.peripherals.AnalogueIO;
import autosar21.ecuresource.peripherals.AnalogueIOModeEnum;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.PeripheralImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class AnalogueIOImpl
extends PeripheralImpl
implements AnalogueIO {
    protected static final Double ACCURACY_EDEFAULT = new Double(0.0);
    protected Double accuracy = ACCURACY_EDEFAULT;
    protected boolean accuracyESet;
    protected static final Double CONVERSION_TIME_EDEFAULT = new Double(0.0);
    protected Double conversionTime = CONVERSION_TIME_EDEFAULT;
    protected boolean conversionTimeESet;
    protected ElectricalRange externalReferenceVoltage;
    protected static final AnalogueIOModeEnum MODE_EDEFAULT = AnalogueIOModeEnum.CONTINUOUS;
    protected AnalogueIOModeEnum mode = MODE_EDEFAULT;
    protected boolean modeESet;
    protected static final Integer MULTIPLEXED_M_EDEFAULT = new Integer(0);
    protected Integer multiplexedM = MULTIPLEXED_M_EDEFAULT;
    protected boolean multiplexedMESet;
    protected static final Integer MULTIPLEXED_N_EDEFAULT = new Integer(0);
    protected Integer multiplexedN = MULTIPLEXED_N_EDEFAULT;
    protected boolean multiplexedNESet;
    protected static final Integer RESOLUTION_EDEFAULT = new Integer(0);
    protected Integer resolution = RESOLUTION_EDEFAULT;
    protected boolean resolutionESet;
    protected static final Integer WIDTH_EDEFAULT = new Integer(0);
    protected Integer width = WIDTH_EDEFAULT;
    protected boolean widthESet;

    protected AnalogueIOImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.ANALOGUE_IO;
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

    public Double getConversionTime() {
        return this.conversionTime;
    }

    public void setConversionTime(Double newConversionTime) {
        Double oldConversionTime = this.conversionTime;
        this.conversionTime = newConversionTime;
        boolean oldConversionTimeESet = this.conversionTimeESet;
        this.conversionTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldConversionTime, (Object)this.conversionTime, !oldConversionTimeESet));
        }
    }

    public void unsetConversionTime() {
        Double oldConversionTime = this.conversionTime;
        boolean oldConversionTimeESet = this.conversionTimeESet;
        this.conversionTime = CONVERSION_TIME_EDEFAULT;
        this.conversionTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldConversionTime, (Object)CONVERSION_TIME_EDEFAULT, oldConversionTimeESet));
        }
    }

    public boolean isSetConversionTime() {
        return this.conversionTimeESet;
    }

    public ElectricalRange getExternalReferenceVoltage() {
        return this.externalReferenceVoltage;
    }

    public NotificationChain basicSetExternalReferenceVoltage(ElectricalRange newExternalReferenceVoltage, NotificationChain msgs) {
        ElectricalRange oldExternalReferenceVoltage = this.externalReferenceVoltage;
        this.externalReferenceVoltage = newExternalReferenceVoltage;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldExternalReferenceVoltage, (Object)newExternalReferenceVoltage);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setExternalReferenceVoltage(ElectricalRange newExternalReferenceVoltage) {
        if (newExternalReferenceVoltage != this.externalReferenceVoltage) {
            NotificationChain msgs = null;
            if (this.externalReferenceVoltage != null) {
                msgs = ((InternalEObject)this.externalReferenceVoltage).eInverseRemove((InternalEObject)this, -29, null, msgs);
            }
            if (newExternalReferenceVoltage != null) {
                msgs = ((InternalEObject)newExternalReferenceVoltage).eInverseAdd((InternalEObject)this, -29, null, msgs);
            }
            if ((msgs = this.basicSetExternalReferenceVoltage(newExternalReferenceVoltage, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newExternalReferenceVoltage, (Object)newExternalReferenceVoltage));
        }
    }

    public AnalogueIOModeEnum getMode() {
        return this.mode;
    }

    public void setMode(AnalogueIOModeEnum newMode) {
        AnalogueIOModeEnum oldMode = this.mode;
        this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        boolean oldModeESet = this.modeESet;
        this.modeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldMode, (Object)this.mode, !oldModeESet));
        }
    }

    public void unsetMode() {
        AnalogueIOModeEnum oldMode = this.mode;
        boolean oldModeESet = this.modeESet;
        this.mode = MODE_EDEFAULT;
        this.modeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldMode, (Object)MODE_EDEFAULT, oldModeESet));
        }
    }

    public boolean isSetMode() {
        return this.modeESet;
    }

    public Integer getMultiplexedM() {
        return this.multiplexedM;
    }

    public void setMultiplexedM(Integer newMultiplexedM) {
        Integer oldMultiplexedM = this.multiplexedM;
        this.multiplexedM = newMultiplexedM;
        boolean oldMultiplexedMESet = this.multiplexedMESet;
        this.multiplexedMESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldMultiplexedM, (Object)this.multiplexedM, !oldMultiplexedMESet));
        }
    }

    public void unsetMultiplexedM() {
        Integer oldMultiplexedM = this.multiplexedM;
        boolean oldMultiplexedMESet = this.multiplexedMESet;
        this.multiplexedM = MULTIPLEXED_M_EDEFAULT;
        this.multiplexedMESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldMultiplexedM, (Object)MULTIPLEXED_M_EDEFAULT, oldMultiplexedMESet));
        }
    }

    public boolean isSetMultiplexedM() {
        return this.multiplexedMESet;
    }

    public Integer getMultiplexedN() {
        return this.multiplexedN;
    }

    public void setMultiplexedN(Integer newMultiplexedN) {
        Integer oldMultiplexedN = this.multiplexedN;
        this.multiplexedN = newMultiplexedN;
        boolean oldMultiplexedNESet = this.multiplexedNESet;
        this.multiplexedNESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldMultiplexedN, (Object)this.multiplexedN, !oldMultiplexedNESet));
        }
    }

    public void unsetMultiplexedN() {
        Integer oldMultiplexedN = this.multiplexedN;
        boolean oldMultiplexedNESet = this.multiplexedNESet;
        this.multiplexedN = MULTIPLEXED_N_EDEFAULT;
        this.multiplexedNESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldMultiplexedN, (Object)MULTIPLEXED_N_EDEFAULT, oldMultiplexedNESet));
        }
    }

    public boolean isSetMultiplexedN() {
        return this.multiplexedNESet;
    }

    public Integer getResolution() {
        return this.resolution;
    }

    public void setResolution(Integer newResolution) {
        Integer oldResolution = this.resolution;
        this.resolution = newResolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolutionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldResolution, (Object)this.resolution, !oldResolutionESet));
        }
    }

    public void unsetResolution() {
        Integer oldResolution = this.resolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolution = RESOLUTION_EDEFAULT;
        this.resolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldResolution, (Object)RESOLUTION_EDEFAULT, oldResolutionESet));
        }
    }

    public boolean isSetResolution() {
        return this.resolutionESet;
    }

    public Integer getWidth() {
        return this.width;
    }

    public void setWidth(Integer newWidth) {
        Integer oldWidth = this.width;
        this.width = newWidth;
        boolean oldWidthESet = this.widthESet;
        this.widthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldWidth, (Object)this.width, !oldWidthESet));
        }
    }

    public void unsetWidth() {
        Integer oldWidth = this.width;
        boolean oldWidthESet = this.widthESet;
        this.width = WIDTH_EDEFAULT;
        this.widthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldWidth, (Object)WIDTH_EDEFAULT, oldWidthESet));
        }
    }

    public boolean isSetWidth() {
        return this.widthESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return this.basicSetExternalReferenceVoltage(null, msgs);
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
                return this.getConversionTime();
            }
            case 28: {
                return this.getExternalReferenceVoltage();
            }
            case 29: {
                return this.getMode();
            }
            case 30: {
                return this.getMultiplexedM();
            }
            case 31: {
                return this.getMultiplexedN();
            }
            case 32: {
                return this.getResolution();
            }
            case 33: {
                return this.getWidth();
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
                this.setConversionTime((Double)newValue);
                return;
            }
            case 28: {
                this.setExternalReferenceVoltage((ElectricalRange)newValue);
                return;
            }
            case 29: {
                this.setMode((AnalogueIOModeEnum)((Object)newValue));
                return;
            }
            case 30: {
                this.setMultiplexedM((Integer)newValue);
                return;
            }
            case 31: {
                this.setMultiplexedN((Integer)newValue);
                return;
            }
            case 32: {
                this.setResolution((Integer)newValue);
                return;
            }
            case 33: {
                this.setWidth((Integer)newValue);
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
                this.unsetConversionTime();
                return;
            }
            case 28: {
                this.setExternalReferenceVoltage(null);
                return;
            }
            case 29: {
                this.unsetMode();
                return;
            }
            case 30: {
                this.unsetMultiplexedM();
                return;
            }
            case 31: {
                this.unsetMultiplexedN();
                return;
            }
            case 32: {
                this.unsetResolution();
                return;
            }
            case 33: {
                this.unsetWidth();
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
                return this.isSetConversionTime();
            }
            case 28: {
                return this.externalReferenceVoltage != null;
            }
            case 29: {
                return this.isSetMode();
            }
            case 30: {
                return this.isSetMultiplexedM();
            }
            case 31: {
                return this.isSetMultiplexedN();
            }
            case 32: {
                return this.isSetResolution();
            }
            case 33: {
                return this.isSetWidth();
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
        result.append(", conversionTime: ");
        if (this.conversionTimeESet) {
            result.append(this.conversionTime);
        } else {
            result.append("<unset>");
        }
        result.append(", mode: ");
        if (this.modeESet) {
            result.append((Object)this.mode);
        } else {
            result.append("<unset>");
        }
        result.append(", multiplexedM: ");
        if (this.multiplexedMESet) {
            result.append(this.multiplexedM);
        } else {
            result.append("<unset>");
        }
        result.append(", multiplexedN: ");
        if (this.multiplexedNESet) {
            result.append(this.multiplexedN);
        } else {
            result.append("<unset>");
        }
        result.append(", resolution: ");
        if (this.resolutionESet) {
            result.append(this.resolution);
        } else {
            result.append("<unset>");
        }
        result.append(", width: ");
        if (this.widthESet) {
            result.append(this.width);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

