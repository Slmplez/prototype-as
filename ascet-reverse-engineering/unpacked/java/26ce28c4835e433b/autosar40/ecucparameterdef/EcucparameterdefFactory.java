/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.ecucparameterdef;

import autosar40.ecucparameterdef.EcucAddInfoParamDef;
import autosar40.ecucparameterdef.EcucBooleanParamDef;
import autosar40.ecucparameterdef.EcucChoiceContainerDef;
import autosar40.ecucparameterdef.EcucChoiceReferenceDef;
import autosar40.ecucparameterdef.EcucConditionFormula;
import autosar40.ecucparameterdef.EcucConditionSpecification;
import autosar40.ecucparameterdef.EcucConfigurationClassAffection;
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
import autosar40.ecucparameterdef.EcucParameterDerivationFormula;
import autosar40.ecucparameterdef.EcucQuery;
import autosar40.ecucparameterdef.EcucQueryExpression;
import autosar40.ecucparameterdef.EcucReferenceDef;
import autosar40.ecucparameterdef.EcucStringParamDef;
import autosar40.ecucparameterdef.EcucStringParamDefConditional;
import autosar40.ecucparameterdef.EcucSymbolicNameReferenceDef;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecucparameterdef.impl.EcucparameterdefFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EcucparameterdefFactory
extends EFactory {
    public static final EcucparameterdefFactory eINSTANCE = EcucparameterdefFactoryImpl.init();

    public EcucConditionSpecification createEcucConditionSpecification();

    public EcucQuery createEcucQuery();

    public EcucQueryExpression createEcucQueryExpression();

    public EcucConditionFormula createEcucConditionFormula();

    public EcucImplementationConfigurationClass createEcucImplementationConfigurationClass();

    public EcucConfigurationClassAffection createEcucConfigurationClassAffection();

    public EcucDerivationSpecification createEcucDerivationSpecification();

    public EcucParameterDerivationFormula createEcucParameterDerivationFormula();

    public EcucAddInfoParamDef createEcucAddInfoParamDef();

    public EcucBooleanParamDef createEcucBooleanParamDef();

    public EcucChoiceContainerDef createEcucChoiceContainerDef();

    public EcucParamConfContainerDef createEcucParamConfContainerDef();

    public EcucChoiceReferenceDef createEcucChoiceReferenceDef();

    public EcucDefinitionCollection createEcucDefinitionCollection();

    public EcucModuleDef createEcucModuleDef();

    public EcucEnumerationLiteralDef createEcucEnumerationLiteralDef();

    public EcucEnumerationParamDef createEcucEnumerationParamDef();

    public EcucFloatParamDef createEcucFloatParamDef();

    public EcucForeignReferenceDef createEcucForeignReferenceDef();

    public EcucFunctionNameDef createEcucFunctionNameDef();

    public EcucFunctionNameDefConditional createEcucFunctionNameDefConditional();

    public EcucInstanceReferenceDef createEcucInstanceReferenceDef();

    public EcucIntegerParamDef createEcucIntegerParamDef();

    public EcucLinkerSymbolDef createEcucLinkerSymbolDef();

    public EcucLinkerSymbolDefConditional createEcucLinkerSymbolDefConditional();

    public EcucMultilineStringParamDef createEcucMultilineStringParamDef();

    public EcucMultilineStringParamDefConditional createEcucMultilineStringParamDefConditional();

    public EcucReferenceDef createEcucReferenceDef();

    public EcucStringParamDef createEcucStringParamDef();

    public EcucStringParamDefConditional createEcucStringParamDefConditional();

    public EcucSymbolicNameReferenceDef createEcucSymbolicNameReferenceDef();

    public EcucparameterdefPackage getEcucparameterdefPackage();
}

