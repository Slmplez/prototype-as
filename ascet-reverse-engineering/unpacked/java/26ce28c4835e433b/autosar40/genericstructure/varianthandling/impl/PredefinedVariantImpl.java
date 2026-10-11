/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.EObjectResolvingReferringEList
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValueSet;
import autosar40.genericstructure.varianthandling.PredefinedVariant;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.EObjectResolvingReferringEList;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PredefinedVariantImpl
extends ARElementImpl
implements PredefinedVariant,
IReferringClass {
    protected EList<PredefinedVariant> includedVariants;
    protected EList<PostBuildVariantCriterionValueSet> postBuildVariantCriterionValueSets;
    protected EList<SwSystemconstantValueSet> swSystemconstantValueSets;

    protected PredefinedVariantImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return VarianthandlingPackage.Literals.PREDEFINED_VARIANT;
    }

    @Override
    public EList<PredefinedVariant> getIncludedVariants() {
        if (this.includedVariants == null) {
            this.includedVariants = new EObjectResolvingReferringEList(PredefinedVariant.class, (InternalEObject)this, 21);
        }
        return this.includedVariants;
    }

    @Override
    public EList<PostBuildVariantCriterionValueSet> getPostBuildVariantCriterionValueSets() {
        if (this.postBuildVariantCriterionValueSets == null) {
            this.postBuildVariantCriterionValueSets = new EObjectResolvingReferringEList(PostBuildVariantCriterionValueSet.class, (InternalEObject)this, 22);
        }
        return this.postBuildVariantCriterionValueSets;
    }

    @Override
    public EList<SwSystemconstantValueSet> getSwSystemconstantValueSets() {
        if (this.swSystemconstantValueSets == null) {
            this.swSystemconstantValueSets = new EObjectResolvingReferringEList(SwSystemconstantValueSet.class, (InternalEObject)this, 23);
        }
        return this.swSystemconstantValueSets;
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getIncludedVariants();
            }
            case 22: {
                return this.getPostBuildVariantCriterionValueSets();
            }
            case 23: {
                return this.getSwSystemconstantValueSets();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getIncludedVariants().clear();
                this.getIncludedVariants().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getPostBuildVariantCriterionValueSets().clear();
                this.getPostBuildVariantCriterionValueSets().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.getSwSystemconstantValueSets().clear();
                this.getSwSystemconstantValueSets().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getIncludedVariants().clear();
                return;
            }
            case 22: {
                this.getPostBuildVariantCriterionValueSets().clear();
                return;
            }
            case 23: {
                this.getSwSystemconstantValueSets().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.includedVariants != null && !this.includedVariants.isEmpty();
            }
            case 22: {
                return this.postBuildVariantCriterionValueSets != null && !this.postBuildVariantCriterionValueSets.isEmpty();
            }
            case 23: {
                return this.swSystemconstantValueSets != null && !this.swSystemconstantValueSets.isEmpty();
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
}

