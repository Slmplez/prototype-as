/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PowerSupplyVoltageNotificationImpl
extends ARObjectImpl
implements PowerSupplyVoltageNotification,
IReferringClass {
    protected static final Double HYSTERESES_EDEFAULT = new Double(0.0);
    protected Double hystereses = HYSTERESES_EDEFAULT;
    protected boolean hysteresesESet;
    protected EList<InterruptProduceHWPort> interrupts;
    protected static final Double LEVEL_EDEFAULT = new Double(0.0);
    protected Double level = LEVEL_EDEFAULT;
    protected boolean levelESet;

    protected PowerSupplyVoltageNotificationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuelectronicsPackage.Literals.POWER_SUPPLY_VOLTAGE_NOTIFICATION;
    }

    @Override
    public Double getHystereses() {
        return this.hystereses;
    }

    @Override
    public void setHystereses(Double newHystereses) {
        Double oldHystereses = this.hystereses;
        this.hystereses = newHystereses;
        boolean oldHysteresesESet = this.hysteresesESet;
        this.hysteresesESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldHystereses, (Object)this.hystereses, !oldHysteresesESet));
        }
    }

    @Override
    public void unsetHystereses() {
        Double oldHystereses = this.hystereses;
        boolean oldHysteresesESet = this.hysteresesESet;
        this.hystereses = HYSTERESES_EDEFAULT;
        this.hysteresesESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldHystereses, (Object)HYSTERESES_EDEFAULT, oldHysteresesESet));
        }
    }

    @Override
    public boolean isSetHystereses() {
        return this.hysteresesESet;
    }

    @Override
    public EList<InterruptProduceHWPort> getInterrupts() {
        if (this.interrupts == null) {
            this.interrupts = new EObjectResolvingReferringEList(InterruptProduceHWPort.class, (InternalEObject)this, 5);
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldLevel, (Object)this.level, !oldLevelESet));
        }
    }

    @Override
    public void unsetLevel() {
        Double oldLevel = this.level;
        boolean oldLevelESet = this.levelESet;
        this.level = LEVEL_EDEFAULT;
        this.levelESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldLevel, (Object)LEVEL_EDEFAULT, oldLevelESet));
        }
    }

    @Override
    public boolean isSetLevel() {
        return this.levelESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getHystereses();
            }
            case 5: {
                return this.getInterrupts();
            }
            case 6: {
                return this.getLevel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setHystereses((Double)newValue);
                return;
            }
            case 5: {
                this.getInterrupts().clear();
                this.getInterrupts().addAll((Collection)newValue);
                return;
            }
            case 6: {
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
                this.unsetHystereses();
                return;
            }
            case 5: {
                this.getInterrupts().clear();
                return;
            }
            case 6: {
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
                return this.isSetHystereses();
            }
            case 5: {
                return this.interrupts != null && !this.interrupts.isEmpty();
            }
            case 6: {
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
        result.append(" (hystereses: ");
        if (this.hysteresesESet) {
            result.append(this.hystereses);
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

