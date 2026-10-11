/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.basicelements.FrequencyRange;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.Oscillator;
import autosar3x.ecuresource.ecuelectronics.impl.ECUElectronicsImpl;
import autosar3x.ecuresource.peripherals.OscillatorModeEnum;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class OscillatorImpl
extends ECUElectronicsImpl
implements Oscillator {
    protected static final Boolean ADJUSTIBLE_EDEFAULT = Boolean.FALSE;
    protected Boolean adjustible = ADJUSTIBLE_EDEFAULT;
    protected boolean adjustibleESet;
    protected Oscillator backupOscillator;
    protected FrequencyRange oscillatorFrequencyRange;
    protected static final Double OSCILLATOR_JITTER_EDEFAULT = new Double(0.0);
    protected Double oscillatorJitter = OSCILLATOR_JITTER_EDEFAULT;
    protected boolean oscillatorJitterESet;
    protected static final OscillatorModeEnum OSCILLATOR_MODE_EDEFAULT = OscillatorModeEnum.FUNDAMENTAL;
    protected OscillatorModeEnum oscillatorMode = OSCILLATOR_MODE_EDEFAULT;
    protected boolean oscillatorModeESet;
    protected static final Double OSCILLATOR_STARTUP_TIME_EDEFAULT = new Double(0.0);
    protected Double oscillatorStartupTime = OSCILLATOR_STARTUP_TIME_EDEFAULT;
    protected boolean oscillatorStartupTimeESet;
    protected static final Double OSCILLATOR_TOLERANCE_EDEFAULT = new Double(0.0);
    protected Double oscillatorTolerance = OSCILLATOR_TOLERANCE_EDEFAULT;
    protected boolean oscillatorToleranceESet;

    protected OscillatorImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.OSCILLATOR;
    }

    public Oscillator getOscillator() {
        if (this.eContainerFeatureID() != 27) {
            return null;
        }
        return (Oscillator)this.eContainer();
    }

    public NotificationChain basicSetOscillator(Oscillator newOscillator, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newOscillator, 27, msgs);
        return msgs;
    }

    public void setOscillator(Oscillator newOscillator) {
        if (newOscillator != this.eInternalContainer() || this.eContainerFeatureID() != 27 && newOscillator != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newOscillator)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newOscillator != null) {
                msgs = ((InternalEObject)newOscillator).eInverseAdd((InternalEObject)this, 29, Oscillator.class, msgs);
            }
            if ((msgs = this.basicSetOscillator(newOscillator, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)newOscillator, (Object)newOscillator));
        }
    }

    public Boolean getAdjustible() {
        return this.adjustible;
    }

    public void setAdjustible(Boolean newAdjustible) {
        Boolean oldAdjustible = this.adjustible;
        this.adjustible = newAdjustible;
        boolean oldAdjustibleESet = this.adjustibleESet;
        this.adjustibleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldAdjustible, (Object)this.adjustible, !oldAdjustibleESet));
        }
    }

    public void unsetAdjustible() {
        Boolean oldAdjustible = this.adjustible;
        boolean oldAdjustibleESet = this.adjustibleESet;
        this.adjustible = ADJUSTIBLE_EDEFAULT;
        this.adjustibleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldAdjustible, (Object)ADJUSTIBLE_EDEFAULT, oldAdjustibleESet));
        }
    }

    public boolean isSetAdjustible() {
        return this.adjustibleESet;
    }

    public Oscillator getBackupOscillator() {
        return this.backupOscillator;
    }

    public NotificationChain basicSetBackupOscillator(Oscillator newBackupOscillator, NotificationChain msgs) {
        Oscillator oldBackupOscillator = this.backupOscillator;
        this.backupOscillator = newBackupOscillator;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldBackupOscillator, (Object)newBackupOscillator);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setBackupOscillator(Oscillator newBackupOscillator) {
        if (newBackupOscillator != this.backupOscillator) {
            NotificationChain msgs = null;
            if (this.backupOscillator != null) {
                msgs = ((InternalEObject)this.backupOscillator).eInverseRemove((InternalEObject)this, 27, Oscillator.class, msgs);
            }
            if (newBackupOscillator != null) {
                msgs = ((InternalEObject)newBackupOscillator).eInverseAdd((InternalEObject)this, 27, Oscillator.class, msgs);
            }
            if ((msgs = this.basicSetBackupOscillator(newBackupOscillator, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)newBackupOscillator, (Object)newBackupOscillator));
        }
    }

    public FrequencyRange getOscillatorFrequencyRange() {
        return this.oscillatorFrequencyRange;
    }

    public NotificationChain basicSetOscillatorFrequencyRange(FrequencyRange newOscillatorFrequencyRange, NotificationChain msgs) {
        FrequencyRange oldOscillatorFrequencyRange = this.oscillatorFrequencyRange;
        this.oscillatorFrequencyRange = newOscillatorFrequencyRange;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldOscillatorFrequencyRange, (Object)newOscillatorFrequencyRange);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setOscillatorFrequencyRange(FrequencyRange newOscillatorFrequencyRange) {
        if (newOscillatorFrequencyRange != this.oscillatorFrequencyRange) {
            NotificationChain msgs = null;
            if (this.oscillatorFrequencyRange != null) {
                msgs = ((InternalEObject)this.oscillatorFrequencyRange).eInverseRemove((InternalEObject)this, -31, null, msgs);
            }
            if (newOscillatorFrequencyRange != null) {
                msgs = ((InternalEObject)newOscillatorFrequencyRange).eInverseAdd((InternalEObject)this, -31, null, msgs);
            }
            if ((msgs = this.basicSetOscillatorFrequencyRange(newOscillatorFrequencyRange, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)newOscillatorFrequencyRange, (Object)newOscillatorFrequencyRange));
        }
    }

    public Double getOscillatorJitter() {
        return this.oscillatorJitter;
    }

    public void setOscillatorJitter(Double newOscillatorJitter) {
        Double oldOscillatorJitter = this.oscillatorJitter;
        this.oscillatorJitter = newOscillatorJitter;
        boolean oldOscillatorJitterESet = this.oscillatorJitterESet;
        this.oscillatorJitterESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldOscillatorJitter, (Object)this.oscillatorJitter, !oldOscillatorJitterESet));
        }
    }

    public void unsetOscillatorJitter() {
        Double oldOscillatorJitter = this.oscillatorJitter;
        boolean oldOscillatorJitterESet = this.oscillatorJitterESet;
        this.oscillatorJitter = OSCILLATOR_JITTER_EDEFAULT;
        this.oscillatorJitterESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldOscillatorJitter, (Object)OSCILLATOR_JITTER_EDEFAULT, oldOscillatorJitterESet));
        }
    }

    public boolean isSetOscillatorJitter() {
        return this.oscillatorJitterESet;
    }

    public OscillatorModeEnum getOscillatorMode() {
        return this.oscillatorMode;
    }

    public void setOscillatorMode(OscillatorModeEnum newOscillatorMode) {
        OscillatorModeEnum oldOscillatorMode = this.oscillatorMode;
        this.oscillatorMode = newOscillatorMode == null ? OSCILLATOR_MODE_EDEFAULT : newOscillatorMode;
        boolean oldOscillatorModeESet = this.oscillatorModeESet;
        this.oscillatorModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldOscillatorMode, (Object)this.oscillatorMode, !oldOscillatorModeESet));
        }
    }

    public void unsetOscillatorMode() {
        OscillatorModeEnum oldOscillatorMode = this.oscillatorMode;
        boolean oldOscillatorModeESet = this.oscillatorModeESet;
        this.oscillatorMode = OSCILLATOR_MODE_EDEFAULT;
        this.oscillatorModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldOscillatorMode, (Object)OSCILLATOR_MODE_EDEFAULT, oldOscillatorModeESet));
        }
    }

    public boolean isSetOscillatorMode() {
        return this.oscillatorModeESet;
    }

    public Double getOscillatorStartupTime() {
        return this.oscillatorStartupTime;
    }

    public void setOscillatorStartupTime(Double newOscillatorStartupTime) {
        Double oldOscillatorStartupTime = this.oscillatorStartupTime;
        this.oscillatorStartupTime = newOscillatorStartupTime;
        boolean oldOscillatorStartupTimeESet = this.oscillatorStartupTimeESet;
        this.oscillatorStartupTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldOscillatorStartupTime, (Object)this.oscillatorStartupTime, !oldOscillatorStartupTimeESet));
        }
    }

    public void unsetOscillatorStartupTime() {
        Double oldOscillatorStartupTime = this.oscillatorStartupTime;
        boolean oldOscillatorStartupTimeESet = this.oscillatorStartupTimeESet;
        this.oscillatorStartupTime = OSCILLATOR_STARTUP_TIME_EDEFAULT;
        this.oscillatorStartupTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldOscillatorStartupTime, (Object)OSCILLATOR_STARTUP_TIME_EDEFAULT, oldOscillatorStartupTimeESet));
        }
    }

    public boolean isSetOscillatorStartupTime() {
        return this.oscillatorStartupTimeESet;
    }

    public Double getOscillatorTolerance() {
        return this.oscillatorTolerance;
    }

    public void setOscillatorTolerance(Double newOscillatorTolerance) {
        Double oldOscillatorTolerance = this.oscillatorTolerance;
        this.oscillatorTolerance = newOscillatorTolerance;
        boolean oldOscillatorToleranceESet = this.oscillatorToleranceESet;
        this.oscillatorToleranceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldOscillatorTolerance, (Object)this.oscillatorTolerance, !oldOscillatorToleranceESet));
        }
    }

    public void unsetOscillatorTolerance() {
        Double oldOscillatorTolerance = this.oscillatorTolerance;
        boolean oldOscillatorToleranceESet = this.oscillatorToleranceESet;
        this.oscillatorTolerance = OSCILLATOR_TOLERANCE_EDEFAULT;
        this.oscillatorToleranceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldOscillatorTolerance, (Object)OSCILLATOR_TOLERANCE_EDEFAULT, oldOscillatorToleranceESet));
        }
    }

    public boolean isSetOscillatorTolerance() {
        return this.oscillatorToleranceESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetOscillator((Oscillator)otherEnd, msgs);
            }
            case 29: {
                if (this.backupOscillator != null) {
                    msgs = ((InternalEObject)this.backupOscillator).eInverseRemove((InternalEObject)this, -30, null, msgs);
                }
                return this.basicSetBackupOscillator((Oscillator)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 27: {
                return this.basicSetOscillator(null, msgs);
            }
            case 29: {
                return this.basicSetBackupOscillator(null, msgs);
            }
            case 30: {
                return this.basicSetOscillatorFrequencyRange(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 27: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 29, Oscillator.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getOscillator();
            }
            case 28: {
                return this.getAdjustible();
            }
            case 29: {
                return this.getBackupOscillator();
            }
            case 30: {
                return this.getOscillatorFrequencyRange();
            }
            case 31: {
                return this.getOscillatorJitter();
            }
            case 32: {
                return this.getOscillatorMode();
            }
            case 33: {
                return this.getOscillatorStartupTime();
            }
            case 34: {
                return this.getOscillatorTolerance();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setOscillator((Oscillator)newValue);
                return;
            }
            case 28: {
                this.setAdjustible((Boolean)newValue);
                return;
            }
            case 29: {
                this.setBackupOscillator((Oscillator)newValue);
                return;
            }
            case 30: {
                this.setOscillatorFrequencyRange((FrequencyRange)newValue);
                return;
            }
            case 31: {
                this.setOscillatorJitter((Double)newValue);
                return;
            }
            case 32: {
                this.setOscillatorMode((OscillatorModeEnum)((Object)newValue));
                return;
            }
            case 33: {
                this.setOscillatorStartupTime((Double)newValue);
                return;
            }
            case 34: {
                this.setOscillatorTolerance((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.setOscillator(null);
                return;
            }
            case 28: {
                this.unsetAdjustible();
                return;
            }
            case 29: {
                this.setBackupOscillator(null);
                return;
            }
            case 30: {
                this.setOscillatorFrequencyRange(null);
                return;
            }
            case 31: {
                this.unsetOscillatorJitter();
                return;
            }
            case 32: {
                this.unsetOscillatorMode();
                return;
            }
            case 33: {
                this.unsetOscillatorStartupTime();
                return;
            }
            case 34: {
                this.unsetOscillatorTolerance();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.getOscillator() != null;
            }
            case 28: {
                return this.isSetAdjustible();
            }
            case 29: {
                return this.backupOscillator != null;
            }
            case 30: {
                return this.oscillatorFrequencyRange != null;
            }
            case 31: {
                return this.isSetOscillatorJitter();
            }
            case 32: {
                return this.isSetOscillatorMode();
            }
            case 33: {
                return this.isSetOscillatorStartupTime();
            }
            case 34: {
                return this.isSetOscillatorTolerance();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (adjustible: ");
        if (this.adjustibleESet) {
            result.append(this.adjustible);
        } else {
            result.append("<unset>");
        }
        result.append(", oscillatorJitter: ");
        if (this.oscillatorJitterESet) {
            result.append(this.oscillatorJitter);
        } else {
            result.append("<unset>");
        }
        result.append(", oscillatorMode: ");
        if (this.oscillatorModeESet) {
            result.append((Object)this.oscillatorMode);
        } else {
            result.append("<unset>");
        }
        result.append(", oscillatorStartupTime: ");
        if (this.oscillatorStartupTimeESet) {
            result.append(this.oscillatorStartupTime);
        } else {
            result.append("<unset>");
        }
        result.append(", oscillatorTolerance: ");
        if (this.oscillatorToleranceESet) {
            result.append(this.oscillatorTolerance);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

