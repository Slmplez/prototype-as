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
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.ecucparameterdef.util;

import autosar3x.ecucparameterdef.BooleanParamDef;
import autosar3x.ecucparameterdef.ChoiceContainerDef;
import autosar3x.ecucparameterdef.ChoiceReferenceParamDef;
import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ConfigParameter;
import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.ecucparameterdef.ConfigurationClassAffection;
import autosar3x.ecucparameterdef.ContainerDef;
import autosar3x.ecucparameterdef.DerivedBooleanParamDef;
import autosar3x.ecucparameterdef.DerivedEnumerationParamDef;
import autosar3x.ecucparameterdef.DerivedFloatParamDef;
import autosar3x.ecucparameterdef.DerivedIntegerParamDef;
import autosar3x.ecucparameterdef.DerivedParamType;
import autosar3x.ecucparameterdef.DerivedStringParamDef;
import autosar3x.ecucparameterdef.EcuParameterDefinition;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.EnumerationLiteralDef;
import autosar3x.ecucparameterdef.EnumerationParamDef;
import autosar3x.ecucparameterdef.FloatParamDef;
import autosar3x.ecucparameterdef.ForeignReferenceParamDef;
import autosar3x.ecucparameterdef.FunctionNameDef;
import autosar3x.ecucparameterdef.ImplementationConfigClass;
import autosar3x.ecucparameterdef.InstanceReferenceParamDef;
import autosar3x.ecucparameterdef.IntegerParamDef;
import autosar3x.ecucparameterdef.LinkerSymbolDef;
import autosar3x.ecucparameterdef.ModuleDef;
import autosar3x.ecucparameterdef.ParamConfContainerDef;
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.ecucparameterdef.ReferenceParamDef;
import autosar3x.ecucparameterdef.StringParamDef;
import autosar3x.ecucparameterdef.SymbolicNameReferenceParamDef;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
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
                BooleanParamDef booleanParamDef = (BooleanParamDef)theEObject;
                T result = this.caseBooleanParamDef(booleanParamDef);
                if (result == null) {
                    result = this.caseConfigParameter(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseGBooleanParamDef(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(booleanParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)booleanParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(booleanParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ChoiceContainerDef choiceContainerDef = (ChoiceContainerDef)theEObject;
                T result = this.caseChoiceContainerDef(choiceContainerDef);
                if (result == null) {
                    result = this.caseContainerDef(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGChoiceContainerDef(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGContainerDef(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseARObject(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)choiceContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(choiceContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                ContainerDef containerDef = (ContainerDef)theEObject;
                T result = this.caseContainerDef(containerDef);
                if (result == null) {
                    result = this.caseIdentifiable(containerDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(containerDef);
                }
                if (result == null) {
                    result = this.caseGContainerDef(containerDef);
                }
                if (result == null) {
                    result = this.caseARObject(containerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(containerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(containerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)containerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(containerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                ParamConfMultiplicity paramConfMultiplicity = (ParamConfMultiplicity)theEObject;
                T result = this.caseParamConfMultiplicity(paramConfMultiplicity);
                if (result == null) {
                    result = this.caseARObject(paramConfMultiplicity);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(paramConfMultiplicity);
                }
                if (result == null) {
                    result = this.caseGARObject(paramConfMultiplicity);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                ParamConfContainerDef paramConfContainerDef = (ParamConfContainerDef)theEObject;
                T result = this.caseParamConfContainerDef(paramConfContainerDef);
                if (result == null) {
                    result = this.caseContainerDef(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfContainerDef(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGContainerDef(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseARObject(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)paramConfContainerDef);
                }
                if (result == null) {
                    result = this.caseGARObject(paramConfContainerDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                ConfigReference configReference = (ConfigReference)theEObject;
                T result = this.caseConfigReference(configReference);
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(configReference);
                }
                if (result == null) {
                    result = this.caseGConfigReference(configReference);
                }
                if (result == null) {
                    result = this.caseIdentifiable(configReference);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(configReference);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(configReference);
                }
                if (result == null) {
                    result = this.caseARObject(configReference);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(configReference);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(configReference);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)configReference);
                }
                if (result == null) {
                    result = this.caseGARObject(configReference);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                CommonConfigurationAttributes commonConfigurationAttributes = (CommonConfigurationAttributes)theEObject;
                T result = this.caseCommonConfigurationAttributes(commonConfigurationAttributes);
                if (result == null) {
                    result = this.caseIdentifiable(commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseARObject(commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.caseGARObject(commonConfigurationAttributes);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ConfigurationClassAffection configurationClassAffection = (ConfigurationClassAffection)theEObject;
                T result = this.caseConfigurationClassAffection(configurationClassAffection);
                if (result == null) {
                    result = this.caseARObject(configurationClassAffection);
                }
                if (result == null) {
                    result = this.caseGARObject(configurationClassAffection);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ImplementationConfigClass implementationConfigClass = (ImplementationConfigClass)theEObject;
                T result = this.caseImplementationConfigClass(implementationConfigClass);
                if (result == null) {
                    result = this.caseARObject(implementationConfigClass);
                }
                if (result == null) {
                    result = this.caseGARObject(implementationConfigClass);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 9: {
                ChoiceReferenceParamDef choiceReferenceParamDef = (ChoiceReferenceParamDef)theEObject;
                T result = this.caseChoiceReferenceParamDef(choiceReferenceParamDef);
                if (result == null) {
                    result = this.caseConfigReference(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGChoiceReferenceDef(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(choiceReferenceParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 10: {
                DerivedBooleanParamDef derivedBooleanParamDef = (DerivedBooleanParamDef)theEObject;
                T result = this.caseDerivedBooleanParamDef(derivedBooleanParamDef);
                if (result == null) {
                    result = this.caseBooleanParamDef(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseDerivedParamType(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseConfigParameter(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGBooleanParamDef(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(derivedBooleanParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 11: {
                DerivedParamType derivedParamType = (DerivedParamType)theEObject;
                T result = this.caseDerivedParamType(derivedParamType);
                if (result == null) {
                    result = this.caseARObject(derivedParamType);
                }
                if (result == null) {
                    result = this.caseGARObject(derivedParamType);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 12: {
                DerivedEnumerationParamDef derivedEnumerationParamDef = (DerivedEnumerationParamDef)theEObject;
                T result = this.caseDerivedEnumerationParamDef(derivedEnumerationParamDef);
                if (result == null) {
                    result = this.caseEnumerationParamDef(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseDerivedParamType(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseConfigParameter(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGEnumerationParamDef(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(derivedEnumerationParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 13: {
                EnumerationParamDef enumerationParamDef = (EnumerationParamDef)theEObject;
                T result = this.caseEnumerationParamDef(enumerationParamDef);
                if (result == null) {
                    result = this.caseConfigParameter(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGEnumerationParamDef(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)enumerationParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(enumerationParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 14: {
                EnumerationLiteralDef enumerationLiteralDef = (EnumerationLiteralDef)theEObject;
                T result = this.caseEnumerationLiteralDef(enumerationLiteralDef);
                if (result == null) {
                    result = this.caseIdentifiable(enumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGEnumerationLiteralDef(enumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseARObject(enumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(enumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)enumerationLiteralDef);
                }
                if (result == null) {
                    result = this.caseGARObject(enumerationLiteralDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 15: {
                DerivedFloatParamDef derivedFloatParamDef = (DerivedFloatParamDef)theEObject;
                T result = this.caseDerivedFloatParamDef(derivedFloatParamDef);
                if (result == null) {
                    result = this.caseFloatParamDef(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseDerivedParamType(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseConfigParameter(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGFloatParamDef(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(derivedFloatParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 16: {
                FloatParamDef floatParamDef = (FloatParamDef)theEObject;
                T result = this.caseFloatParamDef(floatParamDef);
                if (result == null) {
                    result = this.caseConfigParameter(floatParamDef);
                }
                if (result == null) {
                    result = this.caseGFloatParamDef(floatParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(floatParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(floatParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(floatParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(floatParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(floatParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(floatParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(floatParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(floatParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)floatParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(floatParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 17: {
                DerivedIntegerParamDef derivedIntegerParamDef = (DerivedIntegerParamDef)theEObject;
                T result = this.caseDerivedIntegerParamDef(derivedIntegerParamDef);
                if (result == null) {
                    result = this.caseIntegerParamDef(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseDerivedParamType(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseConfigParameter(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGIntegerParamDef(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(derivedIntegerParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 18: {
                IntegerParamDef integerParamDef = (IntegerParamDef)theEObject;
                T result = this.caseIntegerParamDef(integerParamDef);
                if (result == null) {
                    result = this.caseConfigParameter(integerParamDef);
                }
                if (result == null) {
                    result = this.caseGIntegerParamDef(integerParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(integerParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(integerParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(integerParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(integerParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(integerParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(integerParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(integerParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(integerParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)integerParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(integerParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 19: {
                DerivedStringParamDef derivedStringParamDef = (DerivedStringParamDef)theEObject;
                T result = this.caseDerivedStringParamDef(derivedStringParamDef);
                if (result == null) {
                    result = this.caseStringParamDef(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseDerivedParamType(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseConfigParameter(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGStringParamDef(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef((GAbstractStringParamDef)derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)derivedStringParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(derivedStringParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 20: {
                StringParamDef stringParamDef = (StringParamDef)theEObject;
                T result = this.caseStringParamDef(stringParamDef);
                if (result == null) {
                    result = this.caseConfigParameter(stringParamDef);
                }
                if (result == null) {
                    result = this.caseGStringParamDef(stringParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(stringParamDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef((GAbstractStringParamDef)stringParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(stringParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(stringParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(stringParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(stringParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(stringParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(stringParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(stringParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)stringParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(stringParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 21: {
                EcuParameterDefinition ecuParameterDefinition = (EcuParameterDefinition)theEObject;
                T result = this.caseEcuParameterDefinition(ecuParameterDefinition);
                if (result == null) {
                    result = this.caseARElement(ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.casePackageableElement(ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.caseIdentifiable(ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.caseARObject(ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.caseGARObject(ecuParameterDefinition);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 22: {
                ModuleDef moduleDef = (ModuleDef)theEObject;
                T result = this.caseModuleDef(moduleDef);
                if (result == null) {
                    result = this.caseARElement(moduleDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(moduleDef);
                }
                if (result == null) {
                    result = this.caseGModuleDef(moduleDef);
                }
                if (result == null) {
                    result = this.casePackageableElement(moduleDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(moduleDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(moduleDef);
                }
                if (result == null) {
                    result = this.caseGPackageableElement(moduleDef);
                }
                if (result == null) {
                    result = this.caseARObject(moduleDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(moduleDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)moduleDef);
                }
                if (result == null) {
                    result = this.caseGARObject(moduleDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 23: {
                ForeignReferenceParamDef foreignReferenceParamDef = (ForeignReferenceParamDef)theEObject;
                T result = this.caseForeignReferenceParamDef(foreignReferenceParamDef);
                if (result == null) {
                    result = this.caseConfigReference(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGForeignReferenceDef(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(foreignReferenceParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 24: {
                FunctionNameDef functionNameDef = (FunctionNameDef)theEObject;
                T result = this.caseFunctionNameDef(functionNameDef);
                if (result == null) {
                    result = this.caseLinkerSymbolDef(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGFunctionNameDef(functionNameDef);
                }
                if (result == null) {
                    result = this.caseStringParamDef(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGLinkerSymbolDef(functionNameDef);
                }
                if (result == null) {
                    result = this.caseConfigParameter(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGStringParamDef(functionNameDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef((GAbstractStringParamDef)functionNameDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(functionNameDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(functionNameDef);
                }
                if (result == null) {
                    result = this.caseARObject(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(functionNameDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)functionNameDef);
                }
                if (result == null) {
                    result = this.caseGARObject(functionNameDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 25: {
                LinkerSymbolDef linkerSymbolDef = (LinkerSymbolDef)theEObject;
                T result = this.caseLinkerSymbolDef(linkerSymbolDef);
                if (result == null) {
                    result = this.caseStringParamDef(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGLinkerSymbolDef(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseConfigParameter(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGStringParamDef(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGAbstractStringParamDef((GAbstractStringParamDef)linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseARObject(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)linkerSymbolDef);
                }
                if (result == null) {
                    result = this.caseGARObject(linkerSymbolDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 26: {
                InstanceReferenceParamDef instanceReferenceParamDef = (InstanceReferenceParamDef)theEObject;
                T result = this.caseInstanceReferenceParamDef(instanceReferenceParamDef);
                if (result == null) {
                    result = this.caseConfigReference(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGInstanceReferenceDef(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(instanceReferenceParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 27: {
                ReferenceParamDef referenceParamDef = (ReferenceParamDef)theEObject;
                T result = this.caseReferenceParamDef(referenceParamDef);
                if (result == null) {
                    result = this.caseConfigReference(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseGReferenceDef(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(referenceParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)referenceParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(referenceParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 28: {
                SymbolicNameReferenceParamDef symbolicNameReferenceParamDef = (SymbolicNameReferenceParamDef)theEObject;
                T result = this.caseSymbolicNameReferenceParamDef(symbolicNameReferenceParamDef);
                if (result == null) {
                    result = this.caseReferenceParamDef(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGSymbolicNameReferenceDef(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseConfigReference(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGReferenceDef(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGConfigReference(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseIdentifiable(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseARObject(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.caseGARObject(symbolicNameReferenceParamDef);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 29: {
                ConfigParameter configParameter = (ConfigParameter)theEObject;
                T result = this.caseConfigParameter(configParameter);
                if (result == null) {
                    result = this.caseCommonConfigurationAttributes(configParameter);
                }
                if (result == null) {
                    result = this.caseGConfigParameter(configParameter);
                }
                if (result == null) {
                    result = this.caseIdentifiable(configParameter);
                }
                if (result == null) {
                    result = this.caseParamConfMultiplicity(configParameter);
                }
                if (result == null) {
                    result = this.caseGCommonConfigurationAttributes(configParameter);
                }
                if (result == null) {
                    result = this.caseARObject(configParameter);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(configParameter);
                }
                if (result == null) {
                    result = this.caseGParamConfMultiplicity(configParameter);
                }
                if (result == null) {
                    result = this.caseGReferrable((GReferrable)configParameter);
                }
                if (result == null) {
                    result = this.caseGARObject(configParameter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseBooleanParamDef(BooleanParamDef object) {
        return null;
    }

    public T caseChoiceContainerDef(ChoiceContainerDef object) {
        return null;
    }

    public T caseContainerDef(ContainerDef object) {
        return null;
    }

    public T caseParamConfMultiplicity(ParamConfMultiplicity object) {
        return null;
    }

    public T caseParamConfContainerDef(ParamConfContainerDef object) {
        return null;
    }

    public T caseConfigReference(ConfigReference object) {
        return null;
    }

    public T caseCommonConfigurationAttributes(CommonConfigurationAttributes object) {
        return null;
    }

    public T caseConfigurationClassAffection(ConfigurationClassAffection object) {
        return null;
    }

    public T caseImplementationConfigClass(ImplementationConfigClass object) {
        return null;
    }

    public T caseChoiceReferenceParamDef(ChoiceReferenceParamDef object) {
        return null;
    }

    public T caseDerivedBooleanParamDef(DerivedBooleanParamDef object) {
        return null;
    }

    public T caseDerivedParamType(DerivedParamType object) {
        return null;
    }

    public T caseDerivedEnumerationParamDef(DerivedEnumerationParamDef object) {
        return null;
    }

    public T caseEnumerationParamDef(EnumerationParamDef object) {
        return null;
    }

    public T caseEnumerationLiteralDef(EnumerationLiteralDef object) {
        return null;
    }

    public T caseDerivedFloatParamDef(DerivedFloatParamDef object) {
        return null;
    }

    public T caseFloatParamDef(FloatParamDef object) {
        return null;
    }

    public T caseDerivedIntegerParamDef(DerivedIntegerParamDef object) {
        return null;
    }

    public T caseIntegerParamDef(IntegerParamDef object) {
        return null;
    }

    public T caseDerivedStringParamDef(DerivedStringParamDef object) {
        return null;
    }

    public T caseStringParamDef(StringParamDef object) {
        return null;
    }

    public T caseEcuParameterDefinition(EcuParameterDefinition object) {
        return null;
    }

    public T caseModuleDef(ModuleDef object) {
        return null;
    }

    public T caseForeignReferenceParamDef(ForeignReferenceParamDef object) {
        return null;
    }

    public T caseFunctionNameDef(FunctionNameDef object) {
        return null;
    }

    public T caseLinkerSymbolDef(LinkerSymbolDef object) {
        return null;
    }

    public T caseInstanceReferenceParamDef(InstanceReferenceParamDef object) {
        return null;
    }

    public T caseReferenceParamDef(ReferenceParamDef object) {
        return null;
    }

    public T caseSymbolicNameReferenceParamDef(SymbolicNameReferenceParamDef object) {
        return null;
    }

    public T caseConfigParameter(ConfigParameter object) {
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

    public T caseGEnumerationParamDef(GEnumerationParamDef object) {
        return null;
    }

    public T caseGEnumerationLiteralDef(GEnumerationLiteralDef object) {
        return null;
    }

    public T caseGFloatParamDef(GFloatParamDef object) {
        return null;
    }

    public T caseGIntegerParamDef(GIntegerParamDef object) {
        return null;
    }

    public T caseGAbstractStringParamDef(GAbstractStringParamDef object) {
        return null;
    }

    public T caseGStringParamDef(GStringParamDef object) {
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

    public T caseGModuleDef(GModuleDef object) {
        return null;
    }

    public T caseGForeignReferenceDef(GForeignReferenceDef object) {
        return null;
    }

    public T caseGLinkerSymbolDef(GLinkerSymbolDef object) {
        return null;
    }

    public T caseGFunctionNameDef(GFunctionNameDef object) {
        return null;
    }

    public T caseGInstanceReferenceDef(GInstanceReferenceDef object) {
        return null;
    }

    public T caseGReferenceDef(GReferenceDef object) {
        return null;
    }

    public T caseGSymbolicNameReferenceDef(GSymbolicNameReferenceDef object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

