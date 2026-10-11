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

import autosar3x.ecuresource.peripherals.DigitalIO;
import autosar3x.ecuresource.peripherals.DigitalIoEdgeDetectionEnum;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.PeripheralImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class DigitalIOImpl
extends PeripheralImpl
implements DigitalIO {
    protected static final DigitalIoEdgeDetectionEnum EDGE_DETECTION_EDEFAULT = DigitalIoEdgeDetectionEnum.RISING;
    protected DigitalIoEdgeDetectionEnum edgeDetection = EDGE_DETECTION_EDEFAULT;
    protected boolean edgeDetectionESet;

    protected DigitalIOImpl() {
    }

    protected EClass eStaticClass() {
        return PeripheralsPackage.Literals.DIGITAL_IO;
    }

    public DigitalIoEdgeDetectionEnum getEdgeDetection() {
        return this.edgeDetection;
    }

    public void setEdgeDetection(DigitalIoEdgeDetectionEnum newEdgeDetection) {
        DigitalIoEdgeDetectionEnum oldEdgeDetection = this.edgeDetection;
        this.edgeDetection = newEdgeDetection == null ? EDGE_DETECTION_EDEFAULT : newEdgeDetection;
        boolean oldEdgeDetectionESet = this.edgeDetectionESet;
        this.edgeDetectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldEdgeDetection, (Object)this.edgeDetection, !oldEdgeDetectionESet));
        }
    }

    public void unsetEdgeDetection() {
        DigitalIoEdgeDetectionEnum oldEdgeDetection = this.edgeDetection;
        boolean oldEdgeDetectionESet = this.edgeDetectionESet;
        this.edgeDetection = EDGE_DETECTION_EDEFAULT;
        this.edgeDetectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldEdgeDetection, (Object)EDGE_DETECTION_EDEFAULT, oldEdgeDetectionESet));
        }
    }

    public boolean isSetEdgeDetection() {
        return this.edgeDetectionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getEdgeDetection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setEdgeDetection((DigitalIoEdgeDetectionEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.unsetEdgeDetection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.isSetEdgeDetection();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (edgeDetection: ");
        if (this.edgeDetectionESet) {
            result.append((Object)this.edgeDetection);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

