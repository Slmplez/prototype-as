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
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementDefaultResetBehaviuorEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementPowerDriverTypeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar21.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar21.ecuresource.ecuelectronics.impl.ECUElectronicsImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class PowerDriverHWElementImpl
extends ECUElectronicsImpl
implements PowerDriverHWElement {
    protected static final Double CURRENT_LIMITATION_EDEFAULT = new Double(0.0);
    protected Double currentLimitation = CURRENT_LIMITATION_EDEFAULT;
    protected boolean currentLimitationESet;
    protected static final PowerDriverHWElementDefaultResetBehaviuorEnum DEFAULT_RESET_BEHAVIUOR_EDEFAULT = PowerDriverHWElementDefaultResetBehaviuorEnum.PASSIVE;
    protected PowerDriverHWElementDefaultResetBehaviuorEnum defaultResetBehaviuor = DEFAULT_RESET_BEHAVIUOR_EDEFAULT;
    protected boolean defaultResetBehaviuorESet;
    protected PowerDriverNotification notification;
    protected static final Double ON_STATE_RESISTANCE_EDEFAULT = new Double(0.0);
    protected Double onStateResistance = ON_STATE_RESISTANCE_EDEFAULT;
    protected boolean onStateResistanceESet;
    protected static final PowerDriverHWElementPowerDriverTypeEnum POWER_DRIVER_TYPE_EDEFAULT = PowerDriverHWElementPowerDriverTypeEnum.HS;
    protected PowerDriverHWElementPowerDriverTypeEnum powerDriverType = POWER_DRIVER_TYPE_EDEFAULT;
    protected boolean powerDriverTypeESet;
    protected PowerDriverProtection protection;
    protected static final PowerDriverHWElementResetOnFaultBehaviourEnum RESET_ON_FAULT_BEHAVIOUR_EDEFAULT = PowerDriverHWElementResetOnFaultBehaviourEnum.AUTO;
    protected PowerDriverHWElementResetOnFaultBehaviourEnum resetOnFaultBehaviour = RESET_ON_FAULT_BEHAVIOUR_EDEFAULT;
    protected boolean resetOnFaultBehaviourESet;

    protected PowerDriverHWElementImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_DRIVER_HW_ELEMENT;
    }

    public Double getCurrentLimitation() {
        return this.currentLimitation;
    }

    public void setCurrentLimitation(Double newCurrentLimitation) {
        Double oldCurrentLimitation = this.currentLimitation;
        this.currentLimitation = newCurrentLimitation;
        boolean oldCurrentLimitationESet = this.currentLimitationESet;
        this.currentLimitationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldCurrentLimitation, (Object)this.currentLimitation, !oldCurrentLimitationESet));
        }
    }

    public void unsetCurrentLimitation() {
        Double oldCurrentLimitation = this.currentLimitation;
        boolean oldCurrentLimitationESet = this.currentLimitationESet;
        this.currentLimitation = CURRENT_LIMITATION_EDEFAULT;
        this.currentLimitationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldCurrentLimitation, (Object)CURRENT_LIMITATION_EDEFAULT, oldCurrentLimitationESet));
        }
    }

    public boolean isSetCurrentLimitation() {
        return this.currentLimitationESet;
    }

    public PowerDriverHWElementDefaultResetBehaviuorEnum getDefaultResetBehaviuor() {
        return this.defaultResetBehaviuor;
    }

    public void setDefaultResetBehaviuor(PowerDriverHWElementDefaultResetBehaviuorEnum newDefaultResetBehaviuor) {
        PowerDriverHWElementDefaultResetBehaviuorEnum oldDefaultResetBehaviuor = this.defaultResetBehaviuor;
        this.defaultResetBehaviuor = newDefaultResetBehaviuor == null ? DEFAULT_RESET_BEHAVIUOR_EDEFAULT : newDefaultResetBehaviuor;
        boolean oldDefaultResetBehaviuorESet = this.defaultResetBehaviuorESet;
        this.defaultResetBehaviuorESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldDefaultResetBehaviuor, (Object)this.defaultResetBehaviuor, !oldDefaultResetBehaviuorESet));
        }
    }

    public void unsetDefaultResetBehaviuor() {
        PowerDriverHWElementDefaultResetBehaviuorEnum oldDefaultResetBehaviuor = this.defaultResetBehaviuor;
        boolean oldDefaultResetBehaviuorESet = this.defaultResetBehaviuorESet;
        this.defaultResetBehaviuor = DEFAULT_RESET_BEHAVIUOR_EDEFAULT;
        this.defaultResetBehaviuorESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldDefaultResetBehaviuor, (Object)DEFAULT_RESET_BEHAVIUOR_EDEFAULT, oldDefaultResetBehaviuorESet));
        }
    }

    public boolean isSetDefaultResetBehaviuor() {
        return this.defaultResetBehaviuorESet;
    }

    public PowerDriverNotification getNotification() {
        return this.notification;
    }

    public NotificationChain basicSetNotification(PowerDriverNotification newNotification, NotificationChain msgs) {
        PowerDriverNotification oldNotification = this.notification;
        this.notification = newNotification;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldNotification, (Object)newNotification);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNotification(PowerDriverNotification newNotification) {
        if (newNotification != this.notification) {
            NotificationChain msgs = null;
            if (this.notification != null) {
                msgs = ((InternalEObject)this.notification).eInverseRemove((InternalEObject)this, 4, PowerDriverNotification.class, msgs);
            }
            if (newNotification != null) {
                msgs = ((InternalEObject)newNotification).eInverseAdd((InternalEObject)this, 4, PowerDriverNotification.class, msgs);
            }
            if ((msgs = this.basicSetNotification(newNotification, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)newNotification, (Object)newNotification));
        }
    }

    public Double getOnStateResistance() {
        return this.onStateResistance;
    }

    public void setOnStateResistance(Double newOnStateResistance) {
        Double oldOnStateResistance = this.onStateResistance;
        this.onStateResistance = newOnStateResistance;
        boolean oldOnStateResistanceESet = this.onStateResistanceESet;
        this.onStateResistanceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldOnStateResistance, (Object)this.onStateResistance, !oldOnStateResistanceESet));
        }
    }

    public void unsetOnStateResistance() {
        Double oldOnStateResistance = this.onStateResistance;
        boolean oldOnStateResistanceESet = this.onStateResistanceESet;
        this.onStateResistance = ON_STATE_RESISTANCE_EDEFAULT;
        this.onStateResistanceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldOnStateResistance, (Object)ON_STATE_RESISTANCE_EDEFAULT, oldOnStateResistanceESet));
        }
    }

    public boolean isSetOnStateResistance() {
        return this.onStateResistanceESet;
    }

    public PowerDriverHWElementPowerDriverTypeEnum getPowerDriverType() {
        return this.powerDriverType;
    }

    public void setPowerDriverType(PowerDriverHWElementPowerDriverTypeEnum newPowerDriverType) {
        PowerDriverHWElementPowerDriverTypeEnum oldPowerDriverType = this.powerDriverType;
        this.powerDriverType = newPowerDriverType == null ? POWER_DRIVER_TYPE_EDEFAULT : newPowerDriverType;
        boolean oldPowerDriverTypeESet = this.powerDriverTypeESet;
        this.powerDriverTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldPowerDriverType, (Object)this.powerDriverType, !oldPowerDriverTypeESet));
        }
    }

    public void unsetPowerDriverType() {
        PowerDriverHWElementPowerDriverTypeEnum oldPowerDriverType = this.powerDriverType;
        boolean oldPowerDriverTypeESet = this.powerDriverTypeESet;
        this.powerDriverType = POWER_DRIVER_TYPE_EDEFAULT;
        this.powerDriverTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldPowerDriverType, (Object)POWER_DRIVER_TYPE_EDEFAULT, oldPowerDriverTypeESet));
        }
    }

    public boolean isSetPowerDriverType() {
        return this.powerDriverTypeESet;
    }

    public PowerDriverProtection getProtection() {
        return this.protection;
    }

    public NotificationChain basicSetProtection(PowerDriverProtection newProtection, NotificationChain msgs) {
        PowerDriverProtection oldProtection = this.protection;
        this.protection = newProtection;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldProtection, (Object)newProtection);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setProtection(PowerDriverProtection newProtection) {
        if (newProtection != this.protection) {
            NotificationChain msgs = null;
            if (this.protection != null) {
                msgs = ((InternalEObject)this.protection).eInverseRemove((InternalEObject)this, 4, PowerDriverProtection.class, msgs);
            }
            if (newProtection != null) {
                msgs = ((InternalEObject)newProtection).eInverseAdd((InternalEObject)this, 4, PowerDriverProtection.class, msgs);
            }
            if ((msgs = this.basicSetProtection(newProtection, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)newProtection, (Object)newProtection));
        }
    }

    public PowerDriverHWElementResetOnFaultBehaviourEnum getResetOnFaultBehaviour() {
        return this.resetOnFaultBehaviour;
    }

    public void setResetOnFaultBehaviour(PowerDriverHWElementResetOnFaultBehaviourEnum newResetOnFaultBehaviour) {
        PowerDriverHWElementResetOnFaultBehaviourEnum oldResetOnFaultBehaviour = this.resetOnFaultBehaviour;
        this.resetOnFaultBehaviour = newResetOnFaultBehaviour == null ? RESET_ON_FAULT_BEHAVIOUR_EDEFAULT : newResetOnFaultBehaviour;
        boolean oldResetOnFaultBehaviourESet = this.resetOnFaultBehaviourESet;
        this.resetOnFaultBehaviourESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldResetOnFaultBehaviour, (Object)this.resetOnFaultBehaviour, !oldResetOnFaultBehaviourESet));
        }
    }

    public void unsetResetOnFaultBehaviour() {
        PowerDriverHWElementResetOnFaultBehaviourEnum oldResetOnFaultBehaviour = this.resetOnFaultBehaviour;
        boolean oldResetOnFaultBehaviourESet = this.resetOnFaultBehaviourESet;
        this.resetOnFaultBehaviour = RESET_ON_FAULT_BEHAVIOUR_EDEFAULT;
        this.resetOnFaultBehaviourESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldResetOnFaultBehaviour, (Object)RESET_ON_FAULT_BEHAVIOUR_EDEFAULT, oldResetOnFaultBehaviourESet));
        }
    }

    public boolean isSetResetOnFaultBehaviour() {
        return this.resetOnFaultBehaviourESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                if (this.notification != null) {
                    msgs = ((InternalEObject)this.notification).eInverseRemove((InternalEObject)this, -29, null, msgs);
                }
                return this.basicSetNotification((PowerDriverNotification)otherEnd, msgs);
            }
            case 31: {
                if (this.protection != null) {
                    msgs = ((InternalEObject)this.protection).eInverseRemove((InternalEObject)this, -32, null, msgs);
                }
                return this.basicSetProtection((PowerDriverProtection)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 28: {
                return this.basicSetNotification(null, msgs);
            }
            case 31: {
                return this.basicSetProtection(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 26: {
                return this.getCurrentLimitation();
            }
            case 27: {
                return this.getDefaultResetBehaviuor();
            }
            case 28: {
                return this.getNotification();
            }
            case 29: {
                return this.getOnStateResistance();
            }
            case 30: {
                return this.getPowerDriverType();
            }
            case 31: {
                return this.getProtection();
            }
            case 32: {
                return this.getResetOnFaultBehaviour();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 26: {
                this.setCurrentLimitation((Double)newValue);
                return;
            }
            case 27: {
                this.setDefaultResetBehaviuor((PowerDriverHWElementDefaultResetBehaviuorEnum)((Object)newValue));
                return;
            }
            case 28: {
                this.setNotification((PowerDriverNotification)newValue);
                return;
            }
            case 29: {
                this.setOnStateResistance((Double)newValue);
                return;
            }
            case 30: {
                this.setPowerDriverType((PowerDriverHWElementPowerDriverTypeEnum)((Object)newValue));
                return;
            }
            case 31: {
                this.setProtection((PowerDriverProtection)newValue);
                return;
            }
            case 32: {
                this.setResetOnFaultBehaviour((PowerDriverHWElementResetOnFaultBehaviourEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 26: {
                this.unsetCurrentLimitation();
                return;
            }
            case 27: {
                this.unsetDefaultResetBehaviuor();
                return;
            }
            case 28: {
                this.setNotification(null);
                return;
            }
            case 29: {
                this.unsetOnStateResistance();
                return;
            }
            case 30: {
                this.unsetPowerDriverType();
                return;
            }
            case 31: {
                this.setProtection(null);
                return;
            }
            case 32: {
                this.unsetResetOnFaultBehaviour();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 26: {
                return this.isSetCurrentLimitation();
            }
            case 27: {
                return this.isSetDefaultResetBehaviuor();
            }
            case 28: {
                return this.notification != null;
            }
            case 29: {
                return this.isSetOnStateResistance();
            }
            case 30: {
                return this.isSetPowerDriverType();
            }
            case 31: {
                return this.protection != null;
            }
            case 32: {
                return this.isSetResetOnFaultBehaviour();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (currentLimitation: ");
        if (this.currentLimitationESet) {
            result.append(this.currentLimitation);
        } else {
            result.append("<unset>");
        }
        result.append(", defaultResetBehaviuor: ");
        if (this.defaultResetBehaviuorESet) {
            result.append((Object)this.defaultResetBehaviuor);
        } else {
            result.append("<unset>");
        }
        result.append(", onStateResistance: ");
        if (this.onStateResistanceESet) {
            result.append(this.onStateResistance);
        } else {
            result.append("<unset>");
        }
        result.append(", powerDriverType: ");
        if (this.powerDriverTypeESet) {
            result.append((Object)this.powerDriverType);
        } else {
            result.append("<unset>");
        }
        result.append(", resetOnFaultBehaviour: ");
        if (this.resetOnFaultBehaviourESet) {
            result.append((Object)this.resetOnFaultBehaviour);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

