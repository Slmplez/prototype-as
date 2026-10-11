/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.ecuresource.ecuelectronics.impl;

import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar3x.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PowerDriverProtectionImpl
extends ARObjectImpl
implements PowerDriverProtection {
    protected static final Boolean LOSS_OF_GROUND_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean lossOfGroundProtection = LOSS_OF_GROUND_PROTECTION_EDEFAULT;
    protected boolean lossOfGroundProtectionESet;
    protected static final Boolean MAX_CURRENT_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean maxCurrentProtection = MAX_CURRENT_PROTECTION_EDEFAULT;
    protected boolean maxCurrentProtectionESet;
    protected static final Boolean MAX_VOLTAGE_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean maxVoltageProtection = MAX_VOLTAGE_PROTECTION_EDEFAULT;
    protected boolean maxVoltageProtectionESet;
    protected static final Boolean MIN_CURRENT_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean minCurrentProtection = MIN_CURRENT_PROTECTION_EDEFAULT;
    protected boolean minCurrentProtectionESet;
    protected static final Boolean MIN_VOLTAGE_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean minVoltageProtection = MIN_VOLTAGE_PROTECTION_EDEFAULT;
    protected boolean minVoltageProtectionESet;
    protected static final Boolean OVER_TEMPERATURE_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean overTemperatureProtection = OVER_TEMPERATURE_PROTECTION_EDEFAULT;
    protected boolean overTemperatureProtectionESet;
    protected static final Boolean REVERSE_BATTERY_PROTECTION_EDEFAULT = Boolean.FALSE;
    protected Boolean reverseBatteryProtection = REVERSE_BATTERY_PROTECTION_EDEFAULT;
    protected boolean reverseBatteryProtectionESet;

    protected PowerDriverProtectionImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_DRIVER_PROTECTION;
    }

    public PowerDriverHWElement getPowerDriverHWElement() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PowerDriverHWElement)this.eContainer();
    }

    public NotificationChain basicSetPowerDriverHWElement(PowerDriverHWElement newPowerDriverHWElement, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPowerDriverHWElement, 4, msgs);
        return msgs;
    }

    public void setPowerDriverHWElement(PowerDriverHWElement newPowerDriverHWElement) {
        if (newPowerDriverHWElement != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPowerDriverHWElement != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPowerDriverHWElement)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPowerDriverHWElement != null) {
                msgs = ((InternalEObject)newPowerDriverHWElement).eInverseAdd((InternalEObject)this, 32, PowerDriverHWElement.class, msgs);
            }
            if ((msgs = this.basicSetPowerDriverHWElement(newPowerDriverHWElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPowerDriverHWElement, (Object)newPowerDriverHWElement));
        }
    }

    public Boolean getLossOfGroundProtection() {
        return this.lossOfGroundProtection;
    }

    public void setLossOfGroundProtection(Boolean newLossOfGroundProtection) {
        Boolean oldLossOfGroundProtection = this.lossOfGroundProtection;
        this.lossOfGroundProtection = newLossOfGroundProtection;
        boolean oldLossOfGroundProtectionESet = this.lossOfGroundProtectionESet;
        this.lossOfGroundProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLossOfGroundProtection, (Object)this.lossOfGroundProtection, !oldLossOfGroundProtectionESet));
        }
    }

    public void unsetLossOfGroundProtection() {
        Boolean oldLossOfGroundProtection = this.lossOfGroundProtection;
        boolean oldLossOfGroundProtectionESet = this.lossOfGroundProtectionESet;
        this.lossOfGroundProtection = LOSS_OF_GROUND_PROTECTION_EDEFAULT;
        this.lossOfGroundProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldLossOfGroundProtection, (Object)LOSS_OF_GROUND_PROTECTION_EDEFAULT, oldLossOfGroundProtectionESet));
        }
    }

    public boolean isSetLossOfGroundProtection() {
        return this.lossOfGroundProtectionESet;
    }

    public Boolean getMaxCurrentProtection() {
        return this.maxCurrentProtection;
    }

    public void setMaxCurrentProtection(Boolean newMaxCurrentProtection) {
        Boolean oldMaxCurrentProtection = this.maxCurrentProtection;
        this.maxCurrentProtection = newMaxCurrentProtection;
        boolean oldMaxCurrentProtectionESet = this.maxCurrentProtectionESet;
        this.maxCurrentProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldMaxCurrentProtection, (Object)this.maxCurrentProtection, !oldMaxCurrentProtectionESet));
        }
    }

    public void unsetMaxCurrentProtection() {
        Boolean oldMaxCurrentProtection = this.maxCurrentProtection;
        boolean oldMaxCurrentProtectionESet = this.maxCurrentProtectionESet;
        this.maxCurrentProtection = MAX_CURRENT_PROTECTION_EDEFAULT;
        this.maxCurrentProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldMaxCurrentProtection, (Object)MAX_CURRENT_PROTECTION_EDEFAULT, oldMaxCurrentProtectionESet));
        }
    }

    public boolean isSetMaxCurrentProtection() {
        return this.maxCurrentProtectionESet;
    }

    public Boolean getMaxVoltageProtection() {
        return this.maxVoltageProtection;
    }

    public void setMaxVoltageProtection(Boolean newMaxVoltageProtection) {
        Boolean oldMaxVoltageProtection = this.maxVoltageProtection;
        this.maxVoltageProtection = newMaxVoltageProtection;
        boolean oldMaxVoltageProtectionESet = this.maxVoltageProtectionESet;
        this.maxVoltageProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMaxVoltageProtection, (Object)this.maxVoltageProtection, !oldMaxVoltageProtectionESet));
        }
    }

    public void unsetMaxVoltageProtection() {
        Boolean oldMaxVoltageProtection = this.maxVoltageProtection;
        boolean oldMaxVoltageProtectionESet = this.maxVoltageProtectionESet;
        this.maxVoltageProtection = MAX_VOLTAGE_PROTECTION_EDEFAULT;
        this.maxVoltageProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMaxVoltageProtection, (Object)MAX_VOLTAGE_PROTECTION_EDEFAULT, oldMaxVoltageProtectionESet));
        }
    }

    public boolean isSetMaxVoltageProtection() {
        return this.maxVoltageProtectionESet;
    }

    public Boolean getMinCurrentProtection() {
        return this.minCurrentProtection;
    }

    public void setMinCurrentProtection(Boolean newMinCurrentProtection) {
        Boolean oldMinCurrentProtection = this.minCurrentProtection;
        this.minCurrentProtection = newMinCurrentProtection;
        boolean oldMinCurrentProtectionESet = this.minCurrentProtectionESet;
        this.minCurrentProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldMinCurrentProtection, (Object)this.minCurrentProtection, !oldMinCurrentProtectionESet));
        }
    }

    public void unsetMinCurrentProtection() {
        Boolean oldMinCurrentProtection = this.minCurrentProtection;
        boolean oldMinCurrentProtectionESet = this.minCurrentProtectionESet;
        this.minCurrentProtection = MIN_CURRENT_PROTECTION_EDEFAULT;
        this.minCurrentProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldMinCurrentProtection, (Object)MIN_CURRENT_PROTECTION_EDEFAULT, oldMinCurrentProtectionESet));
        }
    }

    public boolean isSetMinCurrentProtection() {
        return this.minCurrentProtectionESet;
    }

    public Boolean getMinVoltageProtection() {
        return this.minVoltageProtection;
    }

    public void setMinVoltageProtection(Boolean newMinVoltageProtection) {
        Boolean oldMinVoltageProtection = this.minVoltageProtection;
        this.minVoltageProtection = newMinVoltageProtection;
        boolean oldMinVoltageProtectionESet = this.minVoltageProtectionESet;
        this.minVoltageProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMinVoltageProtection, (Object)this.minVoltageProtection, !oldMinVoltageProtectionESet));
        }
    }

    public void unsetMinVoltageProtection() {
        Boolean oldMinVoltageProtection = this.minVoltageProtection;
        boolean oldMinVoltageProtectionESet = this.minVoltageProtectionESet;
        this.minVoltageProtection = MIN_VOLTAGE_PROTECTION_EDEFAULT;
        this.minVoltageProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMinVoltageProtection, (Object)MIN_VOLTAGE_PROTECTION_EDEFAULT, oldMinVoltageProtectionESet));
        }
    }

    public boolean isSetMinVoltageProtection() {
        return this.minVoltageProtectionESet;
    }

    public Boolean getOverTemperatureProtection() {
        return this.overTemperatureProtection;
    }

    public void setOverTemperatureProtection(Boolean newOverTemperatureProtection) {
        Boolean oldOverTemperatureProtection = this.overTemperatureProtection;
        this.overTemperatureProtection = newOverTemperatureProtection;
        boolean oldOverTemperatureProtectionESet = this.overTemperatureProtectionESet;
        this.overTemperatureProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldOverTemperatureProtection, (Object)this.overTemperatureProtection, !oldOverTemperatureProtectionESet));
        }
    }

    public void unsetOverTemperatureProtection() {
        Boolean oldOverTemperatureProtection = this.overTemperatureProtection;
        boolean oldOverTemperatureProtectionESet = this.overTemperatureProtectionESet;
        this.overTemperatureProtection = OVER_TEMPERATURE_PROTECTION_EDEFAULT;
        this.overTemperatureProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldOverTemperatureProtection, (Object)OVER_TEMPERATURE_PROTECTION_EDEFAULT, oldOverTemperatureProtectionESet));
        }
    }

    public boolean isSetOverTemperatureProtection() {
        return this.overTemperatureProtectionESet;
    }

    public Boolean getReverseBatteryProtection() {
        return this.reverseBatteryProtection;
    }

    public void setReverseBatteryProtection(Boolean newReverseBatteryProtection) {
        Boolean oldReverseBatteryProtection = this.reverseBatteryProtection;
        this.reverseBatteryProtection = newReverseBatteryProtection;
        boolean oldReverseBatteryProtectionESet = this.reverseBatteryProtectionESet;
        this.reverseBatteryProtectionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldReverseBatteryProtection, (Object)this.reverseBatteryProtection, !oldReverseBatteryProtectionESet));
        }
    }

    public void unsetReverseBatteryProtection() {
        Boolean oldReverseBatteryProtection = this.reverseBatteryProtection;
        boolean oldReverseBatteryProtectionESet = this.reverseBatteryProtectionESet;
        this.reverseBatteryProtection = REVERSE_BATTERY_PROTECTION_EDEFAULT;
        this.reverseBatteryProtectionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldReverseBatteryProtection, (Object)REVERSE_BATTERY_PROTECTION_EDEFAULT, oldReverseBatteryProtectionESet));
        }
    }

    public boolean isSetReverseBatteryProtection() {
        return this.reverseBatteryProtectionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPowerDriverHWElement((PowerDriverHWElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPowerDriverHWElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 32, PowerDriverHWElement.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPowerDriverHWElement();
            }
            case 5: {
                return this.getLossOfGroundProtection();
            }
            case 6: {
                return this.getMaxCurrentProtection();
            }
            case 7: {
                return this.getMaxVoltageProtection();
            }
            case 8: {
                return this.getMinCurrentProtection();
            }
            case 9: {
                return this.getMinVoltageProtection();
            }
            case 10: {
                return this.getOverTemperatureProtection();
            }
            case 11: {
                return this.getReverseBatteryProtection();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPowerDriverHWElement((PowerDriverHWElement)newValue);
                return;
            }
            case 5: {
                this.setLossOfGroundProtection((Boolean)newValue);
                return;
            }
            case 6: {
                this.setMaxCurrentProtection((Boolean)newValue);
                return;
            }
            case 7: {
                this.setMaxVoltageProtection((Boolean)newValue);
                return;
            }
            case 8: {
                this.setMinCurrentProtection((Boolean)newValue);
                return;
            }
            case 9: {
                this.setMinVoltageProtection((Boolean)newValue);
                return;
            }
            case 10: {
                this.setOverTemperatureProtection((Boolean)newValue);
                return;
            }
            case 11: {
                this.setReverseBatteryProtection((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPowerDriverHWElement(null);
                return;
            }
            case 5: {
                this.unsetLossOfGroundProtection();
                return;
            }
            case 6: {
                this.unsetMaxCurrentProtection();
                return;
            }
            case 7: {
                this.unsetMaxVoltageProtection();
                return;
            }
            case 8: {
                this.unsetMinCurrentProtection();
                return;
            }
            case 9: {
                this.unsetMinVoltageProtection();
                return;
            }
            case 10: {
                this.unsetOverTemperatureProtection();
                return;
            }
            case 11: {
                this.unsetReverseBatteryProtection();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPowerDriverHWElement() != null;
            }
            case 5: {
                return this.isSetLossOfGroundProtection();
            }
            case 6: {
                return this.isSetMaxCurrentProtection();
            }
            case 7: {
                return this.isSetMaxVoltageProtection();
            }
            case 8: {
                return this.isSetMinCurrentProtection();
            }
            case 9: {
                return this.isSetMinVoltageProtection();
            }
            case 10: {
                return this.isSetOverTemperatureProtection();
            }
            case 11: {
                return this.isSetReverseBatteryProtection();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (lossOfGroundProtection: ");
        if (this.lossOfGroundProtectionESet) {
            result.append(this.lossOfGroundProtection);
        } else {
            result.append("<unset>");
        }
        result.append(", maxCurrentProtection: ");
        if (this.maxCurrentProtectionESet) {
            result.append(this.maxCurrentProtection);
        } else {
            result.append("<unset>");
        }
        result.append(", maxVoltageProtection: ");
        if (this.maxVoltageProtectionESet) {
            result.append(this.maxVoltageProtection);
        } else {
            result.append("<unset>");
        }
        result.append(", minCurrentProtection: ");
        if (this.minCurrentProtectionESet) {
            result.append(this.minCurrentProtection);
        } else {
            result.append("<unset>");
        }
        result.append(", minVoltageProtection: ");
        if (this.minVoltageProtectionESet) {
            result.append(this.minVoltageProtection);
        } else {
            result.append("<unset>");
        }
        result.append(", overTemperatureProtection: ");
        if (this.overTemperatureProtectionESet) {
            result.append(this.overTemperatureProtection);
        } else {
            result.append("<unset>");
        }
        result.append(", reverseBatteryProtection: ");
        if (this.reverseBatteryProtectionESet) {
            result.append(this.reverseBatteryProtection);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

