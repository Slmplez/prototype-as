/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.ecucparameterdef;

import autosar3x.ecucparameterdef.BooleanParamDef;
import autosar3x.ecucparameterdef.ChoiceContainerDef;
import autosar3x.ecucparameterdef.ChoiceReferenceParamDef;
import autosar3x.ecucparameterdef.ConfigurationClassAffection;
import autosar3x.ecucparameterdef.DerivedBooleanParamDef;
import autosar3x.ecucparameterdef.DerivedEnumerationParamDef;
import autosar3x.ecucparameterdef.DerivedFloatParamDef;
import autosar3x.ecucparameterdef.DerivedIntegerParamDef;
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
import autosar3x.ecucparameterdef.ReferenceParamDef;
import autosar3x.ecucparameterdef.StringParamDef;
import autosar3x.ecucparameterdef.SymbolicNameReferenceParamDef;
import autosar3x.ecucparameterdef.impl.EcucparameterdefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcucparameterdefFactory
extends EFactory {
    public static final EcucparameterdefFactory eINSTANCE = EcucparameterdefFactoryImpl.init();

    public BooleanParamDef createBooleanParamDef();

    public ChoiceContainerDef createChoiceContainerDef();

    public ParamConfContainerDef createParamConfContainerDef();

    public ConfigurationClassAffection createConfigurationClassAffection();

    public ImplementationConfigClass createImplementationConfigClass();

    public ChoiceReferenceParamDef createChoiceReferenceParamDef();

    public DerivedBooleanParamDef createDerivedBooleanParamDef();

    public DerivedEnumerationParamDef createDerivedEnumerationParamDef();

    public EnumerationParamDef createEnumerationParamDef();

    public EnumerationLiteralDef createEnumerationLiteralDef();

    public DerivedFloatParamDef createDerivedFloatParamDef();

    public FloatParamDef createFloatParamDef();

    public DerivedIntegerParamDef createDerivedIntegerParamDef();

    public IntegerParamDef createIntegerParamDef();

    public DerivedStringParamDef createDerivedStringParamDef();

    public StringParamDef createStringParamDef();

    public EcuParameterDefinition createEcuParameterDefinition();

    public ModuleDef createModuleDef();

    public ForeignReferenceParamDef createForeignReferenceParamDef();

    public FunctionNameDef createFunctionNameDef();

    public LinkerSymbolDef createLinkerSymbolDef();

    public InstanceReferenceParamDef createInstanceReferenceParamDef();

    public ReferenceParamDef createReferenceParamDef();

    public SymbolicNameReferenceParamDef createSymbolicNameReferenceParamDef();

    public EcucparameterdefPackage getEcucparameterdefPackage();
}

