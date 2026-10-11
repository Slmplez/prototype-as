/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.swcomponent.components.impl;

import autosar3x.ecuresource.sensoractuator.SensorActuatorHW;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.SensorActuatorSoftwareComponentType;
import autosar3x.swcomponent.components.impl.AtomicSoftwareComponentTypeImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SensorActuatorSoftwareComponentTypeImpl
extends AtomicSoftwareComponentTypeImpl
implements SensorActuatorSoftwareComponentType,
IReferringClass {
    protected SensorActuatorHW sensorActuator;

    protected SensorActuatorSoftwareComponentTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentsPackage.Literals.SENSOR_ACTUATOR_SOFTWARE_COMPONENT_TYPE;
    }

    public SensorActuatorHW getSensorActuator() {
        if (this.sensorActuator != null && this.sensorActuator.eIsProxy()) {
            InternalEObject oldSensorActuator = (InternalEObject)this.sensorActuator;
            this.sensorActuator = (SensorActuatorHW)this.eResolveProxy(oldSensorActuator);
            if (this.sensorActuator != oldSensorActuator && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldSensorActuator, (Object)this.sensorActuator));
            }
        }
        return this.sensorActuator;
    }

    public SensorActuatorHW basicGetSensorActuator() {
        return this.sensorActuator;
    }

    public void setSensorActuator(SensorActuatorHW newSensorActuator) {
        SensorActuatorHW oldSensorActuator = this.sensorActuator;
        this.sensorActuator = newSensorActuator;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldSensorActuator, (Object)this.sensorActuator));
        }
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                if (resolve) {
                    return this.getSensorActuator();
                }
                return this.basicGetSensorActuator();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setSensorActuator((SensorActuatorHW)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setSensorActuator(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.sensorActuator != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }
}

