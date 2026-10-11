/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 */
package gautosar.util;

import gautosar.gcommonstructure.gbasetypes.GBaseType;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeAbsSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeDirectDefinition;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeMaxSize;
import gautosar.gcommonstructure.gbasetypes.GBaseTypeSizeDefinition;
import gautosar.gcommonstructure.gbasetypes.GSwBaseType;
import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gbasetypes.util.GbasetypesSwitch;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gconstants.util.GconstantsSwitch;
import gautosar.gcommonstructure.gdatadefproperties.GSwDataDefPropsConditional;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gdatadefproperties.util.GdatadefpropertiesSwitch;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.gimplementation.util.GimplementationSwitch;
import gautosar.gcommonstructure.ginternalbehavior.GExclusiveArea;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import gautosar.gcommonstructure.ginternalbehavior.util.GinternalbehaviorSwitch;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclaration;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroup;
import gautosar.gcommonstructure.gmodedeclaration.GModeDeclarationGroupPrototype;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import gautosar.gcommonstructure.gmodedeclaration.util.GmodedeclarationSwitch;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import gautosar.gcommonstructure.gresourceconsumption.util.GresourceconsumptionSwitch;
import gautosar.gcommonstructure.gsystemconstant.GSwSystemconst;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import gautosar.gcommonstructure.gsystemconstant.util.GsystemconstantSwitch;
import gautosar.gecucdescription.GBooleanValue;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GEnumerationValue;
import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GFunctionNameValue;
import gautosar.gecucdescription.GInstanceReferenceValue;
import gautosar.gecucdescription.GIntegerValue;
import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucdescription.GStringValue;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucdescription.util.GecucdescriptionSwitch;
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
import gautosar.gecucparameterdef.GecucparameterdefPackage;
import gautosar.gecucparameterdef.util.GecucparameterdefSwitch;
import gautosar.ggenericstructure.gformulalanguage.GFormulaExpression;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.gformulalanguage.util.GformulalanguageSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GRemark;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.util.GinlinetextmodelSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.util.GlanguagedatamodelSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.util.GmultilanguagedataSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.util.GdocumentationSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import gautosar.ggenericstructure.ginfrastructure.util.GinfrastructureSwitch;
import gautosar.ggenericstructure.gvarianthandling.GAttributeValueVariationPoint;
import gautosar.ggenericstructure.gvarianthandling.GSwSystemconstDependentFormula;
import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import gautosar.ggenericstructure.gvarianthandling.util.GvarianthandlingSwitch;
import gautosar.gswcomponents.gcommunication.GClientComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GNonqueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GPPortComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GQueuedSenderComSpec;
import gautosar.gswcomponents.gcommunication.GRPortComSpec;
import gautosar.gswcomponents.gcommunication.GReceiverComSpec;
import gautosar.gswcomponents.gcommunication.GSenderComSpec;
import gautosar.gswcomponents.gcommunication.GServerComSpec;
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import gautosar.gswcomponents.gcommunication.util.GcommunicationSwitch;
import gautosar.gswcomponents.gcomponents.GApplicationSwComponentType;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;
import gautosar.gswcomponents.gcomponents.GServiceSwComponentType;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomponents.util.GcomponentsSwitch;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
import gautosar.gswcomponents.gcomposition.GSwConnector;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeProviderIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GAssemblyConnectorPrototypeRequesterIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GPPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.GRPortInCompositionIRef;
import gautosar.gswcomponents.gcomposition.ginstancerefs.util.GinstancerefsSwitch;
import gautosar.gswcomponents.gcomposition.util.GcompositionSwitch;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.util.GcomputationmethodSwitch;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationCompositeElementDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GApplicationRecordElement;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GAutosarDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GParameterDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GVariableDataPrototype;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import gautosar.gswcomponents.gdatatype.gdataprototypes.util.GdataprototypesSwitch;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationCompositeDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationPrimitiveDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationRecordDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GAutosarDataType;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GAbstractLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.util.GlocalconstraintsSwitch;
import gautosar.gswcomponents.gdatatype.gdatatypes.util.GdatatypesSwitch;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import gautosar.gswcomponents.gdatatype.gunits.util.GunitsSwitch;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GNvDataInterface;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import gautosar.gswcomponents.gportinterface.GTriggerInterface;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import gautosar.gswcomponents.gportinterface.util.GportinterfaceSwitch;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import gautosar.gswcomponents.gswcimplementation.util.GswcimplementationSwitch;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GParameterAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GVariableAccess;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.util.GdataelementsSwitch;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GModeSwitchPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.util.GmodedeclarationgroupSwitch;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.util.GperinstancememorySwitch;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GAsynchronousServerCallReturnsEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceiveErrorEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataReceivedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GDataSendCompletedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GOperationInvokedEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GRTEEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GSwcModeSwitchEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GTimingEvent;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GWaitPoint;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.util.GrteeventsSwitch;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GSynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.util.GservercallSwitch;
import gautosar.gswcomponents.gswcinternalbehavior.util.GswcinternalbehaviorSwitch;
import gautosar.gsystem.GSystem;
import gautosar.gsystem.GsystemPackage;
import gautosar.gsystem.util.GsystemSwitch;
import java.util.HashMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GAutosarSwitch<T> {
    private PkgMap pkgMap = new PkgMap();

    public T doSwitch(EObject o) {
        Switch swtch = (Switch)this.pkgMap.get(o.eClass().getEPackage());
        return swtch == null ? null : (T)swtch.doSwitch(o);
    }

    public T caseGBaseType(GBaseType aGBaseType) {
        return null;
    }

    public T caseGBaseTypeAbsSize(GBaseTypeAbsSize aGBaseTypeAbsSize) {
        return null;
    }

    public T caseGBaseTypeDefinition(GBaseTypeDefinition aGBaseTypeDefinition) {
        return null;
    }

    public T caseGBaseTypeDirectDefinition(GBaseTypeDirectDefinition aGBaseTypeDirectDefinition) {
        return null;
    }

    public T caseGBaseTypeMaxSize(GBaseTypeMaxSize aGBaseTypeMaxSize) {
        return null;
    }

    public T caseGBaseTypeSizeDefinition(GBaseTypeSizeDefinition aGBaseTypeSizeDefinition) {
        return null;
    }

    public T caseGSwBaseType(GSwBaseType aGSwBaseType) {
        return null;
    }

    public T caseGValueSpecification(GValueSpecification aGValueSpecification) {
        return null;
    }

    public T caseGSwDataDefPropsConditional(GSwDataDefPropsConditional aGSwDataDefPropsConditional) {
        return null;
    }

    public T caseGAutosarEngineeringObject(GAutosarEngineeringObject aGAutosarEngineeringObject) {
        return null;
    }

    public T caseGCode(GCode aGCode) {
        return null;
    }

    public T caseGEngineeringObject(GEngineeringObject aGEngineeringObject) {
        return null;
    }

    public T caseGImplementation(GImplementation aGImplementation) {
        return null;
    }

    public T caseGExclusiveArea(GExclusiveArea aGExclusiveArea) {
        return null;
    }

    public T caseGExecutableEntity(GExecutableEntity aGExecutableEntity) {
        return null;
    }

    public T caseGInternalBehavior(GInternalBehavior aGInternalBehavior) {
        return null;
    }

    public T caseGModeDeclaration(GModeDeclaration aGModeDeclaration) {
        return null;
    }

    public T caseGModeDeclarationGroup(GModeDeclarationGroup aGModeDeclarationGroup) {
        return null;
    }

    public T caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype aGModeDeclarationGroupPrototype) {
        return null;
    }

    public T caseGResourceConsumption(GResourceConsumption aGResourceConsumption) {
        return null;
    }

    public T caseGSwSystemconst(GSwSystemconst aGSwSystemconst) {
        return null;
    }

    public T caseGBooleanValue(GBooleanValue aGBooleanValue) {
        return null;
    }

    public T caseGConfigReferenceValue(GConfigReferenceValue aGConfigReferenceValue) {
        return null;
    }

    public T caseGContainer(GContainer aGContainer) {
        return null;
    }

    public T caseGEnumerationValue(GEnumerationValue aGEnumerationValue) {
        return null;
    }

    public T caseGFloatValue(GFloatValue aGFloatValue) {
        return null;
    }

    public T caseGFunctionNameValue(GFunctionNameValue aGFunctionNameValue) {
        return null;
    }

    public T caseGInstanceReferenceValue(GInstanceReferenceValue aGInstanceReferenceValue) {
        return null;
    }

    public T caseGIntegerValue(GIntegerValue aGIntegerValue) {
        return null;
    }

    public T caseGLinkerSymbolValue(GLinkerSymbolValue aGLinkerSymbolValue) {
        return null;
    }

    public T caseGModuleConfiguration(GModuleConfiguration aGModuleConfiguration) {
        return null;
    }

    public T caseGParameterValue(GParameterValue aGParameterValue) {
        return null;
    }

    public T caseGReferenceValue(GReferenceValue aGReferenceValue) {
        return null;
    }

    public T caseGStringValue(GStringValue aGStringValue) {
        return null;
    }

    public T caseGAbstractStringParamDef(GAbstractStringParamDef aGAbstractStringParamDef) {
        return null;
    }

    public T caseGBooleanParamDef(GBooleanParamDef aGBooleanParamDef) {
        return null;
    }

    public T caseGChoiceContainerDef(GChoiceContainerDef aGChoiceContainerDef) {
        return null;
    }

    public T caseGChoiceReferenceDef(GChoiceReferenceDef aGChoiceReferenceDef) {
        return null;
    }

    public T caseGCommonConfigurationAttributes(GCommonConfigurationAttributes aGCommonConfigurationAttributes) {
        return null;
    }

    public T caseGConfigParameter(GConfigParameter aGConfigParameter) {
        return null;
    }

    public T caseGConfigReference(GConfigReference aGConfigReference) {
        return null;
    }

    public T caseGContainerDef(GContainerDef aGContainerDef) {
        return null;
    }

    public T caseGEnumerationLiteralDef(GEnumerationLiteralDef aGEnumerationLiteralDef) {
        return null;
    }

    public T caseGEnumerationParamDef(GEnumerationParamDef aGEnumerationParamDef) {
        return null;
    }

    public T caseGFloatParamDef(GFloatParamDef aGFloatParamDef) {
        return null;
    }

    public T caseGForeignReferenceDef(GForeignReferenceDef aGForeignReferenceDef) {
        return null;
    }

    public T caseGFunctionNameDef(GFunctionNameDef aGFunctionNameDef) {
        return null;
    }

    public T caseGInstanceReferenceDef(GInstanceReferenceDef aGInstanceReferenceDef) {
        return null;
    }

    public T caseGIntegerParamDef(GIntegerParamDef aGIntegerParamDef) {
        return null;
    }

    public T caseGLinkerSymbolDef(GLinkerSymbolDef aGLinkerSymbolDef) {
        return null;
    }

    public T caseGModuleDef(GModuleDef aGModuleDef) {
        return null;
    }

    public T caseGParamConfContainerDef(GParamConfContainerDef aGParamConfContainerDef) {
        return null;
    }

    public T caseGParamConfMultiplicity(GParamConfMultiplicity aGParamConfMultiplicity) {
        return null;
    }

    public T caseGReferenceDef(GReferenceDef aGReferenceDef) {
        return null;
    }

    public T caseGStringParamDef(GStringParamDef aGStringParamDef) {
        return null;
    }

    public T caseGSymbolicNameReferenceDef(GSymbolicNameReferenceDef aGSymbolicNameReferenceDef) {
        return null;
    }

    public T caseGFormulaExpression(GFormulaExpression aGFormulaExpression) {
        return null;
    }

    public T caseGAnnotation(GAnnotation aGAnnotation) {
        return null;
    }

    public T caseGGeneralAnnotation(GGeneralAnnotation aGGeneralAnnotation) {
        return null;
    }

    public T caseGRemark(GRemark aGRemark) {
        return null;
    }

    public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph aGMixedContentForOverviewParagraph) {
        return null;
    }

    public T caseGMixedContentForParagraph(GMixedContentForParagraph aGMixedContentForParagraph) {
        return null;
    }

    public T caseGLOverviewParagraph(GLOverviewParagraph aGLOverviewParagraph) {
        return null;
    }

    public T caseGLParagraph(GLParagraph aGLParagraph) {
        return null;
    }

    public T caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph aGMultiLanguageOverviewParagraph) {
        return null;
    }

    public T caseGMultiLanguageParagraph(GMultiLanguageParagraph aGMultiLanguageParagraph) {
        return null;
    }

    public T caseGARObject(GARObject aGARObject) {
        return null;
    }

    public T caseGARPackage(GARPackage aGARPackage) {
        return null;
    }

    public T caseGAUTOSAR(GAUTOSAR aGAUTOSAR) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable aGIdentifiable) {
        return null;
    }

    public T caseGPackageableElement(GPackageableElement aGPackageableElement) {
        return null;
    }

    public T caseGReferrable(GReferrable aGReferrable) {
        return null;
    }

    public T caseGAttributeValueVariationPoint(GAttributeValueVariationPoint aGAttributeValueVariationPoint) {
        return null;
    }

    public T caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula aGSwSystemconstDependentFormula) {
        return null;
    }

    public T caseGClientComSpec(GClientComSpec aGClientComSpec) {
        return null;
    }

    public T caseGNonqueuedReceiverComSpec(GNonqueuedReceiverComSpec aGNonqueuedReceiverComSpec) {
        return null;
    }

    public T caseGNonqueuedSenderComSpec(GNonqueuedSenderComSpec aGNonqueuedSenderComSpec) {
        return null;
    }

    public T caseGPPortComSpec(GPPortComSpec aGPPortComSpec) {
        return null;
    }

    public T caseGQueuedReceiverComSpec(GQueuedReceiverComSpec aGQueuedReceiverComSpec) {
        return null;
    }

    public T caseGQueuedSenderComSpec(GQueuedSenderComSpec aGQueuedSenderComSpec) {
        return null;
    }

    public T caseGRPortComSpec(GRPortComSpec aGRPortComSpec) {
        return null;
    }

    public T caseGReceiverComSpec(GReceiverComSpec aGReceiverComSpec) {
        return null;
    }

    public T caseGSenderComSpec(GSenderComSpec aGSenderComSpec) {
        return null;
    }

    public T caseGServerComSpec(GServerComSpec aGServerComSpec) {
        return null;
    }

    public T caseGApplicationSwComponentType(GApplicationSwComponentType aGApplicationSwComponentType) {
        return null;
    }

    public T caseGAtomicSwComponentType(GAtomicSwComponentType aGAtomicSwComponentType) {
        return null;
    }

    public T caseGPPortPrototype(GPPortPrototype aGPPortPrototype) {
        return null;
    }

    public T caseGPortPrototype(GPortPrototype aGPortPrototype) {
        return null;
    }

    public T caseGRPortPrototype(GRPortPrototype aGRPortPrototype) {
        return null;
    }

    public T caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType aGSensorActuatorSwComponentType) {
        return null;
    }

    public T caseGServiceSwComponentType(GServiceSwComponentType aGServiceSwComponentType) {
        return null;
    }

    public T caseGSwComponentType(GSwComponentType aGSwComponentType) {
        return null;
    }

    public T caseGModeGroupInAtomicSwcIRef(GModeGroupInAtomicSwcIRef aGModeGroupInAtomicSwcIRef) {
        return null;
    }

    public T caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef aGOperationInAtomicSwcIRef) {
        return null;
    }

    public T caseGPModeGroupInAtomicSwcIRef(GPModeGroupInAtomicSwcIRef aGPModeGroupInAtomicSwcIRef) {
        return null;
    }

    public T caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef aGPOperationInAtomicSwcIRef) {
        return null;
    }

    public T caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef aGPVariableInAtomicSwcIRef) {
        return null;
    }

    public T caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef aGParameterInAtomicSwcIRef) {
        return null;
    }

    public T caseGRModeGroupInAtomicSwcIRef(GRModeGroupInAtomicSwcIRef aGRModeGroupInAtomicSwcIRef) {
        return null;
    }

    public T caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef aGRModeInAtomicSwcIRef) {
        return null;
    }

    public T caseGROperationInAtomicSwcIRef(GROperationInAtomicSwcIRef aGROperationInAtomicSwcIRef) {
        return null;
    }

    public T caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef aGRVariableInAtomicSwcIRef) {
        return null;
    }

    public T caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef aGVariableInAtomicSwcIRef) {
        return null;
    }

    public T caseGAssemblySwConnector(GAssemblySwConnector aGAssemblySwConnector) {
        return null;
    }

    public T caseGCompositionSwComponentType(GCompositionSwComponentType aGCompositionSwComponentType) {
        return null;
    }

    public T caseGSwComponentPrototype(GSwComponentPrototype aGSwComponentPrototype) {
        return null;
    }

    public T caseGSwConnector(GSwConnector aGSwConnector) {
        return null;
    }

    public T caseGAssemblyConnectorPrototypeProviderIRef(GAssemblyConnectorPrototypeProviderIRef aGAssemblyConnectorPrototypeProviderIRef) {
        return null;
    }

    public T caseGAssemblyConnectorPrototypeRequesterIRef(GAssemblyConnectorPrototypeRequesterIRef aGAssemblyConnectorPrototypeRequesterIRef) {
        return null;
    }

    public T caseGPPortInCompositionIRef(GPPortInCompositionIRef aGPPortInCompositionIRef) {
        return null;
    }

    public T caseGRPortInCompositionIRef(GRPortInCompositionIRef aGRPortInCompositionIRef) {
        return null;
    }

    public T caseGCompu(GCompu aGCompu) {
        return null;
    }

    public T caseGCompuConst(GCompuConst aGCompuConst) {
        return null;
    }

    public T caseGCompuConstContent(GCompuConstContent aGCompuConstContent) {
        return null;
    }

    public T caseGCompuConstFormulaContent(GCompuConstFormulaContent aGCompuConstFormulaContent) {
        return null;
    }

    public T caseGCompuConstNumericContent(GCompuConstNumericContent aGCompuConstNumericContent) {
        return null;
    }

    public T caseGCompuConstTextContent(GCompuConstTextContent aGCompuConstTextContent) {
        return null;
    }

    public T caseGCompuContent(GCompuContent aGCompuContent) {
        return null;
    }

    public T caseGCompuMethod(GCompuMethod aGCompuMethod) {
        return null;
    }

    public T caseGCompuNominatorDenominator(GCompuNominatorDenominator aGCompuNominatorDenominator) {
        return null;
    }

    public T caseGCompuRationalCoeffs(GCompuRationalCoeffs aGCompuRationalCoeffs) {
        return null;
    }

    public T caseGCompuScale(GCompuScale aGCompuScale) {
        return null;
    }

    public T caseGCompuScaleConstantContents(GCompuScaleConstantContents aGCompuScaleConstantContents) {
        return null;
    }

    public T caseGCompuScaleContents(GCompuScaleContents aGCompuScaleContents) {
        return null;
    }

    public T caseGCompuScaleRationalFormula(GCompuScaleRationalFormula aGCompuScaleRationalFormula) {
        return null;
    }

    public T caseGCompuScales(GCompuScales aGCompuScales) {
        return null;
    }

    public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype aGApplicationCompositeElementDataPrototype) {
        return null;
    }

    public T caseGApplicationRecordElement(GApplicationRecordElement aGApplicationRecordElement) {
        return null;
    }

    public T caseGAutosarDataPrototype(GAutosarDataPrototype aGAutosarDataPrototype) {
        return null;
    }

    public T caseGDataPrototype(GDataPrototype aGDataPrototype) {
        return null;
    }

    public T caseGParameterDataPrototype(GParameterDataPrototype aGParameterDataPrototype) {
        return null;
    }

    public T caseGVariableDataPrototype(GVariableDataPrototype aGVariableDataPrototype) {
        return null;
    }

    public T caseGARLimit(GARLimit aGARLimit) {
        return null;
    }

    public T caseGApplicationCompositeDataType(GApplicationCompositeDataType aGApplicationCompositeDataType) {
        return null;
    }

    public T caseGApplicationDataType(GApplicationDataType aGApplicationDataType) {
        return null;
    }

    public T caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType aGApplicationPrimitiveDataType) {
        return null;
    }

    public T caseGApplicationRecordDataType(GApplicationRecordDataType aGApplicationRecordDataType) {
        return null;
    }

    public T caseGAutosarDataType(GAutosarDataType aGAutosarDataType) {
        return null;
    }

    public T caseGAbstractLimit(GAbstractLimit aGAbstractLimit) {
        return null;
    }

    public T caseGLimit(GLimit aGLimit) {
        return null;
    }

    public T caseGPhysicalDimension(GPhysicalDimension aGPhysicalDimension) {
        return null;
    }

    public T caseGUnit(GUnit aGUnit) {
        return null;
    }

    public T caseGApplicationError(GApplicationError aGApplicationError) {
        return null;
    }

    public T caseGArgumentDataPrototype(GArgumentDataPrototype aGArgumentDataPrototype) {
        return null;
    }

    public T caseGClientServerInterface(GClientServerInterface aGClientServerInterface) {
        return null;
    }

    public T caseGClientServerOperation(GClientServerOperation aGClientServerOperation) {
        return null;
    }

    public T caseGModeSwitchInterface(GModeSwitchInterface aGModeSwitchInterface) {
        return null;
    }

    public T caseGNvDataInterface(GNvDataInterface aGNvDataInterface) {
        return null;
    }

    public T caseGParameterInterface(GParameterInterface aGParameterInterface) {
        return null;
    }

    public T caseGPortInterface(GPortInterface aGPortInterface) {
        return null;
    }

    public T caseGSenderReceiverInterface(GSenderReceiverInterface aGSenderReceiverInterface) {
        return null;
    }

    public T caseGTriggerInterface(GTriggerInterface aGTriggerInterface) {
        return null;
    }

    public T caseGSwcImplementation(GSwcImplementation aGSwcImplementation) {
        return null;
    }

    public T caseGRunnableEntity(GRunnableEntity aGRunnableEntity) {
        return null;
    }

    public T caseGSwcInternalBehavior(GSwcInternalBehavior aGSwcInternalBehavior) {
        return null;
    }

    public T caseGParameterAccess(GParameterAccess aGParameterAccess) {
        return null;
    }

    public T caseGVariableAccess(GVariableAccess aGVariableAccess) {
        return null;
    }

    public T caseGModeSwitchPoint(GModeSwitchPoint aGModeSwitchPoint) {
        return null;
    }

    public T caseGPerInstanceMemory(GPerInstanceMemory aGPerInstanceMemory) {
        return null;
    }

    public T caseGAsynchronousServerCallReturnsEvent(GAsynchronousServerCallReturnsEvent aGAsynchronousServerCallReturnsEvent) {
        return null;
    }

    public T caseGDataReceiveErrorEvent(GDataReceiveErrorEvent aGDataReceiveErrorEvent) {
        return null;
    }

    public T caseGDataReceivedEvent(GDataReceivedEvent aGDataReceivedEvent) {
        return null;
    }

    public T caseGDataSendCompletedEvent(GDataSendCompletedEvent aGDataSendCompletedEvent) {
        return null;
    }

    public T caseGOperationInvokedEvent(GOperationInvokedEvent aGOperationInvokedEvent) {
        return null;
    }

    public T caseGRTEEvent(GRTEEvent aGRTEEvent) {
        return null;
    }

    public T caseGSwcModeSwitchEvent(GSwcModeSwitchEvent aGSwcModeSwitchEvent) {
        return null;
    }

    public T caseGTimingEvent(GTimingEvent aGTimingEvent) {
        return null;
    }

    public T caseGWaitPoint(GWaitPoint aGWaitPoint) {
        return null;
    }

    public T caseGAsynchronousServerCallPoint(GAsynchronousServerCallPoint aGAsynchronousServerCallPoint) {
        return null;
    }

    public T caseGServerCallPoint(GServerCallPoint aGServerCallPoint) {
        return null;
    }

    public T caseGSynchronousServerCallPoint(GSynchronousServerCallPoint aGSynchronousServerCallPoint) {
        return null;
    }

    public T caseGSystem(GSystem aGSystem) {
        return null;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class PkgMap
    extends HashMap<EPackage, Switch<T>> {
        private static final long serialVersionUID = 1L;

        public PkgMap() {
            this.put(GbasetypesPackage.eINSTANCE, new Switch1());
            this.put(GconstantsPackage.eINSTANCE, new Switch2());
            this.put(GdatadefpropertiesPackage.eINSTANCE, new Switch3());
            this.put(GimplementationPackage.eINSTANCE, new Switch4());
            this.put(GinternalbehaviorPackage.eINSTANCE, new Switch5());
            this.put(GmodedeclarationPackage.eINSTANCE, new Switch6());
            this.put(GresourceconsumptionPackage.eINSTANCE, new Switch7());
            this.put(GsystemconstantPackage.eINSTANCE, new Switch8());
            this.put(GecucdescriptionPackage.eINSTANCE, new Switch9());
            this.put(GecucparameterdefPackage.eINSTANCE, new Switch10());
            this.put(GformulalanguagePackage.eINSTANCE, new Switch11());
            this.put(GdocumentationPackage.eINSTANCE, new Switch12());
            this.put(GinlinetextmodelPackage.eINSTANCE, new Switch13());
            this.put(GlanguagedatamodelPackage.eINSTANCE, new Switch14());
            this.put(GmultilanguagedataPackage.eINSTANCE, new Switch15());
            this.put(GinfrastructurePackage.eINSTANCE, new Switch16());
            this.put(GvarianthandlingPackage.eINSTANCE, new Switch17());
            this.put(GcommunicationPackage.eINSTANCE, new Switch18());
            this.put(GcomponentsPackage.eINSTANCE, new Switch19());
            this.put(GinstancerefsPackage.eINSTANCE, new Switch20());
            this.put(GcompositionPackage.eINSTANCE, new Switch21());
            this.put(gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage.eINSTANCE, new Switch22());
            this.put(GcomputationmethodPackage.eINSTANCE, new Switch23());
            this.put(GdataprototypesPackage.eINSTANCE, new Switch24());
            this.put(GdatatypesPackage.eINSTANCE, new Switch25());
            this.put(GlocalconstraintsPackage.eINSTANCE, new Switch26());
            this.put(GunitsPackage.eINSTANCE, new Switch27());
            this.put(GportinterfacePackage.eINSTANCE, new Switch28());
            this.put(GswcimplementationPackage.eINSTANCE, new Switch29());
            this.put(GswcinternalbehaviorPackage.eINSTANCE, new Switch30());
            this.put(GdataelementsPackage.eINSTANCE, new Switch31());
            this.put(GmodedeclarationgroupPackage.eINSTANCE, new Switch32());
            this.put(GperinstancememoryPackage.eINSTANCE, new Switch33());
            this.put(GrteeventsPackage.eINSTANCE, new Switch34());
            this.put(GservercallPackage.eINSTANCE, new Switch35());
            this.put(GsystemPackage.eINSTANCE, new Switch36());
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static interface Switch<T> {
        public T doSwitch(EObject var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch1
    extends GbasetypesSwitch<T>
    implements Switch<T> {
        private Switch1() {
        }

        @Override
        public T caseGBaseType(GBaseType o) {
            return GAutosarSwitch.this.caseGBaseType(o);
        }

        @Override
        public T caseGBaseTypeAbsSize(GBaseTypeAbsSize o) {
            return GAutosarSwitch.this.caseGBaseTypeAbsSize(o);
        }

        @Override
        public T caseGBaseTypeDefinition(GBaseTypeDefinition o) {
            return GAutosarSwitch.this.caseGBaseTypeDefinition(o);
        }

        @Override
        public T caseGBaseTypeDirectDefinition(GBaseTypeDirectDefinition o) {
            return GAutosarSwitch.this.caseGBaseTypeDirectDefinition(o);
        }

        @Override
        public T caseGBaseTypeMaxSize(GBaseTypeMaxSize o) {
            return GAutosarSwitch.this.caseGBaseTypeMaxSize(o);
        }

        @Override
        public T caseGBaseTypeSizeDefinition(GBaseTypeSizeDefinition o) {
            return GAutosarSwitch.this.caseGBaseTypeSizeDefinition(o);
        }

        @Override
        public T caseGSwBaseType(GSwBaseType o) {
            return GAutosarSwitch.this.caseGSwBaseType(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch10
    extends GecucparameterdefSwitch<T>
    implements Switch<T> {
        private Switch10() {
        }

        @Override
        public T caseGAbstractStringParamDef(GAbstractStringParamDef o) {
            return GAutosarSwitch.this.caseGAbstractStringParamDef(o);
        }

        @Override
        public T caseGBooleanParamDef(GBooleanParamDef o) {
            return GAutosarSwitch.this.caseGBooleanParamDef(o);
        }

        @Override
        public T caseGChoiceContainerDef(GChoiceContainerDef o) {
            return GAutosarSwitch.this.caseGChoiceContainerDef(o);
        }

        @Override
        public T caseGChoiceReferenceDef(GChoiceReferenceDef o) {
            return GAutosarSwitch.this.caseGChoiceReferenceDef(o);
        }

        @Override
        public T caseGCommonConfigurationAttributes(GCommonConfigurationAttributes o) {
            return GAutosarSwitch.this.caseGCommonConfigurationAttributes(o);
        }

        @Override
        public T caseGConfigParameter(GConfigParameter o) {
            return GAutosarSwitch.this.caseGConfigParameter(o);
        }

        @Override
        public T caseGConfigReference(GConfigReference o) {
            return GAutosarSwitch.this.caseGConfigReference(o);
        }

        @Override
        public T caseGContainerDef(GContainerDef o) {
            return GAutosarSwitch.this.caseGContainerDef(o);
        }

        @Override
        public T caseGEnumerationLiteralDef(GEnumerationLiteralDef o) {
            return GAutosarSwitch.this.caseGEnumerationLiteralDef(o);
        }

        @Override
        public T caseGEnumerationParamDef(GEnumerationParamDef o) {
            return GAutosarSwitch.this.caseGEnumerationParamDef(o);
        }

        @Override
        public T caseGFloatParamDef(GFloatParamDef o) {
            return GAutosarSwitch.this.caseGFloatParamDef(o);
        }

        @Override
        public T caseGForeignReferenceDef(GForeignReferenceDef o) {
            return GAutosarSwitch.this.caseGForeignReferenceDef(o);
        }

        @Override
        public T caseGFunctionNameDef(GFunctionNameDef o) {
            return GAutosarSwitch.this.caseGFunctionNameDef(o);
        }

        @Override
        public T caseGInstanceReferenceDef(GInstanceReferenceDef o) {
            return GAutosarSwitch.this.caseGInstanceReferenceDef(o);
        }

        @Override
        public T caseGIntegerParamDef(GIntegerParamDef o) {
            return GAutosarSwitch.this.caseGIntegerParamDef(o);
        }

        @Override
        public T caseGLinkerSymbolDef(GLinkerSymbolDef o) {
            return GAutosarSwitch.this.caseGLinkerSymbolDef(o);
        }

        @Override
        public T caseGModuleDef(GModuleDef o) {
            return GAutosarSwitch.this.caseGModuleDef(o);
        }

        @Override
        public T caseGParamConfContainerDef(GParamConfContainerDef o) {
            return GAutosarSwitch.this.caseGParamConfContainerDef(o);
        }

        @Override
        public T caseGParamConfMultiplicity(GParamConfMultiplicity o) {
            return GAutosarSwitch.this.caseGParamConfMultiplicity(o);
        }

        @Override
        public T caseGReferenceDef(GReferenceDef o) {
            return GAutosarSwitch.this.caseGReferenceDef(o);
        }

        @Override
        public T caseGStringParamDef(GStringParamDef o) {
            return GAutosarSwitch.this.caseGStringParamDef(o);
        }

        @Override
        public T caseGSymbolicNameReferenceDef(GSymbolicNameReferenceDef o) {
            return GAutosarSwitch.this.caseGSymbolicNameReferenceDef(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch11
    extends GformulalanguageSwitch<T>
    implements Switch<T> {
        private Switch11() {
        }

        @Override
        public T caseGFormulaExpression(GFormulaExpression o) {
            return GAutosarSwitch.this.caseGFormulaExpression(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch12
    extends GdocumentationSwitch<T>
    implements Switch<T> {
        private Switch12() {
        }

        @Override
        public T caseGAnnotation(GAnnotation o) {
            return GAutosarSwitch.this.caseGAnnotation(o);
        }

        @Override
        public T caseGGeneralAnnotation(GGeneralAnnotation o) {
            return GAutosarSwitch.this.caseGGeneralAnnotation(o);
        }

        @Override
        public T caseGRemark(GRemark o) {
            return GAutosarSwitch.this.caseGRemark(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch13
    extends GinlinetextmodelSwitch<T>
    implements Switch<T> {
        private Switch13() {
        }

        @Override
        public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph o) {
            return GAutosarSwitch.this.caseGMixedContentForOverviewParagraph(o);
        }

        @Override
        public T caseGMixedContentForParagraph(GMixedContentForParagraph o) {
            return GAutosarSwitch.this.caseGMixedContentForParagraph(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch14
    extends GlanguagedatamodelSwitch<T>
    implements Switch<T> {
        private Switch14() {
        }

        @Override
        public T caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph o) {
            return GAutosarSwitch.this.caseGMixedContentForOverviewParagraph(o);
        }

        @Override
        public T caseGMixedContentForParagraph(GMixedContentForParagraph o) {
            return GAutosarSwitch.this.caseGMixedContentForParagraph(o);
        }

        @Override
        public T caseGLOverviewParagraph(GLOverviewParagraph o) {
            return GAutosarSwitch.this.caseGLOverviewParagraph(o);
        }

        @Override
        public T caseGLParagraph(GLParagraph o) {
            return GAutosarSwitch.this.caseGLParagraph(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch15
    extends GmultilanguagedataSwitch<T>
    implements Switch<T> {
        private Switch15() {
        }

        @Override
        public T caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph o) {
            return GAutosarSwitch.this.caseGMultiLanguageOverviewParagraph(o);
        }

        @Override
        public T caseGMultiLanguageParagraph(GMultiLanguageParagraph o) {
            return GAutosarSwitch.this.caseGMultiLanguageParagraph(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch16
    extends GinfrastructureSwitch<T>
    implements Switch<T> {
        private Switch16() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGARPackage(GARPackage o) {
            return GAutosarSwitch.this.caseGARPackage(o);
        }

        @Override
        public T caseGAUTOSAR(GAUTOSAR o) {
            return GAutosarSwitch.this.caseGAUTOSAR(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch17
    extends GvarianthandlingSwitch<T>
    implements Switch<T> {
        private Switch17() {
        }

        @Override
        public T caseGFormulaExpression(GFormulaExpression o) {
            return GAutosarSwitch.this.caseGFormulaExpression(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGAttributeValueVariationPoint(GAttributeValueVariationPoint o) {
            return GAutosarSwitch.this.caseGAttributeValueVariationPoint(o);
        }

        @Override
        public T caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula o) {
            return GAutosarSwitch.this.caseGSwSystemconstDependentFormula(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch18
    extends GcommunicationSwitch<T>
    implements Switch<T> {
        private Switch18() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGClientComSpec(GClientComSpec o) {
            return GAutosarSwitch.this.caseGClientComSpec(o);
        }

        @Override
        public T caseGNonqueuedReceiverComSpec(GNonqueuedReceiverComSpec o) {
            return GAutosarSwitch.this.caseGNonqueuedReceiverComSpec(o);
        }

        @Override
        public T caseGNonqueuedSenderComSpec(GNonqueuedSenderComSpec o) {
            return GAutosarSwitch.this.caseGNonqueuedSenderComSpec(o);
        }

        @Override
        public T caseGPPortComSpec(GPPortComSpec o) {
            return GAutosarSwitch.this.caseGPPortComSpec(o);
        }

        @Override
        public T caseGQueuedReceiverComSpec(GQueuedReceiverComSpec o) {
            return GAutosarSwitch.this.caseGQueuedReceiverComSpec(o);
        }

        @Override
        public T caseGQueuedSenderComSpec(GQueuedSenderComSpec o) {
            return GAutosarSwitch.this.caseGQueuedSenderComSpec(o);
        }

        @Override
        public T caseGRPortComSpec(GRPortComSpec o) {
            return GAutosarSwitch.this.caseGRPortComSpec(o);
        }

        @Override
        public T caseGReceiverComSpec(GReceiverComSpec o) {
            return GAutosarSwitch.this.caseGReceiverComSpec(o);
        }

        @Override
        public T caseGSenderComSpec(GSenderComSpec o) {
            return GAutosarSwitch.this.caseGSenderComSpec(o);
        }

        @Override
        public T caseGServerComSpec(GServerComSpec o) {
            return GAutosarSwitch.this.caseGServerComSpec(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch19
    extends GcomponentsSwitch<T>
    implements Switch<T> {
        private Switch19() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGApplicationSwComponentType(GApplicationSwComponentType o) {
            return GAutosarSwitch.this.caseGApplicationSwComponentType(o);
        }

        @Override
        public T caseGAtomicSwComponentType(GAtomicSwComponentType o) {
            return GAutosarSwitch.this.caseGAtomicSwComponentType(o);
        }

        @Override
        public T caseGPPortPrototype(GPPortPrototype o) {
            return GAutosarSwitch.this.caseGPPortPrototype(o);
        }

        @Override
        public T caseGPortPrototype(GPortPrototype o) {
            return GAutosarSwitch.this.caseGPortPrototype(o);
        }

        @Override
        public T caseGRPortPrototype(GRPortPrototype o) {
            return GAutosarSwitch.this.caseGRPortPrototype(o);
        }

        @Override
        public T caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType o) {
            return GAutosarSwitch.this.caseGSensorActuatorSwComponentType(o);
        }

        @Override
        public T caseGServiceSwComponentType(GServiceSwComponentType o) {
            return GAutosarSwitch.this.caseGServiceSwComponentType(o);
        }

        @Override
        public T caseGSwComponentType(GSwComponentType o) {
            return GAutosarSwitch.this.caseGSwComponentType(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch2
    extends GconstantsSwitch<T>
    implements Switch<T> {
        private Switch2() {
        }

        @Override
        public T caseGValueSpecification(GValueSpecification o) {
            return GAutosarSwitch.this.caseGValueSpecification(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch20
    extends gautosar.gswcomponents.gcomponents.ginstancerefs.util.GinstancerefsSwitch<T>
    implements Switch<T> {
        private Switch20() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGModeGroupInAtomicSwcIRef(GModeGroupInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGModeGroupInAtomicSwcIRef(o);
        }

        @Override
        public T caseGOperationInAtomicSwcIRef(GOperationInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGOperationInAtomicSwcIRef(o);
        }

        @Override
        public T caseGPModeGroupInAtomicSwcIRef(GPModeGroupInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGPModeGroupInAtomicSwcIRef(o);
        }

        @Override
        public T caseGPOperationInAtomicSwcIRef(GPOperationInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGPOperationInAtomicSwcIRef(o);
        }

        @Override
        public T caseGPVariableInAtomicSwcIRef(GPVariableInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGPVariableInAtomicSwcIRef(o);
        }

        @Override
        public T caseGParameterInAtomicSwcIRef(GParameterInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGParameterInAtomicSwcIRef(o);
        }

        @Override
        public T caseGRModeGroupInAtomicSwcIRef(GRModeGroupInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGRModeGroupInAtomicSwcIRef(o);
        }

        @Override
        public T caseGRModeInAtomicSwcIRef(GRModeInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGRModeInAtomicSwcIRef(o);
        }

        @Override
        public T caseGROperationInAtomicSwcIRef(GROperationInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGROperationInAtomicSwcIRef(o);
        }

        @Override
        public T caseGRVariableInAtomicSwcIRef(GRVariableInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGRVariableInAtomicSwcIRef(o);
        }

        @Override
        public T caseGVariableInAtomicSwcIRef(GVariableInAtomicSwcIRef o) {
            return GAutosarSwitch.this.caseGVariableInAtomicSwcIRef(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch21
    extends GcompositionSwitch<T>
    implements Switch<T> {
        private Switch21() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGSwComponentType(GSwComponentType o) {
            return GAutosarSwitch.this.caseGSwComponentType(o);
        }

        @Override
        public T caseGAssemblySwConnector(GAssemblySwConnector o) {
            return GAutosarSwitch.this.caseGAssemblySwConnector(o);
        }

        @Override
        public T caseGCompositionSwComponentType(GCompositionSwComponentType o) {
            return GAutosarSwitch.this.caseGCompositionSwComponentType(o);
        }

        @Override
        public T caseGSwComponentPrototype(GSwComponentPrototype o) {
            return GAutosarSwitch.this.caseGSwComponentPrototype(o);
        }

        @Override
        public T caseGSwConnector(GSwConnector o) {
            return GAutosarSwitch.this.caseGSwConnector(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch22
    extends GinstancerefsSwitch<T>
    implements Switch<T> {
        private Switch22() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGAssemblyConnectorPrototypeProviderIRef(GAssemblyConnectorPrototypeProviderIRef o) {
            return GAutosarSwitch.this.caseGAssemblyConnectorPrototypeProviderIRef(o);
        }

        @Override
        public T caseGAssemblyConnectorPrototypeRequesterIRef(GAssemblyConnectorPrototypeRequesterIRef o) {
            return GAutosarSwitch.this.caseGAssemblyConnectorPrototypeRequesterIRef(o);
        }

        @Override
        public T caseGPPortInCompositionIRef(GPPortInCompositionIRef o) {
            return GAutosarSwitch.this.caseGPPortInCompositionIRef(o);
        }

        @Override
        public T caseGRPortInCompositionIRef(GRPortInCompositionIRef o) {
            return GAutosarSwitch.this.caseGRPortInCompositionIRef(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch23
    extends GcomputationmethodSwitch<T>
    implements Switch<T> {
        private Switch23() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGCompu(GCompu o) {
            return GAutosarSwitch.this.caseGCompu(o);
        }

        @Override
        public T caseGCompuConst(GCompuConst o) {
            return GAutosarSwitch.this.caseGCompuConst(o);
        }

        @Override
        public T caseGCompuConstContent(GCompuConstContent o) {
            return GAutosarSwitch.this.caseGCompuConstContent(o);
        }

        @Override
        public T caseGCompuConstFormulaContent(GCompuConstFormulaContent o) {
            return GAutosarSwitch.this.caseGCompuConstFormulaContent(o);
        }

        @Override
        public T caseGCompuConstNumericContent(GCompuConstNumericContent o) {
            return GAutosarSwitch.this.caseGCompuConstNumericContent(o);
        }

        @Override
        public T caseGCompuConstTextContent(GCompuConstTextContent o) {
            return GAutosarSwitch.this.caseGCompuConstTextContent(o);
        }

        @Override
        public T caseGCompuContent(GCompuContent o) {
            return GAutosarSwitch.this.caseGCompuContent(o);
        }

        @Override
        public T caseGCompuMethod(GCompuMethod o) {
            return GAutosarSwitch.this.caseGCompuMethod(o);
        }

        @Override
        public T caseGCompuNominatorDenominator(GCompuNominatorDenominator o) {
            return GAutosarSwitch.this.caseGCompuNominatorDenominator(o);
        }

        @Override
        public T caseGCompuRationalCoeffs(GCompuRationalCoeffs o) {
            return GAutosarSwitch.this.caseGCompuRationalCoeffs(o);
        }

        @Override
        public T caseGCompuScale(GCompuScale o) {
            return GAutosarSwitch.this.caseGCompuScale(o);
        }

        @Override
        public T caseGCompuScaleConstantContents(GCompuScaleConstantContents o) {
            return GAutosarSwitch.this.caseGCompuScaleConstantContents(o);
        }

        @Override
        public T caseGCompuScaleContents(GCompuScaleContents o) {
            return GAutosarSwitch.this.caseGCompuScaleContents(o);
        }

        @Override
        public T caseGCompuScaleRationalFormula(GCompuScaleRationalFormula o) {
            return GAutosarSwitch.this.caseGCompuScaleRationalFormula(o);
        }

        @Override
        public T caseGCompuScales(GCompuScales o) {
            return GAutosarSwitch.this.caseGCompuScales(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch24
    extends GdataprototypesSwitch<T>
    implements Switch<T> {
        private Switch24() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGApplicationCompositeElementDataPrototype(GApplicationCompositeElementDataPrototype o) {
            return GAutosarSwitch.this.caseGApplicationCompositeElementDataPrototype(o);
        }

        @Override
        public T caseGApplicationRecordElement(GApplicationRecordElement o) {
            return GAutosarSwitch.this.caseGApplicationRecordElement(o);
        }

        @Override
        public T caseGAutosarDataPrototype(GAutosarDataPrototype o) {
            return GAutosarSwitch.this.caseGAutosarDataPrototype(o);
        }

        @Override
        public T caseGDataPrototype(GDataPrototype o) {
            return GAutosarSwitch.this.caseGDataPrototype(o);
        }

        @Override
        public T caseGParameterDataPrototype(GParameterDataPrototype o) {
            return GAutosarSwitch.this.caseGParameterDataPrototype(o);
        }

        @Override
        public T caseGVariableDataPrototype(GVariableDataPrototype o) {
            return GAutosarSwitch.this.caseGVariableDataPrototype(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch25
    extends GdatatypesSwitch<T>
    implements Switch<T> {
        private Switch25() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGARLimit(GARLimit o) {
            return GAutosarSwitch.this.caseGARLimit(o);
        }

        @Override
        public T caseGApplicationCompositeDataType(GApplicationCompositeDataType o) {
            return GAutosarSwitch.this.caseGApplicationCompositeDataType(o);
        }

        @Override
        public T caseGApplicationDataType(GApplicationDataType o) {
            return GAutosarSwitch.this.caseGApplicationDataType(o);
        }

        @Override
        public T caseGApplicationPrimitiveDataType(GApplicationPrimitiveDataType o) {
            return GAutosarSwitch.this.caseGApplicationPrimitiveDataType(o);
        }

        @Override
        public T caseGApplicationRecordDataType(GApplicationRecordDataType o) {
            return GAutosarSwitch.this.caseGApplicationRecordDataType(o);
        }

        @Override
        public T caseGAutosarDataType(GAutosarDataType o) {
            return GAutosarSwitch.this.caseGAutosarDataType(o);
        }

        @Override
        public T caseGAbstractLimit(GAbstractLimit o) {
            return GAutosarSwitch.this.caseGAbstractLimit(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch26
    extends GlocalconstraintsSwitch<T>
    implements Switch<T> {
        private Switch26() {
        }

        @Override
        public T caseGFormulaExpression(GFormulaExpression o) {
            return GAutosarSwitch.this.caseGFormulaExpression(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGAttributeValueVariationPoint(GAttributeValueVariationPoint o) {
            return GAutosarSwitch.this.caseGAttributeValueVariationPoint(o);
        }

        @Override
        public T caseGSwSystemconstDependentFormula(GSwSystemconstDependentFormula o) {
            return GAutosarSwitch.this.caseGSwSystemconstDependentFormula(o);
        }

        @Override
        public T caseGAbstractLimit(GAbstractLimit o) {
            return GAutosarSwitch.this.caseGAbstractLimit(o);
        }

        @Override
        public T caseGLimit(GLimit o) {
            return GAutosarSwitch.this.caseGLimit(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch27
    extends GunitsSwitch<T>
    implements Switch<T> {
        private Switch27() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGPhysicalDimension(GPhysicalDimension o) {
            return GAutosarSwitch.this.caseGPhysicalDimension(o);
        }

        @Override
        public T caseGUnit(GUnit o) {
            return GAutosarSwitch.this.caseGUnit(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch28
    extends GportinterfaceSwitch<T>
    implements Switch<T> {
        private Switch28() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGAutosarDataPrototype(GAutosarDataPrototype o) {
            return GAutosarSwitch.this.caseGAutosarDataPrototype(o);
        }

        @Override
        public T caseGDataPrototype(GDataPrototype o) {
            return GAutosarSwitch.this.caseGDataPrototype(o);
        }

        @Override
        public T caseGApplicationError(GApplicationError o) {
            return GAutosarSwitch.this.caseGApplicationError(o);
        }

        @Override
        public T caseGArgumentDataPrototype(GArgumentDataPrototype o) {
            return GAutosarSwitch.this.caseGArgumentDataPrototype(o);
        }

        @Override
        public T caseGClientServerInterface(GClientServerInterface o) {
            return GAutosarSwitch.this.caseGClientServerInterface(o);
        }

        @Override
        public T caseGClientServerOperation(GClientServerOperation o) {
            return GAutosarSwitch.this.caseGClientServerOperation(o);
        }

        @Override
        public T caseGModeSwitchInterface(GModeSwitchInterface o) {
            return GAutosarSwitch.this.caseGModeSwitchInterface(o);
        }

        @Override
        public T caseGNvDataInterface(GNvDataInterface o) {
            return GAutosarSwitch.this.caseGNvDataInterface(o);
        }

        @Override
        public T caseGParameterInterface(GParameterInterface o) {
            return GAutosarSwitch.this.caseGParameterInterface(o);
        }

        @Override
        public T caseGPortInterface(GPortInterface o) {
            return GAutosarSwitch.this.caseGPortInterface(o);
        }

        @Override
        public T caseGSenderReceiverInterface(GSenderReceiverInterface o) {
            return GAutosarSwitch.this.caseGSenderReceiverInterface(o);
        }

        @Override
        public T caseGTriggerInterface(GTriggerInterface o) {
            return GAutosarSwitch.this.caseGTriggerInterface(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch29
    extends GswcimplementationSwitch<T>
    implements Switch<T> {
        private Switch29() {
        }

        @Override
        public T caseGImplementation(GImplementation o) {
            return GAutosarSwitch.this.caseGImplementation(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGSwcImplementation(GSwcImplementation o) {
            return GAutosarSwitch.this.caseGSwcImplementation(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch3
    extends GdatadefpropertiesSwitch<T>
    implements Switch<T> {
        private Switch3() {
        }

        @Override
        public T caseGSwDataDefPropsConditional(GSwDataDefPropsConditional o) {
            return GAutosarSwitch.this.caseGSwDataDefPropsConditional(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch30
    extends GswcinternalbehaviorSwitch<T>
    implements Switch<T> {
        private Switch30() {
        }

        @Override
        public T caseGExecutableEntity(GExecutableEntity o) {
            return GAutosarSwitch.this.caseGExecutableEntity(o);
        }

        @Override
        public T caseGInternalBehavior(GInternalBehavior o) {
            return GAutosarSwitch.this.caseGInternalBehavior(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGRunnableEntity(GRunnableEntity o) {
            return GAutosarSwitch.this.caseGRunnableEntity(o);
        }

        @Override
        public T caseGSwcInternalBehavior(GSwcInternalBehavior o) {
            return GAutosarSwitch.this.caseGSwcInternalBehavior(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch31
    extends GdataelementsSwitch<T>
    implements Switch<T> {
        private Switch31() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGParameterAccess(GParameterAccess o) {
            return GAutosarSwitch.this.caseGParameterAccess(o);
        }

        @Override
        public T caseGVariableAccess(GVariableAccess o) {
            return GAutosarSwitch.this.caseGVariableAccess(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch32
    extends GmodedeclarationgroupSwitch<T>
    implements Switch<T> {
        private Switch32() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGModeSwitchPoint(GModeSwitchPoint o) {
            return GAutosarSwitch.this.caseGModeSwitchPoint(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch33
    extends GperinstancememorySwitch<T>
    implements Switch<T> {
        private Switch33() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGPerInstanceMemory(GPerInstanceMemory o) {
            return GAutosarSwitch.this.caseGPerInstanceMemory(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch34
    extends GrteeventsSwitch<T>
    implements Switch<T> {
        private Switch34() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGAsynchronousServerCallReturnsEvent(GAsynchronousServerCallReturnsEvent o) {
            return GAutosarSwitch.this.caseGAsynchronousServerCallReturnsEvent(o);
        }

        @Override
        public T caseGDataReceiveErrorEvent(GDataReceiveErrorEvent o) {
            return GAutosarSwitch.this.caseGDataReceiveErrorEvent(o);
        }

        @Override
        public T caseGDataReceivedEvent(GDataReceivedEvent o) {
            return GAutosarSwitch.this.caseGDataReceivedEvent(o);
        }

        @Override
        public T caseGDataSendCompletedEvent(GDataSendCompletedEvent o) {
            return GAutosarSwitch.this.caseGDataSendCompletedEvent(o);
        }

        @Override
        public T caseGOperationInvokedEvent(GOperationInvokedEvent o) {
            return GAutosarSwitch.this.caseGOperationInvokedEvent(o);
        }

        @Override
        public T caseGRTEEvent(GRTEEvent o) {
            return GAutosarSwitch.this.caseGRTEEvent(o);
        }

        @Override
        public T caseGSwcModeSwitchEvent(GSwcModeSwitchEvent o) {
            return GAutosarSwitch.this.caseGSwcModeSwitchEvent(o);
        }

        @Override
        public T caseGTimingEvent(GTimingEvent o) {
            return GAutosarSwitch.this.caseGTimingEvent(o);
        }

        @Override
        public T caseGWaitPoint(GWaitPoint o) {
            return GAutosarSwitch.this.caseGWaitPoint(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch35
    extends GservercallSwitch<T>
    implements Switch<T> {
        private Switch35() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGAsynchronousServerCallPoint(GAsynchronousServerCallPoint o) {
            return GAutosarSwitch.this.caseGAsynchronousServerCallPoint(o);
        }

        @Override
        public T caseGServerCallPoint(GServerCallPoint o) {
            return GAutosarSwitch.this.caseGServerCallPoint(o);
        }

        @Override
        public T caseGSynchronousServerCallPoint(GSynchronousServerCallPoint o) {
            return GAutosarSwitch.this.caseGSynchronousServerCallPoint(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch36
    extends GsystemSwitch<T>
    implements Switch<T> {
        private Switch36() {
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }

        @Override
        public T caseGSystem(GSystem o) {
            return GAutosarSwitch.this.caseGSystem(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch4
    extends GimplementationSwitch<T>
    implements Switch<T> {
        private Switch4() {
        }

        @Override
        public T caseGAutosarEngineeringObject(GAutosarEngineeringObject o) {
            return GAutosarSwitch.this.caseGAutosarEngineeringObject(o);
        }

        @Override
        public T caseGCode(GCode o) {
            return GAutosarSwitch.this.caseGCode(o);
        }

        @Override
        public T caseGEngineeringObject(GEngineeringObject o) {
            return GAutosarSwitch.this.caseGEngineeringObject(o);
        }

        @Override
        public T caseGImplementation(GImplementation o) {
            return GAutosarSwitch.this.caseGImplementation(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch5
    extends GinternalbehaviorSwitch<T>
    implements Switch<T> {
        private Switch5() {
        }

        @Override
        public T caseGExclusiveArea(GExclusiveArea o) {
            return GAutosarSwitch.this.caseGExclusiveArea(o);
        }

        @Override
        public T caseGExecutableEntity(GExecutableEntity o) {
            return GAutosarSwitch.this.caseGExecutableEntity(o);
        }

        @Override
        public T caseGInternalBehavior(GInternalBehavior o) {
            return GAutosarSwitch.this.caseGInternalBehavior(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch6
    extends GmodedeclarationSwitch<T>
    implements Switch<T> {
        private Switch6() {
        }

        @Override
        public T caseGModeDeclaration(GModeDeclaration o) {
            return GAutosarSwitch.this.caseGModeDeclaration(o);
        }

        @Override
        public T caseGModeDeclarationGroup(GModeDeclarationGroup o) {
            return GAutosarSwitch.this.caseGModeDeclarationGroup(o);
        }

        @Override
        public T caseGModeDeclarationGroupPrototype(GModeDeclarationGroupPrototype o) {
            return GAutosarSwitch.this.caseGModeDeclarationGroupPrototype(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch7
    extends GresourceconsumptionSwitch<T>
    implements Switch<T> {
        private Switch7() {
        }

        @Override
        public T caseGResourceConsumption(GResourceConsumption o) {
            return GAutosarSwitch.this.caseGResourceConsumption(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch8
    extends GsystemconstantSwitch<T>
    implements Switch<T> {
        private Switch8() {
        }

        @Override
        public T caseGSwSystemconst(GSwSystemconst o) {
            return GAutosarSwitch.this.caseGSwSystemconst(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private class Switch9
    extends GecucdescriptionSwitch<T>
    implements Switch<T> {
        private Switch9() {
        }

        @Override
        public T caseGBooleanValue(GBooleanValue o) {
            return GAutosarSwitch.this.caseGBooleanValue(o);
        }

        @Override
        public T caseGConfigReferenceValue(GConfigReferenceValue o) {
            return GAutosarSwitch.this.caseGConfigReferenceValue(o);
        }

        @Override
        public T caseGContainer(GContainer o) {
            return GAutosarSwitch.this.caseGContainer(o);
        }

        @Override
        public T caseGEnumerationValue(GEnumerationValue o) {
            return GAutosarSwitch.this.caseGEnumerationValue(o);
        }

        @Override
        public T caseGFloatValue(GFloatValue o) {
            return GAutosarSwitch.this.caseGFloatValue(o);
        }

        @Override
        public T caseGFunctionNameValue(GFunctionNameValue o) {
            return GAutosarSwitch.this.caseGFunctionNameValue(o);
        }

        @Override
        public T caseGInstanceReferenceValue(GInstanceReferenceValue o) {
            return GAutosarSwitch.this.caseGInstanceReferenceValue(o);
        }

        @Override
        public T caseGIntegerValue(GIntegerValue o) {
            return GAutosarSwitch.this.caseGIntegerValue(o);
        }

        @Override
        public T caseGLinkerSymbolValue(GLinkerSymbolValue o) {
            return GAutosarSwitch.this.caseGLinkerSymbolValue(o);
        }

        @Override
        public T caseGModuleConfiguration(GModuleConfiguration o) {
            return GAutosarSwitch.this.caseGModuleConfiguration(o);
        }

        @Override
        public T caseGParameterValue(GParameterValue o) {
            return GAutosarSwitch.this.caseGParameterValue(o);
        }

        @Override
        public T caseGReferenceValue(GReferenceValue o) {
            return GAutosarSwitch.this.caseGReferenceValue(o);
        }

        @Override
        public T caseGStringValue(GStringValue o) {
            return GAutosarSwitch.this.caseGStringValue(o);
        }

        @Override
        public T caseGARObject(GARObject o) {
            return GAutosarSwitch.this.caseGARObject(o);
        }

        @Override
        public T caseGIdentifiable(GIdentifiable o) {
            return GAutosarSwitch.this.caseGIdentifiable(o);
        }

        @Override
        public T caseGPackageableElement(GPackageableElement o) {
            return GAutosarSwitch.this.caseGPackageableElement(o);
        }

        @Override
        public T caseGReferrable(GReferrable o) {
            return GAutosarSwitch.this.caseGReferrable(o);
        }
    }
}

