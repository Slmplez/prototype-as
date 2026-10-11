/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.commonstructure.systemconstant.SwSystemconst;
import autosar40.genericstructure.formulalanguage.impl.FormulaExpressionImpl;
import autosar40.genericstructure.varianthandling.SwSystemconstDependentFormula;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import java.util.Collection;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class SwSystemconstDependentFormulaImpl
extends FormulaExpressionImpl
implements SwSystemconstDependentFormula {
    protected SwSystemconstDependentFormulaImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.SW_SYSTEMCONST_DEPENDENT_FORMULA;
    }

    @Override
    public EList<SwSystemconst> getSyscStrings() {
        return this.getMixed().list((EStructuralFeature)VarianthandlingPackage.Literals.SW_SYSTEMCONST_DEPENDENT_FORMULA__SYSC_STRINGS);
    }

    @Override
    public EList<SwSystemconst> getSyscs() {
        return this.getMixed().list((EStructuralFeature)VarianthandlingPackage.Literals.SW_SYSTEMCONST_DEPENDENT_FORMULA__SYSCS);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getSyscStrings();
            }
            case 6: {
                return this.getSyscs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.getSyscStrings().clear();
                this.getSyscStrings().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getSyscs().clear();
                this.getSyscs().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.getSyscStrings().clear();
                return;
            }
            case 6: {
                this.getSyscs().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return !this.getSyscStrings().isEmpty();
            }
            case 6: {
                return !this.getSyscs().isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

