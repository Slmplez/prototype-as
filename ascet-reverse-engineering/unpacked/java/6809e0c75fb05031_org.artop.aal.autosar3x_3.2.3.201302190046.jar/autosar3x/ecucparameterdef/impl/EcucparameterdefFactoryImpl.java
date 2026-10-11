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
package autosar3x.ecucparameterdef.impl;

import autosar3x.ecucparameterdef.BooleanParamDef;
import autosar3x.ecucparameterdef.CalculationLanguage;
import autosar3x.ecucparameterdef.ChoiceContainerDef;
import autosar3x.ecucparameterdef.ChoiceReferenceParamDef;
import autosar3x.ecucparameterdef.CommonConfigurationAttributes;
import autosar3x.ecucparameterdef.ConfigParameter;
import autosar3x.ecucparameterdef.ConfigReference;
import autosar3x.ecucparameterdef.ConfigurationAffection;
import autosar3x.ecucparameterdef.ConfigurationClass;
import autosar3x.ecucparameterdef.ConfigurationClassAffection;
import autosar3x.ecucparameterdef.ConfigurationVariant;
import autosar3x.ecucparameterdef.ContainerDef;
import autosar3x.ecucparameterdef.DerivedBooleanParamDef;
import autosar3x.ecucparameterdef.DerivedEnumerationParamDef;
import autosar3x.ecucparameterdef.DerivedFloatParamDef;
import autosar3x.ecucparameterdef.DerivedIntegerParamDef;
import autosar3x.ecucparameterdef.DerivedStringParamDef;
import autosar3x.ecucparameterdef.EcuParameterDefinition;
import autosar3x.ecucparameterdef.EcucparameterdefFactory;
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
import autosar3x.ecucparameterdef.ReferenceParamDef;
import autosar3x.ecucparameterdef.StringParamDef;
import autosar3x.ecucparameterdef.SymbolicNameReferenceParamDef;
import autosar3x.ecucparameterdef.impl.BooleanParamDefImpl;
import autosar3x.ecucparameterdef.impl.ChoiceContainerDefImpl;
import autosar3x.ecucparameterdef.impl.ChoiceReferenceParamDefImpl;
import autosar3x.ecucparameterdef.impl.CommonConfigurationAttributesImpl;
import autosar3x.ecucparameterdef.impl.ConfigParameterImpl;
import autosar3x.ecucparameterdef.impl.ConfigReferenceImpl;
import autosar3x.ecucparameterdef.impl.ConfigurationClassAffectionImpl;
import autosar3x.ecucparameterdef.impl.ContainerDefImpl;
import autosar3x.ecucparameterdef.impl.DerivedBooleanParamDefImpl;
import autosar3x.ecucparameterdef.impl.DerivedEnumerationParamDefImpl;
import autosar3x.ecucparameterdef.impl.DerivedFloatParamDefImpl;
import autosar3x.ecucparameterdef.impl.DerivedIntegerParamDefImpl;
import autosar3x.ecucparameterdef.impl.DerivedStringParamDefImpl;
import autosar3x.ecucparameterdef.impl.EcuParameterDefinitionImpl;
import autosar3x.ecucparameterdef.impl.EnumerationLiteralDefImpl;
import autosar3x.ecucparameterdef.impl.EnumerationParamDefImpl;
import autosar3x.ecucparameterdef.impl.FloatParamDefImpl;
import autosar3x.ecucparameterdef.impl.ForeignReferenceParamDefImpl;
import autosar3x.ecucparameterdef.impl.FunctionNameDefImpl;
import autosar3x.ecucparameterdef.impl.ImplementationConfigClassImpl;
import autosar3x.ecucparameterdef.impl.InstanceReferenceParamDefImpl;
import autosar3x.ecucparameterdef.impl.IntegerParamDefImpl;
import autosar3x.ecucparameterdef.impl.LinkerSymbolDefImpl;
import autosar3x.ecucparameterdef.impl.ModuleDefImpl;
import autosar3x.ecucparameterdef.impl.ParamConfContainerDefImpl;
import autosar3x.ecucparameterdef.impl.ReferenceParamDefImpl;
import autosar3x.ecucparameterdef.impl.StringParamDefImpl;
import autosar3x.ecucparameterdef.impl.SymbolicNameReferenceParamDefImpl;
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
            EcucparameterdefFactory theEcucparameterdefFactory = (EcucparameterdefFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/ecucpd");
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
                return this.createChoiceContainerDef();
            }
            case 2: {
                return this.createContainerDef();
            }
            case 4: {
                return this.createParamConfContainerDef();
            }
            case 5: {
                return this.createConfigReference();
            }
            case 6: {
                return this.createCommonConfigurationAttributes();
            }
            case 7: {
                return this.createConfigurationClassAffection();
            }
            case 8: {
                return this.createImplementationConfigClass();
            }
            case 9: {
                return this.createChoiceReferenceParamDef();
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
                return this.createForeignReferenceParamDef();
            }
            case 24: {
                return this.createFunctionNameDef();
            }
            case 25: {
                return this.createLinkerSymbolDef();
            }
            case 26: {
                return this.createInstanceReferenceParamDef();
            }
            case 27: {
                return this.createReferenceParamDef();
            }
            case 28: {
                return this.createSymbolicNameReferenceParamDef();
            }
            case 29: {
                return this.createConfigParameter();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 30: {
                return this.createCalculationLanguageFromString(eDataType, initialValue);
            }
            case 31: {
                return this.createConfigurationAffectionFromString(eDataType, initialValue);
            }
            case 32: {
                return this.createConfigurationVariantFromString(eDataType, initialValue);
            }
            case 33: {
                return this.createConfigurationClassFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 30: {
                return this.convertCalculationLanguageToString(eDataType, instanceValue);
            }
            case 31: {
                return this.convertConfigurationAffectionToString(eDataType, instanceValue);
            }
            case 32: {
                return this.convertConfigurationVariantToString(eDataType, instanceValue);
            }
            case 33: {
                return this.convertConfigurationClassToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public BooleanParamDef createBooleanParamDef() {
        BooleanParamDefImpl booleanParamDef = new BooleanParamDefImpl();
        return booleanParamDef;
    }

    public ChoiceContainerDef createChoiceContainerDef() {
        ChoiceContainerDefImpl choiceContainerDef = new ChoiceContainerDefImpl();
        return choiceContainerDef;
    }

    public ContainerDef createContainerDef() {
        ContainerDefImpl containerDef = new ContainerDefImpl();
        return containerDef;
    }

    public ParamConfContainerDef createParamConfContainerDef() {
        ParamConfContainerDefImpl paramConfContainerDef = new ParamConfContainerDefImpl();
        return paramConfContainerDef;
    }

    public ConfigReference createConfigReference() {
        ConfigReferenceImpl configReference = new ConfigReferenceImpl();
        return configReference;
    }

    public CommonConfigurationAttributes createCommonConfigurationAttributes() {
        CommonConfigurationAttributesImpl commonConfigurationAttributes = new CommonConfigurationAttributesImpl();
        return commonConfigurationAttributes;
    }

    public ConfigurationClassAffection createConfigurationClassAffection() {
        ConfigurationClassAffectionImpl configurationClassAffection = new ConfigurationClassAffectionImpl();
        return configurationClassAffection;
    }

    public ImplementationConfigClass createImplementationConfigClass() {
        ImplementationConfigClassImpl implementationConfigClass = new ImplementationConfigClassImpl();
        return implementationConfigClass;
    }

    public ChoiceReferenceParamDef createChoiceReferenceParamDef() {
        ChoiceReferenceParamDefImpl choiceReferenceParamDef = new ChoiceReferenceParamDefImpl();
        return choiceReferenceParamDef;
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

    public ForeignReferenceParamDef createForeignReferenceParamDef() {
        ForeignReferenceParamDefImpl foreignReferenceParamDef = new ForeignReferenceParamDefImpl();
        return foreignReferenceParamDef;
    }

    public FunctionNameDef createFunctionNameDef() {
        FunctionNameDefImpl functionNameDef = new FunctionNameDefImpl();
        return functionNameDef;
    }

    public LinkerSymbolDef createLinkerSymbolDef() {
        LinkerSymbolDefImpl linkerSymbolDef = new LinkerSymbolDefImpl();
        return linkerSymbolDef;
    }

    public InstanceReferenceParamDef createInstanceReferenceParamDef() {
        InstanceReferenceParamDefImpl instanceReferenceParamDef = new InstanceReferenceParamDefImpl();
        return instanceReferenceParamDef;
    }

    public ReferenceParamDef createReferenceParamDef() {
        ReferenceParamDefImpl referenceParamDef = new ReferenceParamDefImpl();
        return referenceParamDef;
    }

    public SymbolicNameReferenceParamDef createSymbolicNameReferenceParamDef() {
        SymbolicNameReferenceParamDefImpl symbolicNameReferenceParamDef = new SymbolicNameReferenceParamDefImpl();
        return symbolicNameReferenceParamDef;
    }

    public ConfigParameter createConfigParameter() {
        ConfigParameterImpl configParameter = new ConfigParameterImpl();
        return configParameter;
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

    public ConfigurationVariant createConfigurationVariantFromString(EDataType eDataType, String initialValue) {
        ConfigurationVariant result = ConfigurationVariant.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertConfigurationVariantToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
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

    public EcucparameterdefPackage getEcucparameterdefPackage() {
        return (EcucparameterdefPackage)this.getEPackage();
    }

    @Deprecated
    public static EcucparameterdefPackage getPackage() {
        return EcucparameterdefPackage.eINSTANCE;
    }
}

