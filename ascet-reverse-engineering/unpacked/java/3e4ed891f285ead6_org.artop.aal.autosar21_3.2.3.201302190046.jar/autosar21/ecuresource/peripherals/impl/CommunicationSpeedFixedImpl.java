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

import autosar21.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.CommunicationSpeedImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CommunicationSpeedFixedImpl
extends CommunicationSpeedImpl
implements CommunicationSpeedFixed {
    protected static final Integer FIX_SPEED_EDEFAULT = new Integer(0);
    protected Integer fixSpeed = FIX_SPEED_EDEFAULT;
    protected boolean fixSpeedESet;

    protected CommunicationSpeedFixedImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_SPEED_FIXED;
    }

    public Integer getFixSpeed() {
        return this.fixSpeed;
    }

    public void setFixSpeed(Integer newFixSpeed) {
        Integer oldFixSpeed = this.fixSpeed;
        this.fixSpeed = newFixSpeed;
        boolean oldFixSpeedESet = this.fixSpeedESet;
        this.fixSpeedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFixSpeed, (Object)this.fixSpeed, !oldFixSpeedESet));
        }
    }

    public void unsetFixSpeed() {
        Integer oldFixSpeed = this.fixSpeed;
        boolean oldFixSpeedESet = this.fixSpeedESet;
        this.fixSpeed = FIX_SPEED_EDEFAULT;
        this.fixSpeedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldFixSpeed, (Object)FIX_SPEED_EDEFAULT, oldFixSpeedESet));
        }
    }

    public boolean isSetFixSpeed() {
        return this.fixSpeedESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getFixSpeed();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setFixSpeed((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetFixSpeed();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetFixSpeed();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (fixSpeed: ");
        if (this.fixSpeedESet) {
            result.append(this.fixSpeed);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

