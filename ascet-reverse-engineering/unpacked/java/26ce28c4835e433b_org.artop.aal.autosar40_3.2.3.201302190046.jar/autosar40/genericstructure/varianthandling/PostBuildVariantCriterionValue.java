/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterion;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValueSet;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PostBuildVariantCriterionValue
extends ARObject {
    public PostBuildVariantCriterionValueSet getPostBuildVariantCriterionValueSet();

    public void setPostBuildVariantCriterionValueSet(PostBuildVariantCriterionValueSet var1);

    public PostBuildVariantCriterion getVariantCriterion();

    public void setVariantCriterion(PostBuildVariantCriterion var1);

    public IntegerValueVariationPoint getValue();

    public void setValue(IntegerValueVariationPoint var1);

    public EList<Annotation> getAnnotations();
}

