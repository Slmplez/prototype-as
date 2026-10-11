/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 */
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucParameterDerivationFormula;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.formulalanguage.impl.FormulaExpressionImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.FeatureMap;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucParameterDerivationFormulaImpl
extends FormulaExpressionImpl
implements EcucParameterDerivationFormula {
    protected EcucParameterDerivationFormulaImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcucparameterdefPackage.Literals.ECUC_PARAMETER_DERIVATION_FORMULA;
    }

    @Override
    public EcucDerivationSpecification getEcucDerivationSpecification() {
        return (EcucDerivationSpecification)this.getMixed().get((EStructuralFeature)EcucparameterdefPackage.Literals.ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_DERIVATION_SPECIFICATION, true);
    }

    @Override
    public void setEcucDerivationSpecification(EcucDerivationSpecification newEcucDerivationSpecification) {
        ((FeatureMap.Internal)this.getMixed()).set((EStructuralFeature)EcucparameterdefPackage.Literals.ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_DERIVATION_SPECIFICATION, (Object)newEcucDerivationSpecification);
    }

    @Override
    public EList<EcucQuery> getEcucQueries() {
        return this.getMixed().list((EStructuralFeature)EcucparameterdefPackage.Literals.ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_QUERIES);
    }

    @Override
    public EList<EcucQuery> getEcucQueryStrings() {
        return this.getMixed().list((EStructuralFeature)EcucparameterdefPackage.Literals.ECUC_PARAMETER_DERIVATION_FORMULA__ECUC_QUERY_STRINGS);
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.eBasicSetContainer(otherEnd, 5, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return this.eBasicSetContainer(null, 5, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 5: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, EcucDerivationSpecification.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getEcucDerivationSpecification();
            }
            case 6: {
                return this.getEcucQueries();
            }
            case 7: {
                return this.getEcucQueryStrings();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setEcucDerivationSpecification((EcucDerivationSpecification)newValue);
                return;
            }
            case 6: {
                this.getEcucQueries().clear();
                this.getEcucQueries().addAll((Collection)newValue);
                return;
            }
            case 7: {
                this.getEcucQueryStrings().clear();
                this.getEcucQueryStrings().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setEcucDerivationSpecification(null);
                return;
            }
            case 6: {
                this.getEcucQueries().clear();
                return;
            }
            case 7: {
                this.getEcucQueryStrings().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.getEcucDerivationSpecification() != null;
            }
            case 6: {
                return !this.getEcucQueries().isEmpty();
            }
            case 7: {
                return !this.getEcucQueryStrings().isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

