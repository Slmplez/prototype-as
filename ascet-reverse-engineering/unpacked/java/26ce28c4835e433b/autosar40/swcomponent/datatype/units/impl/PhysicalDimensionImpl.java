/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.sphinx.platform.util.RadixConverter
 */
package autosar40.swcomponent.datatype.units.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.swcomponent.datatype.units.PhysicalDimension;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import java.math.BigDecimal;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.sphinx.platform.util.RadixConverter;

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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldLengthExp, (Object)this.lengthExp, !oldLengthExpESet));
        }
    }

    @Override
    public void unsetLengthExp() {
        String oldLengthExp = this.lengthExp;
        boolean oldLengthExpESet = this.lengthExpESet;
        this.lengthExp = "";
        this.lengthExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldLengthExp, (Object)"", oldLengthExpESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 29, (Object)oldMassExp, (Object)this.massExp, !oldMassExpESet));
        }
    }

    @Override
    public void unsetMassExp() {
        String oldMassExp = this.massExp;
        boolean oldMassExpESet = this.massExpESet;
        this.massExp = "";
        this.massExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 29, (Object)oldMassExp, (Object)"", oldMassExpESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 30, (Object)oldTimeExp, (Object)this.timeExp, !oldTimeExpESet));
        }
    }

    @Override
    public void unsetTimeExp() {
        String oldTimeExp = this.timeExp;
        boolean oldTimeExpESet = this.timeExpESet;
        this.timeExp = "";
        this.timeExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 30, (Object)oldTimeExp, (Object)"", oldTimeExpESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 31, (Object)oldCurrentExp, (Object)this.currentExp, !oldCurrentExpESet));
        }
    }

    @Override
    public void unsetCurrentExp() {
        String oldCurrentExp = this.currentExp;
        boolean oldCurrentExpESet = this.currentExpESet;
        this.currentExp = "";
        this.currentExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 31, (Object)oldCurrentExp, (Object)"", oldCurrentExpESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 32, (Object)oldTemperatureExp, (Object)this.temperatureExp, !oldTemperatureExpESet));
        }
    }

    @Override
    public void unsetTemperatureExp() {
        String oldTemperatureExp = this.temperatureExp;
        boolean oldTemperatureExpESet = this.temperatureExpESet;
        this.temperatureExp = "";
        this.temperatureExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 32, (Object)oldTemperatureExp, (Object)"", oldTemperatureExpESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 33, (Object)oldMolarAmountExp, (Object)this.molarAmountExp, !oldMolarAmountExpESet));
        }
    }

    @Override
    public void unsetMolarAmountExp() {
        String oldMolarAmountExp = this.molarAmountExp;
        boolean oldMolarAmountExpESet = this.molarAmountExpESet;
        this.molarAmountExp = "";
        this.molarAmountExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 33, (Object)oldMolarAmountExp, (Object)"", oldMolarAmountExpESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 34, (Object)oldLuminousIntensityExp, (Object)this.luminousIntensityExp, !oldLuminousIntensityExpESet));
        }
    }

    @Override
    public void unsetLuminousIntensityExp() {
        String oldLuminousIntensityExp = this.luminousIntensityExp;
        boolean oldLuminousIntensityExpESet = this.luminousIntensityExpESet;
        this.luminousIntensityExp = "";
        this.luminousIntensityExpESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 34, (Object)oldLuminousIntensityExp, (Object)"", oldLuminousIntensityExpESet));
        }
    }

    @Override
    public boolean isSetLuminousIntensityExp() {
        return this.luminousIntensityExpESet;
    }

    @Override
    public float getLengthExpAsFloat() {
        return RadixConverter.parseFloat((String)this.getLengthExp());
    }

    @Override
    public int getLengthExpAsInteger() {
        return RadixConverter.parseInt((String)this.getLengthExp());
    }

    @Override
    public int getRadixForLengthExp() {
        return RadixConverter.getRadix((String)this.getLengthExp());
    }

    @Override
    public void setLengthExp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setLengthExp(convertedValue);
    }

    @Override
    public float getMassExpAsFloat() {
        return RadixConverter.parseFloat((String)this.getMassExp());
    }

    @Override
    public int getMassExpAsInteger() {
        return RadixConverter.parseInt((String)this.getMassExp());
    }

    @Override
    public int getRadixForMassExp() {
        return RadixConverter.getRadix((String)this.getMassExp());
    }

    @Override
    public void setMassExp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setMassExp(convertedValue);
    }

    @Override
    public float getTimeExpAsFloat() {
        return RadixConverter.parseFloat((String)this.getTimeExp());
    }

    @Override
    public int getTimeExpAsInteger() {
        return RadixConverter.parseInt((String)this.getTimeExp());
    }

    @Override
    public int getRadixForTimeExp() {
        return RadixConverter.getRadix((String)this.getTimeExp());
    }

    @Override
    public void setTimeExp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setTimeExp(convertedValue);
    }

    @Override
    public float getCurrentExpAsFloat() {
        return RadixConverter.parseFloat((String)this.getCurrentExp());
    }

    @Override
    public int getCurrentExpAsInteger() {
        return RadixConverter.parseInt((String)this.getCurrentExp());
    }

    @Override
    public int getRadixForCurrentExp() {
        return RadixConverter.getRadix((String)this.getCurrentExp());
    }

    @Override
    public void setCurrentExp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setCurrentExp(convertedValue);
    }

    @Override
    public float getTemperatureExpAsFloat() {
        return RadixConverter.parseFloat((String)this.getTemperatureExp());
    }

    @Override
    public int getTemperatureExpAsInteger() {
        return RadixConverter.parseInt((String)this.getTemperatureExp());
    }

    @Override
    public int getRadixForTemperatureExp() {
        return RadixConverter.getRadix((String)this.getTemperatureExp());
    }

    @Override
    public void setTemperatureExp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setTemperatureExp(convertedValue);
    }

    @Override
    public float getMolarAmountExpAsFloat() {
        return RadixConverter.parseFloat((String)this.getMolarAmountExp());
    }

    @Override
    public int getMolarAmountExpAsInteger() {
        return RadixConverter.parseInt((String)this.getMolarAmountExp());
    }

    @Override
    public int getRadixForMolarAmountExp() {
        return RadixConverter.getRadix((String)this.getMolarAmountExp());
    }

    @Override
    public void setMolarAmountExp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setMolarAmountExp(convertedValue);
    }

    @Override
    public float getLuminousIntensityExpAsFloat() {
        return RadixConverter.parseFloat((String)this.getLuminousIntensityExp());
    }

    @Override
    public int getLuminousIntensityExpAsInteger() {
        return RadixConverter.parseInt((String)this.getLuminousIntensityExp());
    }

    @Override
    public int getRadixForLuminousIntensityExp() {
        return RadixConverter.getRadix((String)this.getLuminousIntensityExp());
    }

    @Override
    public void setLuminousIntensityExp(int radix, String value) {
        String convertedValue = RadixConverter.convert((String)value, (int)radix);
        this.setLuminousIntensityExp(convertedValue);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.gGetCurrentExp();
            }
            case 22: {
                return this.gGetLengthExp();
            }
            case 23: {
                return this.gGetLuminousIntensityExp();
            }
            case 24: {
                return this.gGetMassExp();
            }
            case 25: {
                return this.gGetMolarAmountExp();
            }
            case 26: {
                return this.gGetTemperatureExp();
            }
            case 27: {
                return this.gGetTimeExp();
            }
            case 28: {
                return this.getLengthExp();
            }
            case 29: {
                return this.getMassExp();
            }
            case 30: {
                return this.getTimeExp();
            }
            case 31: {
                return this.getCurrentExp();
            }
            case 32: {
                return this.getTemperatureExp();
            }
            case 33: {
                return this.getMolarAmountExp();
            }
            case 34: {
                return this.getLuminousIntensityExp();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.gSetCurrentExp((BigDecimal)newValue);
                return;
            }
            case 22: {
                this.gSetLengthExp((BigDecimal)newValue);
                return;
            }
            case 23: {
                this.gSetLuminousIntensityExp((BigDecimal)newValue);
                return;
            }
            case 24: {
                this.gSetMassExp((BigDecimal)newValue);
                return;
            }
            case 25: {
                this.gSetMolarAmountExp((BigDecimal)newValue);
                return;
            }
            case 26: {
                this.gSetTemperatureExp((BigDecimal)newValue);
                return;
            }
            case 27: {
                this.gSetTimeExp((BigDecimal)newValue);
                return;
            }
            case 28: {
                this.setLengthExp((String)newValue);
                return;
            }
            case 29: {
                this.setMassExp((String)newValue);
                return;
            }
            case 30: {
                this.setTimeExp((String)newValue);
                return;
            }
            case 31: {
                this.setCurrentExp((String)newValue);
                return;
            }
            case 32: {
                this.setTemperatureExp((String)newValue);
                return;
            }
            case 33: {
                this.setMolarAmountExp((String)newValue);
                return;
            }
            case 34: {
                this.setLuminousIntensityExp((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.gUnsetCurrentExp();
                return;
            }
            case 22: {
                this.gUnsetLengthExp();
                return;
            }
            case 23: {
                this.gUnsetLuminousIntensityExp();
                return;
            }
            case 24: {
                this.gUnsetMassExp();
                return;
            }
            case 25: {
                this.gUnsetMolarAmountExp();
                return;
            }
            case 26: {
                this.gUnsetTemperatureExp();
                return;
            }
            case 27: {
                this.gUnsetTimeExp();
                return;
            }
            case 28: {
                this.unsetLengthExp();
                return;
            }
            case 29: {
                this.unsetMassExp();
                return;
            }
            case 30: {
                this.unsetTimeExp();
                return;
            }
            case 31: {
                this.unsetCurrentExp();
                return;
            }
            case 32: {
                this.unsetTemperatureExp();
                return;
            }
            case 33: {
                this.unsetMolarAmountExp();
                return;
            }
            case 34: {
                this.unsetLuminousIntensityExp();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.gIsSetCurrentExp();
            }
            case 22: {
                return this.gIsSetLengthExp();
            }
            case 23: {
                return this.gIsSetLuminousIntensityExp();
            }
            case 24: {
                return this.gIsSetMassExp();
            }
            case 25: {
                return this.gIsSetMolarAmountExp();
            }
            case 26: {
                return this.gIsSetTemperatureExp();
            }
            case 27: {
                return this.gIsSetTimeExp();
            }
            case 28: {
                return this.isSetLengthExp();
            }
            case 29: {
                return this.isSetMassExp();
            }
            case 30: {
                return this.isSetTimeExp();
            }
            case 31: {
                return this.isSetCurrentExp();
            }
            case 32: {
                return this.isSetTemperatureExp();
            }
            case 33: {
                return this.isSetMolarAmountExp();
            }
            case 34: {
                return this.isSetLuminousIntensityExp();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == GPhysicalDimension.class) {
            switch (derivedFeatureID) {
                case 21: {
                    return 7;
                }
                case 22: {
                    return 8;
                }
                case 23: {
                    return 9;
                }
                case 24: {
                    return 10;
                }
                case 25: {
                    return 11;
                }
                case 26: {
                    return 12;
                }
                case 27: {
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
                    return 21;
                }
                case 8: {
                    return 22;
                }
                case 9: {
                    return 23;
                }
                case 10: {
                    return 24;
                }
                case 11: {
                    return 25;
                }
                case 12: {
                    return 26;
                }
                case 13: {
                    return 27;
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

