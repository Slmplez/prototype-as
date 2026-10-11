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
import autosar21.ecuresource.peripherals.PulseWidthPeripheral;
import autosar21.ecuresource.peripherals.impl.PeripheralImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class PulseWidthPeripheralImpl
extends PeripheralImpl
implements PulseWidthPeripheral {
    protected static final Integer RESOLUTION_EDEFAULT = new Integer(0);
    protected Integer resolution = RESOLUTION_EDEFAULT;
    protected boolean resolutionESet;

    protected PulseWidthPeripheralImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.PULSE_WIDTH_PERIPHERAL;
    }

    public Integer getResolution() {
        return this.resolution;
    }

    public void setResolution(Integer newResolution) {
        Integer oldResolution = this.resolution;
        this.resolution = newResolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolutionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldResolution, (Object)this.resolution, !oldResolutionESet));
        }
    }

    public void unsetResolution() {
        Integer oldResolution = this.resolution;
        boolean oldResolutionESet = this.resolutionESet;
        this.resolution = RESOLUTION_EDEFAULT;
        this.resolutionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldResolution, (Object)RESOLUTION_EDEFAULT, oldResolutionESet));
        }
    }

    public boolean isSetResolution() {
        return this.resolutionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getResolution();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setResolution((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetResolution();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.isSetResolution();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (resolution: ");
        if (this.resolutionESet) {
            result.append(this.resolution);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

