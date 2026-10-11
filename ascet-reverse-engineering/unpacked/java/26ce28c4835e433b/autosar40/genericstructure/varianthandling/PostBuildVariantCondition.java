/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterion;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface PostBuildVariantCondition
extends ARObject {
    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PostBuildVariantCriterion getMatchingCriterion();

    public void setMatchingCriterion(PostBuildVariantCriterion var1);

    public IntegerValueVariationPoint getValue();

    public void setValue(IntegerValueVariationPoint var1);
}

