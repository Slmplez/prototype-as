/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.CalculationLanguage;
import autosar3x.ecucparameterdef.DerivedIntegerParamDef;
import autosar3x.ecucparameterdef.DerivedParamType;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.impl.IntegerParamDefImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DerivedIntegerParamDefImpl
extends IntegerParamDefImpl
implements DerivedIntegerParamDef {
    protected static final String CALCULATION_FORMULA_EDEFAULT = "";
    protected String calculationFormula = "";
    protected boolean calculationFormulaESet;
    protected static final CalculationLanguage CALCULATION_LANGUAGE_EDEFAULT = CalculationLanguage.INFORMAL;
    protected CalculationLanguage calculationLanguage = CALCULATION_LANGUAGE_EDEFAULT;
    protected boolean calculationLanguageESet;

    protected DerivedIntegerParamDefImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.DERIVED_INTEGER_PARAM_DEF;
    }

    @Override
    public String getCalculationFormula() {
        return this.calculationFormula;
    }

    @Override
    public void setCalculationFormula(String newCalculationFormula) {
        String oldCalculationFormula = this.calculationFormula;
        this.calculationFormula = newCalculationFormula;
        boolean oldCalculationFormulaESet = this.calculationFormulaESet;
        this.calculationFormulaESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 27, (Object)oldCalculationFormula, (Object)this.calculationFormula, !oldCalculationFormulaESet));
        }
    }

    @Override
    public void unsetCalculationFormula() {
        String oldCalculationFormula = this.calculationFormula;
        boolean oldCalculationFormulaESet = this.calculationFormulaESet;
        this.calculationFormula = CALCULATION_FORMULA_EDEFAULT;
        this.calculationFormulaESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 27, (Object)oldCalculationFormula, (Object)CALCULATION_FORMULA_EDEFAULT, oldCalculationFormulaESet));
        }
    }

    @Override
    public boolean isSetCalculationFormula() {
        return this.calculationFormulaESet;
    }

    @Override
    public CalculationLanguage getCalculationLanguage() {
        return this.calculationLanguage;
    }

    @Override
    public void setCalculationLanguage(CalculationLanguage newCalculationLanguage) {
        CalculationLanguage oldCalculationLanguage = this.calculationLanguage;
        this.calculationLanguage = newCalculationLanguage == null ? CALCULATION_LANGUAGE_EDEFAULT : newCalculationLanguage;
        boolean oldCalculationLanguageESet = this.calculationLanguageESet;
        this.calculationLanguageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 28, (Object)oldCalculationLanguage, (Object)this.calculationLanguage, !oldCalculationLanguageESet));
        }
    }

    @Override
    public void unsetCalculationLanguage() {
        CalculationLanguage oldCalculationLanguage = this.calculationLanguage;
        boolean oldCalculationLanguageESet = this.calculationLanguageESet;
        this.calculationLanguage = CALCULATION_LANGUAGE_EDEFAULT;
        this.calculationLanguageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 28, (Object)oldCalculationLanguage, (Object)CALCULATION_LANGUAGE_EDEFAULT, oldCalculationLanguageESet));
        }
    }

    @Override
    public boolean isSetCalculationLanguage() {
        return this.calculationLanguageESet;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 27: {
                return this.getCalculationFormula();
            }
            case 28: {
                return this.getCalculationLanguage();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 27: {
                this.setCalculationFormula((String)newValue);
                return;
            }
            case 28: {
                this.setCalculationLanguage((CalculationLanguage)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 27: {
                this.unsetCalculationFormula();
                return;
            }
            case 28: {
                this.unsetCalculationLanguage();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 27: {
                return this.isSetCalculationFormula();
            }
            case 28: {
                return this.isSetCalculationLanguage();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public int eBaseStructuralFeatureID(int derivedFeatureID, Class<?> baseClass) {
        if (baseClass == DerivedParamType.class) {
            switch (derivedFeatureID) {
                case 27: {
                    return 4;
                }
                case 28: {
                    return 5;
                }
            }
            return -1;
        }
        return super.eBaseStructuralFeatureID(derivedFeatureID, baseClass);
    }

    @Override
    public int eDerivedStructuralFeatureID(int baseFeatureID, Class<?> baseClass) {
        if (baseClass == DerivedParamType.class) {
            switch (baseFeatureID) {
                case 4: {
                    return 27;
                }
                case 5: {
                    return 28;
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
        result.append(" (calculationFormula: ");
        if (this.calculationFormulaESet) {
            result.append(this.calculationFormula);
        } else {
            result.append("<unset>");
        }
        result.append(", calculationLanguage: ");
        if (this.calculationLanguageESet) {
            result.append((Object)this.calculationLanguage);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

