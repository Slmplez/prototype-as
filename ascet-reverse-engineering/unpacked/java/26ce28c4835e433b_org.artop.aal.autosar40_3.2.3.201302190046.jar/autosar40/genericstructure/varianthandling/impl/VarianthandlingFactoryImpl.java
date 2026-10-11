/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.varianthandling.impl;

import autosar40.genericstructure.varianthandling.BindingTimeEnum;
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
import autosar40.genericstructure.varianthandling.VarianthandlingFactory;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.genericstructure.varianthandling.impl.BooleanValueVariationPointImpl;
import autosar40.genericstructure.varianthandling.impl.ConditionByFormulaImpl;
import autosar40.genericstructure.varianthandling.impl.EvaluatedVariantSetImpl;
import autosar40.genericstructure.varianthandling.impl.FloatValueVariationPointImpl;
import autosar40.genericstructure.varianthandling.impl.IntegerValueVariationPointImpl;
import autosar40.genericstructure.varianthandling.impl.NumericalValueVariationPointImpl;
import autosar40.genericstructure.varianthandling.impl.PositiveIntegerValueVariationPointImpl;
import autosar40.genericstructure.varianthandling.impl.PostBuildVariantConditionImpl;
import autosar40.genericstructure.varianthandling.impl.PostBuildVariantCriterionImpl;
import autosar40.genericstructure.varianthandling.impl.PostBuildVariantCriterionValueImpl;
import autosar40.genericstructure.varianthandling.impl.PostBuildVariantCriterionValueSetImpl;
import autosar40.genericstructure.varianthandling.impl.PredefinedVariantImpl;
import autosar40.genericstructure.varianthandling.impl.SwSystemconstValueImpl;
import autosar40.genericstructure.varianthandling.impl.SwSystemconstantValueSetImpl;
import autosar40.genericstructure.varianthandling.impl.UnlimitedIntegerValueVariationPointImpl;
import autosar40.genericstructure.varianthandling.impl.VariationPointImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class VarianthandlingFactoryImpl
extends EFactoryImpl
implements VarianthandlingFactory {
    public static VarianthandlingFactory init() {
        try {
            VarianthandlingFactory theVarianthandlingFactory = (VarianthandlingFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/vh");
            if (theVarianthandlingFactory != null) {
                return theVarianthandlingFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new VarianthandlingFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 3: {
                return this.createNumericalValueVariationPoint();
            }
            case 4: {
                return this.createPositiveIntegerValueVariationPoint();
            }
            case 5: {
                return this.createIntegerValueVariationPoint();
            }
            case 6: {
                return this.createConditionByFormula();
            }
            case 7: {
                return this.createBooleanValueVariationPoint();
            }
            case 8: {
                return this.createSwSystemconstantValueSet();
            }
            case 9: {
                return this.createSwSystemconstValue();
            }
            case 10: {
                return this.createFloatValueVariationPoint();
            }
            case 11: {
                return this.createUnlimitedIntegerValueVariationPoint();
            }
            case 12: {
                return this.createEvaluatedVariantSet();
            }
            case 13: {
                return this.createPredefinedVariant();
            }
            case 14: {
                return this.createPostBuildVariantCriterionValueSet();
            }
            case 15: {
                return this.createPostBuildVariantCriterionValue();
            }
            case 16: {
                return this.createPostBuildVariantCriterion();
            }
            case 17: {
                return this.createPostBuildVariantCondition();
            }
            case 18: {
                return this.createVariationPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 19: {
                return this.createBindingTimeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 19: {
                return this.convertBindingTimeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public NumericalValueVariationPoint createNumericalValueVariationPoint() {
        NumericalValueVariationPointImpl numericalValueVariationPoint = new NumericalValueVariationPointImpl();
        return numericalValueVariationPoint;
    }

    public PositiveIntegerValueVariationPoint createPositiveIntegerValueVariationPoint() {
        PositiveIntegerValueVariationPointImpl positiveIntegerValueVariationPoint = new PositiveIntegerValueVariationPointImpl();
        return positiveIntegerValueVariationPoint;
    }

    public IntegerValueVariationPoint createIntegerValueVariationPoint() {
        IntegerValueVariationPointImpl integerValueVariationPoint = new IntegerValueVariationPointImpl();
        return integerValueVariationPoint;
    }

    public ConditionByFormula createConditionByFormula() {
        ConditionByFormulaImpl conditionByFormula = new ConditionByFormulaImpl();
        return conditionByFormula;
    }

    public BooleanValueVariationPoint createBooleanValueVariationPoint() {
        BooleanValueVariationPointImpl booleanValueVariationPoint = new BooleanValueVariationPointImpl();
        return booleanValueVariationPoint;
    }

    public SwSystemconstantValueSet createSwSystemconstantValueSet() {
        SwSystemconstantValueSetImpl swSystemconstantValueSet = new SwSystemconstantValueSetImpl();
        return swSystemconstantValueSet;
    }

    public SwSystemconstValue createSwSystemconstValue() {
        SwSystemconstValueImpl swSystemconstValue = new SwSystemconstValueImpl();
        return swSystemconstValue;
    }

    public FloatValueVariationPoint createFloatValueVariationPoint() {
        FloatValueVariationPointImpl floatValueVariationPoint = new FloatValueVariationPointImpl();
        return floatValueVariationPoint;
    }

    public UnlimitedIntegerValueVariationPoint createUnlimitedIntegerValueVariationPoint() {
        UnlimitedIntegerValueVariationPointImpl unlimitedIntegerValueVariationPoint = new UnlimitedIntegerValueVariationPointImpl();
        return unlimitedIntegerValueVariationPoint;
    }

    public EvaluatedVariantSet createEvaluatedVariantSet() {
        EvaluatedVariantSetImpl evaluatedVariantSet = new EvaluatedVariantSetImpl();
        return evaluatedVariantSet;
    }

    public PredefinedVariant createPredefinedVariant() {
        PredefinedVariantImpl predefinedVariant = new PredefinedVariantImpl();
        return predefinedVariant;
    }

    public PostBuildVariantCriterionValueSet createPostBuildVariantCriterionValueSet() {
        PostBuildVariantCriterionValueSetImpl postBuildVariantCriterionValueSet = new PostBuildVariantCriterionValueSetImpl();
        return postBuildVariantCriterionValueSet;
    }

    public PostBuildVariantCriterionValue createPostBuildVariantCriterionValue() {
        PostBuildVariantCriterionValueImpl postBuildVariantCriterionValue = new PostBuildVariantCriterionValueImpl();
        return postBuildVariantCriterionValue;
    }

    public PostBuildVariantCriterion createPostBuildVariantCriterion() {
        PostBuildVariantCriterionImpl postBuildVariantCriterion = new PostBuildVariantCriterionImpl();
        return postBuildVariantCriterion;
    }

    public PostBuildVariantCondition createPostBuildVariantCondition() {
        PostBuildVariantConditionImpl postBuildVariantCondition = new PostBuildVariantConditionImpl();
        return postBuildVariantCondition;
    }

    public VariationPoint createVariationPoint() {
        VariationPointImpl variationPoint = new VariationPointImpl();
        return variationPoint;
    }

    public BindingTimeEnum createBindingTimeEnumFromString(EDataType eDataType, String initialValue) {
        BindingTimeEnum result = BindingTimeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertBindingTimeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public VarianthandlingPackage getVarianthandlingPackage() {
        return (VarianthandlingPackage)this.getEPackage();
    }

    @Deprecated
    public static VarianthandlingPackage getPackage() {
        return VarianthandlingPackage.eINSTANCE;
    }
}

