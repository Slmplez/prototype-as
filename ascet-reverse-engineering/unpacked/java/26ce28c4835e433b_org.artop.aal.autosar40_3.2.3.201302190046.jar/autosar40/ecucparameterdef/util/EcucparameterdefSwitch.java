/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gecucparameterdef.GAbstractStringParamDef
 *  gautosar.gecucparameterdef.GBooleanParamDef
 *  gautosar.gecucparameterdef.GChoiceContainerDef
 *  gautosar.gecucparameterdef.GChoiceReferenceDef
 *  gautosar.gecucparameterdef.GCommonConfigurationAttributes
 *  gautosar.gecucparameterdef.GConfigParameter
 *  gautosar.gecucparameterdef.GConfigReference
 *  gautosar.gecucparameterdef.GContainerDef
 *  gautosar.gecucparameterdef.GEnumerationLiteralDef
 *  gautosar.gecucparameterdef.GEnumerationParamDef
 *  gautosar.gecucparameterdef.GFloatParamDef
 *  gautosar.gecucparameterdef.GForeignReferenceDef
 *  gautosar.gecucparameterdef.GFunctionNameDef
 *  gautosar.gecucparameterdef.GInstanceReferenceDef
 *  gautosar.gecucparameterdef.GIntegerParamDef
 *  gautosar.gecucparameterdef.GLinkerSymbolDef
 *  gautosar.gecucparameterdef.GModuleDef
 *  gautosar.gecucparameterdef.GParamConfContainerDef
 *  gautosar.gecucparameterdef.GParamConfMultiplicity
 *  gautosar.gecucparameterdef.GReferenceDef
 *  gautosar.gecucparameterdef.GStringParamDef
 *  gautosar.gecucparameterdef.GSymbolicNameReferenceDef
 *  gautosar.ggenericstructure.gformulalanguage.GFormulaExpression
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.ecucparameterdef.util;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucAbstractStringParamDef;
import autosar40.ecucparameterdef.EcucAbstractStringParamDefContent;
import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucChoiceReferenceDef;
import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucConditionFormula;
import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucConfigurationClassAffection;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucDefinitionCollection;
import autosar40.ecucparameterdef.EcucDefinitionElement;
import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucEnumerationLiteralDef;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;
import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucForeignReferenceDef;
import autosar40.ecucparameterdef.EcucFunctionNameDef;
import autosar40.ecucparameterdef.EcucFunctionNameDefConditional;
import autosar40.ecucparameterdef.EcucFunctionNameDefContent;
import autosar40.ecucparameterdef.EcucImplementationConfigurationClass;
import autosar40.ecucparameterdef.EcucInstanceReferenceDef;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDefConditional;
import autosar40.ecucparameterdef.EcucLinkerSymbolDefContent;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDefConditional;
import autosar40.ecucparameterdef.EcucMultilineStringParamDefContent;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucParameterDerivationFormula;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucQueryExpression;
import autosar40.ecucparameterdef.EcucReferenceDef;
import autosar40.ecucparameterdef.EcucStringParamDef;
import autosar40.ecucparameterdef.EcucStringParamDefConditional;
import autosar40.ecucparameterdef.EcucStringParamDefContent;
import autosar40.ecucparameterdef.EcucSymbolicNameReferenceDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.genericstructure.formulalanguage.FormulaExpression;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import gautosar.gecucparameterdef.GAbstractStringParamDef;
import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GForeignReferenceDef;
import gautosar.gecucparameterdef.GFunctionNameDef;
import gautosar.gecucparameterdef.GInstanceReferenceDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GLinkerSymbolDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.gecucparameterdef.GReferenceDef;
import gautosar.gecucparameterdef.GStringParamDef;
import gautosar.gecucparameterdef.GSymbolicNameReferenceDef;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EcucparameterdefSwitch<T> {
    protected static EcucparameterdefPackage modelPackage;

    public EcucparameterdefSwitch() {
        if (modelPackage == null) {
            modelPackage = EcucparameterdefPackage.eINSTANCE;
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
                EcucAbstractStringParamDef ecucAbstractStringParamDef = (EcucAbstractStringParamDef)theEObject;
                T result = this.caseEcucAbstractStringParamDef(ecucAbstractStringParamDef);
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucAbstractStringParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                EcucParameterDef ecucParameterDef = (EcucParameterDef)theEObject;
                T result = this.caseEcucParameterDef(ecucParameterDef);
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucParameterDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucParameterDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                EcucCommonAttributes ecucCommonAttributes = (EcucCommonAttributes)theEObject;
                T result = this.caseEcucCommonAttributes(ecucCommonAttributes);
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseARObject(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucCommonAttributes);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                EcucDefinitionElement ecucDefinitionElement = (EcucDefinitionElement)theEObject;
                T result = this.caseEcucDefinitionElement(ecucDefinitionElement);
                if (result == null) {
                    result = this.caseIdentifiable(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.caseARObject(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucDefinitionElement);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                EcucConditionSpecification ecucConditionSpecification = (EcucConditionSpecification)theEObject;
                T result = this.caseEcucConditionSpecification(ecucConditionSpecification);
                if (result == null) {
                    result = this.caseARObject(ecucConditionSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucConditionSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                EcucQuery ecucQuery = (EcucQuery)theEObject;
                T result = this.caseEcucQuery(ecucQuery);
                if (result == null) {
                    result = this.caseIdentifiable(ecucQuery);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucQuery);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucQuery);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucQuery);
                }
                if (result == null) {
                    result = this.caseARObject(ecucQuery);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucQuery);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucQuery);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                EcucQueryExpression ecucQueryExpression = (EcucQueryExpression)theEObject;
                T result = this.caseEcucQueryExpression(ecucQueryExpression);
                if (result == null) {
                    result = this.caseARObject(ecucQueryExpression);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucQueryExpression);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                EcucConditionFormula ecucConditionFormula = (EcucConditionFormula)theEObject;
                T result = this.caseEcucConditionFormula(ecucConditionFormula);
                if (result == null) {
                    result = this.caseFormulaExpression(ecucConditionFormula);
                }
                if (result == null) {
                    result = this.caseARObject(ecucConditionFormula);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(ecucConditionFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucConditionFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                EcucImplementationConfigurationClass ecucImplementationConfigurationClass = (EcucImplementationConfigurationClass)theEObject;
                T result = this.caseEcucImplementationConfigurationClass(ecucImplementationConfigurationClass);
                if (result == null) {
                    result = this.caseARObject(ecucImplementationConfigurationClass);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucImplementationConfigurationClass);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                EcucConfigurationClassAffection ecucConfigurationClassAffection = (EcucConfigurationClassAffection)theEObject;
                T result = this.caseEcucConfigurationClassAffection(ecucConfigurationClassAffection);
                if (result == null) {
                    result = this.caseARObject(ecucConfigurationClassAffection);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucConfigurationClassAffection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                EcucDerivationSpecification ecucDerivationSpecification = (EcucDerivationSpecification)theEObject;
                T result = this.caseEcucDerivationSpecification(ecucDerivationSpecification);
                if (result == null) {
                    result = this.caseARObject(ecucDerivationSpecification);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucDerivationSpecification);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                EcucParameterDerivationFormula ecucParameterDerivationFormula = (EcucParameterDerivationFormula)theEObject;
                T result = this.caseEcucParameterDerivationFormula(ecucParameterDerivationFormula);
                if (result == null) {
                    result = this.caseFormulaExpression(ecucParameterDerivationFormula);
                }
                if (result == null) {
                    result = this.caseARObject(ecucParameterDerivationFormula);
                }
                if (result == null) {
                    result = this.caseGFormulaExpression(ecucParameterDerivationFormula);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucParameterDerivationFormula);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                EcucAddInfoParamDef ecucAddInfoParamDef = (EcucAddInfoParamDef)theEObject;
                T result = this.caseEcucAddInfoParamDef(ecucAddInfoParamDef);
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucAddInfoParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                EcucBooleanParamDef ecucBooleanParamDef = (EcucBooleanParamDef)theEObject;
                T result = this.caseEcucBooleanParamDef(ecucBooleanParamDef);
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGBooleanParamDef(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucBooleanParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                EcucChoiceContainerDef ecucChoiceContainerDef = (EcucChoiceContainerDef)theEObject;
                T result = this.caseEcucChoiceContainerDef(ecucChoiceContainerDef);
                if (result == null) {
                    result = this.caseEcucContainerDef(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGChoiceContainerDef(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGContainerDef(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucChoiceContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                EcucContainerDef ecucContainerDef = (EcucContainerDef)theEObject;
                T result = this.caseEcucContainerDef(ecucContainerDef);
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseGContainerDef(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                EcucParamConfContainerDef ecucParamConfContainerDef = (EcucParamConfContainerDef)theEObject;
                T result = this.caseEcucParamConfContainerDef(ecucParamConfContainerDef);
                if (result == null) {
                    result = this.caseEcucContainerDef(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfContainerDef(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGContainerDef(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucParamConfContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                EcucChoiceReferenceDef ecucChoiceReferenceDef = (EcucChoiceReferenceDef)theEObject;
                T result = this.caseEcucChoiceReferenceDef(ecucChoiceReferenceDef);
                if (result == null) {
                    result = this.caseEcucAbstractReferenceDef(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGChoiceReferenceDef(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucChoiceReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                EcucDefinitionCollection ecucDefinitionCollection = (EcucDefinitionCollection)theEObject;
                T result = this.caseEcucDefinitionCollection(ecucDefinitionCollection);
                if (result == null) {
                    result = this.caseARElement(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseARObject(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucDefinitionCollection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                EcucModuleDef ecucModuleDef = (EcucModuleDef)theEObject;
                T result = this.caseEcucModuleDef(ecucModuleDef);
                if (result == null) {
                    result = this.caseARElement(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseAtpBlueprint(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseAtpBlueprintable(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseGModuleDef(ecucModuleDef);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseCollectableElement(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucModuleDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucModuleDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                EcucEnumerationLiteralDef ecucEnumerationLiteralDef = (EcucEnumerationLiteralDef)theEObject;
                T result = this.caseEcucEnumerationLiteralDef(ecucEnumerationLiteralDef);
                if (result == null) {
                    result = this.caseIdentifiable(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGEnumerationLiteralDef(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucEnumerationLiteralDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                EcucEnumerationParamDef ecucEnumerationParamDef = (EcucEnumerationParamDef)theEObject;
                T result = this.caseEcucEnumerationParamDef(ecucEnumerationParamDef);
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGEnumerationParamDef(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucEnumerationParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                EcucFloatParamDef ecucFloatParamDef = (EcucFloatParamDef)theEObject;
                T result = this.caseEcucFloatParamDef(ecucFloatParamDef);
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGFloatParamDef(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucFloatParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                EcucForeignReferenceDef ecucForeignReferenceDef = (EcucForeignReferenceDef)theEObject;
                T result = this.caseEcucForeignReferenceDef(ecucForeignReferenceDef);
                if (result == null) {
                    result = this.caseEcucAbstractReferenceDef(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGForeignReferenceDef(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucForeignReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                EcucFunctionNameDef ecucFunctionNameDef = (EcucFunctionNameDef)theEObject;
                T result = this.caseEcucFunctionNameDef(ecucFunctionNameDef);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDef(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGFunctionNameDef(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucFunctionNameDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                EcucFunctionNameDefConditional ecucFunctionNameDefConditional = (EcucFunctionNameDefConditional)theEObject;
                T result = this.caseEcucFunctionNameDefConditional(ecucFunctionNameDefConditional);
                if (result == null) {
                    result = this.caseEcucFunctionNameDefContent(ecucFunctionNameDefConditional);
                }
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucFunctionNameDefConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ecucFunctionNameDefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucFunctionNameDefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                EcucFunctionNameDefContent ecucFunctionNameDefContent = (EcucFunctionNameDefContent)theEObject;
                T result = this.caseEcucFunctionNameDefContent(ecucFunctionNameDefContent);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucFunctionNameDefContent);
                }
                if (result == null) {
                    result = this.caseARObject(ecucFunctionNameDefContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucFunctionNameDefContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                EcucAbstractStringParamDefContent ecucAbstractStringParamDefContent = (EcucAbstractStringParamDefContent)theEObject;
                T result = this.caseEcucAbstractStringParamDefContent(ecucAbstractStringParamDefContent);
                if (result == null) {
                    result = this.caseARObject(ecucAbstractStringParamDefContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucAbstractStringParamDefContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                EcucInstanceReferenceDef ecucInstanceReferenceDef = (EcucInstanceReferenceDef)theEObject;
                T result = this.caseEcucInstanceReferenceDef(ecucInstanceReferenceDef);
                if (result == null) {
                    result = this.caseEcucAbstractReferenceDef(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGInstanceReferenceDef(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucInstanceReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                EcucIntegerParamDef ecucIntegerParamDef = (EcucIntegerParamDef)theEObject;
                T result = this.caseEcucIntegerParamDef(ecucIntegerParamDef);
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGIntegerParamDef(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucIntegerParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 30: {
                EcucLinkerSymbolDef ecucLinkerSymbolDef = (EcucLinkerSymbolDef)theEObject;
                T result = this.caseEcucLinkerSymbolDef(ecucLinkerSymbolDef);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDef(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGLinkerSymbolDef(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucLinkerSymbolDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 31: {
                EcucLinkerSymbolDefConditional ecucLinkerSymbolDefConditional = (EcucLinkerSymbolDefConditional)theEObject;
                T result = this.caseEcucLinkerSymbolDefConditional(ecucLinkerSymbolDefConditional);
                if (result == null) {
                    result = this.caseEcucLinkerSymbolDefContent(ecucLinkerSymbolDefConditional);
                }
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucLinkerSymbolDefConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ecucLinkerSymbolDefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucLinkerSymbolDefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 32: {
                EcucLinkerSymbolDefContent ecucLinkerSymbolDefContent = (EcucLinkerSymbolDefContent)theEObject;
                T result = this.caseEcucLinkerSymbolDefContent(ecucLinkerSymbolDefContent);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucLinkerSymbolDefContent);
                }
                if (result == null) {
                    result = this.caseARObject(ecucLinkerSymbolDefContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucLinkerSymbolDefContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 33: {
                EcucMultilineStringParamDef ecucMultilineStringParamDef = (EcucMultilineStringParamDef)theEObject;
                T result = this.caseEcucMultilineStringParamDef(ecucMultilineStringParamDef);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDef(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucMultilineStringParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 34: {
                EcucMultilineStringParamDefConditional ecucMultilineStringParamDefConditional = (EcucMultilineStringParamDefConditional)theEObject;
                T result = this.caseEcucMultilineStringParamDefConditional(ecucMultilineStringParamDefConditional);
                if (result == null) {
                    result = this.caseEcucMultilineStringParamDefContent(ecucMultilineStringParamDefConditional);
                }
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucMultilineStringParamDefConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ecucMultilineStringParamDefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucMultilineStringParamDefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 35: {
                EcucMultilineStringParamDefContent ecucMultilineStringParamDefContent = (EcucMultilineStringParamDefContent)theEObject;
                T result = this.caseEcucMultilineStringParamDefContent(ecucMultilineStringParamDefContent);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucMultilineStringParamDefContent);
                }
                if (result == null) {
                    result = this.caseARObject(ecucMultilineStringParamDefContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucMultilineStringParamDefContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 36: {
                EcucReferenceDef ecucReferenceDef = (EcucReferenceDef)theEObject;
                T result = this.caseEcucReferenceDef(ecucReferenceDef);
                if (result == null) {
                    result = this.caseEcucAbstractReferenceDef(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferenceDef(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 37: {
                EcucStringParamDef ecucStringParamDef = (EcucStringParamDef)theEObject;
                T result = this.caseEcucStringParamDef(ecucStringParamDef);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDef(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGStringParamDef(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucParameterDef(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucStringParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 38: {
                EcucStringParamDefConditional ecucStringParamDefConditional = (EcucStringParamDefConditional)theEObject;
                T result = this.caseEcucStringParamDefConditional(ecucStringParamDefConditional);
                if (result == null) {
                    result = this.caseEcucStringParamDefContent(ecucStringParamDefConditional);
                }
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucStringParamDefConditional);
                }
                if (result == null) {
                    result = this.caseARObject(ecucStringParamDefConditional);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucStringParamDefConditional);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 39: {
                EcucStringParamDefContent ecucStringParamDefContent = (EcucStringParamDefContent)theEObject;
                T result = this.caseEcucStringParamDefContent(ecucStringParamDefContent);
                if (result == null) {
                    result = this.caseEcucAbstractStringParamDefContent(ecucStringParamDefContent);
                }
                if (result == null) {
                    result = this.caseARObject(ecucStringParamDefContent);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucStringParamDefContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 40: {
                EcucSymbolicNameReferenceDef ecucSymbolicNameReferenceDef = (EcucSymbolicNameReferenceDef)theEObject;
                T result = this.caseEcucSymbolicNameReferenceDef(ecucSymbolicNameReferenceDef);
                if (result == null) {
                    result = this.caseEcucAbstractReferenceDef(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGSymbolicNameReferenceDef(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferenceDef((GReferenceDef)ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucSymbolicNameReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 41: {
                EcucAbstractReferenceDef ecucAbstractReferenceDef = (EcucAbstractReferenceDef)theEObject;
                T result = this.caseEcucAbstractReferenceDef(ecucAbstractReferenceDef);
                if (result == null) {
                    result = this.caseEcucCommonAttributes(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseEcucDefinitionElement(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseReferrable(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseARObject(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseGReferrable(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.caseGARObject(ecucAbstractReferenceDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseEcucAbstractStringParamDef(EcucAbstractStringParamDef object) {
        return null;
    }

    public T caseEcucParameterDef(EcucParameterDef object) {
        return null;
    }

    public T caseEcucCommonAttributes(EcucCommonAttributes object) {
        return null;
    }

    public T caseEcucDefinitionElement(EcucDefinitionElement object) {
        return null;
    }

    public T caseEcucConditionSpecification(EcucConditionSpecification object) {
        return null;
    }

    public T caseEcucQuery(EcucQuery object) {
        return null;
    }

    public T caseEcucQueryExpression(EcucQueryExpression object) {
        return null;
    }

    public T caseEcucConditionFormula(EcucConditionFormula object) {
        return null;
    }

    public T caseEcucImplementationConfigurationClass(EcucImplementationConfigurationClass object) {
        return null;
    }

    public T caseEcucConfigurationClassAffection(EcucConfigurationClassAffection object) {
        return null;
    }

    public T caseEcucDerivationSpecification(EcucDerivationSpecification object) {
        return null;
    }

    public T caseEcucParameterDerivationFormula(EcucParameterDerivationFormula object) {
        return null;
    }

    public T caseEcucAddInfoParamDef(EcucAddInfoParamDef object) {
        return null;
    }

    public T caseEcucBooleanParamDef(EcucBooleanParamDef object) {
        return null;
    }

    public T caseEcucChoiceContainerDef(EcucChoiceContainerDef object) {
        return null;
    }

    public T caseEcucContainerDef(EcucContainerDef object) {
        return null;
    }

    public T caseEcucParamConfContainerDef(EcucParamConfContainerDef object) {
        return null;
    }

    public T caseEcucChoiceReferenceDef(EcucChoiceReferenceDef object) {
        return null;
    }

    public T caseEcucDefinitionCollection(EcucDefinitionCollection object) {
        return null;
    }

    public T caseEcucModuleDef(EcucModuleDef object) {
        return null;
    }

    public T caseEcucEnumerationLiteralDef(EcucEnumerationLiteralDef object) {
        return null;
    }

    public T caseEcucEnumerationParamDef(EcucEnumerationParamDef object) {
        return null;
    }

    public T caseEcucFloatParamDef(EcucFloatParamDef object) {
        return null;
    }

    public T caseEcucForeignReferenceDef(EcucForeignReferenceDef object) {
        return null;
    }

    public T caseEcucFunctionNameDef(EcucFunctionNameDef object) {
        return null;
    }

    public T caseEcucFunctionNameDefConditional(EcucFunctionNameDefConditional object) {
        return null;
    }

    public T caseEcucFunctionNameDefContent(EcucFunctionNameDefContent object) {
        return null;
    }

    public T caseEcucAbstractStringParamDefContent(EcucAbstractStringParamDefContent object) {
        return null;
    }

    public T caseEcucInstanceReferenceDef(EcucInstanceReferenceDef object) {
        return null;
    }

    public T caseEcucIntegerParamDef(EcucIntegerParamDef object) {
        return null;
    }

    public T caseEcucLinkerSymbolDef(EcucLinkerSymbolDef object) {
        return null;
    }

    public T caseEcucLinkerSymbolDefConditional(EcucLinkerSymbolDefConditional object) {
        return null;
    }

    public T caseEcucLinkerSymbolDefContent(EcucLinkerSymbolDefContent object) {
        return null;
    }

    public T caseEcucMultilineStringParamDef(EcucMultilineStringParamDef object) {
        return null;
    }

    public T caseEcucMultilineStringParamDefConditional(EcucMultilineStringParamDefConditional object) {
        return null;
    }

    public T caseEcucMultilineStringParamDefContent(EcucMultilineStringParamDefContent object) {
        return null;
    }

    public T caseEcucReferenceDef(EcucReferenceDef object) {
        return null;
    }

    public T caseEcucStringParamDef(EcucStringParamDef object) {
        return null;
    }

    public T caseEcucStringParamDefConditional(EcucStringParamDefConditional object) {
        return null;
    }

    public T caseEcucStringParamDefContent(EcucStringParamDefContent object) {
        return null;
    }

    public T caseEcucSymbolicNameReferenceDef(EcucSymbolicNameReferenceDef object) {
        return null;
    }

    public T caseEcucAbstractReferenceDef(EcucAbstractReferenceDef object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
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

    public T caseGParamConfMultiplicity(GParamConfMultiplicity object) {
        return null;
    }

    public T caseGCommonConfigurationAttributes(GCommonConfigurationAttributes object) {
        return null;
    }

    public T caseGConfigParameter(GConfigParameter object) {
        return null;
    }

    public T caseGAbstractStringParamDef(GAbstractStringParamDef object) {
        return null;
    }

    public T caseGFormulaExpression(GFormulaExpression object) {
        return null;
    }

    public T caseFormulaExpression(FormulaExpression object) {
        return null;
    }

    public T caseGBooleanParamDef(GBooleanParamDef object) {
        return null;
    }

    public T caseGContainerDef(GContainerDef object) {
        return null;
    }

    public T caseGChoiceContainerDef(GChoiceContainerDef object) {
        return null;
    }

    public T caseGParamConfContainerDef(GParamConfContainerDef object) {
        return null;
    }

    public T caseGConfigReference(GConfigReference object) {
        return null;
    }

    public T caseGChoiceReferenceDef(GChoiceReferenceDef object) {
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

    public T caseAtpBlueprint(AtpBlueprint object) {
        return null;
    }

    public T caseAtpBlueprintable(AtpBlueprintable object) {
        return null;
    }

    public T caseGModuleDef(GModuleDef object) {
        return null;
    }

    public T caseGEnumerationLiteralDef(GEnumerationLiteralDef object) {
        return null;
    }

    public T caseGEnumerationParamDef(GEnumerationParamDef object) {
        return null;
    }

    public T caseGFloatParamDef(GFloatParamDef object) {
        return null;
    }

    public T caseGForeignReferenceDef(GForeignReferenceDef object) {
        return null;
    }

    public T caseGFunctionNameDef(GFunctionNameDef object) {
        return null;
    }

    public T caseGInstanceReferenceDef(GInstanceReferenceDef object) {
        return null;
    }

    public T caseGIntegerParamDef(GIntegerParamDef object) {
        return null;
    }

    public T caseGLinkerSymbolDef(GLinkerSymbolDef object) {
        return null;
    }

    public T caseGReferenceDef(GReferenceDef object) {
        return null;
    }

    public T caseGStringParamDef(GStringParamDef object) {
        return null;
    }

    public T caseGSymbolicNameReferenceDef(GSymbolicNameReferenceDef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

