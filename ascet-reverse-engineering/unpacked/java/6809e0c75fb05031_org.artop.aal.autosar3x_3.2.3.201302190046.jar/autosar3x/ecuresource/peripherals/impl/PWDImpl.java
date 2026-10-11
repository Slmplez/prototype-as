/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.peripherals.impl;

import autosar3x.ecuresource.peripherals.PWD;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.PwdModeEnum;
import autosar3x.ecuresource.peripherals.impl.PulseWidthPeripheralImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PWDImpl
extends PulseWidthPeripheralImpl
implements PWD {
    protected static final PwdModeEnum MODE_EDEFAULT = PwdModeEnum.TWO_PHASE_INPUT;
    protected PwdModeEnum mode = MODE_EDEFAULT;
    protected boolean modeESet;
    protected static final Boolean PHASE_DETECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean phaseDetection = PHASE_DETECTION_EDEFAULT;
    protected boolean phaseDetectionESet;

    protected PWDImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.PWD;
    }

    public PwdModeEnum getMode() {
        return this.mode;
    }

    public void setMode(PwdModeEnum newMode) {
        PwdModeEnum oldMode = this.mode;
        this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        boolean oldModeESet = this.modeESet;
        this.modeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldMode, (Object)this.mode, !oldModeESet));
        }
    }

    public void unsetMode() {
        PwdModeEnum oldMode = this.mode;
        boolean oldModeESet = this.modeESet;
        this.mode = MODE_EDEFAULT;
        this.modeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldMode, (Object)MODE_EDEFAULT, oldModeESet));
        }
    }

    public boolean isSetMode() {
        return this.modeESet;
    }

    public Boolean getPhaseDetection() {
        return this.phaseDetection;
    }

    public void setPhaseDetection(Boolean newPhaseDetection) {
        Boolean oldPhaseDetection = this.phaseDetection;
        this.phaseDetection = newPhaseDetection;
        boolean oldPhaseDetectionESet = this.phaseDetectionESet;
        this.phaseDetectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldPhaseDetection, (Object)this.phaseDetection, !oldPhaseDetectionESet));
        }
    }

    public void unsetPhaseDetection() {
        Boolean oldPhaseDetection = this.phaseDetection;
        boolean oldPhaseDetectionESet = this.phaseDetectionESet;
        this.phaseDetection = PHASE_DETECTION_EDEFAULT;
        this.phaseDetectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldPhaseDetection, (Object)PHASE_DETECTION_EDEFAULT, oldPhaseDetectionESet));
        }
    }

    public boolean isSetPhaseDetection() {
        return this.phaseDetectionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 28: {
                return this.getMode();
            }
            case 29: {
                return this.getPhaseDetection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 28: {
                this.setMode((PwdModeEnum)((Object)newValue));
                return;
            }
            case 29: {
                this.setPhaseDetection((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 28: {
                this.unsetMode();
                return;
            }
            case 29: {
                this.unsetPhaseDetection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 28: {
                return this.isSetMode();
            }
            case 29: {
                return this.isSetPhaseDetection();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (mode: ");
        if (this.modeESet) {
            result.append((Object)this.mode);
        } else {
            result.append("<unset>");
        }
        result.append(", phaseDetection: ");
        if (this.phaseDetectionESet) {
            result.append(this.phaseDetection);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

