/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.bswmodule.bswbehavior.impl;

import autosar3x.bswmodule.bswbehavior.BswSporadicEvent;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.impl.BswEventImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class BswSporadicEventImpl
extends BswEventImpl
implements BswSporadicEvent {
    protected static final Double DELAY_TIME_EDEFAULT = new Double(0.0);
    protected Double delayTime = DELAY_TIME_EDEFAULT;
    protected boolean delayTimeESet;

    protected BswSporadicEventImpl() {
    }

    protected EClass eStaticClass() {
        return BswbehaviorPackage.Literals.BSW_SPORADIC_EVENT;
    }

    public Double getDelayTime() {
        return this.delayTime;
    }

    public void setDelayTime(Double newDelayTime) {
        Double oldDelayTime = this.delayTime;
        this.delayTime = newDelayTime;
        boolean oldDelayTimeESet = this.delayTimeESet;
        this.delayTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDelayTime, (Object)this.delayTime, !oldDelayTimeESet));
        }
    }

    public void unsetDelayTime() {
        Double oldDelayTime = this.delayTime;
        boolean oldDelayTimeESet = this.delayTimeESet;
        this.delayTime = DELAY_TIME_EDEFAULT;
        this.delayTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldDelayTime, (Object)DELAY_TIME_EDEFAULT, oldDelayTimeESet));
        }
    }

    public boolean isSetDelayTime() {
        return this.delayTimeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getDelayTime();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setDelayTime((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.unsetDelayTime();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.isSetDelayTime();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (delayTime: ");
        if (this.delayTimeESet) {
            result.append(this.delayTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

