/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint
 *  gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.varianthandling.util;

import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.genericstructure.varianthandling.AbstractNumericalVariationPoint;
import autosar40.genericstructure.varianthandling.AttributeValueVariationPoint;
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
import autosar40.genericstructure.varianthandling.SwSystemconstDependentFormula;
import autosar40.genericstructure.varianthandling.SwSystemconstValue;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
import autosar40.genericstructure.varianthandling.UnlimitedIntegerValueVariationPoint;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.genericstructure.varianthandling.util.VarianthandlingSwitch;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class VarianthandlingAdapterFactory
extends AdapterFactoryImpl {
    protected static VarianthandlingPackage modelPackage;
    protected VarianthandlingSwitch<Adapter> modelSwitch = new VarianthandlingSwitch<Adapter>(){

        @Override
        public Adapter caseAbstractNumericalVariationPoint(AbstractNumericalVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createAbstractNumericalVariationPointAdapter();
        }

        @Override
        public Adapter caseAttributeValueVariationPoint(AttributeValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createAttributeValueVariationPointAdapter();
        }

        @Override
        public Adapter caseSwSystemconstDependentFormula(SwSystemconstDependentFormula object) {
            return VarianthandlingAdapterFactory.this.createSwSystemconstDependentFormulaAdapter();
        }

        @Override
        public Adapter caseNumericalValueVariationPoint(NumericalValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createNumericalValueVariationPointAdapter();
        }

        @Override
        public Adapter casePositiveIntegerValueVariationPoint(PositiveIntegerValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createPositiveIntegerValueVariationPointAdapter();
        }

        @Override
        public Adapter caseIntegerValueVariationPoint(IntegerValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createIntegerValueVariationPointAdapter();
        }

        @Override
        public Adapter caseConditionByFormula(ConditionByFormula object) {
            return VarianthandlingAdapterFactory.this.createConditionByFormulaAdapter();
        }

        @Override
        public Adapter caseBooleanValueVariationPoint(BooleanValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createBooleanValueVariationPointAdapter();
        }

        @Override
        public Adapter caseSwSystemconstantValueSet(SwSystemconstantValueSet object) {
            return VarianthandlingAdapterFactory.this.createSwSystemconstantValueSetAdapter();
        }

        @Override
        public Adapter caseSwSystemconstValue(SwSystemconstValue object) {
            return VarianthandlingAdapterFactory.this.createSwSystemconstValueAdapter();
        }

        @Override
        public Adapter caseFloatValueVariationPoint(FloatValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createFloatValueVariationPointAdapter();
        }

        @Override
        public Adapter caseUnlimitedIntegerValueVariationPoint(UnlimitedIntegerValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createUnlimitedIntegerValueVariationPointAdapter();
        }

        @Override
        public Adapter caseEvaluatedVariantSet(EvaluatedVariantSet object) {
            return VarianthandlingAdapterFactory.this.createEvaluatedVariantSetAdapter();
        }

        @Override
        public Adapter casePredefinedVariant(PredefinedVariant object) {
            return VarianthandlingAdapterFactory.this.createPredefinedVariantAdapter();
        }

        @Override
        public Adapter casePostBuildVariantCriterionValueSet(PostBuildVariantCriterionValueSet object) {
            return VarianthandlingAdapterFactory.this.createPostBuildVariantCriterionValueSetAdapter();
        }

        @Override
        public Adapter casePostBuildVariantCriterionValue(PostBuildVariantCriterionValue object) {
            return VarianthandlingAdapterFactory.this.createPostBuildVariantCriterionValueAdapter();
        }

        @Override
        public Adapter casePostBuildVariantCriterion(PostBuildVariantCriterion object) {
            return VarianthandlingAdapterFactory.this.createPostBuildVariantCriterionAdapter();
        }

        @Override
        public Adapter casePostBuildVariantCondition(PostBuildVariantCondition object) {
            return VarianthandlingAdapterFactory.this.createPostBuildVariantConditionAdapter();
        }

        @Override
        public Adapter caseVariationPoint(VariationPoint object) {
            return VarianthandlingAdapterFactory.this.createVariationPointAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return VarianthandlingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return VarianthandlingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGFormulaExpression(GFormulaExpression object) {
            return VarianthandlingAdapterFactory.this.createGFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseFormulaExpression(FormulaExpression object) {
            return VarianthandlingAdapterFactory.this.createFormulaExpressionAdapter();
        }

        @Override
        public Adapter caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula object) {
            return VarianthandlingAdapterFactory.this.createGSwSystemconstDependentFormulaAdapter();
        }

        @Override
        public Adapter caseGAttributeValueVariationPoint(GAttributeValueVariationPoint object) {
            return VarianthandlingAdapterFactory.this.createGAttributeValueVariationPointAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return VarianthandlingAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return VarianthandlingAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return VarianthandlingAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return VarianthandlingAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return VarianthandlingAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return VarianthandlingAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return VarianthandlingAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return VarianthandlingAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return VarianthandlingAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return VarianthandlingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public VarianthandlingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = VarianthandlingPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createAbstractNumericalVariationPointAdapter() {
        return null;
    }

    public Adapter createAttributeValueVariationPointAdapter() {
        return null;
    }

    public Adapter createSwSystemconstDependentFormulaAdapter() {
        return null;
    }

    public Adapter createNumericalValueVariationPointAdapter() {
        return null;
    }

    public Adapter createPositiveIntegerValueVariationPointAdapter() {
        return null;
    }

    public Adapter createIntegerValueVariationPointAdapter() {
        return null;
    }

    public Adapter createConditionByFormulaAdapter() {
        return null;
    }

    public Adapter createBooleanValueVariationPointAdapter() {
        return null;
    }

    public Adapter createSwSystemconstantValueSetAdapter() {
        return null;
    }

    public Adapter createSwSystemconstValueAdapter() {
        return null;
    }

    public Adapter createFloatValueVariationPointAdapter() {
        return null;
    }

    public Adapter createUnlimitedIntegerValueVariationPointAdapter() {
        return null;
    }

    public Adapter createEvaluatedVariantSetAdapter() {
        return null;
    }

    public Adapter createPredefinedVariantAdapter() {
        return null;
    }

    public Adapter createPostBuildVariantCriterionValueSetAdapter() {
        return null;
    }

    public Adapter createPostBuildVariantCriterionValueAdapter() {
        return null;
    }

    public Adapter createPostBuildVariantCriterionAdapter() {
        return null;
    }

    public Adapter createPostBuildVariantConditionAdapter() {
        return null;
    }

    public Adapter createVariationPointAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createFormulaExpressionAdapter() {
        return null;
    }

    public Adapter createGSwSystemconstDependentFormulaAdapter() {
        return null;
    }

    public Adapter createGAttributeValueVariationPointAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createCollectableElementAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

