/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.swcomponent.datatype.units.impl;

import autosar3x.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar3x.swcomponent.datatype.units.PhysicalDimension;
import autosar3x.swcomponent.datatype.units.UnitSpec;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import java.math.BigDecimal;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PhysicalDimensionImpl
extends ARElementImpl
implements PhysicalDimension {
    protected static final BigDecimal GCURRENT_EXP_EDEFAULT = null;
    protected static final BigDecimal GLENGTH_EXP_EDEFAULT = null;
    protected static final BigDecimal GLUMINOUS_INTENSITY_EXP_EDEFAULT = null;
    protected static final BigDecimal GMASS_EXP_EDEFAULT = null;
    protected static final BigDecimal GMOLAR_AMOUNT_EXP_EDEFAULT = null;
    protected static final BigDecimal GTEMPERATURE_EXP_EDEFAULT = null;
    protected static final BigDecimal GTIME_EXP_EDEFAULT = null;
    protected static final Integer LENGTH_EXP_EDEFAULT = new Integer(0);
    protected Integer lengthExp = LENGTH_EXP_EDEFAULT;
    protected boolean lengthExpESet;
    protected static final Integer MASS_EXP_EDEFAULT = new Integer(0);
    protected Integer massExp = MASS_EXP_EDEFAULT;
    protected boolean massExpESet;
    protected static final Integer TIME_EXP_EDEFAULT = new Integer(0);
    protected Integer timeExp = TIME_EXP_EDEFAULT;
    protected boolean timeExpESet;
    protected static final Integer CURRENT_EXP_EDEFAULT = new Integer(0);
    protected Integer currentExp = CURRENT_EXP_EDEFAULT;
    protected boolean currentExpESet;
    protected static final Integer TEMPERATURE_EXP_EDEFAULT = new Integer(0);
    protected Integer temperatureExp = TEMPERATURE_EXP_EDEFAULT;
    protected boolean temperatureExpESet;
    protected static final Integer MOLAR_AMOUNT_EXP_EDEFAULT = new Integer(0);
    protected Integer molarAmountExp = MOLAR_AMOUNT_EXP_EDEFAULT;
    protected boolean molarAmountExpESet;
    protected static final Integer LUMINOUS_INTENSITY_EXP_EDEFAULT = new Integer(0);
    protected Integer luminousIntensityExp = LUMINOUS_INTENSITY_EXP_EDEFAULT;
    protected boolean luminousIntensityExpESet;

    protected PhysicalDimensionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return UnitsPackage.Literals.PHYSICAL_DIMENSION;
    }

    public BigDecimal gGetCurrentExp() {
        Integer tgtFeatureValue = this.getCurrentExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetCurrentExp(BigDecimal newGCurrentExp) {
        this.setCurrentExp(newGCurrentExp.intValueExact());
    }

    public void gUnsetCurrentExp() {
        this.unsetCurrentExp();
    }

    public boolean gIsSetCurrentExp() {
        return this.isSetCurrentExp();
    }

    public BigDecimal gGetLengthExp() {
        Integer tgtFeatureValue = this.getLengthExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetLengthExp(BigDecimal newGLengthExp) {
        this.setLengthExp(newGLengthExp.intValueExact());
    }

    public void gUnsetLengthExp() {
        this.unsetLengthExp();
    }

    public boolean gIsSetLengthExp() {
        return this.isSetLengthExp();
    }

    public BigDecimal gGetLuminousIntensityExp() {
        Integer tgtFeatureValue = this.getLuminousIntensityExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetLuminousIntensityExp(BigDecimal newGLuminousIntensityExp) {
        this.setLuminousIntensityExp(newGLuminousIntensityExp.intValueExact());
    }

    public void gUnsetLuminousIntensityExp() {
        this.unsetLuminousIntensityExp();
    }

    public boolean gIsSetLuminousIntensityExp() {
        return this.isSetLuminousIntensityExp();
    }

    public BigDecimal gGetMassExp() {
        Integer tgtFeatureValue = this.getMassExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetMassExp(BigDecimal newGMassExp) {
        this.setMassExp(newGMassExp.intValueExact());
    }

    public void gUnsetMassExp() {
        this.unsetMassExp();
    }

    public boolean gIsSetMassExp() {
        return this.isSetMassExp();
    }

    public BigDecimal gGetMolarAmountExp() {
        Integer tgtFeatureValue = this.getMolarAmountExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetMolarAmountExp(BigDecimal newGMolarAmountExp) {
        this.setMolarAmountExp(newGMolarAmountExp.intValueExact());
    }

    public void gUnsetMolarAmountExp() {
        this.unsetMolarAmountExp();
    }

    public boolean gIsSetMolarAmountExp() {
        return this.isSetMolarAmountExp();
    }

    public BigDecimal gGetTemperatureExp() {
        Integer tgtFeatureValue = this.getTemperatureExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetTemperatureExp(BigDecimal newGTemperatureExp) {
        this.setTemperatureExp(newGTemperatureExp.intValueExact());
    }

    public void gUnsetTemperatureExp() {
        this.unsetTemperatureExp();
    }

    public boolean gIsSetTemperatureExp() {
        return this.isSetTemperatureExp();
    }

    public BigDecimal gGetTimeExp() {
        Integer tgtFeatureValue = this.getTimeExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetTimeExp(BigDecimal newGTimeExp) {
        this.setTimeExp(newGTimeExp.intValueExact());
    }

    public void gUnsetTimeExp() {
        this.unsetTimeExp();
    }

    public boolean gIsSetTimeExp() {
        return this.isSetTimeExp();
    }

    @Override
    public UnitSpec getUnitSpec() {
        if (this.eContainerFeatureID() != 26) {
            return null;
        }
        return (UnitSpec)this.eContainer();
    }

    public NotificationChain basicSetUnitSpec(UnitSpec newUnitSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newUnitSpec, 26, msgs);
        return msgs;
    }

    @Override
    public void setUnitSpec(UnitSpec newUnitSpec) {
        if (newUnitSpec != this.eInternalContainer() || this.eContainerFeatureID() != 26 && newUnitSpec != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newUnitSpec)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newUnitSpec != null) {
                msgs = ((InternalEObject)newUnitSpec).eInverseAdd((InternalEObject)this, 6, UnitSpec.class, msgs);
            }
            if ((msgs = this.basicSetUnitSpec(newUnitSpec, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)newUnitSpec, (Object)newUnitSpec));
        }
    }

    @Override
    public Integer getLengthExp() {
        return this.lengthExp;
    }

    @Override
    public void setLengthExp(Integer newLengthExp) {
        Integer oldLengthExp = this.lengthExp;
        this.lengthExp = newLengthExp;
        boolean oldLengthExpESet = this.lengthExpESet;
        this.lengthExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldLengthExp, (Object)this.lengthExp, !oldLengthExpESet));
        }
    }

    @Override
    public void unsetLengthExp() {
        Integer oldLengthExp = this.lengthExp;
        boolean oldLengthExpESet = this.lengthExpESet;
        this.lengthExp = LENGTH_EXP_EDEFAULT;
        this.lengthExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldLengthExp, (Object)LENGTH_EXP_EDEFAULT, oldLengthExpESet));
        }
    }

    @Override
    public boolean isSetLengthExp() {
        return this.lengthExpESet;
    }

    @Override
    public Integer getMassExp() {
        return this.massExp;
    }

    @Override
    public void setMassExp(Integer newMassExp) {
        Integer oldMassExp = this.massExp;
        this.massExp = newMassExp;
        boolean oldMassExpESet = this.massExpESet;
        this.massExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldMassExp, (Object)this.massExp, !oldMassExpESet));
        }
    }

    @Override
    public void unsetMassExp() {
        Integer oldMassExp = this.massExp;
        boolean oldMassExpESet = this.massExpESet;
        this.massExp = MASS_EXP_EDEFAULT;
        this.massExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldMassExp, (Object)MASS_EXP_EDEFAULT, oldMassExpESet));
        }
    }

    @Override
    public boolean isSetMassExp() {
        return this.massExpESet;
    }

    @Override
    public Integer getTimeExp() {
        return this.timeExp;
    }

    @Override
    public void setTimeExp(Integer newTimeExp) {
        Integer oldTimeExp = this.timeExp;
        this.timeExp = newTimeExp;
        boolean oldTimeExpESet = this.timeExpESet;
        this.timeExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldTimeExp, (Object)this.timeExp, !oldTimeExpESet));
        }
    }

    @Override
    public void unsetTimeExp() {
        Integer oldTimeExp = this.timeExp;
        boolean oldTimeExpESet = this.timeExpESet;
        this.timeExp = TIME_EXP_EDEFAULT;
        this.timeExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldTimeExp, (Object)TIME_EXP_EDEFAULT, oldTimeExpESet));
        }
    }

    @Override
    public boolean isSetTimeExp() {
        return this.timeExpESet;
    }

    @Override
    public Integer getCurrentExp() {
        return this.currentExp;
    }

    @Override
    public void setCurrentExp(Integer newCurrentExp) {
        Integer oldCurrentExp = this.currentExp;
        this.currentExp = newCurrentExp;
        boolean oldCurrentExpESet = this.currentExpESet;
        this.currentExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldCurrentExp, (Object)this.currentExp, !oldCurrentExpESet));
        }
    }

    @Override
    public void unsetCurrentExp() {
        Integer oldCurrentExp = this.currentExp;
        boolean oldCurrentExpESet = this.currentExpESet;
        this.currentExp = CURRENT_EXP_EDEFAULT;
        this.currentExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldCurrentExp, (Object)CURRENT_EXP_EDEFAULT, oldCurrentExpESet));
        }
    }

    @Override
    public boolean isSetCurrentExp() {
        return this.currentExpESet;
    }

    @Override
    public Integer getTemperatureExp() {
        return this.temperatureExp;
    }

    @Override
    public void setTemperatureExp(Integer newTemperatureExp) {
        Integer oldTemperatureExp = this.temperatureExp;
        this.temperatureExp = newTemperatureExp;
        boolean oldTemperatureExpESet = this.temperatureExpESet;
        this.temperatureExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldTemperatureExp, (Object)this.temperatureExp, !oldTemperatureExpESet));
        }
    }

    @Override
    public void unsetTemperatureExp() {
        Integer oldTemperatureExp = this.temperatureExp;
        boolean oldTemperatureExpESet = this.temperatureExpESet;
        this.temperatureExp = TEMPERATURE_EXP_EDEFAULT;
        this.temperatureExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldTemperatureExp, (Object)TEMPERATURE_EXP_EDEFAULT, oldTemperatureExpESet));
        }
    }

    @Override
    public boolean isSetTemperatureExp() {
        return this.temperatureExpESet;
    }

    @Override
    public Integer getMolarAmountExp() {
        return this.molarAmountExp;
    }

    @Override
    public void setMolarAmountExp(Integer newMolarAmountExp) {
        Integer oldMolarAmountExp = this.molarAmountExp;
        this.molarAmountExp = newMolarAmountExp;
        boolean oldMolarAmountExpESet = this.molarAmountExpESet;
        this.molarAmountExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldMolarAmountExp, (Object)this.molarAmountExp, !oldMolarAmountExpESet));
        }
    }

    @Override
    public void unsetMolarAmountExp() {
        Integer oldMolarAmountExp = this.molarAmountExp;
        boolean oldMolarAmountExpESet = this.molarAmountExpESet;
        this.molarAmountExp = MOLAR_AMOUNT_EXP_EDEFAULT;
        this.molarAmountExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldMolarAmountExp, (Object)MOLAR_AMOUNT_EXP_EDEFAULT, oldMolarAmountExpESet));
        }
    }

    @Override
    public boolean isSetMolarAmountExp() {
        return this.molarAmountExpESet;
    }

    @Override
    public Integer getLuminousIntensityExp() {
        return this.luminousIntensityExp;
    }

    @Override
    public void setLuminousIntensityExp(Integer newLuminousIntensityExp) {
        Integer oldLuminousIntensityExp = this.luminousIntensityExp;
        this.luminousIntensityExp = newLuminousIntensityExp;
        boolean oldLuminousIntensityExpESet = this.luminousIntensityExpESet;
        this.luminousIntensityExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldLuminousIntensityExp, (Object)this.luminousIntensityExp, !oldLuminousIntensityExpESet));
        }
    }

    @Override
    public void unsetLuminousIntensityExp() {
        Integer oldLuminousIntensityExp = this.luminousIntensityExp;
        boolean oldLuminousIntensityExpESet = this.luminousIntensityExpESet;
        this.luminousIntensityExp = LUMINOUS_INTENSITY_EXP_EDEFAULT;
        this.luminousIntensityExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldLuminousIntensityExp, (Object)LUMINOUS_INTENSITY_EXP_EDEFAULT, oldLuminousIntensityExpESet));
        }
    }

    @Override
    public boolean isSetLuminousIntensityExp() {
        return this.luminousIntensityExpESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetUnitSpec((UnitSpec)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 26: {
                return this.basicSetUnitSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 26: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, UnitSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.gGetCurrentExp();
            }
            case 20: {
                return this.gGetLengthExp();
            }
            case 21: {
                return this.gGetLuminousIntensityExp();
            }
            case 22: {
                return this.gGetMassExp();
            }
            case 23: {
                return this.gGetMolarAmountExp();
            }
            case 24: {
                return this.gGetTemperatureExp();
            }
            case 25: {
                return this.gGetTimeExp();
            }
            case 26: {
                return this.getUnitSpec();
            }
            case 27: {
                return this.getLengthExp();
            }
            case 28: {
                return this.getMassExp();
            }
            case 29: {
                return this.getTimeExp();
            }
            case 30: {
                return this.getCurrentExp();
            }
            case 31: {
                return this.getTemperatureExp();
            }
            case 32: {
                return this.getMolarAmountExp();
            }
            case 33: {
                return this.getLuminousIntensityExp();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.gSetCurrentExp((BigDecimal)newValue);
                return;
            }
            case 20: {
                this.gSetLengthExp((BigDecimal)newValue);
                return;
            }
            case 21: {
                this.gSetLuminousIntensityExp((BigDecimal)newValue);
                return;
            }
            case 22: {
                this.gSetMassExp((BigDecimal)newValue);
                return;
            }
            case 23: {
                this.gSetMolarAmountExp((BigDecimal)newValue);
                return;
            }
            case 24: {
                this.gSetTemperatureExp((BigDecimal)newValue);
                return;
            }
            case 25: {
                this.gSetTimeExp((BigDecimal)newValue);
                return;
            }
            case 26: {
                this.setUnitSpec((UnitSpec)newValue);
                return;
            }
            case 27: {
                this.setLengthExp((Integer)newValue);
                return;
            }
            case 28: {
                this.setMassExp((Integer)newValue);
                return;
            }
            case 29: {
                this.setTimeExp((Integer)newValue);
                return;
            }
            case 30: {
                this.setCurrentExp((Integer)newValue);
                return;
            }
            case 31: {
                this.setTemperatureExp((Integer)newValue);
                return;
            }
            case 32: {
                this.setMolarAmountExp((Integer)newValue);
                return;
            }
            case 33: {
                this.setLuminousIntensityExp((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.gUnsetCurrentExp();
                return;
            }
            case 20: {
                this.gUnsetLengthExp();
                return;
            }
            case 21: {
                this.gUnsetLuminousIntensityExp();
                return;
            }
            case 22: {
                this.gUnsetMassExp();
                return;
            }
            case 23: {
                this.gUnsetMolarAmountExp();
                return;
            }
            case 24: {
                this.gUnsetTemperatureExp();
                return;
            }
            case 25: {
                this.gUnsetTimeExp();
                return;
            }
            case 26: {
                this.setUnitSpec(null);
                return;
            }
            case 27: {
                this.unsetLengthExp();
                return;
            }
            case 28: {
                this.unsetMassExp();
                return;
            }
            case 29: {
                this.unsetTimeExp();
                return;
            }
            case 30: {
                this.unsetCurrentExp();
                return;
            }
            case 31: {
                this.unsetTemperatureExp();
                return;
            }
            case 32: {
                this.unsetMolarAmountExp();
                return;
            }
            case 33: {
                this.unsetLuminousIntensityExp();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.gIsSetCurrentExp();
            }
            case 20: {
                return this.gIsSetLengthExp();
            }
            case 21: {
                return this.gIsSetLuminousIntensityExp();
            }
            case 22: {
                return this.gIsSetMassExp();
            }
            case 23: {
                return this.gIsSetMolarAmountExp();
            }
            case 24: {
                return this.gIsSetTemperatureExp();
            }
            case 25: {
                return this.gIsSetTimeExp();
            }
            case 26: {
                return this.getUnitSpec() != null;
            }
            case 27: {
                return this.isSetLengthExp();
            }
            case 28: {
                return this.isSetMassExp();
            }
            case 29: {
                return this.isSetTimeExp();
            }
            case 30: {
                return this.isSetCurrentExp();
            }
            case 31: {
                return this.isSetTemperatureExp();
            }
            case 32: {
                return this.isSetMolarAmountExp();
            }
            case 33: {
                return this.isSetLuminousIntensityExp();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPhysicalDimension.class) {
            switch (derivedFeatureID) {
                case 19: {
                    return 7;
                }
                case 20: {
                    return 8;
                }
                case 21: {
                    return 9;
                }
                case 22: {
                    return 10;
                }
                case 23: {
                    return 11;
                }
                case 24: {
                    return 12;
                }
                case 25: {
                    return 13;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == GPhysicalDimension.class) {
            switch (baseFeatureID) {
                case 7: {
                    return 19;
                }
                case 8: {
                    return 20;
                }
                case 9: {
                    return 21;
                }
                case 10: {
                    return 22;
                }
                case 11: {
                    return 23;
                }
                case 12: {
                    return 24;
                }
                case 13: {
                    return 25;
                }
            }
            return -1;
        }
        return super.eDerivedStructuralFeatureID(baseFeatureID, baseClass);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (lengthExp: ");
        if (this.lengthExpESet) {
            result.append(this.lengthExp);
        } else {
            result.append("<unset>");
        }
        result.append(", massExp: ");
        if (this.massExpESet) {
            result.append(this.massExp);
        } else {
            result.append("<unset>");
        }
        result.append(", timeExp: ");
        if (this.timeExpESet) {
            result.append(this.timeExp);
        } else {
            result.append("<unset>");
        }
        result.append(", currentExp: ");
        if (this.currentExpESet) {
            result.append(this.currentExp);
        } else {
            result.append("<unset>");
        }
        result.append(", temperatureExp: ");
        if (this.temperatureExpESet) {
            result.append(this.temperatureExp);
        } else {
            result.append("<unset>");
        }
        result.append(", molarAmountExp: ");
        if (this.molarAmountExpESet) {
            result.append(this.molarAmountExp);
        } else {
            result.append("<unset>");
        }
        result.append(", luminousIntensityExp: ");
        if (this.luminousIntensityExpESet) {
            result.append(this.luminousIntensityExp);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

