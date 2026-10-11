/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
import autosar21.ecuresource.ecuelectronics.impl.ECUElectronicsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PowerSupplyHWElementImpl
extends ECUElectronicsImpl
implements PowerSupplyHWElement {
    protected static final Double BACKUP_CAPACITY_EDEFAULT = new Double(0.0);
    protected Double backupCapacity = BACKUP_CAPACITY_EDEFAULT;
    protected boolean backupCapacityESet;
    protected static final Double DEFAULT_VOLTAGE_ON_RESET_EDEFAULT = new Double(0.0);
    protected Double defaultVoltageOnReset = DEFAULT_VOLTAGE_ON_RESET_EDEFAULT;
    protected boolean defaultVoltageOnResetESet;
    protected static final Double MAX_VOLTAGE_EDEFAULT = new Double(0.0);
    protected Double maxVoltage = MAX_VOLTAGE_EDEFAULT;
    protected boolean maxVoltageESet;
    protected static final Double MIN_VOLTAGE_EDEFAULT = new Double(0.0);
    protected Double minVoltage = MIN_VOLTAGE_EDEFAULT;
    protected boolean minVoltageESet;
    protected static final Boolean NOTIFICATION_OVER_TEMPERATURE_EDEFAULT = Boolean.FALSE;
    protected Boolean notificationOverTemperature = NOTIFICATION_OVER_TEMPERATURE_EDEFAULT;
    protected boolean notificationOverTemperatureESet;
    protected static final Boolean NOTIFICATION_RESET_EDEFAULT = Boolean.FALSE;
    protected Boolean notificationReset = NOTIFICATION_RESET_EDEFAULT;
    protected boolean notificationResetESet;
    protected PowerSupplyCurrentNotification overCurrentNotification;
    protected PowerSupplyVoltageNotification overVoltageNotification;
    protected static final Double RESET_DELAY_EDEFAULT = new Double(0.0);
    protected Double resetDelay = RESET_DELAY_EDEFAULT;
    protected boolean resetDelayESet;
    protected static final PowerSupplyHWElementResetOnFaultBehaviourEnum RESET_ON_FAULT_BEHAVIOUR_EDEFAULT = PowerSupplyHWElementResetOnFaultBehaviourEnum.AUTO;
    protected PowerSupplyHWElementResetOnFaultBehaviourEnum resetOnFaultBehaviour = RESET_ON_FAULT_BEHAVIOUR_EDEFAULT;
    protected boolean resetOnFaultBehaviourESet;
    protected PowerSupplyVoltageNotification underVoltageNotification;
    protected static final Boolean WAKEUP_CAPABILITY_EDEFAULT = Boolean.FALSE;
    protected Boolean wakeupCapability = WAKEUP_CAPABILITY_EDEFAULT;
    protected boolean wakeupCapabilityESet;

    protected PowerSupplyHWElementImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_SUPPLY_HW_ELEMENT;
    }

    public Double getBackupCapacity() {
        return this.backupCapacity;
    }

    public void setBackupCapacity(Double newBackupCapacity) {
        Double oldBackupCapacity = this.backupCapacity;
        this.backupCapacity = newBackupCapacity;
        boolean oldBackupCapacityESet = this.backupCapacityESet;
        this.backupCapacityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldBackupCapacity, (Object)this.backupCapacity, !oldBackupCapacityESet));
        }
    }

    public void unsetBackupCapacity() {
        Double oldBackupCapacity = this.backupCapacity;
        boolean oldBackupCapacityESet = this.backupCapacityESet;
        this.backupCapacity = BACKUP_CAPACITY_EDEFAULT;
        this.backupCapacityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldBackupCapacity, (Object)BACKUP_CAPACITY_EDEFAULT, oldBackupCapacityESet));
        }
    }

    public boolean isSetBackupCapacity() {
        return this.backupCapacityESet;
    }

    public Double getDefaultVoltageOnReset() {
        return this.defaultVoltageOnReset;
    }

    public void setDefaultVoltageOnReset(Double newDefaultVoltageOnReset) {
        Double oldDefaultVoltageOnReset = this.defaultVoltageOnReset;
        this.defaultVoltageOnReset = newDefaultVoltageOnReset;
        boolean oldDefaultVoltageOnResetESet = this.defaultVoltageOnResetESet;
        this.defaultVoltageOnResetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldDefaultVoltageOnReset, (Object)this.defaultVoltageOnReset, !oldDefaultVoltageOnResetESet));
        }
    }

    public void unsetDefaultVoltageOnReset() {
        Double oldDefaultVoltageOnReset = this.defaultVoltageOnReset;
        boolean oldDefaultVoltageOnResetESet = this.defaultVoltageOnResetESet;
        this.defaultVoltageOnReset = DEFAULT_VOLTAGE_ON_RESET_EDEFAULT;
        this.defaultVoltageOnResetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldDefaultVoltageOnReset, (Object)DEFAULT_VOLTAGE_ON_RESET_EDEFAULT, oldDefaultVoltageOnResetESet));
        }
    }

    public boolean isSetDefaultVoltageOnReset() {
        return this.defaultVoltageOnResetESet;
    }

    public Double getMaxVoltage() {
        return this.maxVoltage;
    }

    public void setMaxVoltage(Double newMaxVoltage) {
        Double oldMaxVoltage = this.maxVoltage;
        this.maxVoltage = newMaxVoltage;
        boolean oldMaxVoltageESet = this.maxVoltageESet;
        this.maxVoltageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldMaxVoltage, (Object)this.maxVoltage, !oldMaxVoltageESet));
        }
    }

    public void unsetMaxVoltage() {
        Double oldMaxVoltage = this.maxVoltage;
        boolean oldMaxVoltageESet = this.maxVoltageESet;
        this.maxVoltage = MAX_VOLTAGE_EDEFAULT;
        this.maxVoltageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldMaxVoltage, (Object)MAX_VOLTAGE_EDEFAULT, oldMaxVoltageESet));
        }
    }

    public boolean isSetMaxVoltage() {
        return this.maxVoltageESet;
    }

    public Double getMinVoltage() {
        return this.minVoltage;
    }

    public void setMinVoltage(Double newMinVoltage) {
        Double oldMinVoltage = this.minVoltage;
        this.minVoltage = newMinVoltage;
        boolean oldMinVoltageESet = this.minVoltageESet;
        this.minVoltageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldMinVoltage, (Object)this.minVoltage, !oldMinVoltageESet));
        }
    }

    public void unsetMinVoltage() {
        Double oldMinVoltage = this.minVoltage;
        boolean oldMinVoltageESet = this.minVoltageESet;
        this.minVoltage = MIN_VOLTAGE_EDEFAULT;
        this.minVoltageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldMinVoltage, (Object)MIN_VOLTAGE_EDEFAULT, oldMinVoltageESet));
        }
    }

    public boolean isSetMinVoltage() {
        return this.minVoltageESet;
    }

    public Boolean getNotificationOverTemperature() {
        return this.notificationOverTemperature;
    }

    public void setNotificationOverTemperature(Boolean newNotificationOverTemperature) {
        Boolean oldNotificationOverTemperature = this.notificationOverTemperature;
        this.notificationOverTemperature = newNotificationOverTemperature;
        boolean oldNotificationOverTemperatureESet = this.notificationOverTemperatureESet;
        this.notificationOverTemperatureESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldNotificationOverTemperature, (Object)this.notificationOverTemperature, !oldNotificationOverTemperatureESet));
        }
    }

    public void unsetNotificationOverTemperature() {
        Boolean oldNotificationOverTemperature = this.notificationOverTemperature;
        boolean oldNotificationOverTemperatureESet = this.notificationOverTemperatureESet;
        this.notificationOverTemperature = NOTIFICATION_OVER_TEMPERATURE_EDEFAULT;
        this.notificationOverTemperatureESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldNotificationOverTemperature, (Object)NOTIFICATION_OVER_TEMPERATURE_EDEFAULT, oldNotificationOverTemperatureESet));
        }
    }

    public boolean isSetNotificationOverTemperature() {
        return this.notificationOverTemperatureESet;
    }

    public Boolean getNotificationReset() {
        return this.notificationReset;
    }

    public void setNotificationReset(Boolean newNotificationReset) {
        Boolean oldNotificationReset = this.notificationReset;
        this.notificationReset = newNotificationReset;
        boolean oldNotificationResetESet = this.notificationResetESet;
        this.notificationResetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldNotificationReset, (Object)this.notificationReset, !oldNotificationResetESet));
        }
    }

    public void unsetNotificationReset() {
        Boolean oldNotificationReset = this.notificationReset;
        boolean oldNotificationResetESet = this.notificationResetESet;
        this.notificationReset = NOTIFICATION_RESET_EDEFAULT;
        this.notificationResetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldNotificationReset, (Object)NOTIFICATION_RESET_EDEFAULT, oldNotificationResetESet));
        }
    }

    public boolean isSetNotificationReset() {
        return this.notificationResetESet;
    }

    public PowerSupplyCurrentNotification getOverCurrentNotification() {
        return this.overCurrentNotification;
    }

    public NotificationChain basicSetOverCurrentNotification(PowerSupplyCurrentNotification newOverCurrentNotification, NotificationChain msgs) {
        PowerSupplyCurrentNotification oldOverCurrentNotification = this.overCurrentNotification;
        this.overCurrentNotification = newOverCurrentNotification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldOverCurrentNotification, (Object)newOverCurrentNotification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setOverCurrentNotification(PowerSupplyCurrentNotification newOverCurrentNotification) {
        if (newOverCurrentNotification != this.overCurrentNotification) {
            NotificationChain msgs = null;
            if (this.overCurrentNotification != null) {
                msgs = ((InternalEObject)this.overCurrentNotification).eInverseRemove((InternalEObject)this, 4, PowerSupplyCurrentNotification.class, msgs);
            }
            if (newOverCurrentNotification != null) {
                msgs = ((InternalEObject)newOverCurrentNotification).eInverseAdd((InternalEObject)this, 4, PowerSupplyCurrentNotification.class, msgs);
            }
            if ((msgs = this.basicSetOverCurrentNotification(newOverCurrentNotification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)newOverCurrentNotification, (Object)newOverCurrentNotification));
        }
    }

    public PowerSupplyVoltageNotification getOverVoltageNotification() {
        return this.overVoltageNotification;
    }

    public NotificationChain basicSetOverVoltageNotification(PowerSupplyVoltageNotification newOverVoltageNotification, NotificationChain msgs) {
        PowerSupplyVoltageNotification oldOverVoltageNotification = this.overVoltageNotification;
        this.overVoltageNotification = newOverVoltageNotification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldOverVoltageNotification, (Object)newOverVoltageNotification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setOverVoltageNotification(PowerSupplyVoltageNotification newOverVoltageNotification) {
        if (newOverVoltageNotification != this.overVoltageNotification) {
            NotificationChain msgs = null;
            if (this.overVoltageNotification != null) {
                msgs = ((InternalEObject)this.overVoltageNotification).eInverseRemove((InternalEObject)this, -34, null, msgs);
            }
            if (newOverVoltageNotification != null) {
                msgs = ((InternalEObject)newOverVoltageNotification).eInverseAdd((InternalEObject)this, -34, null, msgs);
            }
            if ((msgs = this.basicSetOverVoltageNotification(newOverVoltageNotification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)newOverVoltageNotification, (Object)newOverVoltageNotification));
        }
    }

    public Double getResetDelay() {
        return this.resetDelay;
    }

    public void setResetDelay(Double newResetDelay) {
        Double oldResetDelay = this.resetDelay;
        this.resetDelay = newResetDelay;
        boolean oldResetDelayESet = this.resetDelayESet;
        this.resetDelayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldResetDelay, (Object)this.resetDelay, !oldResetDelayESet));
        }
    }

    public void unsetResetDelay() {
        Double oldResetDelay = this.resetDelay;
        boolean oldResetDelayESet = this.resetDelayESet;
        this.resetDelay = RESET_DELAY_EDEFAULT;
        this.resetDelayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldResetDelay, (Object)RESET_DELAY_EDEFAULT, oldResetDelayESet));
        }
    }

    public boolean isSetResetDelay() {
        return this.resetDelayESet;
    }

    public PowerSupplyHWElementResetOnFaultBehaviourEnum getResetOnFaultBehaviour() {
        return this.resetOnFaultBehaviour;
    }

    public void setResetOnFaultBehaviour(PowerSupplyHWElementResetOnFaultBehaviourEnum newResetOnFaultBehaviour) {
        PowerSupplyHWElementResetOnFaultBehaviourEnum oldResetOnFaultBehaviour = this.resetOnFaultBehaviour;
        this.resetOnFaultBehaviour = newResetOnFaultBehaviour == null ? RESET_ON_FAULT_BEHAVIOUR_EDEFAULT : newResetOnFaultBehaviour;
        boolean oldResetOnFaultBehaviourESet = this.resetOnFaultBehaviourESet;
        this.resetOnFaultBehaviourESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 35, (Object)oldResetOnFaultBehaviour, (Object)this.resetOnFaultBehaviour, !oldResetOnFaultBehaviourESet));
        }
    }

    public void unsetResetOnFaultBehaviour() {
        PowerSupplyHWElementResetOnFaultBehaviourEnum oldResetOnFaultBehaviour = this.resetOnFaultBehaviour;
        boolean oldResetOnFaultBehaviourESet = this.resetOnFaultBehaviourESet;
        this.resetOnFaultBehaviour = RESET_ON_FAULT_BEHAVIOUR_EDEFAULT;
        this.resetOnFaultBehaviourESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 35, (Object)oldResetOnFaultBehaviour, (Object)RESET_ON_FAULT_BEHAVIOUR_EDEFAULT, oldResetOnFaultBehaviourESet));
        }
    }

    public boolean isSetResetOnFaultBehaviour() {
        return this.resetOnFaultBehaviourESet;
    }

    public PowerSupplyVoltageNotification getUnderVoltageNotification() {
        return this.underVoltageNotification;
    }

    public NotificationChain basicSetUnderVoltageNotification(PowerSupplyVoltageNotification newUnderVoltageNotification, NotificationChain msgs) {
        PowerSupplyVoltageNotification oldUnderVoltageNotification = this.underVoltageNotification;
        this.underVoltageNotification = newUnderVoltageNotification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 36, (Object)oldUnderVoltageNotification, (Object)newUnderVoltageNotification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUnderVoltageNotification(PowerSupplyVoltageNotification newUnderVoltageNotification) {
        if (newUnderVoltageNotification != this.underVoltageNotification) {
            NotificationChain msgs = null;
            if (this.underVoltageNotification != null) {
                msgs = ((InternalEObject)this.underVoltageNotification).eInverseRemove((InternalEObject)this, -37, null, msgs);
            }
            if (newUnderVoltageNotification != null) {
                msgs = ((InternalEObject)newUnderVoltageNotification).eInverseAdd((InternalEObject)this, -37, null, msgs);
            }
            if ((msgs = this.basicSetUnderVoltageNotification(newUnderVoltageNotification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 36, (Object)newUnderVoltageNotification, (Object)newUnderVoltageNotification));
        }
    }

    public Boolean getWakeupCapability() {
        return this.wakeupCapability;
    }

    public void setWakeupCapability(Boolean newWakeupCapability) {
        Boolean oldWakeupCapability = this.wakeupCapability;
        this.wakeupCapability = newWakeupCapability;
        boolean oldWakeupCapabilityESet = this.wakeupCapabilityESet;
        this.wakeupCapabilityESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 37, (Object)oldWakeupCapability, (Object)this.wakeupCapability, !oldWakeupCapabilityESet));
        }
    }

    public void unsetWakeupCapability() {
        Boolean oldWakeupCapability = this.wakeupCapability;
        boolean oldWakeupCapabilityESet = this.wakeupCapabilityESet;
        this.wakeupCapability = WAKEUP_CAPABILITY_EDEFAULT;
        this.wakeupCapabilityESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 37, (Object)oldWakeupCapability, (Object)WAKEUP_CAPABILITY_EDEFAULT, oldWakeupCapabilityESet));
        }
    }

    public boolean isSetWakeupCapability() {
        return this.wakeupCapabilityESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 32: {
                if (this.overCurrentNotification != null) {
                    msgs = ((InternalEObject)this.overCurrentNotification).eInverseRemove((InternalEObject)this, -33, null, msgs);
                }
                return this.basicSetOverCurrentNotification((PowerSupplyCurrentNotification)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 32: {
                return this.basicSetOverCurrentNotification(null, msgs);
            }
            case 33: {
                return this.basicSetOverVoltageNotification(null, msgs);
            }
            case 36: {
                return this.basicSetUnderVoltageNotification(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getBackupCapacity();
            }
            case 27: {
                return this.getDefaultVoltageOnReset();
            }
            case 28: {
                return this.getMaxVoltage();
            }
            case 29: {
                return this.getMinVoltage();
            }
            case 30: {
                return this.getNotificationOverTemperature();
            }
            case 31: {
                return this.getNotificationReset();
            }
            case 32: {
                return this.getOverCurrentNotification();
            }
            case 33: {
                return this.getOverVoltageNotification();
            }
            case 34: {
                return this.getResetDelay();
            }
            case 35: {
                return this.getResetOnFaultBehaviour();
            }
            case 36: {
                return this.getUnderVoltageNotification();
            }
            case 37: {
                return this.getWakeupCapability();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setBackupCapacity((Double)newValue);
                return;
            }
            case 27: {
                this.setDefaultVoltageOnReset((Double)newValue);
                return;
            }
            case 28: {
                this.setMaxVoltage((Double)newValue);
                return;
            }
            case 29: {
                this.setMinVoltage((Double)newValue);
                return;
            }
            case 30: {
                this.setNotificationOverTemperature((Boolean)newValue);
                return;
            }
            case 31: {
                this.setNotificationReset((Boolean)newValue);
                return;
            }
            case 32: {
                this.setOverCurrentNotification((PowerSupplyCurrentNotification)newValue);
                return;
            }
            case 33: {
                this.setOverVoltageNotification((PowerSupplyVoltageNotification)newValue);
                return;
            }
            case 34: {
                this.setResetDelay((Double)newValue);
                return;
            }
            case 35: {
                this.setResetOnFaultBehaviour((PowerSupplyHWElementResetOnFaultBehaviourEnum)((Object)newValue));
                return;
            }
            case 36: {
                this.setUnderVoltageNotification((PowerSupplyVoltageNotification)newValue);
                return;
            }
            case 37: {
                this.setWakeupCapability((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetBackupCapacity();
                return;
            }
            case 27: {
                this.unsetDefaultVoltageOnReset();
                return;
            }
            case 28: {
                this.unsetMaxVoltage();
                return;
            }
            case 29: {
                this.unsetMinVoltage();
                return;
            }
            case 30: {
                this.unsetNotificationOverTemperature();
                return;
            }
            case 31: {
                this.unsetNotificationReset();
                return;
            }
            case 32: {
                this.setOverCurrentNotification(null);
                return;
            }
            case 33: {
                this.setOverVoltageNotification(null);
                return;
            }
            case 34: {
                this.unsetResetDelay();
                return;
            }
            case 35: {
                this.unsetResetOnFaultBehaviour();
                return;
            }
            case 36: {
                this.setUnderVoltageNotification(null);
                return;
            }
            case 37: {
                this.unsetWakeupCapability();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.isSetBackupCapacity();
            }
            case 27: {
                return this.isSetDefaultVoltageOnReset();
            }
            case 28: {
                return this.isSetMaxVoltage();
            }
            case 29: {
                return this.isSetMinVoltage();
            }
            case 30: {
                return this.isSetNotificationOverTemperature();
            }
            case 31: {
                return this.isSetNotificationReset();
            }
            case 32: {
                return this.overCurrentNotification != null;
            }
            case 33: {
                return this.overVoltageNotification != null;
            }
            case 34: {
                return this.isSetResetDelay();
            }
            case 35: {
                return this.isSetResetOnFaultBehaviour();
            }
            case 36: {
                return this.underVoltageNotification != null;
            }
            case 37: {
                return this.isSetWakeupCapability();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (backupCapacity: ");
        if (this.backupCapacityESet) {
            result.append(this.backupCapacity);
        } else {
            result.append("<unset>");
        }
        result.append(", defaultVoltageOnReset: ");
        if (this.defaultVoltageOnResetESet) {
            result.append(this.defaultVoltageOnReset);
        } else {
            result.append("<unset>");
        }
        result.append(", maxVoltage: ");
        if (this.maxVoltageESet) {
            result.append(this.maxVoltage);
        } else {
            result.append("<unset>");
        }
        result.append(", minVoltage: ");
        if (this.minVoltageESet) {
            result.append(this.minVoltage);
        } else {
            result.append("<unset>");
        }
        result.append(", notificationOverTemperature: ");
        if (this.notificationOverTemperatureESet) {
            result.append(this.notificationOverTemperature);
        } else {
            result.append("<unset>");
        }
        result.append(", notificationReset: ");
        if (this.notificationResetESet) {
            result.append(this.notificationReset);
        } else {
            result.append("<unset>");
        }
        result.append(", resetDelay: ");
        if (this.resetDelayESet) {
            result.append(this.resetDelay);
        } else {
            result.append("<unset>");
        }
        result.append(", resetOnFaultBehaviour: ");
        if (this.resetOnFaultBehaviourESet) {
            result.append((Object)this.resetOnFaultBehaviour);
        } else {
            result.append("<unset>");
        }
        result.append(", wakeupCapability: ");
        if (this.wakeupCapabilityESet) {
            result.append(this.wakeupCapability);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

