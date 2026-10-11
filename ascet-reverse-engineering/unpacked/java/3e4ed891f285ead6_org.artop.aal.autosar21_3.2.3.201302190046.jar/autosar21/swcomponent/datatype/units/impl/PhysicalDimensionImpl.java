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
package autosar21.swcomponent.datatype.units.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import autosar21.swcomponent.datatype.units.PhysicalDimension;
import autosar21.swcomponent.datatype.units.UnitSpec;
import autosar21.swcomponent.datatype.units.UnitsPackage;
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
    protected static final String LENGTH_EXP_EDEFAULT = "";
    protected String lengthExp = "";
    protected boolean lengthExpESet;
    protected static final String MASS_EXP_EDEFAULT = "";
    protected String massExp = "";
    protected boolean massExpESet;
    protected static final String TIME_EXP_EDEFAULT = "";
    protected String timeExp = "";
    protected boolean timeExpESet;
    protected static final String CURRENT_EXP_EDEFAULT = "";
    protected String currentExp = "";
    protected boolean currentExpESet;
    protected static final String TEMPERATURE_EXP_EDEFAULT = "";
    protected String temperatureExp = "";
    protected boolean temperatureExpESet;
    protected static final String MOLAR_AMOUNT_EXP_EDEFAULT = "";
    protected String molarAmountExp = "";
    protected boolean molarAmountExpESet;
    protected static final String LUMINOUS_INTENSITY_EXP_EDEFAULT = "";
    protected String luminousIntensityExp = "";
    protected boolean luminousIntensityExpESet;

    protected PhysicalDimensionImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return UnitsPackage.Literals.PHYSICAL_DIMENSION;
    }

    public BigDecimal gGetCurrentExp() {
        String tgtFeatureValue = this.getCurrentExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetCurrentExp(BigDecimal newGCurrentExp) {
        this.setCurrentExp(newGCurrentExp.toPlainString());
    }

    public void gUnsetCurrentExp() {
        this.unsetCurrentExp();
    }

    public boolean gIsSetCurrentExp() {
        return this.isSetCurrentExp();
    }

    public BigDecimal gGetLengthExp() {
        String tgtFeatureValue = this.getLengthExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetLengthExp(BigDecimal newGLengthExp) {
        this.setLengthExp(newGLengthExp.toPlainString());
    }

    public void gUnsetLengthExp() {
        this.unsetLengthExp();
    }

    public boolean gIsSetLengthExp() {
        return this.isSetLengthExp();
    }

    public BigDecimal gGetLuminousIntensityExp() {
        String tgtFeatureValue = this.getLuminousIntensityExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetLuminousIntensityExp(BigDecimal newGLuminousIntensityExp) {
        this.setLuminousIntensityExp(newGLuminousIntensityExp.toPlainString());
    }

    public void gUnsetLuminousIntensityExp() {
        this.unsetLuminousIntensityExp();
    }

    public boolean gIsSetLuminousIntensityExp() {
        return this.isSetLuminousIntensityExp();
    }

    public BigDecimal gGetMassExp() {
        String tgtFeatureValue = this.getMassExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetMassExp(BigDecimal newGMassExp) {
        this.setMassExp(newGMassExp.toPlainString());
    }

    public void gUnsetMassExp() {
        this.unsetMassExp();
    }

    public boolean gIsSetMassExp() {
        return this.isSetMassExp();
    }

    public BigDecimal gGetMolarAmountExp() {
        String tgtFeatureValue = this.getMolarAmountExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetMolarAmountExp(BigDecimal newGMolarAmountExp) {
        this.setMolarAmountExp(newGMolarAmountExp.toPlainString());
    }

    public void gUnsetMolarAmountExp() {
        this.unsetMolarAmountExp();
    }

    public boolean gIsSetMolarAmountExp() {
        return this.isSetMolarAmountExp();
    }

    public BigDecimal gGetTemperatureExp() {
        String tgtFeatureValue = this.getTemperatureExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetTemperatureExp(BigDecimal newGTemperatureExp) {
        this.setTemperatureExp(newGTemperatureExp.toPlainString());
    }

    public void gUnsetTemperatureExp() {
        this.unsetTemperatureExp();
    }

    public boolean gIsSetTemperatureExp() {
        return this.isSetTemperatureExp();
    }

    public BigDecimal gGetTimeExp() {
        String tgtFeatureValue = this.getTimeExp();
        return new BigDecimal(tgtFeatureValue);
    }

    public void gSetTimeExp(BigDecimal newGTimeExp) {
        this.setTimeExp(newGTimeExp.toPlainString());
    }

    public void gUnsetTimeExp() {
        this.unsetTimeExp();
    }

    public boolean gIsSetTimeExp() {
        return this.isSetTimeExp();
    }

    @Override
    public UnitSpec getUnitSpec() {
        if (this.eContainerFeatureID() != 25) {
            return null;
        }
        return (UnitSpec)this.eContainer();
    }

    public NotificationChain basicSetUnitSpec(UnitSpec newUnitSpec, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newUnitSpec, 25, msgs);
        return msgs;
    }

    @Override
    public void setUnitSpec(UnitSpec newUnitSpec) {
        if (newUnitSpec != this.eInternalContainer() || this.eContainerFeatureID() != 25 && newUnitSpec != null) {
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newUnitSpec, (Object)newUnitSpec));
        }
    }

    @Override
    public String getLengthExp() {
        return this.lengthExp;
    }

    @Override
    public void setLengthExp(String newLengthExp) {
        String oldLengthExp = this.lengthExp;
        this.lengthExp = newLengthExp;
        boolean oldLengthExpESet = this.lengthExpESet;
        this.lengthExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldLengthExp, (Object)this.lengthExp, !oldLengthExpESet));
        }
    }

    @Override
    public void unsetLengthExp() {
        String oldLengthExp = this.lengthExp;
        boolean oldLengthExpESet = this.lengthExpESet;
        this.lengthExp = "";
        this.lengthExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 26, (Object)oldLengthExp, (Object)"", oldLengthExpESet));
        }
    }

    @Override
    public boolean isSetLengthExp() {
        return this.lengthExpESet;
    }

    @Override
    public String getMassExp() {
        return this.massExp;
    }

    @Override
    public void setMassExp(String newMassExp) {
        String oldMassExp = this.massExp;
        this.massExp = newMassExp;
        boolean oldMassExpESet = this.massExpESet;
        this.massExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldMassExp, (Object)this.massExp, !oldMassExpESet));
        }
    }

    @Override
    public void unsetMassExp() {
        String oldMassExp = this.massExp;
        boolean oldMassExpESet = this.massExpESet;
        this.massExp = "";
        this.massExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldMassExp, (Object)"", oldMassExpESet));
        }
    }

    @Override
    public boolean isSetMassExp() {
        return this.massExpESet;
    }

    @Override
    public String getTimeExp() {
        return this.timeExp;
    }

    @Override
    public void setTimeExp(String newTimeExp) {
        String oldTimeExp = this.timeExp;
        this.timeExp = newTimeExp;
        boolean oldTimeExpESet = this.timeExpESet;
        this.timeExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldTimeExp, (Object)this.timeExp, !oldTimeExpESet));
        }
    }

    @Override
    public void unsetTimeExp() {
        String oldTimeExp = this.timeExp;
        boolean oldTimeExpESet = this.timeExpESet;
        this.timeExp = "";
        this.timeExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldTimeExp, (Object)"", oldTimeExpESet));
        }
    }

    @Override
    public boolean isSetTimeExp() {
        return this.timeExpESet;
    }

    @Override
    public String getCurrentExp() {
        return this.currentExp;
    }

    @Override
    public void setCurrentExp(String newCurrentExp) {
        String oldCurrentExp = this.currentExp;
        this.currentExp = newCurrentExp;
        boolean oldCurrentExpESet = this.currentExpESet;
        this.currentExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldCurrentExp, (Object)this.currentExp, !oldCurrentExpESet));
        }
    }

    @Override
    public void unsetCurrentExp() {
        String oldCurrentExp = this.currentExp;
        boolean oldCurrentExpESet = this.currentExpESet;
        this.currentExp = "";
        this.currentExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldCurrentExp, (Object)"", oldCurrentExpESet));
        }
    }

    @Override
    public boolean isSetCurrentExp() {
        return this.currentExpESet;
    }

    @Override
    public String getTemperatureExp() {
        return this.temperatureExp;
    }

    @Override
    public void setTemperatureExp(String newTemperatureExp) {
        String oldTemperatureExp = this.temperatureExp;
        this.temperatureExp = newTemperatureExp;
        boolean oldTemperatureExpESet = this.temperatureExpESet;
        this.temperatureExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldTemperatureExp, (Object)this.temperatureExp, !oldTemperatureExpESet));
        }
    }

    @Override
    public void unsetTemperatureExp() {
        String oldTemperatureExp = this.temperatureExp;
        boolean oldTemperatureExpESet = this.temperatureExpESet;
        this.temperatureExp = "";
        this.temperatureExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldTemperatureExp, (Object)"", oldTemperatureExpESet));
        }
    }

    @Override
    public boolean isSetTemperatureExp() {
        return this.temperatureExpESet;
    }

    @Override
    public String getMolarAmountExp() {
        return this.molarAmountExp;
    }

    @Override
    public void setMolarAmountExp(String newMolarAmountExp) {
        String oldMolarAmountExp = this.molarAmountExp;
        this.molarAmountExp = newMolarAmountExp;
        boolean oldMolarAmountExpESet = this.molarAmountExpESet;
        this.molarAmountExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldMolarAmountExp, (Object)this.molarAmountExp, !oldMolarAmountExpESet));
        }
    }

    @Override
    public void unsetMolarAmountExp() {
        String oldMolarAmountExp = this.molarAmountExp;
        boolean oldMolarAmountExpESet = this.molarAmountExpESet;
        this.molarAmountExp = "";
        this.molarAmountExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldMolarAmountExp, (Object)"", oldMolarAmountExpESet));
        }
    }

    @Override
    public boolean isSetMolarAmountExp() {
        return this.molarAmountExpESet;
    }

    @Override
    public String getLuminousIntensityExp() {
        return this.luminousIntensityExp;
    }

    @Override
    public void setLuminousIntensityExp(String newLuminousIntensityExp) {
        String oldLuminousIntensityExp = this.luminousIntensityExp;
        this.luminousIntensityExp = newLuminousIntensityExp;
        boolean oldLuminousIntensityExpESet = this.luminousIntensityExpESet;
        this.luminousIntensityExpESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldLuminousIntensityExp, (Object)this.luminousIntensityExp, !oldLuminousIntensityExpESet));
        }
    }

    @Override
    public void unsetLuminousIntensityExp() {
        String oldLuminousIntensityExp = this.luminousIntensityExp;
        boolean oldLuminousIntensityExpESet = this.luminousIntensityExpESet;
        this.luminousIntensityExp = "";
        this.luminousIntensityExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldLuminousIntensityExp, (Object)"", oldLuminousIntensityExpESet));
        }
    }

    @Override
    public boolean isSetLuminousIntensityExp() {
        return this.luminousIntensityExpESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
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
            case 25: {
                return this.basicSetUnitSpec(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 25: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, UnitSpec.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.gGetCurrentExp();
            }
            case 19: {
                return this.gGetLengthExp();
            }
            case 20: {
                return this.gGetLuminousIntensityExp();
            }
            case 21: {
                return this.gGetMassExp();
            }
            case 22: {
                return this.gGetMolarAmountExp();
            }
            case 23: {
                return this.gGetTemperatureExp();
            }
            case 24: {
                return this.gGetTimeExp();
            }
            case 25: {
                return this.getUnitSpec();
            }
            case 26: {
                return this.getLengthExp();
            }
            case 27: {
                return this.getMassExp();
            }
            case 28: {
                return this.getTimeExp();
            }
            case 29: {
                return this.getCurrentExp();
            }
            case 30: {
                return this.getTemperatureExp();
            }
            case 31: {
                return this.getMolarAmountExp();
            }
            case 32: {
                return this.getLuminousIntensityExp();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.gSetCurrentExp((BigDecimal)newValue);
                return;
            }
            case 19: {
                this.gSetLengthExp((BigDecimal)newValue);
                return;
            }
            case 20: {
                this.gSetLuminousIntensityExp((BigDecimal)newValue);
                return;
            }
            case 21: {
                this.gSetMassExp((BigDecimal)newValue);
                return;
            }
            case 22: {
                this.gSetMolarAmountExp((BigDecimal)newValue);
                return;
            }
            case 23: {
                this.gSetTemperatureExp((BigDecimal)newValue);
                return;
            }
            case 24: {
                this.gSetTimeExp((BigDecimal)newValue);
                return;
            }
            case 25: {
                this.setUnitSpec((UnitSpec)newValue);
                return;
            }
            case 26: {
                this.setLengthExp((String)newValue);
                return;
            }
            case 27: {
                this.setMassExp((String)newValue);
                return;
            }
            case 28: {
                this.setTimeExp((String)newValue);
                return;
            }
            case 29: {
                this.setCurrentExp((String)newValue);
                return;
            }
            case 30: {
                this.setTemperatureExp((String)newValue);
                return;
            }
            case 31: {
                this.setMolarAmountExp((String)newValue);
                return;
            }
            case 32: {
                this.setLuminousIntensityExp((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.gUnsetCurrentExp();
                return;
            }
            case 19: {
                this.gUnsetLengthExp();
                return;
            }
            case 20: {
                this.gUnsetLuminousIntensityExp();
                return;
            }
            case 21: {
                this.gUnsetMassExp();
                return;
            }
            case 22: {
                this.gUnsetMolarAmountExp();
                return;
            }
            case 23: {
                this.gUnsetTemperatureExp();
                return;
            }
            case 24: {
                this.gUnsetTimeExp();
                return;
            }
            case 25: {
                this.setUnitSpec(null);
                return;
            }
            case 26: {
                this.unsetLengthExp();
                return;
            }
            case 27: {
                this.unsetMassExp();
                return;
            }
            case 28: {
                this.unsetTimeExp();
                return;
            }
            case 29: {
                this.unsetCurrentExp();
                return;
            }
            case 30: {
                this.unsetTemperatureExp();
                return;
            }
            case 31: {
                this.unsetMolarAmountExp();
                return;
            }
            case 32: {
                this.unsetLuminousIntensityExp();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.gIsSetCurrentExp();
            }
            case 19: {
                return this.gIsSetLengthExp();
            }
            case 20: {
                return this.gIsSetLuminousIntensityExp();
            }
            case 21: {
                return this.gIsSetMassExp();
            }
            case 22: {
                return this.gIsSetMolarAmountExp();
            }
            case 23: {
                return this.gIsSetTemperatureExp();
            }
            case 24: {
                return this.gIsSetTimeExp();
            }
            case 25: {
                return this.getUnitSpec() != null;
            }
            case 26: {
                return this.isSetLengthExp();
            }
            case 27: {
                return this.isSetMassExp();
            }
            case 28: {
                return this.isSetTimeExp();
            }
            case 29: {
                return this.isSetCurrentExp();
            }
            case 30: {
                return this.isSetTemperatureExp();
            }
            case 31: {
                return this.isSetMolarAmountExp();
            }
            case 32: {
                return this.isSetLuminousIntensityExp();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPhysicalDimension.class) {
            switch (derivedFeatureID) {
                case 18: {
                    return 7;
                }
                case 19: {
                    return 8;
                }
                case 20: {
                    return 9;
                }
                case 21: {
                    return 10;
                }
                case 22: {
                    return 11;
                }
                case 23: {
                    return 12;
                }
                case 24: {
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
                    return 18;
                }
                case 8: {
                    return 19;
                }
                case 9: {
                    return 20;
                }
                case 10: {
                    return 21;
                }
                case 11: {
                    return 22;
                }
                case 12: {
                    return 23;
                }
                case 13: {
                    return 24;
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

