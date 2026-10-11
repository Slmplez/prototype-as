/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PowerSupplyCurrentNotificationImpl
extends ARObjectImpl
implements PowerSupplyCurrentNotification,
IReferringClass {
    protected static final Double HYSTERESIS_EDEFAULT = new Double(0.0);
    protected Double hysteresis = HYSTERESIS_EDEFAULT;
    protected boolean hysteresisESet;
    protected EList<InterruptProduceHWPort> interrupts;
    protected static final Double LEVEL_EDEFAULT = new Double(0.0);
    protected Double level = LEVEL_EDEFAULT;
    protected boolean levelESet;

    protected PowerSupplyCurrentNotificationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_SUPPLY_CURRENT_NOTIFICATION;
    }

    @Override
    public PowerSupplyHWElement getPowerSupplyHWElement() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (PowerSupplyHWElement)this.eContainer();
    }

    public NotificationChain basicSetPowerSupplyHWElement(PowerSupplyHWElement newPowerSupplyHWElement, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPowerSupplyHWElement, 4, msgs);
        return msgs;
    }

    @Override
    public void setPowerSupplyHWElement(PowerSupplyHWElement newPowerSupplyHWElement) {
        if (newPowerSupplyHWElement != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newPowerSupplyHWElement != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPowerSupplyHWElement)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPowerSupplyHWElement != null) {
                msgs = ((InternalEObject)newPowerSupplyHWElement).eInverseAdd((InternalEObject)this, 32, PowerSupplyHWElement.class, msgs);
            }
            if ((msgs = this.basicSetPowerSupplyHWElement(newPowerSupplyHWElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPowerSupplyHWElement, (Object)newPowerSupplyHWElement));
        }
    }

    @Override
    public Double getHysteresis() {
        return this.hysteresis;
    }

    @Override
    public void setHysteresis(Double newHysteresis) {
        Double oldHysteresis = this.hysteresis;
        this.hysteresis = newHysteresis;
        boolean oldHysteresisESet = this.hysteresisESet;
        this.hysteresisESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldHysteresis, (Object)this.hysteresis, !oldHysteresisESet));
        }
    }

    @Override
    public void unsetHysteresis() {
        Double oldHysteresis = this.hysteresis;
        boolean oldHysteresisESet = this.hysteresisESet;
        this.hysteresis = HYSTERESIS_EDEFAULT;
        this.hysteresisESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldHysteresis, (Object)HYSTERESIS_EDEFAULT, oldHysteresisESet));
        }
    }

    @Override
    public boolean isSetHysteresis() {
        return this.hysteresisESet;
    }

    @Override
    public EList<InterruptProduceHWPort> getInterrupts() {
        if (this.interrupts == null) {
            this.interrupts = new EObjectResolvingReferringEList(InterruptProduceHWPort.class, (InternalEObject)this, 6);
        }
        return this.interrupts;
    }

    @Override
    public Double getLevel() {
        return this.level;
    }

    @Override
    public void setLevel(Double newLevel) {
        Double oldLevel = this.level;
        this.level = newLevel;
        boolean oldLevelESet = this.levelESet;
        this.levelESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldLevel, (Object)this.level, !oldLevelESet));
        }
    }

    @Override
    public void unsetLevel() {
        Double oldLevel = this.level;
        boolean oldLevelESet = this.levelESet;
        this.level = LEVEL_EDEFAULT;
        this.levelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldLevel, (Object)LEVEL_EDEFAULT, oldLevelESet));
        }
    }

    @Override
    public boolean isSetLevel() {
        return this.levelESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPowerSupplyHWElement((PowerSupplyHWElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPowerSupplyHWElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 32, PowerSupplyHWElement.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPowerSupplyHWElement();
            }
            case 5: {
                return this.getHysteresis();
            }
            case 6: {
                return this.getInterrupts();
            }
            case 7: {
                return this.getLevel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPowerSupplyHWElement((PowerSupplyHWElement)newValue);
                return;
            }
            case 5: {
                this.setHysteresis((Double)newValue);
                return;
            }
            case 6: {
                this.getInterrupts().clear();
                this.getInterrupts().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.setLevel((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPowerSupplyHWElement(null);
                return;
            }
            case 5: {
                this.unsetHysteresis();
                return;
            }
            case 6: {
                this.getInterrupts().clear();
                return;
            }
            case 7: {
                this.unsetLevel();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getPowerSupplyHWElement() != null;
            }
            case 5: {
                return this.isSetHysteresis();
            }
            case 6: {
                return this.interrupts != null && !this.interrupts.isEmpty();
            }
            case 7: {
                return this.isSetLevel();
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
        result.append(" (hysteresis: ");
        if (this.hysteresisESet) {
            result.append(this.hysteresis);
        } else {
            result.append("<unset>");
        }
        result.append(", level: ");
        if (this.levelESet) {
            result.append(this.level);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

