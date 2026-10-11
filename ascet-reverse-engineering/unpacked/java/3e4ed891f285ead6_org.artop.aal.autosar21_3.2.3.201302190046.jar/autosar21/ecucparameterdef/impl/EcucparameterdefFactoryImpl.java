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
package autosar21.ecucparameterdef.impl;

import autosar21.ecucparameterdef.BooleanParamDef;
import autosar21.ecucparameterdef.CalculationLanguage;
import autosar21.ecucparameterdef.ChoiceContainerDef;
import autosar21.ecucparameterdef.ChoiceReferenceDef;
import autosar21.ecucparameterdef.CommonConfigurationAttributes;
import autosar21.ecucparameterdef.ConfigParameter;
import autosar21.ecucparameterdef.ConfigReference;
import autosar21.ecucparameterdef.ConfigurationAffection;
import autosar21.ecucparameterdef.ConfigurationClass;
import autosar21.ecucparameterdef.ConfigurationClassAffection;
import autosar21.ecucparameterdef.DerivedBooleanParamDef;
import autosar21.ecucparameterdef.DerivedEnumerationParamDef;
import autosar21.ecucparameterdef.DerivedFloatParamDef;
import autosar21.ecucparameterdef.DerivedIntegerParamDef;
import autosar21.ecucparameterdef.DerivedStringParamDef;
import autosar21.ecucparameterdef.EcuParameterDefinition;
import autosar21.ecucparameterdef.EcucparameterdefFactory;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.EnumerationLiteralDef;
import autosar21.ecucparameterdef.EnumerationParamDef;
import autosar21.ecucparameterdef.FloatParamDef;
import autosar21.ecucparameterdef.ForeignReferenceDef;
import autosar21.ecucparameterdef.FunctionNameDef;
import autosar21.ecucparameterdef.InstanceReferenceDef;
import autosar21.ecucparameterdef.IntegerParamDef;
import autosar21.ecucparameterdef.LinkerSymbolDef;
import autosar21.ecucparameterdef.ModuleDef;
import autosar21.ecucparameterdef.ParamConfContainerDef;
import autosar21.ecucparameterdef.ReferenceDef;
import autosar21.ecucparameterdef.StringParamDef;
import autosar21.ecucparameterdef.SymbolicNameReferenceDef;
import autosar21.ecucparameterdef.impl.BooleanParamDefImpl;
import autosar21.ecucparameterdef.impl.ChoiceContainerDefImpl;
import autosar21.ecucparameterdef.impl.ChoiceReferenceDefImpl;
import autosar21.ecucparameterdef.impl.CommonConfigurationAttributesImpl;
import autosar21.ecucparameterdef.impl.ConfigParameterImpl;
import autosar21.ecucparameterdef.impl.ConfigReferenceImpl;
import autosar21.ecucparameterdef.impl.ConfigurationClassAffectionImpl;
import autosar21.ecucparameterdef.impl.DerivedBooleanParamDefImpl;
import autosar21.ecucparameterdef.impl.DerivedEnumerationParamDefImpl;
import autosar21.ecucparameterdef.impl.DerivedFloatParamDefImpl;
import autosar21.ecucparameterdef.impl.DerivedIntegerParamDefImpl;
import autosar21.ecucparameterdef.impl.DerivedStringParamDefImpl;
import autosar21.ecucparameterdef.impl.EcuParameterDefinitionImpl;
import autosar21.ecucparameterdef.impl.EnumerationLiteralDefImpl;
import autosar21.ecucparameterdef.impl.EnumerationParamDefImpl;
import autosar21.ecucparameterdef.impl.FloatParamDefImpl;
import autosar21.ecucparameterdef.impl.ForeignReferenceDefImpl;
import autosar21.ecucparameterdef.impl.FunctionNameDefImpl;
import autosar21.ecucparameterdef.impl.InstanceReferenceDefImpl;
import autosar21.ecucparameterdef.impl.IntegerParamDefImpl;
import autosar21.ecucparameterdef.impl.LinkerSymbolDefImpl;
import autosar21.ecucparameterdef.impl.ModuleDefImpl;
import autosar21.ecucparameterdef.impl.ParamConfContainerDefImpl;
import autosar21.ecucparameterdef.impl.ReferenceDefImpl;
import autosar21.ecucparameterdef.impl.StringParamDefImpl;
import autosar21.ecucparameterdef.impl.SymbolicNameReferenceDefImpl;
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
            EcucparameterdefFactory theEcucparameterdefFactory = (EcucparameterdefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/ecucpd");
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
            case 0: {
                return this.createBooleanParamDef();
            }
            case 1: {
                return this.createConfigParameter();
            }
            case 2: {
                return this.createCommonConfigurationAttributes();
            }
            case 4: {
                return this.createConfigurationClassAffection();
            }
            case 5: {
                return this.createChoiceContainerDef();
            }
            case 7: {
                return this.createParamConfContainerDef();
            }
            case 8: {
                return this.createConfigReference();
            }
            case 9: {
                return this.createChoiceReferenceDef();
            }
            case 10: {
                return this.createDerivedBooleanParamDef();
            }
            case 12: {
                return this.createDerivedEnumerationParamDef();
            }
            case 13: {
                return this.createEnumerationParamDef();
            }
            case 14: {
                return this.createEnumerationLiteralDef();
            }
            case 15: {
                return this.createDerivedFloatParamDef();
            }
            case 16: {
                return this.createFloatParamDef();
            }
            case 17: {
                return this.createDerivedIntegerParamDef();
            }
            case 18: {
                return this.createIntegerParamDef();
            }
            case 19: {
                return this.createDerivedStringParamDef();
            }
            case 20: {
                return this.createStringParamDef();
            }
            case 21: {
                return this.createEcuParameterDefinition();
            }
            case 22: {
                return this.createModuleDef();
            }
            case 23: {
                return this.createForeignReferenceDef();
            }
            case 24: {
                return this.createFunctionNameDef();
            }
            case 25: {
                return this.createLinkerSymbolDef();
            }
            case 26: {
                return this.createInstanceReferenceDef();
            }
            case 27: {
                return this.createReferenceDef();
            }
            case 28: {
                return this.createSymbolicNameReferenceDef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 29: {
                return this.createConfigurationClassFromString(eDataType, initialValue);
            }
            case 30: {
                return this.createConfigurationAffectionFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createCalculationLanguageFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 29: {
                return this.convertConfigurationClassToString(eDataType, instanceValue);
            }
            case 30: {
                return this.convertConfigurationAffectionToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertCalculationLanguageToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BooleanParamDef createBooleanParamDef() {
        BooleanParamDefImpl booleanParamDef = new BooleanParamDefImpl();
        return booleanParamDef;
    }

    public ConfigParameter createConfigParameter() {
        ConfigParameterImpl configParameter = new ConfigParameterImpl();
        return configParameter;
    }

    public CommonConfigurationAttributes createCommonConfigurationAttributes() {
        CommonConfigurationAttributesImpl commonConfigurationAttributes = new CommonConfigurationAttributesImpl();
        return commonConfigurationAttributes;
    }

    public ConfigurationClassAffection createConfigurationClassAffection() {
        ConfigurationClassAffectionImpl configurationClassAffection = new ConfigurationClassAffectionImpl();
        return configurationClassAffection;
    }

    public ChoiceContainerDef createChoiceContainerDef() {
        ChoiceContainerDefImpl choiceContainerDef = new ChoiceContainerDefImpl();
        return choiceContainerDef;
    }

    public ParamConfContainerDef createParamConfContainerDef() {
        ParamConfContainerDefImpl paramConfContainerDef = new ParamConfContainerDefImpl();
        return paramConfContainerDef;
    }

    public ConfigReference createConfigReference() {
        ConfigReferenceImpl configReference = new ConfigReferenceImpl();
        return configReference;
    }

    public ChoiceReferenceDef createChoiceReferenceDef() {
        ChoiceReferenceDefImpl choiceReferenceDef = new ChoiceReferenceDefImpl();
        return choiceReferenceDef;
    }

    public DerivedBooleanParamDef createDerivedBooleanParamDef() {
        DerivedBooleanParamDefImpl derivedBooleanParamDef = new DerivedBooleanParamDefImpl();
        return derivedBooleanParamDef;
    }

    public DerivedEnumerationParamDef createDerivedEnumerationParamDef() {
        DerivedEnumerationParamDefImpl derivedEnumerationParamDef = new DerivedEnumerationParamDefImpl();
        return derivedEnumerationParamDef;
    }

    public EnumerationParamDef createEnumerationParamDef() {
        EnumerationParamDefImpl enumerationParamDef = new EnumerationParamDefImpl();
        return enumerationParamDef;
    }

    public EnumerationLiteralDef createEnumerationLiteralDef() {
        EnumerationLiteralDefImpl enumerationLiteralDef = new EnumerationLiteralDefImpl();
        return enumerationLiteralDef;
    }

    public DerivedFloatParamDef createDerivedFloatParamDef() {
        DerivedFloatParamDefImpl derivedFloatParamDef = new DerivedFloatParamDefImpl();
        return derivedFloatParamDef;
    }

    public FloatParamDef createFloatParamDef() {
        FloatParamDefImpl floatParamDef = new FloatParamDefImpl();
        return floatParamDef;
    }

    public DerivedIntegerParamDef createDerivedIntegerParamDef() {
        DerivedIntegerParamDefImpl derivedIntegerParamDef = new DerivedIntegerParamDefImpl();
        return derivedIntegerParamDef;
    }

    public IntegerParamDef createIntegerParamDef() {
        IntegerParamDefImpl integerParamDef = new IntegerParamDefImpl();
        return integerParamDef;
    }

    public DerivedStringParamDef createDerivedStringParamDef() {
        DerivedStringParamDefImpl derivedStringParamDef = new DerivedStringParamDefImpl();
        return derivedStringParamDef;
    }

    public StringParamDef createStringParamDef() {
        StringParamDefImpl stringParamDef = new StringParamDefImpl();
        return stringParamDef;
    }

    public EcuParameterDefinition createEcuParameterDefinition() {
        EcuParameterDefinitionImpl ecuParameterDefinition = new EcuParameterDefinitionImpl();
        return ecuParameterDefinition;
    }

    public ModuleDef createModuleDef() {
        ModuleDefImpl moduleDef = new ModuleDefImpl();
        return moduleDef;
    }

    public ForeignReferenceDef createForeignReferenceDef() {
        ForeignReferenceDefImpl foreignReferenceDef = new ForeignReferenceDefImpl();
        return foreignReferenceDef;
    }

    public FunctionNameDef createFunctionNameDef() {
        FunctionNameDefImpl functionNameDef = new FunctionNameDefImpl();
        return functionNameDef;
    }

    public LinkerSymbolDef createLinkerSymbolDef() {
        LinkerSymbolDefImpl linkerSymbolDef = new LinkerSymbolDefImpl();
        return linkerSymbolDef;
    }

    public InstanceReferenceDef createInstanceReferenceDef() {
        InstanceReferenceDefImpl instanceReferenceDef = new InstanceReferenceDefImpl();
        return instanceReferenceDef;
    }

    public ReferenceDef createReferenceDef() {
        ReferenceDefImpl referenceDef = new ReferenceDefImpl();
        return referenceDef;
    }

    public SymbolicNameReferenceDef createSymbolicNameReferenceDef() {
        SymbolicNameReferenceDefImpl symbolicNameReferenceDef = new SymbolicNameReferenceDefImpl();
        return symbolicNameReferenceDef;
    }

    public ConfigurationClass createConfigurationClassFromString(EDataType eDataType, String initialValue) {
        ConfigurationClass result = ConfigurationClass.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertConfigurationClassToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public ConfigurationAffection createConfigurationAffectionFromString(EDataType eDataType, String initialValue) {
        ConfigurationAffection result = ConfigurationAffection.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertConfigurationAffectionToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public CalculationLanguage createCalculationLanguageFromString(EDataType eDataType, String initialValue) {
        CalculationLanguage result = CalculationLanguage.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertCalculationLanguageToString(EDataType eDataType, Object instanceValue) {
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

