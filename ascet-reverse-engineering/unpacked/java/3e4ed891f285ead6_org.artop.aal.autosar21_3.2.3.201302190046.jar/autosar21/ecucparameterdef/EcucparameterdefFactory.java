/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.ecucparameterdef;

import autosar21.ecucparameterdef.BooleanParamDef;
import autosar21.ecucparameterdef.ChoiceContainerDef;
import autosar21.ecucparameterdef.ChoiceReferenceDef;
import autosar21.ecucparameterdef.ConfigurationClassAffection;
import autosar21.ecucparameterdef.DerivedBooleanParamDef;
import autosar21.ecucparameterdef.DerivedEnumerationParamDef;
import autosar21.ecucparameterdef.DerivedFloatParamDef;
import autosar21.ecucparameterdef.DerivedIntegerParamDef;
import autosar21.ecucparameterdef.DerivedStringParamDef;
import autosar21.ecucparameterdef.EcuParameterDefinition;
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
import autosar21.ecucparameterdef.impl.EcucparameterdefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcucparameterdefFactory
extends EFactory {
    public static final EcucparameterdefFactory eINSTANCE = EcucparameterdefFactoryImpl.init();

    public BooleanParamDef createBooleanParamDef();

    public ConfigurationClassAffection createConfigurationClassAffection();

    public ChoiceContainerDef createChoiceContainerDef();

    public ParamConfContainerDef createParamConfContainerDef();

    public ChoiceReferenceDef createChoiceReferenceDef();

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

    public ForeignReferenceDef createForeignReferenceDef();

    public FunctionNameDef createFunctionNameDef();

    public LinkerSymbolDef createLinkerSymbolDef();

    public InstanceReferenceDef createInstanceReferenceDef();

    public ReferenceDef createReferenceDef();

    public SymbolicNameReferenceDef createSymbolicNameReferenceDef();

    public EcucparameterdefPackage getEcucparameterdefPackage();
}

