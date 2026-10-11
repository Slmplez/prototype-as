/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.peripherals.impl;

import autosar21.ecuresource.peripherals.PWD;
import autosar21.ecuresource.peripherals.PWDModeEnum;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.PulseWidthPeripheralImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PWDImpl
extends PulseWidthPeripheralImpl
implements PWD {
    protected static final PWDModeEnum MODE_EDEFAULT = PWDModeEnum.TWO_PHASE_INPUT;
    protected PWDModeEnum mode = MODE_EDEFAULT;
    protected boolean modeESet;
    protected static final Boolean PHASE_DETECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean phaseDetection = PHASE_DETECTION_EDEFAULT;
    protected boolean phaseDetectionESet;

    protected PWDImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.PWD;
    }

    public PWDModeEnum getMode() {
        return this.mode;
    }

    public void setMode(PWDModeEnum newMode) {
        PWDModeEnum oldMode = this.mode;
        this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        boolean oldModeESet = this.modeESet;
        this.modeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldMode, (Object)this.mode, !oldModeESet));
        }
    }

    public void unsetMode() {
        PWDModeEnum oldMode = this.mode;
        boolean oldModeESet = this.modeESet;
        this.mode = MODE_EDEFAULT;
        this.modeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldMode, (Object)MODE_EDEFAULT, oldModeESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldPhaseDetection, (Object)this.phaseDetection, !oldPhaseDetectionESet));
        }
    }

    public void unsetPhaseDetection() {
        Boolean oldPhaseDetection = this.phaseDetection;
        boolean oldPhaseDetectionESet = this.phaseDetectionESet;
        this.phaseDetection = PHASE_DETECTION_EDEFAULT;
        this.phaseDetectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldPhaseDetection, (Object)PHASE_DETECTION_EDEFAULT, oldPhaseDetectionESet));
        }
    }

    public boolean isSetPhaseDetection() {
        return this.phaseDetectionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getMode();
            }
            case 28: {
                return this.getPhaseDetection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setMode((PWDModeEnum)((Object)newValue));
                return;
            }
            case 28: {
                this.setPhaseDetection((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.unsetMode();
                return;
            }
            case 28: {
                this.unsetPhaseDetection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.isSetMode();
            }
            case 28: {
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

