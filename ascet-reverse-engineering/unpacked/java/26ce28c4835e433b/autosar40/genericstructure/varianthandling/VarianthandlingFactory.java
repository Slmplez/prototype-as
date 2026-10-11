/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.varianthandling.BooleanValueVariationPoint;
import autosar40.genericstructure.varianthandling.ConditionByFormula;
import autosar40.genericstructure.varianthandling.EvaluatedVariantSet;
import autosar40.genericstructure.varianthandling.FloatValueVariationPoint;
import autosar40.genericstructure.varianthandling.IntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.PositiveIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.PostBuildVariantCondition;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterion;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValue;
import autosar40.genericstructure.varianthandling.PostBuildVariantCriterionValueSet;
import autosar40.genericstructure.varianthandling.PredefinedVariant;
import autosar40.genericstructure.varianthandling.SwSystemconstValue;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
import autosar40.genericstructure.varianthandling.UnlimitedIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.genericstructure.varianthandling.impl.VarianthandlingFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface VarianthandlingFactory
extends EFactory {
    public static final VarianthandlingFactory eINSTANCE = VarianthandlingFactoryImpl.init();

    public NumericalValueVariationPoint createNumericalValueVariationPoint();

    public PositiveIntegerValueVariationPoint createPositiveIntegerValueVariationPoint();

    public IntegerValueVariationPoint createIntegerValueVariationPoint();

    public ConditionByFormula createConditionByFormula();

    public BooleanValueVariationPoint createBooleanValueVariationPoint();

    public SwSystemconstantValueSet createSwSystemconstantValueSet();

    public SwSystemconstValue createSwSystemconstValue();

    public FloatValueVariationPoint createFloatValueVariationPoint();

    public UnlimitedIntegerValueVariationPoint createUnlimitedIntegerValueVariationPoint();

    public EvaluatedVariantSet createEvaluatedVariantSet();

    public PredefinedVariant createPredefinedVariant();

    public PostBuildVariantCriterionValueSet createPostBuildVariantCriterionValueSet();

    public PostBuildVariantCriterionValue createPostBuildVariantCriterionValue();

    public PostBuildVariantCriterion createPostBuildVariantCriterion();

    public PostBuildVariantCondition createPostBuildVariantCondition();

    public VariationPoint createVariationPoint();

    public VarianthandlingPackage getVarianthandlingPackage();
}

