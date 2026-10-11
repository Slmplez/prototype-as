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

import autosar21.ecuresource.peripherals.CCU;
import autosar21.ecuresource.peripherals.CCUModeEnum;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.GeneralPurposeTimerImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CCUImpl
extends GeneralPurposeTimerImpl
implements CCU {
    protected static final CCUModeEnum MODE_EDEFAULT = CCUModeEnum.CAPTURE;
    protected CCUModeEnum mode = MODE_EDEFAULT;
    protected boolean modeESet;

    protected CCUImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.CCU;
    }

    public CCUModeEnum getMode() {
        return this.mode;
    }

    public void setMode(CCUModeEnum newMode) {
        CCUModeEnum oldMode = this.mode;
        this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        boolean oldModeESet = this.modeESet;
        this.modeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldMode, (Object)this.mode, !oldModeESet));
        }
    }

    public void unsetMode() {
        CCUModeEnum oldMode = this.mode;
        boolean oldModeESet = this.modeESet;
        this.mode = MODE_EDEFAULT;
        this.modeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldMode, (Object)MODE_EDEFAULT, oldModeESet));
        }
    }

    public boolean isSetMode() {
        return this.modeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setMode((CCUModeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.unsetMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.isSetMode();
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
        result.append(')');
        return result.toString();
    }
}

