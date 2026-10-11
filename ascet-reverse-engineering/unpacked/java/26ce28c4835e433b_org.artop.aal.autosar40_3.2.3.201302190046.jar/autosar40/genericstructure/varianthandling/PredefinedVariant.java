/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValueSet;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PredefinedVariant
extends ARElement {
    public EList<PredefinedVariant> getIncludedVariants();

    public EList<PostBuildVariantCriterionValueSet> getPostBuildVariantCriterionValueSets();

    public EList<SwSystemconstantValueSet> getSwSystemconstantValueSets();
}

