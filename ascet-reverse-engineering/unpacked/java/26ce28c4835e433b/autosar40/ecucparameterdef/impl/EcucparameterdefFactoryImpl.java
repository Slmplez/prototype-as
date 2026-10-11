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
package autosar40.ecucparameterdef.impl;

import autosar40.ecucparameterdef.EcucAbstractReferenceDef;
import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucAffectionEnum;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucChoiceReferenceDef;
import autosar40.ecucparameterdef.EcucCommonAttributes;
import autosar40.ecucparameterdef.EcucConditionFormula;
import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucConfigurationClassAffection;
import autosar40.ecucparameterdef.EcucConfigurationClassEnum;
import autosar40.ecucparameterdef.EcucConfigurationVariantEnum;
import autosar40.ecucparameterdef.EcucContainerDef;
import autosar40.ecucparameterdef.EcucDefinitionCollection;
import autosar40.ecucparameterdef.EcucDerivationSpecification;
import autosar40.ecucparameterdef.EcucEnumerationLiteralDef;
import autosar40.ecucparameterdef.EcucEnumerationParamDef;
import autosar40.ecucparameterdef.EcucFloatParamDef;
import autosar40.ecucparameterdef.EcucForeignReferenceDef;
import autosar40.ecucparameterdef.EcucFunctionNameDef;
import autosar40.ecucparameterdef.EcucFunctionNameDefConditional;
import autosar40.ecucparameterdef.EcucImplementationConfigurationClass;
import autosar40.ecucparameterdef.EcucInstanceReferenceDef;
import autosar40.ecucparameterdef.EcucIntegerParamDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDef;
import autosar40.ecucparameterdef.EcucLinkerSymbolDefConditional;
import autosar40.ecucparameterdef.EcucModuleDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDef;
import autosar40.ecucparameterdef.EcucMultilineStringParamDefConditional;
import autosar40.ecucparameterdef.EcucParamConfContainerDef;
import autosar40.ecucparameterdef.EcucParameterDef;
import autosar40.ecucparameterdef.EcucParameterDerivationFormula;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucQueryExpression;
import autosar40.ecucparameterdef.EcucReferenceDef;
import autosar40.ecucparameterdef.EcucStringParamDef;
import autosar40.ecucparameterdef.EcucStringParamDefConditional;
import autosar40.ecucparameterdef.EcucSymbolicNameReferenceDef;
import autosar40.ecucparameterdef.EcucparameterdefFactory;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucAbstractReferenceDefImpl;
import autosar40.ecucparameterdef.impl.EcucAddInfoParamDefImpl;
import autosar40.ecucparameterdef.impl.EcucBooleanParamDefImpl;
import autosar40.ecucparameterdef.impl.EcucChoiceContainerDefImpl;
import autosar40.ecucparameterdef.impl.EcucChoiceReferenceDefImpl;
import autosar40.ecucparameterdef.impl.EcucCommonAttributesImpl;
import autosar40.ecucparameterdef.impl.EcucConditionFormulaImpl;
import autosar40.ecucparameterdef.impl.EcucConditionSpecificationImpl;
import autosar40.ecucparameterdef.impl.EcucConfigurationClassAffectionImpl;
import autosar40.ecucparameterdef.impl.EcucContainerDefImpl;
import autosar40.ecucparameterdef.impl.EcucDefinitionCollectionImpl;
import autosar40.ecucparameterdef.impl.EcucDerivationSpecificationImpl;
import autosar40.ecucparameterdef.impl.EcucEnumerationLiteralDefImpl;
import autosar40.ecucparameterdef.impl.EcucEnumerationParamDefImpl;
import autosar40.ecucparameterdef.impl.EcucFloatParamDefImpl;
import autosar40.ecucparameterdef.impl.EcucForeignReferenceDefImpl;
import autosar40.ecucparameterdef.impl.EcucFunctionNameDefConditionalImpl;
import autosar40.ecucparameterdef.impl.EcucFunctionNameDefImpl;
import autosar40.ecucparameterdef.impl.EcucImplementationConfigurationClassImpl;
import autosar40.ecucparameterdef.impl.EcucInstanceReferenceDefImpl;
import autosar40.ecucparameterdef.impl.EcucIntegerParamDefImpl;
import autosar40.ecucparameterdef.impl.EcucLinkerSymbolDefConditionalImpl;
import autosar40.ecucparameterdef.impl.EcucLinkerSymbolDefImpl;
import autosar40.ecucparameterdef.impl.EcucModuleDefImpl;
import autosar40.ecucparameterdef.impl.EcucMultilineStringParamDefConditionalImpl;
import autosar40.ecucparameterdef.impl.EcucMultilineStringParamDefImpl;
import autosar40.ecucparameterdef.impl.EcucParamConfContainerDefImpl;
import autosar40.ecucparameterdef.impl.EcucParameterDefImpl;
import autosar40.ecucparameterdef.impl.EcucParameterDerivationFormulaImpl;
import autosar40.ecucparameterdef.impl.EcucQueryExpressionImpl;
import autosar40.ecucparameterdef.impl.EcucQueryImpl;
import autosar40.ecucparameterdef.impl.EcucReferenceDefImpl;
import autosar40.ecucparameterdef.impl.EcucStringParamDefConditionalImpl;
import autosar40.ecucparameterdef.impl.EcucStringParamDefImpl;
import autosar40.ecucparameterdef.impl.EcucSymbolicNameReferenceDefImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EcucparameterdefFactoryImpl
extends EFactoryImpl
implements EcucparameterdefFactory {
    public static EcucparameterdefFactory init() {
        try {
            EcucparameterdefFactory theEcucparameterdefFactory = (EcucparameterdefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/ecucpd");
            if (theEcucparameterdefFactory != null) {
                return theEcucparameterdefFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EcucparameterdefFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createEcucParameterDef();
            }
            case 2: {
                return this.createEcucCommonAttributes();
            }
            case 4: {
                return this.createEcucConditionSpecification();
            }
            case 5: {
                return this.createEcucQuery();
            }
            case 6: {
                return this.createEcucQueryExpression();
            }
            case 7: {
                return this.createEcucConditionFormula();
            }
            case 8: {
                return this.createEcucImplementationConfigurationClass();
            }
            case 9: {
                return this.createEcucConfigurationClassAffection();
            }
            case 10: {
                return this.createEcucDerivationSpecification();
            }
            case 11: {
                return this.createEcucParameterDerivationFormula();
            }
            case 12: {
                return this.createEcucAddInfoParamDef();
            }
            case 13: {
                return this.createEcucBooleanParamDef();
            }
            case 14: {
                return this.createEcucChoiceContainerDef();
            }
            case 15: {
                return this.createEcucContainerDef();
            }
            case 16: {
                return this.createEcucParamConfContainerDef();
            }
            case 17: {
                return this.createEcucChoiceReferenceDef();
            }
            case 18: {
                return this.createEcucDefinitionCollection();
            }
            case 19: {
                return this.createEcucModuleDef();
            }
            case 20: {
                return this.createEcucEnumerationLiteralDef();
            }
            case 21: {
                return this.createEcucEnumerationParamDef();
            }
            case 22: {
                return this.createEcucFloatParamDef();
            }
            case 23: {
                return this.createEcucForeignReferenceDef();
            }
            case 24: {
                return this.createEcucFunctionNameDef();
            }
            case 25: {
                return this.createEcucFunctionNameDefConditional();
            }
            case 28: {
                return this.createEcucInstanceReferenceDef();
            }
            case 29: {
                return this.createEcucIntegerParamDef();
            }
            case 30: {
                return this.createEcucLinkerSymbolDef();
            }
            case 31: {
                return this.createEcucLinkerSymbolDefConditional();
            }
            case 33: {
                return this.createEcucMultilineStringParamDef();
            }
            case 34: {
                return this.createEcucMultilineStringParamDefConditional();
            }
            case 36: {
                return this.createEcucReferenceDef();
            }
            case 37: {
                return this.createEcucStringParamDef();
            }
            case 38: {
                return this.createEcucStringParamDefConditional();
            }
            case 40: {
                return this.createEcucSymbolicNameReferenceDef();
            }
            case 41: {
                return this.createEcucAbstractReferenceDef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 42: {
                return this.createEcucConfigurationClassEnumFromString(eDataType, initialValue);
            }
            case 43: {
                return this.createEcucConfigurationVariantEnumFromString(eDataType, initialValue);
            }
            case 44: {
                return this.createEcucAffectionEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 42: {
                return this.convertEcucConfigurationClassEnumToString(eDataType, instanceValue);
            }
            case 43: {
                return this.convertEcucConfigurationVariantEnumToString(eDataType, instanceValue);
            }
            case 44: {
                return this.convertEcucAffectionEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public EcucParameterDef createEcucParameterDef() {
        EcucParameterDefImpl ecucParameterDef = new EcucParameterDefImpl();
        return ecucParameterDef;
    }

    public EcucCommonAttributes createEcucCommonAttributes() {
        EcucCommonAttributesImpl ecucCommonAttributes = new EcucCommonAttributesImpl();
        return ecucCommonAttributes;
    }

    public EcucConditionSpecification createEcucConditionSpecification() {
        EcucConditionSpecificationImpl ecucConditionSpecification = new EcucConditionSpecificationImpl();
        return ecucConditionSpecification;
    }

    public EcucQuery createEcucQuery() {
        EcucQueryImpl ecucQuery = new EcucQueryImpl();
        return ecucQuery;
    }

    public EcucQueryExpression createEcucQueryExpression() {
        EcucQueryExpressionImpl ecucQueryExpression = new EcucQueryExpressionImpl();
        return ecucQueryExpression;
    }

    public EcucConditionFormula createEcucConditionFormula() {
        EcucConditionFormulaImpl ecucConditionFormula = new EcucConditionFormulaImpl();
        return ecucConditionFormula;
    }

    public EcucImplementationConfigurationClass createEcucImplementationConfigurationClass() {
        EcucImplementationConfigurationClassImpl ecucImplementationConfigurationClass = new EcucImplementationConfigurationClassImpl();
        return ecucImplementationConfigurationClass;
    }

    public EcucConfigurationClassAffection createEcucConfigurationClassAffection() {
        EcucConfigurationClassAffectionImpl ecucConfigurationClassAffection = new EcucConfigurationClassAffectionImpl();
        return ecucConfigurationClassAffection;
    }

    public EcucDerivationSpecification createEcucDerivationSpecification() {
        EcucDerivationSpecificationImpl ecucDerivationSpecification = new EcucDerivationSpecificationImpl();
        return ecucDerivationSpecification;
    }

    public EcucParameterDerivationFormula createEcucParameterDerivationFormula() {
        EcucParameterDerivationFormulaImpl ecucParameterDerivationFormula = new EcucParameterDerivationFormulaImpl();
        return ecucParameterDerivationFormula;
    }

    public EcucAddInfoParamDef createEcucAddInfoParamDef() {
        EcucAddInfoParamDefImpl ecucAddInfoParamDef = new EcucAddInfoParamDefImpl();
        return ecucAddInfoParamDef;
    }

    public EcucBooleanParamDef createEcucBooleanParamDef() {
        EcucBooleanParamDefImpl ecucBooleanParamDef = new EcucBooleanParamDefImpl();
        return ecucBooleanParamDef;
    }

    public EcucChoiceContainerDef createEcucChoiceContainerDef() {
        EcucChoiceContainerDefImpl ecucChoiceContainerDef = new EcucChoiceContainerDefImpl();
        return ecucChoiceContainerDef;
    }

    public EcucContainerDef createEcucContainerDef() {
        EcucContainerDefImpl ecucContainerDef = new EcucContainerDefImpl();
        return ecucContainerDef;
    }

    public EcucParamConfContainerDef createEcucParamConfContainerDef() {
        EcucParamConfContainerDefImpl ecucParamConfContainerDef = new EcucParamConfContainerDefImpl();
        return ecucParamConfContainerDef;
    }

    public EcucChoiceReferenceDef createEcucChoiceReferenceDef() {
        EcucChoiceReferenceDefImpl ecucChoiceReferenceDef = new EcucChoiceReferenceDefImpl();
        return ecucChoiceReferenceDef;
    }

    public EcucDefinitionCollection createEcucDefinitionCollection() {
        EcucDefinitionCollectionImpl ecucDefinitionCollection = new EcucDefinitionCollectionImpl();
        return ecucDefinitionCollection;
    }

    public EcucModuleDef createEcucModuleDef() {
        EcucModuleDefImpl ecucModuleDef = new EcucModuleDefImpl();
        return ecucModuleDef;
    }

    public EcucEnumerationLiteralDef createEcucEnumerationLiteralDef() {
        EcucEnumerationLiteralDefImpl ecucEnumerationLiteralDef = new EcucEnumerationLiteralDefImpl();
        return ecucEnumerationLiteralDef;
    }

    public EcucEnumerationParamDef createEcucEnumerationParamDef() {
        EcucEnumerationParamDefImpl ecucEnumerationParamDef = new EcucEnumerationParamDefImpl();
        return ecucEnumerationParamDef;
    }

    public EcucFloatParamDef createEcucFloatParamDef() {
        EcucFloatParamDefImpl ecucFloatParamDef = new EcucFloatParamDefImpl();
        return ecucFloatParamDef;
    }

    public EcucForeignReferenceDef createEcucForeignReferenceDef() {
        EcucForeignReferenceDefImpl ecucForeignReferenceDef = new EcucForeignReferenceDefImpl();
        return ecucForeignReferenceDef;
    }

    public EcucFunctionNameDef createEcucFunctionNameDef() {
        EcucFunctionNameDefImpl ecucFunctionNameDef = new EcucFunctionNameDefImpl();
        return ecucFunctionNameDef;
    }

    public EcucFunctionNameDefConditional createEcucFunctionNameDefConditional() {
        EcucFunctionNameDefConditionalImpl ecucFunctionNameDefConditional = new EcucFunctionNameDefConditionalImpl();
        return ecucFunctionNameDefConditional;
    }

    public EcucInstanceReferenceDef createEcucInstanceReferenceDef() {
        EcucInstanceReferenceDefImpl ecucInstanceReferenceDef = new EcucInstanceReferenceDefImpl();
        return ecucInstanceReferenceDef;
    }

    public EcucIntegerParamDef createEcucIntegerParamDef() {
        EcucIntegerParamDefImpl ecucIntegerParamDef = new EcucIntegerParamDefImpl();
        return ecucIntegerParamDef;
    }

    public EcucLinkerSymbolDef createEcucLinkerSymbolDef() {
        EcucLinkerSymbolDefImpl ecucLinkerSymbolDef = new EcucLinkerSymbolDefImpl();
        return ecucLinkerSymbolDef;
    }

    public EcucLinkerSymbolDefConditional createEcucLinkerSymbolDefConditional() {
        EcucLinkerSymbolDefConditionalImpl ecucLinkerSymbolDefConditional = new EcucLinkerSymbolDefConditionalImpl();
        return ecucLinkerSymbolDefConditional;
    }

    public EcucMultilineStringParamDef createEcucMultilineStringParamDef() {
        EcucMultilineStringParamDefImpl ecucMultilineStringParamDef = new EcucMultilineStringParamDefImpl();
        return ecucMultilineStringParamDef;
    }

    public EcucMultilineStringParamDefConditional createEcucMultilineStringParamDefConditional() {
        EcucMultilineStringParamDefConditionalImpl ecucMultilineStringParamDefConditional = new EcucMultilineStringParamDefConditionalImpl();
        return ecucMultilineStringParamDefConditional;
    }

    public EcucReferenceDef createEcucReferenceDef() {
        EcucReferenceDefImpl ecucReferenceDef = new EcucReferenceDefImpl();
        return ecucReferenceDef;
    }

    public EcucStringParamDef createEcucStringParamDef() {
        EcucStringParamDefImpl ecucStringParamDef = new EcucStringParamDefImpl();
        return ecucStringParamDef;
    }

    public EcucStringParamDefConditional createEcucStringParamDefConditional() {
        EcucStringParamDefConditionalImpl ecucStringParamDefConditional = new EcucStringParamDefConditionalImpl();
        return ecucStringParamDefConditional;
    }

    public EcucSymbolicNameReferenceDef createEcucSymbolicNameReferenceDef() {
        EcucSymbolicNameReferenceDefImpl ecucSymbolicNameReferenceDef = new EcucSymbolicNameReferenceDefImpl();
        return ecucSymbolicNameReferenceDef;
    }

    public EcucAbstractReferenceDef createEcucAbstractReferenceDef() {
        EcucAbstractReferenceDefImpl ecucAbstractReferenceDef = new EcucAbstractReferenceDefImpl();
        return ecucAbstractReferenceDef;
    }

    public EcucConfigurationClassEnum createEcucConfigurationClassEnumFromString(EDataType eDataType, String initialValue) {
        EcucConfigurationClassEnum result = EcucConfigurationClassEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertEcucConfigurationClassEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EcucConfigurationVariantEnum createEcucConfigurationVariantEnumFromString(EDataType eDataType, String initialValue) {
        EcucConfigurationVariantEnum result = EcucConfigurationVariantEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertEcucConfigurationVariantEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EcucAffectionEnum createEcucAffectionEnumFromString(EDataType eDataType, String initialValue) {
        EcucAffectionEnum result = EcucAffectionEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertEcucAffectionEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public EcucparameterdefPackage getEcucparameterdefPackage() {
        return (EcucparameterdefPackage)this.getEPackage();
    }

    @Deprecated
    public static EcucparameterdefPackage getPackage() {
        return EcucparameterdefPackage.eINSTANCE;
    }
}

