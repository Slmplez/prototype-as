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
import autosar3x.ecucparameterdef.DerivedParamType;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public abstract class DerivedParamTypeImpl
extends ARObjectImpl
implements DerivedParamType {
    protected static final String CALCULATION_FORMULA_EDEFAULT = "";
    protected String calculationFormula = "";
    protected boolean calculationFormulaESet;
    protected static final CalculationLanguage CALCULATION_LANGUAGE_EDEFAULT = CalculationLanguage.INFORMAL;
    protected CalculationLanguage calculationLanguage = CALCULATION_LANGUAGE_EDEFAULT;
    protected boolean calculationLanguageESet;

    protected DerivedParamTypeImpl() {
    }

    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.DERIVED_PARAM_TYPE;
    }

    public String getCalculationFormula() {
        return this.calculationFormula;
    }

    public void setCalculationFormula(String newCalculationFormula) {
        String oldCalculationFormula = this.calculationFormula;
        this.calculationFormula = newCalculationFormula;
        boolean oldCalculationFormulaESet = this.calculationFormulaESet;
        this.calculationFormulaESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldCalculationFormula, (Object)this.calculationFormula, !oldCalculationFormulaESet));
        }
    }

    public void unsetCalculationFormula() {
        String oldCalculationFormula = this.calculationFormula;
        boolean oldCalculationFormulaESet = this.calculationFormulaESet;
        this.calculationFormula = CALCULATION_FORMULA_EDEFAULT;
        this.calculationFormulaESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldCalculationFormula, (Object)CALCULATION_FORMULA_EDEFAULT, oldCalculationFormulaESet));
        }
    }

    public boolean isSetCalculationFormula() {
        return this.calculationFormulaESet;
    }

    public CalculationLanguage getCalculationLanguage() {
        return this.calculationLanguage;
    }

    public void setCalculationLanguage(CalculationLanguage newCalculationLanguage) {
        CalculationLanguage oldCalculationLanguage = this.calculationLanguage;
        this.calculationLanguage = newCalculationLanguage == null ? CALCULATION_LANGUAGE_EDEFAULT : newCalculationLanguage;
        boolean oldCalculationLanguageESet = this.calculationLanguageESet;
        this.calculationLanguageESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCalculationLanguage, (Object)this.calculationLanguage, !oldCalculationLanguageESet));
        }
    }

    public void unsetCalculationLanguage() {
        CalculationLanguage oldCalculationLanguage = this.calculationLanguage;
        boolean oldCalculationLanguageESet = this.calculationLanguageESet;
        this.calculationLanguage = CALCULATION_LANGUAGE_EDEFAULT;
        this.calculationLanguageESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCalculationLanguage, (Object)CALCULATION_LANGUAGE_EDEFAULT, oldCalculationLanguageESet));
        }
    }

    public boolean isSetCalculationLanguage() {
        return this.calculationLanguageESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCalculationFormula();
            }
            case 5: {
                return this.getCalculationLanguage();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCalculationFormula((String)newValue);
                return;
            }
            case 5: {
                this.setCalculationLanguage((CalculationLanguage)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetCalculationFormula();
                return;
            }
            case 5: {
                this.unsetCalculationLanguage();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetCalculationFormula();
            }
            case 5: {
                return this.isSetCalculationLanguage();
            }
        }
        return super.eIsSet(featureID);
    }

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

