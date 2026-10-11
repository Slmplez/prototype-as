/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar21.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PowerDriverNotificationImpl
extends ARObjectImpl
implements PowerDriverNotification,
IReferringClass {
    protected InterruptProduceHWPort issuedInterruptSource;
    protected static final Boolean LOSS_OF_GROUND_EDEFAULT = Boolean.FALSE;
    protected Boolean lossOfGround = LOSS_OF_GROUND_EDEFAULT;
    protected boolean lossOfGroundESet;
    protected static final Boolean MAX_CURRENT_EDEFAULT = Boolean.FALSE;
    protected Boolean maxCurrent = MAX_CURRENT_EDEFAULT;
    protected boolean maxCurrentESet;
    protected static final Boolean MAX_VOLTAGE_EDEFAULT = Boolean.FALSE;
    protected Boolean maxVoltage = MAX_VOLTAGE_EDEFAULT;
    protected boolean maxVoltageESet;
    protected static final Boolean MIN_CURRENT_EDEFAULT = Boolean.FALSE;
    protected Boolean minCurrent = MIN_CURRENT_EDEFAULT;
    protected boolean minCurrentESet;
    protected static final Boolean MIN_VOLTAGE_EDEFAULT = Boolean.FALSE;
    protected Boolean minVoltage = MIN_VOLTAGE_EDEFAULT;
    protected boolean minVoltageESet;
    protected static final Boolean OPEN_LOAD_EDEFAULT = Boolean.FALSE;
    protected Boolean openLoad = OPEN_LOAD_EDEFAULT;
    protected boolean openLoadESet;
    protected static final Boolean OVER_TEMPERATURE_EDEFAULT = Boolean.FALSE;
    protected Boolean overTemperature = OVER_TEMPERATURE_EDEFAULT;
    protected boolean overTemperatureESet;
    protected static final Boolean SHORT_LOAD_EDEFAULT = Boolean.FALSE;
    protected Boolean shortLoad = SHORT_LOAD_EDEFAULT;
    protected boolean shortLoadESet;
    protected static final Boolean SHORT_TO_BATT_EDEFAULT = Boolean.FALSE;
    protected Boolean shortToBatt = SHORT_TO_BATT_EDEFAULT;
    protected boolean shortToBattESet;
    protected static final Boolean SHORT_TO_GROUND_EDEFAULT = Boolean.FALSE;
    protected Boolean shortToGround = SHORT_TO_GROUND_EDEFAULT;
    protected boolean shortToGroundESet;

    protected PowerDriverNotificationImpl() {
    }

    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_DRIVER_NOTIFICATION;
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
                msgs = ((InternalEObject)newPowerDriverHWElement).eInverseAdd((InternalEObject)this, 28, PowerDriverHWElement.class, msgs);
            }
            if ((msgs = this.basicSetPowerDriverHWElement(newPowerDriverHWElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPowerDriverHWElement, (Object)newPowerDriverHWElement));
        }
    }

    public InterruptProduceHWPort getIssuedInterruptSource() {
        if (this.issuedInterruptSource != null && this.issuedInterruptSource.eIsProxy()) {
            InternalEObject oldIssuedInterruptSource = (InternalEObject)this.issuedInterruptSource;
            this.issuedInterruptSource = (InterruptProduceHWPort)this.eResolveProxy(oldIssuedInterruptSource);
            if (this.issuedInterruptSource != oldIssuedInterruptSource && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldIssuedInterruptSource, (Object)this.issuedInterruptSource));
            }
        }
        return this.issuedInterruptSource;
    }

    public InterruptProduceHWPort basicGetIssuedInterruptSource() {
        return this.issuedInterruptSource;
    }

    public void setIssuedInterruptSource(InterruptProduceHWPort newIssuedInterruptSource) {
        InterruptProduceHWPort oldIssuedInterruptSource = this.issuedInterruptSource;
        this.issuedInterruptSource = newIssuedInterruptSource;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldIssuedInterruptSource, (Object)this.issuedInterruptSource));
        }
    }

    public Boolean getLossOfGround() {
        return this.lossOfGround;
    }

    public void setLossOfGround(Boolean newLossOfGround) {
        Boolean oldLossOfGround = this.lossOfGround;
        this.lossOfGround = newLossOfGround;
        boolean oldLossOfGroundESet = this.lossOfGroundESet;
        this.lossOfGroundESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLossOfGround, (Object)this.lossOfGround, !oldLossOfGroundESet));
        }
    }

    public void unsetLossOfGround() {
        Boolean oldLossOfGround = this.lossOfGround;
        boolean oldLossOfGroundESet = this.lossOfGroundESet;
        this.lossOfGround = LOSS_OF_GROUND_EDEFAULT;
        this.lossOfGroundESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldLossOfGround, (Object)LOSS_OF_GROUND_EDEFAULT, oldLossOfGroundESet));
        }
    }

    public boolean isSetLossOfGround() {
        return this.lossOfGroundESet;
    }

    public Boolean getMaxCurrent() {
        return this.maxCurrent;
    }

    public void setMaxCurrent(Boolean newMaxCurrent) {
        Boolean oldMaxCurrent = this.maxCurrent;
        this.maxCurrent = newMaxCurrent;
        boolean oldMaxCurrentESet = this.maxCurrentESet;
        this.maxCurrentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldMaxCurrent, (Object)this.maxCurrent, !oldMaxCurrentESet));
        }
    }

    public void unsetMaxCurrent() {
        Boolean oldMaxCurrent = this.maxCurrent;
        boolean oldMaxCurrentESet = this.maxCurrentESet;
        this.maxCurrent = MAX_CURRENT_EDEFAULT;
        this.maxCurrentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldMaxCurrent, (Object)MAX_CURRENT_EDEFAULT, oldMaxCurrentESet));
        }
    }

    public boolean isSetMaxCurrent() {
        return this.maxCurrentESet;
    }

    public Boolean getMaxVoltage() {
        return this.maxVoltage;
    }

    public void setMaxVoltage(Boolean newMaxVoltage) {
        Boolean oldMaxVoltage = this.maxVoltage;
        this.maxVoltage = newMaxVoltage;
        boolean oldMaxVoltageESet = this.maxVoltageESet;
        this.maxVoltageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldMaxVoltage, (Object)this.maxVoltage, !oldMaxVoltageESet));
        }
    }

    public void unsetMaxVoltage() {
        Boolean oldMaxVoltage = this.maxVoltage;
        boolean oldMaxVoltageESet = this.maxVoltageESet;
        this.maxVoltage = MAX_VOLTAGE_EDEFAULT;
        this.maxVoltageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldMaxVoltage, (Object)MAX_VOLTAGE_EDEFAULT, oldMaxVoltageESet));
        }
    }

    public boolean isSetMaxVoltage() {
        return this.maxVoltageESet;
    }

    public Boolean getMinCurrent() {
        return this.minCurrent;
    }

    public void setMinCurrent(Boolean newMinCurrent) {
        Boolean oldMinCurrent = this.minCurrent;
        this.minCurrent = newMinCurrent;
        boolean oldMinCurrentESet = this.minCurrentESet;
        this.minCurrentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMinCurrent, (Object)this.minCurrent, !oldMinCurrentESet));
        }
    }

    public void unsetMinCurrent() {
        Boolean oldMinCurrent = this.minCurrent;
        boolean oldMinCurrentESet = this.minCurrentESet;
        this.minCurrent = MIN_CURRENT_EDEFAULT;
        this.minCurrentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldMinCurrent, (Object)MIN_CURRENT_EDEFAULT, oldMinCurrentESet));
        }
    }

    public boolean isSetMinCurrent() {
        return this.minCurrentESet;
    }

    public Boolean getMinVoltage() {
        return this.minVoltage;
    }

    public void setMinVoltage(Boolean newMinVoltage) {
        Boolean oldMinVoltage = this.minVoltage;
        this.minVoltage = newMinVoltage;
        boolean oldMinVoltageESet = this.minVoltageESet;
        this.minVoltageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMinVoltage, (Object)this.minVoltage, !oldMinVoltageESet));
        }
    }

    public void unsetMinVoltage() {
        Boolean oldMinVoltage = this.minVoltage;
        boolean oldMinVoltageESet = this.minVoltageESet;
        this.minVoltage = MIN_VOLTAGE_EDEFAULT;
        this.minVoltageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldMinVoltage, (Object)MIN_VOLTAGE_EDEFAULT, oldMinVoltageESet));
        }
    }

    public boolean isSetMinVoltage() {
        return this.minVoltageESet;
    }

    public Boolean getOpenLoad() {
        return this.openLoad;
    }

    public void setOpenLoad(Boolean newOpenLoad) {
        Boolean oldOpenLoad = this.openLoad;
        this.openLoad = newOpenLoad;
        boolean oldOpenLoadESet = this.openLoadESet;
        this.openLoadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldOpenLoad, (Object)this.openLoad, !oldOpenLoadESet));
        }
    }

    public void unsetOpenLoad() {
        Boolean oldOpenLoad = this.openLoad;
        boolean oldOpenLoadESet = this.openLoadESet;
        this.openLoad = OPEN_LOAD_EDEFAULT;
        this.openLoadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldOpenLoad, (Object)OPEN_LOAD_EDEFAULT, oldOpenLoadESet));
        }
    }

    public boolean isSetOpenLoad() {
        return this.openLoadESet;
    }

    public Boolean getOverTemperature() {
        return this.overTemperature;
    }

    public void setOverTemperature(Boolean newOverTemperature) {
        Boolean oldOverTemperature = this.overTemperature;
        this.overTemperature = newOverTemperature;
        boolean oldOverTemperatureESet = this.overTemperatureESet;
        this.overTemperatureESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldOverTemperature, (Object)this.overTemperature, !oldOverTemperatureESet));
        }
    }

    public void unsetOverTemperature() {
        Boolean oldOverTemperature = this.overTemperature;
        boolean oldOverTemperatureESet = this.overTemperatureESet;
        this.overTemperature = OVER_TEMPERATURE_EDEFAULT;
        this.overTemperatureESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, (Object)oldOverTemperature, (Object)OVER_TEMPERATURE_EDEFAULT, oldOverTemperatureESet));
        }
    }

    public boolean isSetOverTemperature() {
        return this.overTemperatureESet;
    }

    public Boolean getShortLoad() {
        return this.shortLoad;
    }

    public void setShortLoad(Boolean newShortLoad) {
        Boolean oldShortLoad = this.shortLoad;
        this.shortLoad = newShortLoad;
        boolean oldShortLoadESet = this.shortLoadESet;
        this.shortLoadESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldShortLoad, (Object)this.shortLoad, !oldShortLoadESet));
        }
    }

    public void unsetShortLoad() {
        Boolean oldShortLoad = this.shortLoad;
        boolean oldShortLoadESet = this.shortLoadESet;
        this.shortLoad = SHORT_LOAD_EDEFAULT;
        this.shortLoadESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldShortLoad, (Object)SHORT_LOAD_EDEFAULT, oldShortLoadESet));
        }
    }

    public boolean isSetShortLoad() {
        return this.shortLoadESet;
    }

    public Boolean getShortToBatt() {
        return this.shortToBatt;
    }

    public void setShortToBatt(Boolean newShortToBatt) {
        Boolean oldShortToBatt = this.shortToBatt;
        this.shortToBatt = newShortToBatt;
        boolean oldShortToBattESet = this.shortToBattESet;
        this.shortToBattESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldShortToBatt, (Object)this.shortToBatt, !oldShortToBattESet));
        }
    }

    public void unsetShortToBatt() {
        Boolean oldShortToBatt = this.shortToBatt;
        boolean oldShortToBattESet = this.shortToBattESet;
        this.shortToBatt = SHORT_TO_BATT_EDEFAULT;
        this.shortToBattESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, (Object)oldShortToBatt, (Object)SHORT_TO_BATT_EDEFAULT, oldShortToBattESet));
        }
    }

    public boolean isSetShortToBatt() {
        return this.shortToBattESet;
    }

    public Boolean getShortToGround() {
        return this.shortToGround;
    }

    public void setShortToGround(Boolean newShortToGround) {
        Boolean oldShortToGround = this.shortToGround;
        this.shortToGround = newShortToGround;
        boolean oldShortToGroundESet = this.shortToGroundESet;
        this.shortToGroundESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldShortToGround, (Object)this.shortToGround, !oldShortToGroundESet));
        }
    }

    public void unsetShortToGround() {
        Boolean oldShortToGround = this.shortToGround;
        boolean oldShortToGroundESet = this.shortToGroundESet;
        this.shortToGround = SHORT_TO_GROUND_EDEFAULT;
        this.shortToGroundESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, (Object)oldShortToGround, (Object)SHORT_TO_GROUND_EDEFAULT, oldShortToGroundESet));
        }
    }

    public boolean isSetShortToGround() {
        return this.shortToGroundESet;
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, PowerDriverHWElement.class, msgs);
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
                if (resolve) {
                    return this.getIssuedInterruptSource();
                }
                return this.basicGetIssuedInterruptSource();
            }
            case 6: {
                return this.getLossOfGround();
            }
            case 7: {
                return this.getMaxCurrent();
            }
            case 8: {
                return this.getMaxVoltage();
            }
            case 9: {
                return this.getMinCurrent();
            }
            case 10: {
                return this.getMinVoltage();
            }
            case 11: {
                return this.getOpenLoad();
            }
            case 12: {
                return this.getOverTemperature();
            }
            case 13: {
                return this.getShortLoad();
            }
            case 14: {
                return this.getShortToBatt();
            }
            case 15: {
                return this.getShortToGround();
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
                this.setIssuedInterruptSource((InterruptProduceHWPort)newValue);
                return;
            }
            case 6: {
                this.setLossOfGround((Boolean)newValue);
                return;
            }
            case 7: {
                this.setMaxCurrent((Boolean)newValue);
                return;
            }
            case 8: {
                this.setMaxVoltage((Boolean)newValue);
                return;
            }
            case 9: {
                this.setMinCurrent((Boolean)newValue);
                return;
            }
            case 10: {
                this.setMinVoltage((Boolean)newValue);
                return;
            }
            case 11: {
                this.setOpenLoad((Boolean)newValue);
                return;
            }
            case 12: {
                this.setOverTemperature((Boolean)newValue);
                return;
            }
            case 13: {
                this.setShortLoad((Boolean)newValue);
                return;
            }
            case 14: {
                this.setShortToBatt((Boolean)newValue);
                return;
            }
            case 15: {
                this.setShortToGround((Boolean)newValue);
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
                this.setIssuedInterruptSource(null);
                return;
            }
            case 6: {
                this.unsetLossOfGround();
                return;
            }
            case 7: {
                this.unsetMaxCurrent();
                return;
            }
            case 8: {
                this.unsetMaxVoltage();
                return;
            }
            case 9: {
                this.unsetMinCurrent();
                return;
            }
            case 10: {
                this.unsetMinVoltage();
                return;
            }
            case 11: {
                this.unsetOpenLoad();
                return;
            }
            case 12: {
                this.unsetOverTemperature();
                return;
            }
            case 13: {
                this.unsetShortLoad();
                return;
            }
            case 14: {
                this.unsetShortToBatt();
                return;
            }
            case 15: {
                this.unsetShortToGround();
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
                return this.issuedInterruptSource != null;
            }
            case 6: {
                return this.isSetLossOfGround();
            }
            case 7: {
                return this.isSetMaxCurrent();
            }
            case 8: {
                return this.isSetMaxVoltage();
            }
            case 9: {
                return this.isSetMinCurrent();
            }
            case 10: {
                return this.isSetMinVoltage();
            }
            case 11: {
                return this.isSetOpenLoad();
            }
            case 12: {
                return this.isSetOverTemperature();
            }
            case 13: {
                return this.isSetShortLoad();
            }
            case 14: {
                return this.isSetShortToBatt();
            }
            case 15: {
                return this.isSetShortToGround();
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (lossOfGround: ");
        if (this.lossOfGroundESet) {
            result.append(this.lossOfGround);
        } else {
            result.append("<unset>");
        }
        result.append(", maxCurrent: ");
        if (this.maxCurrentESet) {
            result.append(this.maxCurrent);
        } else {
            result.append("<unset>");
        }
        result.append(", maxVoltage: ");
        if (this.maxVoltageESet) {
            result.append(this.maxVoltage);
        } else {
            result.append("<unset>");
        }
        result.append(", minCurrent: ");
        if (this.minCurrentESet) {
            result.append(this.minCurrent);
        } else {
            result.append("<unset>");
        }
        result.append(", minVoltage: ");
        if (this.minVoltageESet) {
            result.append(this.minVoltage);
        } else {
            result.append("<unset>");
        }
        result.append(", openLoad: ");
        if (this.openLoadESet) {
            result.append(this.openLoad);
        } else {
            result.append("<unset>");
        }
        result.append(", overTemperature: ");
        if (this.overTemperatureESet) {
            result.append(this.overTemperature);
        } else {
            result.append("<unset>");
        }
        result.append(", shortLoad: ");
        if (this.shortLoadESet) {
            result.append(this.shortLoad);
        } else {
            result.append("<unset>");
        }
        result.append(", shortToBatt: ");
        if (this.shortToBattESet) {
            result.append(this.shortToBatt);
        } else {
            result.append("<unset>");
        }
        result.append(", shortToGround: ");
        if (this.shortToGroundESet) {
            result.append(this.shortToGround);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

