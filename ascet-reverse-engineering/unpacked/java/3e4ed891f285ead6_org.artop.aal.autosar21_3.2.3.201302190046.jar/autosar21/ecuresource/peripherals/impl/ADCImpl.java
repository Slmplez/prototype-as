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

import autosar21.ecuresource.peripherals.ADC;
import autosar21.ecuresource.peripherals.ADCBehaviourAtLimitEnum;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.AnalogueIOImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ADCImpl
extends AnalogueIOImpl
implements ADC {
    protected static final ADCBehaviourAtLimitEnum BEHAVIOUR_AT_LIMIT_EDEFAULT = ADCBehaviourAtLimitEnum.CLIPPING;
    protected ADCBehaviourAtLimitEnum behaviourAtLimit = BEHAVIOUR_AT_LIMIT_EDEFAULT;
    protected boolean behaviourAtLimitESet;

    protected ADCImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.ADC;
    }

    public ADCBehaviourAtLimitEnum getBehaviourAtLimit() {
        return this.behaviourAtLimit;
    }

    public void setBehaviourAtLimit(ADCBehaviourAtLimitEnum newBehaviourAtLimit) {
        ADCBehaviourAtLimitEnum oldBehaviourAtLimit = this.behaviourAtLimit;
        this.behaviourAtLimit = newBehaviourAtLimit == null ? BEHAVIOUR_AT_LIMIT_EDEFAULT : newBehaviourAtLimit;
        boolean oldBehaviourAtLimitESet = this.behaviourAtLimitESet;
        this.behaviourAtLimitESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldBehaviourAtLimit, (Object)this.behaviourAtLimit, !oldBehaviourAtLimitESet));
        }
    }

    public void unsetBehaviourAtLimit() {
        ADCBehaviourAtLimitEnum oldBehaviourAtLimit = this.behaviourAtLimit;
        boolean oldBehaviourAtLimitESet = this.behaviourAtLimitESet;
        this.behaviourAtLimit = BEHAVIOUR_AT_LIMIT_EDEFAULT;
        this.behaviourAtLimitESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldBehaviourAtLimit, (Object)BEHAVIOUR_AT_LIMIT_EDEFAULT, oldBehaviourAtLimitESet));
        }
    }

    public boolean isSetBehaviourAtLimit() {
        return this.behaviourAtLimitESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 34: {
                return this.getBehaviourAtLimit();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 34: {
                this.setBehaviourAtLimit((ADCBehaviourAtLimitEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 34: {
                this.unsetBehaviourAtLimit();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 34: {
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

