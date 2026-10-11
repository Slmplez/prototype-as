/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar3x.ecuresource.impl.HWPortImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PowerDriverHWPortImpl
extends HWPortImpl
implements PowerDriverHWPort {
    protected static final Double PWM_MAX_FREQUENCY_EDEFAULT = new Double(0.0);
    protected Double pwmMaxFrequency = PWM_MAX_FREQUENCY_EDEFAULT;
    protected boolean pwmMaxFrequencyESet;
    protected static final Double PWM_MIN_OFF_TIME_EDEFAULT = new Double(0.0);
    protected Double pwmMinOffTime = PWM_MIN_OFF_TIME_EDEFAULT;
    protected boolean pwmMinOffTimeESet;
    protected static final Double PWM_MIN_ON_TIME_EDEFAULT = new Double(0.0);
    protected Double pwmMinOnTime = PWM_MIN_ON_TIME_EDEFAULT;
    protected boolean pwmMinOnTimeESet;

    protected PowerDriverHWPortImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_DRIVER_HW_PORT;
    }

    public Double getPwmMaxFrequency() {
        return this.pwmMaxFrequency;
    }

    public void setPwmMaxFrequency(Double newPwmMaxFrequency) {
        Double oldPwmMaxFrequency = this.pwmMaxFrequency;
        this.pwmMaxFrequency = newPwmMaxFrequency;
        boolean oldPwmMaxFrequencyESet = this.pwmMaxFrequencyESet;
        this.pwmMaxFrequencyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldPwmMaxFrequency, (Object)this.pwmMaxFrequency, !oldPwmMaxFrequencyESet));
        }
    }

    public void unsetPwmMaxFrequency() {
        Double oldPwmMaxFrequency = this.pwmMaxFrequency;
        boolean oldPwmMaxFrequencyESet = this.pwmMaxFrequencyESet;
        this.pwmMaxFrequency = PWM_MAX_FREQUENCY_EDEFAULT;
        this.pwmMaxFrequencyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldPwmMaxFrequency, (Object)PWM_MAX_FREQUENCY_EDEFAULT, oldPwmMaxFrequencyESet));
        }
    }

    public boolean isSetPwmMaxFrequency() {
        return this.pwmMaxFrequencyESet;
    }

    public Double getPwmMinOffTime() {
        return this.pwmMinOffTime;
    }

    public void setPwmMinOffTime(Double newPwmMinOffTime) {
        Double oldPwmMinOffTime = this.pwmMinOffTime;
        this.pwmMinOffTime = newPwmMinOffTime;
        boolean oldPwmMinOffTimeESet = this.pwmMinOffTimeESet;
        this.pwmMinOffTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldPwmMinOffTime, (Object)this.pwmMinOffTime, !oldPwmMinOffTimeESet));
        }
    }

    public void unsetPwmMinOffTime() {
        Double oldPwmMinOffTime = this.pwmMinOffTime;
        boolean oldPwmMinOffTimeESet = this.pwmMinOffTimeESet;
        this.pwmMinOffTime = PWM_MIN_OFF_TIME_EDEFAULT;
        this.pwmMinOffTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldPwmMinOffTime, (Object)PWM_MIN_OFF_TIME_EDEFAULT, oldPwmMinOffTimeESet));
        }
    }

    public boolean isSetPwmMinOffTime() {
        return this.pwmMinOffTimeESet;
    }

    public Double getPwmMinOnTime() {
        return this.pwmMinOnTime;
    }

    public void setPwmMinOnTime(Double newPwmMinOnTime) {
        Double oldPwmMinOnTime = this.pwmMinOnTime;
        this.pwmMinOnTime = newPwmMinOnTime;
        boolean oldPwmMinOnTimeESet = this.pwmMinOnTimeESet;
        this.pwmMinOnTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldPwmMinOnTime, (Object)this.pwmMinOnTime, !oldPwmMinOnTimeESet));
        }
    }

    public void unsetPwmMinOnTime() {
        Double oldPwmMinOnTime = this.pwmMinOnTime;
        boolean oldPwmMinOnTimeESet = this.pwmMinOnTimeESet;
        this.pwmMinOnTime = PWM_MIN_ON_TIME_EDEFAULT;
        this.pwmMinOnTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldPwmMinOnTime, (Object)PWM_MIN_ON_TIME_EDEFAULT, oldPwmMinOnTimeESet));
        }
    }

    public boolean isSetPwmMinOnTime() {
        return this.pwmMinOnTimeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getPwmMaxFrequency();
            }
            case 21: {
                return this.getPwmMinOffTime();
            }
            case 22: {
                return this.getPwmMinOnTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setPwmMaxFrequency((Double)newValue);
                return;
            }
            case 21: {
                this.setPwmMinOffTime((Double)newValue);
                return;
            }
            case 22: {
                this.setPwmMinOnTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.unsetPwmMaxFrequency();
                return;
            }
            case 21: {
                this.unsetPwmMinOffTime();
                return;
            }
            case 22: {
                this.unsetPwmMinOnTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.isSetPwmMaxFrequency();
            }
            case 21: {
                return this.isSetPwmMinOffTime();
            }
            case 22: {
                return this.isSetPwmMinOnTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (pwmMaxFrequency: ");
        if (this.pwmMaxFrequencyESet) {
            result.append(this.pwmMaxFrequency);
        } else {
            result.append("<unset>");
        }
        result.append(", pwmMinOffTime: ");
        if (this.pwmMinOffTimeESet) {
            result.append(this.pwmMinOffTime);
        } else {
            result.append("<unset>");
        }
        result.append(", pwmMinOnTime: ");
        if (this.pwmMinOnTimeESet) {
            result.append(this.pwmMinOnTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

