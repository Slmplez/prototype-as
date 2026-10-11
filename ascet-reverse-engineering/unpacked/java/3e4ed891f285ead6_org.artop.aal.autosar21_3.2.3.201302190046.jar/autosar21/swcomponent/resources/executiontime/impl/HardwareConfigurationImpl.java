/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.swcomponent.resources.executiontime.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class HardwareConfigurationImpl
extends ARObjectImpl
implements HardwareConfiguration {
    protected static final String ADDITIONAL_INFORMATION_EDEFAULT = "";
    protected String additionalInformation = "";
    protected boolean additionalInformationESet;
    protected static final String PROCESSOR_MODE_EDEFAULT = "";
    protected String processorMode = "";
    protected boolean processorModeESet;
    protected static final String PROCESSOR_SPEED_EDEFAULT = "";
    protected String processorSpeed = "";
    protected boolean processorSpeedESet;

    protected HardwareConfigurationImpl() {
    }

    protected EClass eStaticClass() {
        return ExecutiontimePackage.Literals.HARDWARE_CONFIGURATION;
    }

    public String getAdditionalInformation() {
        return this.additionalInformation;
    }

    public void setAdditionalInformation(String newAdditionalInformation) {
        String oldAdditionalInformation = this.additionalInformation;
        this.additionalInformation = newAdditionalInformation;
        boolean oldAdditionalInformationESet = this.additionalInformationESet;
        this.additionalInformationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldAdditionalInformation, (Object)this.additionalInformation, !oldAdditionalInformationESet));
        }
    }

    public void unsetAdditionalInformation() {
        String oldAdditionalInformation = this.additionalInformation;
        boolean oldAdditionalInformationESet = this.additionalInformationESet;
        this.additionalInformation = "";
        this.additionalInformationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldAdditionalInformation, (Object)"", oldAdditionalInformationESet));
        }
    }

    public boolean isSetAdditionalInformation() {
        return this.additionalInformationESet;
    }

    public String getProcessorMode() {
        return this.processorMode;
    }

    public void setProcessorMode(String newProcessorMode) {
        String oldProcessorMode = this.processorMode;
        this.processorMode = newProcessorMode;
        boolean oldProcessorModeESet = this.processorModeESet;
        this.processorModeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldProcessorMode, (Object)this.processorMode, !oldProcessorModeESet));
        }
    }

    public void unsetProcessorMode() {
        String oldProcessorMode = this.processorMode;
        boolean oldProcessorModeESet = this.processorModeESet;
        this.processorMode = "";
        this.processorModeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldProcessorMode, (Object)"", oldProcessorModeESet));
        }
    }

    public boolean isSetProcessorMode() {
        return this.processorModeESet;
    }

    public String getProcessorSpeed() {
        return this.processorSpeed;
    }

    public void setProcessorSpeed(String newProcessorSpeed) {
        String oldProcessorSpeed = this.processorSpeed;
        this.processorSpeed = newProcessorSpeed;
        boolean oldProcessorSpeedESet = this.processorSpeedESet;
        this.processorSpeedESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldProcessorSpeed, (Object)this.processorSpeed, !oldProcessorSpeedESet));
        }
    }

    public void unsetProcessorSpeed() {
        String oldProcessorSpeed = this.processorSpeed;
        boolean oldProcessorSpeedESet = this.processorSpeedESet;
        this.processorSpeed = "";
        this.processorSpeedESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldProcessorSpeed, (Object)"", oldProcessorSpeedESet));
        }
    }

    public boolean isSetProcessorSpeed() {
        return this.processorSpeedESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getAdditionalInformation();
            }
            case 5: {
                return this.getProcessorMode();
            }
            case 6: {
                return this.getProcessorSpeed();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setAdditionalInformation((String)newValue);
                return;
            }
            case 5: {
                this.setProcessorMode((String)newValue);
                return;
            }
            case 6: {
                this.setProcessorSpeed((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetAdditionalInformation();
                return;
            }
            case 5: {
                this.unsetProcessorMode();
                return;
            }
            case 6: {
                this.unsetProcessorSpeed();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetAdditionalInformation();
            }
            case 5: {
                return this.isSetProcessorMode();
            }
            case 6: {
                return this.isSetProcessorSpeed();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (additionalInformation: ");
        if (this.additionalInformationESet) {
            result.append(this.additionalInformation);
        } else {
            result.append("<unset>");
        }
        result.append(", processorMode: ");
        if (this.processorModeESet) {
            result.append(this.processorMode);
        } else {
            result.append("<unset>");
        }
        result.append(", processorSpeed: ");
        if (this.processorSpeedESet) {
            result.append(this.processorSpeed);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

