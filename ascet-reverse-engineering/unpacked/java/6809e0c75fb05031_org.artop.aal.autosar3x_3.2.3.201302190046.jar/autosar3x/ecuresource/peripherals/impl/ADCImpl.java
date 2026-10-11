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

import autosar3x.ecuresource.peripherals.ADC;
import autosar3x.ecuresource.peripherals.AdcBehaviourAtLimitEnum;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.AnalogueIOImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ADCImpl
extends AnalogueIOImpl
implements ADC {
    protected static final AdcBehaviourAtLimitEnum BEHAVIOUR_AT_LIMIT_EDEFAULT = AdcBehaviourAtLimitEnum.CLIPPING;
    protected AdcBehaviourAtLimitEnum behaviourAtLimit = BEHAVIOUR_AT_LIMIT_EDEFAULT;
    protected boolean behaviourAtLimitESet;

    protected ADCImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.ADC;
    }

    public AdcBehaviourAtLimitEnum getBehaviourAtLimit() {
        return this.behaviourAtLimit;
    }

    public void setBehaviourAtLimit(AdcBehaviourAtLimitEnum newBehaviourAtLimit) {
        AdcBehaviourAtLimitEnum oldBehaviourAtLimit = this.behaviourAtLimit;
        this.behaviourAtLimit = newBehaviourAtLimit == null ? BEHAVIOUR_AT_LIMIT_EDEFAULT : newBehaviourAtLimit;
        boolean oldBehaviourAtLimitESet = this.behaviourAtLimitESet;
        this.behaviourAtLimitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldBehaviourAtLimit, (Object)this.behaviourAtLimit, !oldBehaviourAtLimitESet));
        }
    }

    public void unsetBehaviourAtLimit() {
        AdcBehaviourAtLimitEnum oldBehaviourAtLimit = this.behaviourAtLimit;
        boolean oldBehaviourAtLimitESet = this.behaviourAtLimitESet;
        this.behaviourAtLimit = BEHAVIOUR_AT_LIMIT_EDEFAULT;
        this.behaviourAtLimitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldBehaviourAtLimit, (Object)BEHAVIOUR_AT_LIMIT_EDEFAULT, oldBehaviourAtLimitESet));
        }
    }

    public boolean isSetBehaviourAtLimit() {
        return this.behaviourAtLimitESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 35: {
                return this.getBehaviourAtLimit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 35: {
                this.setBehaviourAtLimit((AdcBehaviourAtLimitEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 35: {
                this.unsetBehaviourAtLimit();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 35: {
                return this.isSetBehaviourAtLimit();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (behaviourAtLimit: ");
        if (this.behaviourAtLimitESet) {
            result.append((Object)this.behaviourAtLimit);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

