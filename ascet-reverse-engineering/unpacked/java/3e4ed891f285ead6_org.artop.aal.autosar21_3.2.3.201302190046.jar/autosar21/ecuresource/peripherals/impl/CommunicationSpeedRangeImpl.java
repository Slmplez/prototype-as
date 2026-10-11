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

import autosar21.ecuresource.peripherals.CommunicationSpeedRange;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.CommunicationSpeedImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CommunicationSpeedRangeImpl
extends CommunicationSpeedImpl
implements CommunicationSpeedRange {
    protected static final Integer MAX_SPEED_EDEFAULT = new Integer(0);
    protected Integer maxSpeed = MAX_SPEED_EDEFAULT;
    protected boolean maxSpeedESet;
    protected static final Integer MIN_SPEED_EDEFAULT = new Integer(0);
    protected Integer minSpeed = MIN_SPEED_EDEFAULT;
    protected boolean minSpeedESet;

    protected CommunicationSpeedRangeImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.COMMUNICATION_SPEED_RANGE;
    }

    public Integer getMaxSpeed() {
        return this.maxSpeed;
    }

    public void setMaxSpeed(Integer newMaxSpeed) {
        Integer oldMaxSpeed = this.maxSpeed;
        this.maxSpeed = newMaxSpeed;
        boolean oldMaxSpeedESet = this.maxSpeedESet;
        this.maxSpeedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMaxSpeed, (Object)this.maxSpeed, !oldMaxSpeedESet));
        }
    }

    public void unsetMaxSpeed() {
        Integer oldMaxSpeed = this.maxSpeed;
        boolean oldMaxSpeedESet = this.maxSpeedESet;
        this.maxSpeed = MAX_SPEED_EDEFAULT;
        this.maxSpeedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMaxSpeed, (Object)MAX_SPEED_EDEFAULT, oldMaxSpeedESet));
        }
    }

    public boolean isSetMaxSpeed() {
        return this.maxSpeedESet;
    }

    public Integer getMinSpeed() {
        return this.minSpeed;
    }

    public void setMinSpeed(Integer newMinSpeed) {
        Integer oldMinSpeed = this.minSpeed;
        this.minSpeed = newMinSpeed;
        boolean oldMinSpeedESet = this.minSpeedESet;
        this.minSpeedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMinSpeed, (Object)this.minSpeed, !oldMinSpeedESet));
        }
    }

    public void unsetMinSpeed() {
        Integer oldMinSpeed = this.minSpeed;
        boolean oldMinSpeedESet = this.minSpeedESet;
        this.minSpeed = MIN_SPEED_EDEFAULT;
        this.minSpeedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMinSpeed, (Object)MIN_SPEED_EDEFAULT, oldMinSpeedESet));
        }
    }

    public boolean isSetMinSpeed() {
        return this.minSpeedESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 6: {
                return this.getMaxSpeed();
            }
            case 7: {
                return this.getMinSpeed();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 6: {
                this.setMaxSpeed((Integer)newValue);
                return;
            }
            case 7: {
                this.setMinSpeed((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 6: {
                this.unsetMaxSpeed();
                return;
            }
            case 7: {
                this.unsetMinSpeed();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 6: {
                return this.isSetMaxSpeed();
            }
            case 7: {
                return this.isSetMinSpeed();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (maxSpeed: ");
        if (this.maxSpeedESet) {
            result.append(this.maxSpeed);
        } else {
            result.append("<unset>");
        }
        result.append(", minSpeed: ");
        if (this.minSpeedESet) {
            result.append(this.minSpeed);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

