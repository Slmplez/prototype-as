/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EDataTypeUniqueEList$Unsettable
 *  org.eclipse.emf.ecore.util.InternalEList$Unsettable
 */
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.peripherals.GeneralPurposeTimer;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.PeripheralImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EDataTypeUniqueEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class GeneralPurposeTimerImpl
extends PeripheralImpl
implements GeneralPurposeTimer,
IReferringClass {
    protected Oscillator clockSource;
    protected static final Boolean PHASE_DETECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean phaseDetection = PHASE_DETECTION_EDEFAULT;
    protected boolean phaseDetectionESet;
    protected static final Integer RESOLUTION_EDEFAULT = new Integer(0);
    protected Integer resolution = RESOLUTION_EDEFAULT;
    protected boolean resolutionESet;
    protected EList<Integer> thresholdValues;

    protected GeneralPurposeTimerImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.GENERAL_PURPOSE_TIMER;
    }

    @Override
    public Oscillator getClockSource() {
        if (this.clockSource != null && this.clockSource.eIsProxy()) {
            InternalEObject oldClockSource = (InternalEObject)this.clockSource;
            this.clockSource = (Oscillator)this.eResolveProxy(oldClockSource);
            if (this.clockSource != oldClockSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 27, (Object)oldClockSource, (Object)this.clockSource));
            }
        }
        return this.clockSource;
    }

    public Oscillator basicGetClockSource() {
        return this.clockSource;
    }

    @Override
    public void setClockSource(Oscillator newClockSource) {
        Oscillator oldClockSource = this.clockSource;
        this.clockSource = newClockSource;
        AutosarObjectUtil.setDest((EObject)this, (int)27, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldClockSource, (Object)this.clockSource));
        }
    }

    @Override
    public Boolean getPhaseDetection() {
        return this.phaseDetection;
    }

    @Override
    public void setPhaseDetection(Boolean newPhaseDetection) {
        Boolean oldPhaseDetection = this.phaseDetection;
        this.phaseDetection = newPhaseDetection;
        boolean oldPhaseDetectionESet = this.phaseDetectionESet;
        this.phaseDetectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldPhaseDetection, (Object)this.phaseDetection, !oldPhaseDetectionESet));
        }
    }

    @Override
    public void unsetPhaseDetection() {
        Boolean oldPhaseDetection = this.phaseDetection;
        boolean oldPhaseDetectionESet = this.phaseDetectionESet;
        this.phaseDetection = PHASE_DETECTION_EDEFAULT;
        this.phaseDetectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldPhaseDetection, (Object)PHASE_DETECTION_EDEFAULT, oldPhaseDetectionESet));
        }
    }

    @Override
    public boolean isSetPhaseDetection() {
        return this.phaseDetectionESet;
    }

    @Override
    public Integer getResolution() {
        return this.resolution;
    }

    @Override
    public void setResolution(Integer newResolution) {
        Integer oldResolution = this.resolution;
        this.resolution = newResolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolutionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldResolution, (Object)this.resolution, !oldResolutionESet));
        }
    }

    @Override
    public void unsetResolution() {
        Integer oldResolution = this.resolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolution = RESOLUTION_EDEFAULT;
        this.resolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldResolution, (Object)RESOLUTION_EDEFAULT, oldResolutionESet));
        }
    }

    @Override
    public boolean isSetResolution() {
        return this.resolutionESet;
    }

    @Override
    public EList<Integer> getThresholdValues() {
        if (this.thresholdValues == null) {
            this.thresholdValues = new EDataTypeUniqueEList.Unsettable(Integer.class, (InternalEObject)this, 30);
        }
        return this.thresholdValues;
    }

    @Override
    public void unsetThresholdValues() {
        if (this.thresholdValues != null) {
            ((InternalEList.Unsettable)this.thresholdValues).unset();
        }
    }

    @Override
    public boolean isSetThresholdValues() {
        return this.thresholdValues != null && ((InternalEList.Unsettable)this.thresholdValues).isSet();
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                if (resolve) {
                    return this.getClockSource();
                }
                return this.basicGetClockSource();
            }
            case 28: {
                return this.getPhaseDetection();
            }
            case 29: {
                return this.getResolution();
            }
            case 30: {
                return this.getThresholdValues();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setClockSource((Oscillator)newValue);
                return;
            }
            case 28: {
                this.setPhaseDetection((Boolean)newValue);
                return;
            }
            case 29: {
                this.setResolution((Integer)newValue);
                return;
            }
            case 30: {
                this.getThresholdValues().clear();
                this.getThresholdValues().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setClockSource(null);
                return;
            }
            case 28: {
                this.unsetPhaseDetection();
                return;
            }
            case 29: {
                this.unsetResolution();
                return;
            }
            case 30: {
                this.unsetThresholdValues();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.clockSource != null;
            }
            case 28: {
                return this.isSetPhaseDetection();
            }
            case 29: {
                return this.isSetResolution();
            }
            case 30: {
                return this.isSetThresholdValues();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (phaseDetection: ");
        if (this.phaseDetectionESet) {
            result.append(this.phaseDetection);
        } else {
            result.append("<unset>");
        }
        result.append(", resolution: ");
        if (this.resolutionESet) {
            result.append(this.resolution);
        } else {
            result.append("<unset>");
        }
        result.append(", thresholdValues: ");
        result.append(this.thresholdValues);
        result.append(')');
        return result.toString();
    }
}

