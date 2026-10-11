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

import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.Timer;
import autosar21.ecuresource.peripherals.TimerCountDirectionEnum;
import autosar21.ecuresource.peripherals.TimerModeEnum;
import autosar21.ecuresource.peripherals.impl.GeneralPurposeTimerImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TimerImpl
extends GeneralPurposeTimerImpl
implements Timer {
    protected static final Boolean CAN_BE_RE_INIT_EDEFAULT = Boolean.FALSE;
    protected Boolean canBeReInit = CAN_BE_RE_INIT_EDEFAULT;
    protected boolean canBeReInitESet;
    protected static final TimerCountDirectionEnum COUNT_DIRECTION_EDEFAULT = TimerCountDirectionEnum.UP;
    protected TimerCountDirectionEnum countDirection = COUNT_DIRECTION_EDEFAULT;
    protected boolean countDirectionESet;
    protected static final TimerModeEnum MODE_EDEFAULT = TimerModeEnum.CONTINUOUS;
    protected TimerModeEnum mode = MODE_EDEFAULT;
    protected boolean modeESet;

    protected TimerImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.TIMER;
    }

    public Boolean getCanBeReInit() {
        return this.canBeReInit;
    }

    public void setCanBeReInit(Boolean newCanBeReInit) {
        Boolean oldCanBeReInit = this.canBeReInit;
        this.canBeReInit = newCanBeReInit;
        boolean oldCanBeReInitESet = this.canBeReInitESet;
        this.canBeReInitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldCanBeReInit, (Object)this.canBeReInit, !oldCanBeReInitESet));
        }
    }

    public void unsetCanBeReInit() {
        Boolean oldCanBeReInit = this.canBeReInit;
        boolean oldCanBeReInitESet = this.canBeReInitESet;
        this.canBeReInit = CAN_BE_RE_INIT_EDEFAULT;
        this.canBeReInitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldCanBeReInit, (Object)CAN_BE_RE_INIT_EDEFAULT, oldCanBeReInitESet));
        }
    }

    public boolean isSetCanBeReInit() {
        return this.canBeReInitESet;
    }

    public TimerCountDirectionEnum getCountDirection() {
        return this.countDirection;
    }

    public void setCountDirection(TimerCountDirectionEnum newCountDirection) {
        TimerCountDirectionEnum oldCountDirection = this.countDirection;
        this.countDirection = newCountDirection == null ? COUNT_DIRECTION_EDEFAULT : newCountDirection;
        boolean oldCountDirectionESet = this.countDirectionESet;
        this.countDirectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldCountDirection, (Object)this.countDirection, !oldCountDirectionESet));
        }
    }

    public void unsetCountDirection() {
        TimerCountDirectionEnum oldCountDirection = this.countDirection;
        boolean oldCountDirectionESet = this.countDirectionESet;
        this.countDirection = COUNT_DIRECTION_EDEFAULT;
        this.countDirectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldCountDirection, (Object)COUNT_DIRECTION_EDEFAULT, oldCountDirectionESet));
        }
    }

    public boolean isSetCountDirection() {
        return this.countDirectionESet;
    }

    public TimerModeEnum getMode() {
        return this.mode;
    }

    public void setMode(TimerModeEnum newMode) {
        TimerModeEnum oldMode = this.mode;
        this.mode = newMode == null ? MODE_EDEFAULT : newMode;
        boolean oldModeESet = this.modeESet;
        this.modeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldMode, (Object)this.mode, !oldModeESet));
        }
    }

    public void unsetMode() {
        TimerModeEnum oldMode = this.mode;
        boolean oldModeESet = this.modeESet;
        this.mode = MODE_EDEFAULT;
        this.modeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldMode, (Object)MODE_EDEFAULT, oldModeESet));
        }
    }

    public boolean isSetMode() {
        return this.modeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 30: {
                return this.getCanBeReInit();
            }
            case 31: {
                return this.getCountDirection();
            }
            case 32: {
                return this.getMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 30: {
                this.setCanBeReInit((Boolean)newValue);
                return;
            }
            case 31: {
                this.setCountDirection((TimerCountDirectionEnum)((Object)newValue));
                return;
            }
            case 32: {
                this.setMode((TimerModeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 30: {
                this.unsetCanBeReInit();
                return;
            }
            case 31: {
                this.unsetCountDirection();
                return;
            }
            case 32: {
                this.unsetMode();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 30: {
                return this.isSetCanBeReInit();
            }
            case 31: {
                return this.isSetCountDirection();
            }
            case 32: {
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
        result.append(" (canBeReInit: ");
        if (this.canBeReInitESet) {
            result.append(this.canBeReInit);
        } else {
            result.append("<unset>");
        }
        result.append(", countDirection: ");
        if (this.countDirectionESet) {
            result.append((Object)this.countDirection);
        } else {
            result.append("<unset>");
        }
        result.append(", mode: ");
        if (this.modeESet) {
            result.append((Object)this.mode);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

