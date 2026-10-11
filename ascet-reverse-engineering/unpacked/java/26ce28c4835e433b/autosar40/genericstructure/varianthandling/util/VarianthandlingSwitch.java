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
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
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
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VarianthandlingSwitch<T> {
    protected static VarianthandlingPackage modelPackage;

    public VarianthandlingSwitch() {
        if (modelPackage == null) {
            modelPackage = VarianthandlingPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                AbstractNumericalVariationPoint abstractNumericalVariationPoint = (AbstractNumericalVariationPoint)theEObject;
                T result = this.caseAbstractNumericalVariationPoint(abstractNumericalVariationPoint);
                if (result == null) {
                    result = this.caseAttributeValueVariationPoint(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(abstractNumericalVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                AttributeValueVariationPoint attributeValueVariationPoint = (AttributeValueVariationPoint)theEObject;
                T result = this.caseAttributeValueVariationPoint(attributeValueVariationPoint);
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(attributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(attributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(attributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(attributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(attributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(attributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(attributeValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                SwSystemconstDependentFormula swSystemconstDependentFormula = (SwSystemconstDependentFormula)theEObject;
                T result = this.caseSwSystemconstDependentFormula(swSystemconstDependentFormula);
                if (result == null) {
                    result = this.caseFormulaExpression(swSystemconstDependentFormula);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(swSystemconstDependentFormula);
                }
                if (result == null) {
                    result = this.caseARObject(swSystemconstDependentFormula);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(swSystemconstDependentFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(swSystemconstDependentFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                NumericalValueVariationPoint numericalValueVariationPoint = (NumericalValueVariationPoint)theEObject;
                T result = this.caseNumericalValueVariationPoint(numericalValueVariationPoint);
                if (result == null) {
                    result = this.caseAbstractNumericalVariationPoint(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseAttributeValueVariationPoint(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(numericalValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                PositiveIntegerValueVariationPoint positiveIntegerValueVariationPoint = (PositiveIntegerValueVariationPoint)theEObject;
                T result = this.casePositiveIntegerValueVariationPoint(positiveIntegerValueVariationPoint);
                if (result == null) {
                    result = this.caseAttributeValueVariationPoint(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(positiveIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                IntegerValueVariationPoint integerValueVariationPoint = (IntegerValueVariationPoint)theEObject;
                T result = this.caseIntegerValueVariationPoint(integerValueVariationPoint);
                if (result == null) {
                    result = this.caseAttributeValueVariationPoint(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(integerValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                ConditionByFormula conditionByFormula = (ConditionByFormula)theEObject;
                T result = this.caseConditionByFormula(conditionByFormula);
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(conditionByFormula);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(conditionByFormula);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(conditionByFormula);
                }
                if (result == null) {
                    result = this.caseARObject(conditionByFormula);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(conditionByFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(conditionByFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                BooleanValueVariationPoint booleanValueVariationPoint = (BooleanValueVariationPoint)theEObject;
                T result = this.caseBooleanValueVariationPoint(booleanValueVariationPoint);
                if (result == null) {
                    result = this.caseAttributeValueVariationPoint(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(booleanValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                SwSystemconstantValueSet swSystemconstantValueSet = (SwSystemconstantValueSet)theEObject;
                T result = this.caseSwSystemconstantValueSet(swSystemconstantValueSet);
                if (result == null) {
                    result = this.caseARElement(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseReferrable(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseARObject(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.caseGARObject(swSystemconstantValueSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                SwSystemconstValue swSystemconstValue = (SwSystemconstValue)theEObject;
                T result = this.caseSwSystemconstValue(swSystemconstValue);
                if (result == null) {
                    result = this.caseARObject(swSystemconstValue);
                }
                if (result == null) {
                    result = this.caseGARObject(swSystemconstValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                FloatValueVariationPoint floatValueVariationPoint = (FloatValueVariationPoint)theEObject;
                T result = this.caseFloatValueVariationPoint(floatValueVariationPoint);
                if (result == null) {
                    result = this.caseAttributeValueVariationPoint(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(floatValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                UnlimitedIntegerValueVariationPoint unlimitedIntegerValueVariationPoint = (UnlimitedIntegerValueVariationPoint)theEObject;
                T result = this.caseUnlimitedIntegerValueVariationPoint(unlimitedIntegerValueVariationPoint);
                if (result == null) {
                    result = this.caseAttributeValueVariationPoint(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseSwSystemconstDependentFormula(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGAttributeValueVariationPoint(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseFormulaExpression(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGSwSystemconstDependentFormula(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseARObject(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(unlimitedIntegerValueVariationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                EvaluatedVariantSet evaluatedVariantSet = (EvaluatedVariantSet)theEObject;
                T result = this.caseEvaluatedVariantSet(evaluatedVariantSet);
                if (result == null) {
                    result = this.caseARElement(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseReferrable(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseARObject(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.caseGARObject(evaluatedVariantSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                PredefinedVariant predefinedVariant = (PredefinedVariant)theEObject;
                T result = this.casePredefinedVariant(predefinedVariant);
                if (result == null) {
                    result = this.caseARElement(predefinedVariant);
                }
                if (result == null) {
                    result = this.casePackageableElement(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseCollectableElement(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseIdentifiable(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseReferrable(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseARObject(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseGReferrable(predefinedVariant);
                }
                if (result == null) {
                    result = this.caseGARObject(predefinedVariant);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                PostBuildVariantCriterionValueSet postBuildVariantCriterionValueSet = (PostBuildVariantCriterionValueSet)theEObject;
                T result = this.casePostBuildVariantCriterionValueSet(postBuildVariantCriterionValueSet);
                if (result == null) {
                    result = this.caseARElement(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.casePackageableElement(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseCollectableElement(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseIdentifiable(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseReferrable(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseARObject(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseGReferrable(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.caseGARObject(postBuildVariantCriterionValueSet);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                PostBuildVariantCriterionValue postBuildVariantCriterionValue = (PostBuildVariantCriterionValue)theEObject;
                T result = this.casePostBuildVariantCriterionValue(postBuildVariantCriterionValue);
                if (result == null) {
                    result = this.caseARObject(postBuildVariantCriterionValue);
                }
                if (result == null) {
                    result = this.caseGARObject(postBuildVariantCriterionValue);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                PostBuildVariantCriterion postBuildVariantCriterion = (PostBuildVariantCriterion)theEObject;
                T result = this.casePostBuildVariantCriterion(postBuildVariantCriterion);
                if (result == null) {
                    result = this.caseARElement(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.casePackageableElement(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseCollectableElement(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseIdentifiable(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseReferrable(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseARObject(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseGReferrable(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.caseGARObject(postBuildVariantCriterion);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                PostBuildVariantCondition postBuildVariantCondition = (PostBuildVariantCondition)theEObject;
                T result = this.casePostBuildVariantCondition(postBuildVariantCondition);
                if (result == null) {
                    result = this.caseARObject(postBuildVariantCondition);
                }
                if (result == null) {
                    result = this.caseGARObject(postBuildVariantCondition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                VariationPoint variationPoint = (VariationPoint)theEObject;
                T result = this.caseVariationPoint(variationPoint);
                if (result == null) {
                    result = this.caseARObject(variationPoint);
                }
                if (result == null) {
                    result = this.caseGARObject(variationPoint);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseAbstractNumericalVariationPoint(AbstractNumericalVariationPoint object) {
        return null;
    }

    public T caseAttributeValueVariationPoint(AttributeValueVariationPoint object) {
        return null;
    }

    public T caseSwSystemconstDependentFormula(SwSystemconstDependentFormula object) {
        return null;
    }

    public T caseNumericalValueVariationPoint(NumericalValueVariationPoint object) {
        return null;
    }

    public T casePositiveIntegerValueVariationPoint(PositiveIntegerValueVariationPoint object) {
        return null;
    }

    public T caseIntegerValueVariationPoint(IntegerValueVariationPoint object) {
        return null;
    }

    public T caseConditionByFormula(ConditionByFormula object) {
        return null;
    }

    public T caseBooleanValueVariationPoint(BooleanValueVariationPoint object) {
        return null;
    }

    public T caseSwSystemconstantValueSet(SwSystemconstantValueSet object) {
        return null;
    }

    public T caseSwSystemconstValue(SwSystemconstValue object) {
        return null;
    }

    public T caseFloatValueVariationPoint(FloatValueVariationPoint object) {
        return null;
    }

    public T caseUnlimitedIntegerValueVariationPoint(UnlimitedIntegerValueVariationPoint object) {
        return null;
    }

    public T caseEvaluatedVariantSet(EvaluatedVariantSet object) {
        return null;
    }

    public T casePredefinedVariant(PredefinedVariant object) {
        return null;
    }

    public T casePostBuildVariantCriterionValueSet(PostBuildVariantCriterionValueSet object) {
        return null;
    }

    public T casePostBuildVariantCriterionValue(PostBuildVariantCriterionValue object) {
        return null;
    }

    public T casePostBuildVariantCriterion(PostBuildVariantCriterion object) {
        return null;
    }

    public T casePostBuildVariantCondition(PostBuildVariantCondition object) {
        return null;
    }

    public T caseVariationPoint(VariationPoint object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGFormulaExpression(GFormulaExpression object) {
        return null;
    }

    public T caseFormulaExpression(FormulaExpression object) {
        return null;
    }

    public T caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula object) {
        return null;
    }

    public T caseGAttributeValueVariationPoint(GAttributeValueVariationPoint object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseCollectableElement(CollectableElement object) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement object) {
        return null;
    }

    public T casePackageableElement(PackageableElement object) {
        return null;
    }

    public T caseARElement(ARElement object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

