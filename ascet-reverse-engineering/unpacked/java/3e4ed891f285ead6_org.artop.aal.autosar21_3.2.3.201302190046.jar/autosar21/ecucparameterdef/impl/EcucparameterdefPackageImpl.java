/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gbasetypes.GbasetypesPackage
 *  gautosar.gcommonstructure.gconstants.GconstantsPackage
 *  gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage
 *  gautosar.gcommonstructure.gimplementation.GimplementationPackage
 *  gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage
 *  gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage
 *  gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage
 *  gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage
 *  gautosar.gecucdescription.GecucdescriptionPackage
 *  gautosar.gecucparameterdef.GecucparameterdefPackage
 *  gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage
 *  gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage
 *  gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage
 *  gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage
 *  gautosar.gswcomponents.gcommunication.GcommunicationPackage
 *  gautosar.gswcomponents.gcomponents.GcomponentsPackage
 *  gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage
 *  gautosar.gswcomponents.gcomposition.GcompositionPackage
 *  gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage
 *  gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage
 *  gautosar.gswcomponents.gdatatype.gunits.GunitsPackage
 *  gautosar.gswcomponents.gportinterface.GportinterfacePackage
 *  gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage
 *  gautosar.gsystem.GsystemPackage
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar21.ecucparameterdef.impl;

import autosar21.bswmodule.BswmodulePackage;
import autosar21.bswmodule.impl.BswmodulePackageImpl;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.impl.EcucdescriptionPackageImpl;
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
import autosar21.ecucparameterdef.ContainerDef;
import autosar21.ecucparameterdef.DerivedBooleanParamDef;
import autosar21.ecucparameterdef.DerivedEnumerationParamDef;
import autosar21.ecucparameterdef.DerivedFloatParamDef;
import autosar21.ecucparameterdef.DerivedIntegerParamDef;
import autosar21.ecucparameterdef.DerivedParamType;
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
import autosar21.ecucparameterdef.ParamConfMultiplicity;
import autosar21.ecucparameterdef.ReferenceDef;
import autosar21.ecucparameterdef.StringParamDef;
import autosar21.ecucparameterdef.SymbolicNameReferenceDef;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.impl.BasicelementsPackageImpl;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.impl.EcuelectronicsPackageImpl;
import autosar21.ecuresource.impl.EcuresourcePackageImpl;
import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.memory.impl.MemoryPackageImpl;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.impl.PeripheralsPackageImpl;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.impl.ProcessingunitPackageImpl;
import autosar21.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar21.ecuresource.sensoractuator.impl.SensoractuatorPackageImpl;
import autosar21.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar21.genericstructure.commonpatterns.admindata.impl.AdmindataPackageImpl;
import autosar21.genericstructure.commonpatterns.enumerations.EnumerationsPackage;
import autosar21.genericstructure.commonpatterns.enumerations.impl.EnumerationsPackageImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.impl.InlinetextmodelPackageImpl;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.InlinesPackageImpl;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar21.genericstructure.commonpatterns.languagedatamodel.impl.LanguagedatamodelPackageImpl;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar21.genericstructure.commonpatterns.multilanguagedata.impl.MultilanguagedataPackageImpl;
import autosar21.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar21.genericstructure.commonpatterns.primitivetypes.impl.PrimitivetypesPackageImpl;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.commonpatterns.specialdata.impl.SpecialdataPackageImpl;
import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import autosar21.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar21.genericstructure.infrastructure.autosar.impl.AutosarPackageImpl;
import autosar21.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiablePackageImpl;
import autosar21.genericstructure.infrastructure.impl.InfrastructurePackageImpl;
import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.impl.FilterPackageImpl;
import autosar21.swcomponent.communication.impl.CommunicationPackageImpl;
import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.components.impl.ComponentsPackageImpl;
import autosar21.swcomponent.composition.CompositionPackage;
import autosar21.swcomponent.composition.impl.CompositionPackageImpl;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.computationmethod.impl.ComputationmethodPackageImpl;
import autosar21.swcomponent.datatype.constants.ConstantsPackage;
import autosar21.swcomponent.datatype.constants.impl.ConstantsPackageImpl;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.impl.DatatypesPackageImpl;
import autosar21.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar21.swcomponent.datatype.localconstraints.impl.LocalconstraintsPackageImpl;
import autosar21.swcomponent.datatype.units.UnitsPackage;
import autosar21.swcomponent.datatype.units.impl.UnitsPackageImpl;
import autosar21.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar21.swcomponent.datatype.valuemodel.impl.ValuemodelPackageImpl;
import autosar21.swcomponent.implementation.ImplementationPackage;
import autosar21.swcomponent.implementation.impl.ImplementationPackageImpl;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsPackage;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataelementsPackageImpl;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaPackage;
import autosar21.swcomponent.internalbehavior.exclusivearea.impl.ExclusiveareaPackageImpl;
import autosar21.swcomponent.internalbehavior.impl.InternalbehaviorPackageImpl;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.impl.InterrunnablecommunicationPackageImpl;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.impl.ModedeclarationgroupPackageImpl;
import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingPackage;
import autosar21.swcomponent.internalbehavior.nvrammapping.impl.NvrammappingPackageImpl;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar21.swcomponent.internalbehavior.perinstancememory.impl.PerinstancememoryPackageImpl;
import autosar21.swcomponent.internalbehavior.portapioptions.PortapioptionsPackage;
import autosar21.swcomponent.internalbehavior.portapioptions.impl.PortapioptionsPackageImpl;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.internalbehavior.rteevents.impl.RteeventsPackageImpl;
import autosar21.swcomponent.internalbehavior.servercall.ServercallPackage;
import autosar21.swcomponent.internalbehavior.servercall.impl.ServercallPackageImpl;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsPackage;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl.AuxillaryobjectsPackageImpl;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.impl.AxisPackageImpl;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BasetypesPackageImpl;
import autosar21.swcomponent.measurementandcalibration.byteorder.ByteorderPackage;
import autosar21.swcomponent.measurementandcalibration.byteorder.impl.ByteorderPackageImpl;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.impl.CalibrationparameterPackageImpl;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.impl.CharacteristicPackageImpl;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.impl.DatadefpropertiesPackageImpl;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.impl.GlobalconstraintsPackageImpl;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurementpropertyPackageImpl;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl;
import autosar21.swcomponent.measurementandcalibration.variable.VariablePackage;
import autosar21.swcomponent.measurementandcalibration.variable.impl.VariablePackageImpl;
import autosar21.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar21.swcomponent.modedeclaration.impl.ModedeclarationPackageImpl;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.portinterface.impl.PortinterfacePackageImpl;
import autosar21.swcomponent.resources.ResourcesPackage;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.impl.ExecutiontimePackageImpl;
import autosar21.swcomponent.resources.heapusage.HeapusagePackage;
import autosar21.swcomponent.resources.heapusage.impl.HeapusagePackageImpl;
import autosar21.swcomponent.resources.impl.ResourcesPackageImpl;
import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionPackage;
import autosar21.swcomponent.resources.objectfilesection.impl.ObjectfilesectionPackageImpl;
import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizePackage;
import autosar21.swcomponent.resources.perinstancememorysize.impl.PerinstancememorysizePackageImpl;
import autosar21.swcomponent.resources.stackusage.StackusagePackage;
import autosar21.swcomponent.resources.stackusage.impl.StackusagePackageImpl;
import autosar21.swcomponent.services.ServicesPackage;
import autosar21.swcomponent.services.impl.ServicesPackageImpl;
import autosar21.swcomponent.vfberrors.VfberrorsPackage;
import autosar21.swcomponent.vfberrors.impl.VfberrorsPackageImpl;
import autosar21.system.SystemPackage;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import autosar21.system.communicationprotocol.impl.CommunicationprotocolPackageImpl;
import autosar21.system.datamapping.DatamappingPackage;
import autosar21.system.datamapping.impl.DatamappingPackageImpl;
import autosar21.system.impl.SystemPackageImpl;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.impl.PdustructurePackageImpl;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.impl.SignalpathsPackageImpl;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.impl.SwmappingPackageImpl;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.impl.SystemsignalPackageImpl;
import autosar21.system.systemsignal.instanceref.InstancerefPackage;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.impl.TopologyPackageImpl;
import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucparameterdef.GecucparameterdefPackage;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import gautosar.gsystem.GsystemPackage;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class EcucparameterdefPackageImpl
extends EPackageImpl
implements EcucparameterdefPackage {
    private EClass booleanParamDefEClass = null;
    private EClass configParameterEClass = null;
    private EClass commonConfigurationAttributesEClass = null;
    private EClass paramConfMultiplicityEClass = null;
    private EClass configurationClassAffectionEClass = null;
    private EClass choiceContainerDefEClass = null;
    private EClass containerDefEClass = null;
    private EClass paramConfContainerDefEClass = null;
    private EClass configReferenceEClass = null;
    private EClass choiceReferenceDefEClass = null;
    private EClass derivedBooleanParamDefEClass = null;
    private EClass derivedParamTypeEClass = null;
    private EClass derivedEnumerationParamDefEClass = null;
    private EClass enumerationParamDefEClass = null;
    private EClass enumerationLiteralDefEClass = null;
    private EClass derivedFloatParamDefEClass = null;
    private EClass floatParamDefEClass = null;
    private EClass derivedIntegerParamDefEClass = null;
    private EClass integerParamDefEClass = null;
    private EClass derivedStringParamDefEClass = null;
    private EClass stringParamDefEClass = null;
    private EClass ecuParameterDefinitionEClass = null;
    private EClass moduleDefEClass = null;
    private EClass foreignReferenceDefEClass = null;
    private EClass functionNameDefEClass = null;
    private EClass linkerSymbolDefEClass = null;
    private EClass instanceReferenceDefEClass = null;
    private EClass referenceDefEClass = null;
    private EClass symbolicNameReferenceDefEClass = null;
    private EEnum configurationClassEEnum = null;
    private EEnum configurationAffectionEEnum = null;
    private EEnum calculationLanguageEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private EcucparameterdefPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecucpd", (EFactory)EcucparameterdefFactory.eINSTANCE);
    }

    public static EcucparameterdefPackage init() {
        if (isInited) {
            return (EcucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd");
        }
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecucpd") : new EcucparameterdefPackageImpl());
        isInited = true;
        gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage.eINSTANCE.eClass();
        GinfrastructurePackage.eINSTANCE.eClass();
        GdocumentationPackage.eINSTANCE.eClass();
        GmultilanguagedataPackage.eINSTANCE.eClass();
        GlanguagedatamodelPackage.eINSTANCE.eClass();
        GinlinetextmodelPackage.eINSTANCE.eClass();
        GprimitivetypesPackage.eINSTANCE.eClass();
        GvarianthandlingPackage.eINSTANCE.eClass();
        GformulalanguagePackage.eINSTANCE.eClass();
        GecucparameterdefPackage.eINSTANCE.eClass();
        GecucdescriptionPackage.eINSTANCE.eClass();
        GcomponentsPackage.eINSTANCE.eClass();
        GinstancerefsPackage.eINSTANCE.eClass();
        GportinterfacePackage.eINSTANCE.eClass();
        GdatatypesPackage.eINSTANCE.eClass();
        GlocalconstraintsPackage.eINSTANCE.eClass();
        GdataprototypesPackage.eINSTANCE.eClass();
        GcomputationmethodPackage.eINSTANCE.eClass();
        GunitsPackage.eINSTANCE.eClass();
        GcompositionPackage.eINSTANCE.eClass();
        gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage.eINSTANCE.eClass();
        GswcinternalbehaviorPackage.eINSTANCE.eClass();
        GrteeventsPackage.eINSTANCE.eClass();
        GdataelementsPackage.eINSTANCE.eClass();
        GperinstancememoryPackage.eINSTANCE.eClass();
        GmodedeclarationgroupPackage.eINSTANCE.eClass();
        GservercallPackage.eINSTANCE.eClass();
        GswcimplementationPackage.eINSTANCE.eClass();
        GcommunicationPackage.eINSTANCE.eClass();
        GimplementationPackage.eINSTANCE.eClass();
        GresourceconsumptionPackage.eINSTANCE.eClass();
        GmodedeclarationPackage.eINSTANCE.eClass();
        GinternalbehaviorPackage.eINSTANCE.eClass();
        GconstantsPackage.eINSTANCE.eClass();
        GdatadefpropertiesPackage.eINSTANCE.eClass();
        GbasetypesPackage.eINSTANCE.eClass();
        GsystemconstantPackage.eINSTANCE.eClass();
        GsystemPackage.eINSTANCE.eClass();
        EcorePackage.eINSTANCE.eClass();
        InfrastructurePackageImpl theInfrastructurePackage = (InfrastructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i") instanceof InfrastructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i") : InfrastructurePackage.eINSTANCE);
        AutosarPackageImpl theAutosarPackage = (AutosarPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/a") instanceof AutosarPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/a") : AutosarPackage.eINSTANCE);
        IdentifiablePackageImpl theIdentifiablePackage = (IdentifiablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i") instanceof IdentifiablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i") : IdentifiablePackage.eINSTANCE);
        EnumerationsPackageImpl theEnumerationsPackage = (EnumerationsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/e") instanceof EnumerationsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/e") : EnumerationsPackage.eINSTANCE);
        LanguagedatamodelPackageImpl theLanguagedatamodelPackage = (LanguagedatamodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/ldm") instanceof LanguagedatamodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/ldm") : LanguagedatamodelPackage.eINSTANCE);
        InlinetextmodelPackageImpl theInlinetextmodelPackage = (InlinetextmodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/itm") instanceof InlinetextmodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/itm") : InlinetextmodelPackage.eINSTANCE);
        InlinesPackageImpl theInlinesPackage = (InlinesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/itm/i") instanceof InlinesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/itm/i") : InlinesPackage.eINSTANCE);
        MultilanguagedataPackageImpl theMultilanguagedataPackage = (MultilanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/md") instanceof MultilanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/md") : MultilanguagedataPackage.eINSTANCE);
        AdmindataPackageImpl theAdmindataPackage = (AdmindataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/ad") instanceof AdmindataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/ad") : AdmindataPackage.eINSTANCE);
        SpecialdataPackageImpl theSpecialdataPackage = (SpecialdataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/sd") instanceof SpecialdataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/sd") : SpecialdataPackage.eINSTANCE);
        SinglelanguagedataPackageImpl theSinglelanguagedataPackage = (SinglelanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/sld") instanceof SinglelanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/sld") : SinglelanguagedataPackage.eINSTANCE);
        PrimitivetypesPackageImpl thePrimitivetypesPackage = (PrimitivetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt") instanceof PrimitivetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt") : PrimitivetypesPackage.eINSTANCE);
        EcuresourcePackageImpl theEcuresourcePackage = (EcuresourcePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur") instanceof EcuresourcePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur") : EcuresourcePackage.eINSTANCE);
        BasicelementsPackageImpl theBasicelementsPackage = (BasicelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be") instanceof BasicelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be") : BasicelementsPackage.eINSTANCE);
        PeripheralsPackageImpl thePeripheralsPackage = (PeripheralsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/p") instanceof PeripheralsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/p") : PeripheralsPackage.eINSTANCE);
        EcuelectronicsPackageImpl theEcuelectronicsPackage = (EcuelectronicsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/ecue") instanceof EcuelectronicsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/ecue") : EcuelectronicsPackage.eINSTANCE);
        ProcessingunitPackageImpl theProcessingunitPackage = (ProcessingunitPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/pu") instanceof ProcessingunitPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/pu") : ProcessingunitPackage.eINSTANCE);
        MemoryPackageImpl theMemoryPackage = (MemoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/m") instanceof MemoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/m") : MemoryPackage.eINSTANCE);
        SensoractuatorPackageImpl theSensoractuatorPackage = (SensoractuatorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/sa") instanceof SensoractuatorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/sa") : SensoractuatorPackage.eINSTANCE);
        CharacteristicPackageImpl theCharacteristicPackage = (CharacteristicPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c") instanceof CharacteristicPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c") : CharacteristicPackage.eINSTANCE);
        autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl theInstancerefPackage = (autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c/r") instanceof autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c/r") : autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage.eINSTANCE);
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ddp") : DatadefpropertiesPackage.eINSTANCE);
        DatadictionaryproxiesPackageImpl theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/dp") instanceof DatadictionaryproxiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/dp") : DatadictionaryproxiesPackage.eINSTANCE);
        CalibrationparameterPackageImpl theCalibrationparameterPackage = (CalibrationparameterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/cp") instanceof CalibrationparameterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/cp") : CalibrationparameterPackage.eINSTANCE);
        BasetypesPackageImpl theBasetypesPackage = (BasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/bt") instanceof BasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/bt") : BasetypesPackage.eINSTANCE);
        ByteorderPackageImpl theByteorderPackage = (ByteorderPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/bo") instanceof ByteorderPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/bo") : ByteorderPackage.eINSTANCE);
        AxisPackageImpl theAxisPackage = (AxisPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/a") instanceof AxisPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/a") : AxisPackage.eINSTANCE);
        GlobalconstraintsPackageImpl theGlobalconstraintsPackage = (GlobalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/gc") instanceof GlobalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/gc") : GlobalconstraintsPackage.eINSTANCE);
        VariablePackageImpl theVariablePackage = (VariablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/v") instanceof VariablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/v") : VariablePackage.eINSTANCE);
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ao") : AuxillaryobjectsPackage.eINSTANCE);
        MeasurementpropertyPackageImpl theMeasurementpropertyPackage = (MeasurementpropertyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/mp") instanceof MeasurementpropertyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/mp") : MeasurementpropertyPackage.eINSTANCE);
        InstancerefPackageImpl theInstancerefPackage_1 = (InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/mp/r") instanceof InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/mp/r") : autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage.eINSTANCE);
        ConstantsPackageImpl theConstantsPackage = (ConstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/c") instanceof ConstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/c") : ConstantsPackage.eINSTANCE);
        ValuemodelPackageImpl theValuemodelPackage = (ValuemodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/vm") instanceof ValuemodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/vm") : ValuemodelPackage.eINSTANCE);
        LocalconstraintsPackageImpl theLocalconstraintsPackage = (LocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/lc") instanceof LocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/lc") : LocalconstraintsPackage.eINSTANCE);
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/cm") : ComputationmethodPackage.eINSTANCE);
        UnitsPackageImpl theUnitsPackage = (UnitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/u") instanceof UnitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/u") : UnitsPackage.eINSTANCE);
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/d") : DatatypesPackage.eINSTANCE);
        CompositionPackageImpl theCompositionPackage = (CompositionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition") instanceof CompositionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition") : CompositionPackage.eINSTANCE);
        autosar21.swcomponent.composition.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_2 = (autosar21.swcomponent.composition.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition/r") instanceof autosar21.swcomponent.composition.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition/r") : autosar21.swcomponent.composition.instanceref.InstancerefPackage.eINSTANCE);
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa") : ApplicationattributesPackage.eINSTANCE);
        autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_3 = (autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa/r") instanceof autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa/r") : autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage.eINSTANCE);
        PortinterfacePackageImpl thePortinterfacePackage = (PortinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/pi") instanceof PortinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/pi") : PortinterfacePackage.eINSTANCE);
        ModedeclarationPackageImpl theModedeclarationPackage = (ModedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md") instanceof ModedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md") : ModedeclarationPackage.eINSTANCE);
        autosar21.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_4 = (autosar21.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md/r") instanceof autosar21.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md/r") : autosar21.swcomponent.modedeclaration.instanceref.InstancerefPackage.eINSTANCE);
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") : autosar21.swcomponent.communication.CommunicationPackage.eINSTANCE);
        autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_5 = (autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/r") instanceof autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/r") : autosar21.swcomponent.communication.instanceref.InstancerefPackage.eINSTANCE);
        FilterPackageImpl theFilterPackage = (FilterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/f") instanceof FilterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/f") : FilterPackage.eINSTANCE);
        VfberrorsPackageImpl theVfberrorsPackage = (VfberrorsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/vfbe") instanceof VfberrorsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/vfbe") : VfberrorsPackage.eINSTANCE);
        ResourcesPackageImpl theResourcesPackage = (ResourcesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r") instanceof ResourcesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r") : ResourcesPackage.eINSTANCE);
        PerinstancememorysizePackageImpl thePerinstancememorysizePackage = (PerinstancememorysizePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/pims") instanceof PerinstancememorysizePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/pims") : PerinstancememorysizePackage.eINSTANCE);
        StackusagePackageImpl theStackusagePackage = (StackusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/su") instanceof StackusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/su") : StackusagePackage.eINSTANCE);
        ExecutiontimePackageImpl theExecutiontimePackage = (ExecutiontimePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/et") instanceof ExecutiontimePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/et") : ExecutiontimePackage.eINSTANCE);
        ObjectfilesectionPackageImpl theObjectfilesectionPackage = (ObjectfilesectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/ofs") instanceof ObjectfilesectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/ofs") : ObjectfilesectionPackage.eINSTANCE);
        HeapusagePackageImpl theHeapusagePackage = (HeapusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/hu") instanceof HeapusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/hu") : HeapusagePackage.eINSTANCE);
        InternalbehaviorPackageImpl theInternalbehaviorPackage = (InternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib") instanceof InternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib") : InternalbehaviorPackage.eINSTANCE);
        PortapioptionsPackageImpl thePortapioptionsPackage = (PortapioptionsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/papio") instanceof PortapioptionsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/papio") : PortapioptionsPackage.eINSTANCE);
        InterrunnablecommunicationPackageImpl theInterrunnablecommunicationPackage = (InterrunnablecommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/irc") instanceof InterrunnablecommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/irc") : InterrunnablecommunicationPackage.eINSTANCE);
        ExclusiveareaPackageImpl theExclusiveareaPackage = (ExclusiveareaPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/ea") instanceof ExclusiveareaPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/ea") : ExclusiveareaPackage.eINSTANCE);
        NvrammappingPackageImpl theNvrammappingPackage = (NvrammappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/nvramm") instanceof NvrammappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/nvramm") : NvrammappingPackage.eINSTANCE);
        ModedeclarationgroupPackageImpl theModedeclarationgroupPackage = (ModedeclarationgroupPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg") instanceof ModedeclarationgroupPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg") : ModedeclarationgroupPackage.eINSTANCE);
        autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_6 = (autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg/r") instanceof autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg/r") : autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.InstancerefPackage.eINSTANCE);
        ServercallPackageImpl theServercallPackage = (ServercallPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc") instanceof ServercallPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc") : ServercallPackage.eINSTANCE);
        autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_7 = (autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc/r") instanceof autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc/r") : autosar21.swcomponent.internalbehavior.servercall.instanceref.InstancerefPackage.eINSTANCE);
        DataelementsPackageImpl theDataelementsPackage = (DataelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de") instanceof DataelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de") : DataelementsPackage.eINSTANCE);
        autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_8 = (autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de/r") instanceof autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de/r") : autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefPackage.eINSTANCE);
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee") : RteeventsPackage.eINSTANCE);
        autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_9 = (autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee/r") instanceof autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee/r") : autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage.eINSTANCE);
        PerinstancememoryPackageImpl thePerinstancememoryPackage = (PerinstancememoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/pim") instanceof PerinstancememoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/pim") : PerinstancememoryPackage.eINSTANCE);
        ImplementationPackageImpl theImplementationPackage = (ImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/i") instanceof ImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/i") : ImplementationPackage.eINSTANCE);
        ServicesPackageImpl theServicesPackage = (ServicesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/s") instanceof ServicesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/s") : ServicesPackage.eINSTANCE);
        ComponentsPackageImpl theComponentsPackage = (ComponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components") instanceof ComponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components") : ComponentsPackage.eINSTANCE);
        SystemPackageImpl theSystemPackage = (SystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s") instanceof SystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s") : SystemPackage.eINSTANCE);
        autosar21.system.communication.impl.CommunicationPackageImpl theCommunicationPackage_1 = (autosar21.system.communication.impl.CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") instanceof autosar21.system.communication.impl.CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") : CommunicationPackage.eINSTANCE);
        autosar21.system.communication.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_10 = (autosar21.system.communication.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c/r") instanceof autosar21.system.communication.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c/r") : autosar21.system.communication.instanceref.InstancerefPackage.eINSTANCE);
        TopologyPackageImpl theTopologyPackage = (TopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t") instanceof TopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t") : TopologyPackage.eINSTANCE);
        PdustructurePackageImpl thePdustructurePackage = (PdustructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/pdus") instanceof PdustructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/pdus") : PdustructurePackage.eINSTANCE);
        SystemsignalPackageImpl theSystemsignalPackage = (SystemsignalPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss") instanceof SystemsignalPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss") : SystemsignalPackage.eINSTANCE);
        autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_11 = (autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss/r") instanceof autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss/r") : InstancerefPackage.eINSTANCE);
        CommunicationprotocolPackageImpl theCommunicationprotocolPackage = (CommunicationprotocolPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp") instanceof CommunicationprotocolPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp") : CommunicationprotocolPackage.eINSTANCE);
        autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_12 = (autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp/r") instanceof autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp/r") : autosar21.system.communicationprotocol.instanceref.InstancerefPackage.eINSTANCE);
        SwmappingPackageImpl theSwmappingPackage = (SwmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw") instanceof SwmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw") : SwmappingPackage.eINSTANCE);
        autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_13 = (autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw/r") instanceof autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw/r") : autosar21.system.swmapping.instanceref.InstancerefPackage.eINSTANCE);
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm") : DatamappingPackage.eINSTANCE);
        autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_14 = (autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") instanceof autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") : autosar21.system.datamapping.instanceref.InstancerefPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") : SignalpathsPackage.eINSTANCE);
        autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_15 = (autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") instanceof autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") : autosar21.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE);
        BswmodulePackageImpl theBswmodulePackage = (BswmodulePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") instanceof BswmodulePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") : BswmodulePackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_16 = (autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") instanceof autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") : autosar21.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        theEcucparameterdefPackage.createPackageContents();
        theInfrastructurePackage.createPackageContents();
        theAutosarPackage.createPackageContents();
        theIdentifiablePackage.createPackageContents();
        theEnumerationsPackage.createPackageContents();
        theLanguagedatamodelPackage.createPackageContents();
        theInlinetextmodelPackage.createPackageContents();
        theInlinesPackage.createPackageContents();
        theMultilanguagedataPackage.createPackageContents();
        theAdmindataPackage.createPackageContents();
        theSpecialdataPackage.createPackageContents();
        theSinglelanguagedataPackage.createPackageContents();
        thePrimitivetypesPackage.createPackageContents();
        theEcuresourcePackage.createPackageContents();
        theBasicelementsPackage.createPackageContents();
        thePeripheralsPackage.createPackageContents();
        theEcuelectronicsPackage.createPackageContents();
        theProcessingunitPackage.createPackageContents();
        theMemoryPackage.createPackageContents();
        theSensoractuatorPackage.createPackageContents();
        theCharacteristicPackage.createPackageContents();
        theInstancerefPackage.createPackageContents();
        theDatadefpropertiesPackage.createPackageContents();
        theDatadictionaryproxiesPackage.createPackageContents();
        theCalibrationparameterPackage.createPackageContents();
        theBasetypesPackage.createPackageContents();
        theByteorderPackage.createPackageContents();
        theAxisPackage.createPackageContents();
        theGlobalconstraintsPackage.createPackageContents();
        theVariablePackage.createPackageContents();
        theAuxillaryobjectsPackage.createPackageContents();
        theMeasurementpropertyPackage.createPackageContents();
        theInstancerefPackage_1.createPackageContents();
        theConstantsPackage.createPackageContents();
        theValuemodelPackage.createPackageContents();
        theLocalconstraintsPackage.createPackageContents();
        theComputationmethodPackage.createPackageContents();
        theUnitsPackage.createPackageContents();
        theDatatypesPackage.createPackageContents();
        theCompositionPackage.createPackageContents();
        theInstancerefPackage_2.createPackageContents();
        theApplicationattributesPackage.createPackageContents();
        theInstancerefPackage_3.createPackageContents();
        thePortinterfacePackage.createPackageContents();
        theModedeclarationPackage.createPackageContents();
        theInstancerefPackage_4.createPackageContents();
        theCommunicationPackage.createPackageContents();
        theInstancerefPackage_5.createPackageContents();
        theFilterPackage.createPackageContents();
        theVfberrorsPackage.createPackageContents();
        theResourcesPackage.createPackageContents();
        thePerinstancememorysizePackage.createPackageContents();
        theStackusagePackage.createPackageContents();
        theExecutiontimePackage.createPackageContents();
        theObjectfilesectionPackage.createPackageContents();
        theHeapusagePackage.createPackageContents();
        theInternalbehaviorPackage.createPackageContents();
        thePortapioptionsPackage.createPackageContents();
        theInterrunnablecommunicationPackage.createPackageContents();
        theExclusiveareaPackage.createPackageContents();
        theNvrammappingPackage.createPackageContents();
        theModedeclarationgroupPackage.createPackageContents();
        theInstancerefPackage_6.createPackageContents();
        theServercallPackage.createPackageContents();
        theInstancerefPackage_7.createPackageContents();
        theDataelementsPackage.createPackageContents();
        theInstancerefPackage_8.createPackageContents();
        theRteeventsPackage.createPackageContents();
        theInstancerefPackage_9.createPackageContents();
        thePerinstancememoryPackage.createPackageContents();
        theImplementationPackage.createPackageContents();
        theServicesPackage.createPackageContents();
        theComponentsPackage.createPackageContents();
        theSystemPackage.createPackageContents();
        theCommunicationPackage_1.createPackageContents();
        theInstancerefPackage_10.createPackageContents();
        theTopologyPackage.createPackageContents();
        thePdustructurePackage.createPackageContents();
        theSystemsignalPackage.createPackageContents();
        theInstancerefPackage_11.createPackageContents();
        theCommunicationprotocolPackage.createPackageContents();
        theInstancerefPackage_12.createPackageContents();
        theSwmappingPackage.createPackageContents();
        theInstancerefPackage_13.createPackageContents();
        theDatamappingPackage.createPackageContents();
        theInstancerefPackage_14.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theInstancerefPackage_15.createPackageContents();
        theBswmodulePackage.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_16.createPackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theInfrastructurePackage.initializePackageContents();
        theAutosarPackage.initializePackageContents();
        theIdentifiablePackage.initializePackageContents();
        theEnumerationsPackage.initializePackageContents();
        theLanguagedatamodelPackage.initializePackageContents();
        theInlinetextmodelPackage.initializePackageContents();
        theInlinesPackage.initializePackageContents();
        theMultilanguagedataPackage.initializePackageContents();
        theAdmindataPackage.initializePackageContents();
        theSpecialdataPackage.initializePackageContents();
        theSinglelanguagedataPackage.initializePackageContents();
        thePrimitivetypesPackage.initializePackageContents();
        theEcuresourcePackage.initializePackageContents();
        theBasicelementsPackage.initializePackageContents();
        thePeripheralsPackage.initializePackageContents();
        theEcuelectronicsPackage.initializePackageContents();
        theProcessingunitPackage.initializePackageContents();
        theMemoryPackage.initializePackageContents();
        theSensoractuatorPackage.initializePackageContents();
        theCharacteristicPackage.initializePackageContents();
        theInstancerefPackage.initializePackageContents();
        theDatadefpropertiesPackage.initializePackageContents();
        theDatadictionaryproxiesPackage.initializePackageContents();
        theCalibrationparameterPackage.initializePackageContents();
        theBasetypesPackage.initializePackageContents();
        theByteorderPackage.initializePackageContents();
        theAxisPackage.initializePackageContents();
        theGlobalconstraintsPackage.initializePackageContents();
        theVariablePackage.initializePackageContents();
        theAuxillaryobjectsPackage.initializePackageContents();
        theMeasurementpropertyPackage.initializePackageContents();
        theInstancerefPackage_1.initializePackageContents();
        theConstantsPackage.initializePackageContents();
        theValuemodelPackage.initializePackageContents();
        theLocalconstraintsPackage.initializePackageContents();
        theComputationmethodPackage.initializePackageContents();
        theUnitsPackage.initializePackageContents();
        theDatatypesPackage.initializePackageContents();
        theCompositionPackage.initializePackageContents();
        theInstancerefPackage_2.initializePackageContents();
        theApplicationattributesPackage.initializePackageContents();
        theInstancerefPackage_3.initializePackageContents();
        thePortinterfacePackage.initializePackageContents();
        theModedeclarationPackage.initializePackageContents();
        theInstancerefPackage_4.initializePackageContents();
        theCommunicationPackage.initializePackageContents();
        theInstancerefPackage_5.initializePackageContents();
        theFilterPackage.initializePackageContents();
        theVfberrorsPackage.initializePackageContents();
        theResourcesPackage.initializePackageContents();
        thePerinstancememorysizePackage.initializePackageContents();
        theStackusagePackage.initializePackageContents();
        theExecutiontimePackage.initializePackageContents();
        theObjectfilesectionPackage.initializePackageContents();
        theHeapusagePackage.initializePackageContents();
        theInternalbehaviorPackage.initializePackageContents();
        thePortapioptionsPackage.initializePackageContents();
        theInterrunnablecommunicationPackage.initializePackageContents();
        theExclusiveareaPackage.initializePackageContents();
        theNvrammappingPackage.initializePackageContents();
        theModedeclarationgroupPackage.initializePackageContents();
        theInstancerefPackage_6.initializePackageContents();
        theServercallPackage.initializePackageContents();
        theInstancerefPackage_7.initializePackageContents();
        theDataelementsPackage.initializePackageContents();
        theInstancerefPackage_8.initializePackageContents();
        theRteeventsPackage.initializePackageContents();
        theInstancerefPackage_9.initializePackageContents();
        thePerinstancememoryPackage.initializePackageContents();
        theImplementationPackage.initializePackageContents();
        theServicesPackage.initializePackageContents();
        theComponentsPackage.initializePackageContents();
        theSystemPackage.initializePackageContents();
        theCommunicationPackage_1.initializePackageContents();
        theInstancerefPackage_10.initializePackageContents();
        theTopologyPackage.initializePackageContents();
        thePdustructurePackage.initializePackageContents();
        theSystemsignalPackage.initializePackageContents();
        theInstancerefPackage_11.initializePackageContents();
        theCommunicationprotocolPackage.initializePackageContents();
        theInstancerefPackage_12.initializePackageContents();
        theSwmappingPackage.initializePackageContents();
        theInstancerefPackage_13.initializePackageContents();
        theDatamappingPackage.initializePackageContents();
        theInstancerefPackage_14.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theInstancerefPackage_15.initializePackageContents();
        theBswmodulePackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_16.initializePackageContents();
        theEcucparameterdefPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecucpd", (Object)theEcucparameterdefPackage);
        return theEcucparameterdefPackage;
    }

    public EClass getBooleanParamDef() {
        return this.booleanParamDefEClass;
    }

    public EAttribute getBooleanParamDef_DefaultValue() {
        return (EAttribute)this.booleanParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getConfigParameter() {
        return this.configParameterEClass;
    }

    public EReference getConfigParameter_ParamConfContainerDef() {
        return (EReference)this.configParameterEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getConfigParameter_SymbolicNameValue() {
        return (EAttribute)this.configParameterEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCommonConfigurationAttributes() {
        return this.commonConfigurationAttributesEClass;
    }

    public EReference getCommonConfigurationAttributes_ConfigurationClassAffection() {
        return (EReference)this.commonConfigurationAttributesEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommonConfigurationAttributes_ImplementationConfigClass() {
        return (EAttribute)this.commonConfigurationAttributesEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCommonConfigurationAttributes_Origin() {
        return (EAttribute)this.commonConfigurationAttributesEClass.getEStructuralFeatures().get(2);
    }

    public EClass getParamConfMultiplicity() {
        return this.paramConfMultiplicityEClass;
    }

    public EAttribute getParamConfMultiplicity_LowerMultiplicity() {
        return (EAttribute)this.paramConfMultiplicityEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getParamConfMultiplicity_UpperMultiplicity() {
        return (EAttribute)this.paramConfMultiplicityEClass.getEStructuralFeatures().get(1);
    }

    public EClass getConfigurationClassAffection() {
        return this.configurationClassAffectionEClass;
    }

    public EReference getConfigurationClassAffection_CommonConfigurationAttributes() {
        return (EReference)this.configurationClassAffectionEClass.getEStructuralFeatures().get(0);
    }

    public EReference getConfigurationClassAffection_Affecteds() {
        return (EReference)this.configurationClassAffectionEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getConfigurationClassAffection_AffectionKind() {
        return (EAttribute)this.configurationClassAffectionEClass.getEStructuralFeatures().get(2);
    }

    public EClass getChoiceContainerDef() {
        return this.choiceContainerDefEClass;
    }

    public EReference getChoiceContainerDef_Choices() {
        return (EReference)this.choiceContainerDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getContainerDef() {
        return this.containerDefEClass;
    }

    public EAttribute getContainerDef_PostBuildChangeable() {
        return (EAttribute)this.containerDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getParamConfContainerDef() {
        return this.paramConfContainerDefEClass;
    }

    public EReference getParamConfContainerDef_ChoiceContainerDef() {
        return (EReference)this.paramConfContainerDefEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getParamConfContainerDef_MultipleConfigurationContainer() {
        return (EAttribute)this.paramConfContainerDefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getParamConfContainerDef_Parameters() {
        return (EReference)this.paramConfContainerDefEClass.getEStructuralFeatures().get(2);
    }

    public EReference getParamConfContainerDef_References() {
        return (EReference)this.paramConfContainerDefEClass.getEStructuralFeatures().get(3);
    }

    public EReference getParamConfContainerDef_SubContainers() {
        return (EReference)this.paramConfContainerDefEClass.getEStructuralFeatures().get(4);
    }

    public EClass getConfigReference() {
        return this.configReferenceEClass;
    }

    public EReference getConfigReference_ParamConfContainerDef() {
        return (EReference)this.configReferenceEClass.getEStructuralFeatures().get(0);
    }

    public EClass getChoiceReferenceDef() {
        return this.choiceReferenceDefEClass;
    }

    public EReference getChoiceReferenceDef_Destinations() {
        return (EReference)this.choiceReferenceDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDerivedBooleanParamDef() {
        return this.derivedBooleanParamDefEClass;
    }

    public EClass getDerivedParamType() {
        return this.derivedParamTypeEClass;
    }

    public EAttribute getDerivedParamType_CalculationFormula() {
        return (EAttribute)this.derivedParamTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getDerivedParamType_CalculationLanguage() {
        return (EAttribute)this.derivedParamTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getDerivedEnumerationParamDef() {
        return this.derivedEnumerationParamDefEClass;
    }

    public EClass getEnumerationParamDef() {
        return this.enumerationParamDefEClass;
    }

    public EAttribute getEnumerationParamDef_DefaultValue() {
        return (EAttribute)this.enumerationParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEnumerationParamDef_Literals() {
        return (EReference)this.enumerationParamDefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getEnumerationLiteralDef() {
        return this.enumerationLiteralDefEClass;
    }

    public EReference getEnumerationLiteralDef_EnumerationParamDef() {
        return (EReference)this.enumerationLiteralDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDerivedFloatParamDef() {
        return this.derivedFloatParamDefEClass;
    }

    public EClass getFloatParamDef() {
        return this.floatParamDefEClass;
    }

    public EAttribute getFloatParamDef_DefaultValue() {
        return (EAttribute)this.floatParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFloatParamDef_Max() {
        return (EAttribute)this.floatParamDefEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getFloatParamDef_Min() {
        return (EAttribute)this.floatParamDefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getDerivedIntegerParamDef() {
        return this.derivedIntegerParamDefEClass;
    }

    public EClass getIntegerParamDef() {
        return this.integerParamDefEClass;
    }

    public EAttribute getIntegerParamDef_DefaultValue() {
        return (EAttribute)this.integerParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getIntegerParamDef_Max() {
        return (EAttribute)this.integerParamDefEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getIntegerParamDef_Min() {
        return (EAttribute)this.integerParamDefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getDerivedStringParamDef() {
        return this.derivedStringParamDefEClass;
    }

    public EClass getStringParamDef() {
        return this.stringParamDefEClass;
    }

    public EAttribute getStringParamDef_DefaultValue() {
        return (EAttribute)this.stringParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getEcuParameterDefinition() {
        return this.ecuParameterDefinitionEClass;
    }

    public EReference getEcuParameterDefinition_Modules() {
        return (EReference)this.ecuParameterDefinitionEClass.getEStructuralFeatures().get(0);
    }

    public EClass getModuleDef() {
        return this.moduleDefEClass;
    }

    public EAttribute getModuleDef_ImplementationConfigVariant() {
        return (EAttribute)this.moduleDefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getModuleDef_RefinedModuleDef() {
        return (EReference)this.moduleDefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getModuleDef_Containers() {
        return (EReference)this.moduleDefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getForeignReferenceDef() {
        return this.foreignReferenceDefEClass;
    }

    public EAttribute getForeignReferenceDef_DestinationType() {
        return (EAttribute)this.foreignReferenceDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFunctionNameDef() {
        return this.functionNameDefEClass;
    }

    public EClass getLinkerSymbolDef() {
        return this.linkerSymbolDefEClass;
    }

    public EClass getInstanceReferenceDef() {
        return this.instanceReferenceDefEClass;
    }

    public EAttribute getInstanceReferenceDef_DestinationContext() {
        return (EAttribute)this.instanceReferenceDefEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getInstanceReferenceDef_DestinationType() {
        return (EAttribute)this.instanceReferenceDefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getReferenceDef() {
        return this.referenceDefEClass;
    }

    public EReference getReferenceDef_Destination() {
        return (EReference)this.referenceDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSymbolicNameReferenceDef() {
        return this.symbolicNameReferenceDefEClass;
    }

    public EEnum getConfigurationClass() {
        return this.configurationClassEEnum;
    }

    public EEnum getConfigurationAffection() {
        return this.configurationAffectionEEnum;
    }

    public EEnum getCalculationLanguage() {
        return this.calculationLanguageEEnum;
    }

    public EcucparameterdefFactory getEcucparameterdefFactory() {
        return (EcucparameterdefFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.booleanParamDefEClass = this.createEClass(0);
        this.createEAttribute(this.booleanParamDefEClass, 23);
        this.configParameterEClass = this.createEClass(1);
        this.createEReference(this.configParameterEClass, 21);
        this.createEAttribute(this.configParameterEClass, 22);
        this.commonConfigurationAttributesEClass = this.createEClass(2);
        this.createEReference(this.commonConfigurationAttributesEClass, 18);
        this.createEAttribute(this.commonConfigurationAttributesEClass, 19);
        this.createEAttribute(this.commonConfigurationAttributesEClass, 20);
        this.paramConfMultiplicityEClass = this.createEClass(3);
        this.createEAttribute(this.paramConfMultiplicityEClass, 4);
        this.createEAttribute(this.paramConfMultiplicityEClass, 5);
        this.configurationClassAffectionEClass = this.createEClass(4);
        this.createEReference(this.configurationClassAffectionEClass, 4);
        this.createEReference(this.configurationClassAffectionEClass, 5);
        this.createEAttribute(this.configurationClassAffectionEClass, 6);
        this.choiceContainerDefEClass = this.createEClass(5);
        this.createEReference(this.choiceContainerDefEClass, 19);
        this.containerDefEClass = this.createEClass(6);
        this.createEAttribute(this.containerDefEClass, 18);
        this.paramConfContainerDefEClass = this.createEClass(7);
        this.createEReference(this.paramConfContainerDefEClass, 19);
        this.createEAttribute(this.paramConfContainerDefEClass, 20);
        this.createEReference(this.paramConfContainerDefEClass, 21);
        this.createEReference(this.paramConfContainerDefEClass, 22);
        this.createEReference(this.paramConfContainerDefEClass, 23);
        this.configReferenceEClass = this.createEClass(8);
        this.createEReference(this.configReferenceEClass, 21);
        this.choiceReferenceDefEClass = this.createEClass(9);
        this.createEReference(this.choiceReferenceDefEClass, 22);
        this.derivedBooleanParamDefEClass = this.createEClass(10);
        this.derivedParamTypeEClass = this.createEClass(11);
        this.createEAttribute(this.derivedParamTypeEClass, 4);
        this.createEAttribute(this.derivedParamTypeEClass, 5);
        this.derivedEnumerationParamDefEClass = this.createEClass(12);
        this.enumerationParamDefEClass = this.createEClass(13);
        this.createEAttribute(this.enumerationParamDefEClass, 23);
        this.createEReference(this.enumerationParamDefEClass, 24);
        this.enumerationLiteralDefEClass = this.createEClass(14);
        this.createEReference(this.enumerationLiteralDefEClass, 16);
        this.derivedFloatParamDefEClass = this.createEClass(15);
        this.floatParamDefEClass = this.createEClass(16);
        this.createEAttribute(this.floatParamDefEClass, 23);
        this.createEAttribute(this.floatParamDefEClass, 24);
        this.createEAttribute(this.floatParamDefEClass, 25);
        this.derivedIntegerParamDefEClass = this.createEClass(17);
        this.integerParamDefEClass = this.createEClass(18);
        this.createEAttribute(this.integerParamDefEClass, 23);
        this.createEAttribute(this.integerParamDefEClass, 24);
        this.createEAttribute(this.integerParamDefEClass, 25);
        this.derivedStringParamDefEClass = this.createEClass(19);
        this.stringParamDefEClass = this.createEClass(20);
        this.createEAttribute(this.stringParamDefEClass, 23);
        this.ecuParameterDefinitionEClass = this.createEClass(21);
        this.createEReference(this.ecuParameterDefinitionEClass, 18);
        this.moduleDefEClass = this.createEClass(22);
        this.createEAttribute(this.moduleDefEClass, 20);
        this.createEReference(this.moduleDefEClass, 21);
        this.createEReference(this.moduleDefEClass, 22);
        this.foreignReferenceDefEClass = this.createEClass(23);
        this.createEAttribute(this.foreignReferenceDefEClass, 22);
        this.functionNameDefEClass = this.createEClass(24);
        this.linkerSymbolDefEClass = this.createEClass(25);
        this.instanceReferenceDefEClass = this.createEClass(26);
        this.createEAttribute(this.instanceReferenceDefEClass, 22);
        this.createEAttribute(this.instanceReferenceDefEClass, 23);
        this.referenceDefEClass = this.createEClass(27);
        this.createEReference(this.referenceDefEClass, 22);
        this.symbolicNameReferenceDefEClass = this.createEClass(28);
        this.configurationClassEEnum = this.createEEnum(29);
        this.configurationAffectionEEnum = this.createEEnum(30);
        this.calculationLanguageEEnum = this.createEEnum(31);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ecucparameterdef");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecucpd");
        GecucparameterdefPackage theGecucparameterdefPackage = (GecucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/pd");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        this.booleanParamDefEClass.getESuperTypes().add((Object)this.getConfigParameter());
        this.booleanParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGBooleanParamDef());
        this.configParameterEClass.getESuperTypes().add((Object)this.getCommonConfigurationAttributes());
        this.configParameterEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGConfigParameter());
        this.commonConfigurationAttributesEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.commonConfigurationAttributesEClass.getESuperTypes().add((Object)this.getParamConfMultiplicity());
        this.commonConfigurationAttributesEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGCommonConfigurationAttributes());
        this.paramConfMultiplicityEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.paramConfMultiplicityEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGParamConfMultiplicity());
        this.configurationClassAffectionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.choiceContainerDefEClass.getESuperTypes().add((Object)this.getContainerDef());
        this.choiceContainerDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGChoiceContainerDef());
        this.containerDefEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.containerDefEClass.getESuperTypes().add((Object)this.getParamConfMultiplicity());
        this.containerDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGContainerDef());
        this.paramConfContainerDefEClass.getESuperTypes().add((Object)this.getContainerDef());
        this.paramConfContainerDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGParamConfContainerDef());
        this.configReferenceEClass.getESuperTypes().add((Object)this.getCommonConfigurationAttributes());
        this.configReferenceEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGConfigReference());
        this.choiceReferenceDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.choiceReferenceDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGChoiceReferenceDef());
        this.derivedBooleanParamDefEClass.getESuperTypes().add((Object)this.getBooleanParamDef());
        this.derivedBooleanParamDefEClass.getESuperTypes().add((Object)this.getDerivedParamType());
        this.derivedParamTypeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.derivedEnumerationParamDefEClass.getESuperTypes().add((Object)this.getEnumerationParamDef());
        this.derivedEnumerationParamDefEClass.getESuperTypes().add((Object)this.getDerivedParamType());
        this.enumerationParamDefEClass.getESuperTypes().add((Object)this.getConfigParameter());
        this.enumerationParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGEnumerationParamDef());
        this.enumerationLiteralDefEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.enumerationLiteralDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGEnumerationLiteralDef());
        this.derivedFloatParamDefEClass.getESuperTypes().add((Object)this.getFloatParamDef());
        this.derivedFloatParamDefEClass.getESuperTypes().add((Object)this.getDerivedParamType());
        this.floatParamDefEClass.getESuperTypes().add((Object)this.getConfigParameter());
        this.floatParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGFloatParamDef());
        this.derivedIntegerParamDefEClass.getESuperTypes().add((Object)this.getIntegerParamDef());
        this.derivedIntegerParamDefEClass.getESuperTypes().add((Object)this.getDerivedParamType());
        this.integerParamDefEClass.getESuperTypes().add((Object)this.getConfigParameter());
        this.integerParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGIntegerParamDef());
        this.derivedStringParamDefEClass.getESuperTypes().add((Object)this.getStringParamDef());
        this.derivedStringParamDefEClass.getESuperTypes().add((Object)this.getDerivedParamType());
        this.stringParamDefEClass.getESuperTypes().add((Object)this.getConfigParameter());
        this.stringParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGStringParamDef());
        this.ecuParameterDefinitionEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.moduleDefEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.moduleDefEClass.getESuperTypes().add((Object)this.getParamConfMultiplicity());
        this.moduleDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGModuleDef());
        this.foreignReferenceDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.foreignReferenceDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGForeignReferenceDef());
        this.functionNameDefEClass.getESuperTypes().add((Object)this.getLinkerSymbolDef());
        this.functionNameDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGFunctionNameDef());
        this.linkerSymbolDefEClass.getESuperTypes().add((Object)this.getStringParamDef());
        this.linkerSymbolDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGLinkerSymbolDef());
        this.instanceReferenceDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.instanceReferenceDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGInstanceReferenceDef());
        this.referenceDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.referenceDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGReferenceDef());
        this.symbolicNameReferenceDefEClass.getESuperTypes().add((Object)this.getReferenceDef());
        this.symbolicNameReferenceDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGSymbolicNameReferenceDef());
        this.initEClass(this.booleanParamDefEClass, BooleanParamDef.class, "BooleanParamDef", false, false, true);
        this.initEAttribute(this.getBooleanParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "defaultValue", "false", 0, 1, BooleanParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.configParameterEClass, ConfigParameter.class, "ConfigParameter", true, false, true);
        this.initEReference(this.getConfigParameter_ParamConfContainerDef(), (EClassifier)this.getParamConfContainerDef(), this.getParamConfContainerDef_Parameters(), "paramConfContainerDef", null, 0, 1, ConfigParameter.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getConfigParameter_SymbolicNameValue(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "symbolicNameValue", "false", 0, 1, ConfigParameter.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.commonConfigurationAttributesEClass, CommonConfigurationAttributes.class, "CommonConfigurationAttributes", true, false, true);
        this.initEReference(this.getCommonConfigurationAttributes_ConfigurationClassAffection(), (EClassifier)this.getConfigurationClassAffection(), this.getConfigurationClassAffection_CommonConfigurationAttributes(), "configurationClassAffection", null, 0, 1, CommonConfigurationAttributes.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCommonConfigurationAttributes_ImplementationConfigClass(), (EClassifier)this.getConfigurationClass(), "implementationConfigClass", "POST-BUILD-LOADABLE", 0, 1, CommonConfigurationAttributes.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCommonConfigurationAttributes_Origin(), (EClassifier)thePrimitivetypesPackage.getString(), "origin", "", 0, 1, CommonConfigurationAttributes.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.paramConfMultiplicityEClass, ParamConfMultiplicity.class, "ParamConfMultiplicity", true, false, true);
        this.initEAttribute(this.getParamConfMultiplicity_LowerMultiplicity(), (EClassifier)thePrimitivetypesPackage.getString(), "lowerMultiplicity", "", 0, 1, ParamConfMultiplicity.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getParamConfMultiplicity_UpperMultiplicity(), (EClassifier)thePrimitivetypesPackage.getString(), "upperMultiplicity", "", 0, 1, ParamConfMultiplicity.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.configurationClassAffectionEClass, ConfigurationClassAffection.class, "ConfigurationClassAffection", false, false, true);
        this.initEReference(this.getConfigurationClassAffection_CommonConfigurationAttributes(), (EClassifier)this.getCommonConfigurationAttributes(), this.getCommonConfigurationAttributes_ConfigurationClassAffection(), "commonConfigurationAttributes", null, 0, 1, ConfigurationClassAffection.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getConfigurationClassAffection_Affecteds(), (EClassifier)this.getCommonConfigurationAttributes(), null, "affecteds", null, 0, -1, ConfigurationClassAffection.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getConfigurationClassAffection_AffectionKind(), (EClassifier)this.getConfigurationAffection(), "affectionKind", "PC-AFFECTS-PB", 0, 1, ConfigurationClassAffection.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.choiceContainerDefEClass, ChoiceContainerDef.class, "ChoiceContainerDef", false, false, true);
        this.initEReference(this.getChoiceContainerDef_Choices(), (EClassifier)this.getParamConfContainerDef(), this.getParamConfContainerDef_ChoiceContainerDef(), "choices", null, 0, -1, ChoiceContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.containerDefEClass, ContainerDef.class, "ContainerDef", true, false, true);
        this.initEAttribute(this.getContainerDef_PostBuildChangeable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "postBuildChangeable", "false", 0, 1, ContainerDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.paramConfContainerDefEClass, ParamConfContainerDef.class, "ParamConfContainerDef", false, false, true);
        this.initEReference(this.getParamConfContainerDef_ChoiceContainerDef(), (EClassifier)this.getChoiceContainerDef(), this.getChoiceContainerDef_Choices(), "choiceContainerDef", null, 0, 1, ParamConfContainerDef.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getParamConfContainerDef_MultipleConfigurationContainer(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "multipleConfigurationContainer", "false", 0, 1, ParamConfContainerDef.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getParamConfContainerDef_Parameters(), (EClassifier)this.getConfigParameter(), this.getConfigParameter_ParamConfContainerDef(), "parameters", null, 0, -1, ParamConfContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getParamConfContainerDef_References(), (EClassifier)this.getConfigReference(), this.getConfigReference_ParamConfContainerDef(), "references", null, 0, -1, ParamConfContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getParamConfContainerDef_SubContainers(), (EClassifier)this.getContainerDef(), null, "subContainers", null, 0, -1, ParamConfContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.configReferenceEClass, ConfigReference.class, "ConfigReference", true, false, true);
        this.initEReference(this.getConfigReference_ParamConfContainerDef(), (EClassifier)this.getParamConfContainerDef(), this.getParamConfContainerDef_References(), "paramConfContainerDef", null, 0, 1, ConfigReference.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.choiceReferenceDefEClass, ChoiceReferenceDef.class, "ChoiceReferenceDef", false, false, true);
        this.initEReference(this.getChoiceReferenceDef_Destinations(), (EClassifier)this.getParamConfContainerDef(), null, "destinations", null, 0, -1, ChoiceReferenceDef.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.derivedBooleanParamDefEClass, DerivedBooleanParamDef.class, "DerivedBooleanParamDef", false, false, true);
        this.initEClass(this.derivedParamTypeEClass, DerivedParamType.class, "DerivedParamType", true, false, true);
        this.initEAttribute(this.getDerivedParamType_CalculationFormula(), (EClassifier)thePrimitivetypesPackage.getString(), "calculationFormula", "", 0, 1, DerivedParamType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDerivedParamType_CalculationLanguage(), (EClassifier)this.getCalculationLanguage(), "calculationLanguage", "INFORMAL", 0, 1, DerivedParamType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.derivedEnumerationParamDefEClass, DerivedEnumerationParamDef.class, "DerivedEnumerationParamDef", false, false, true);
        this.initEClass(this.enumerationParamDefEClass, EnumerationParamDef.class, "EnumerationParamDef", false, false, true);
        this.initEAttribute(this.getEnumerationParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getString(), "defaultValue", "", 0, 1, EnumerationParamDef.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getEnumerationParamDef_Literals(), (EClassifier)this.getEnumerationLiteralDef(), this.getEnumerationLiteralDef_EnumerationParamDef(), "literals", null, 0, -1, EnumerationParamDef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.enumerationLiteralDefEClass, EnumerationLiteralDef.class, "EnumerationLiteralDef", false, false, true);
        this.initEReference(this.getEnumerationLiteralDef_EnumerationParamDef(), (EClassifier)this.getEnumerationParamDef(), this.getEnumerationParamDef_Literals(), "enumerationParamDef", null, 0, 1, EnumerationLiteralDef.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.derivedFloatParamDefEClass, DerivedFloatParamDef.class, "DerivedFloatParamDef", false, false, true);
        this.initEClass(this.floatParamDefEClass, FloatParamDef.class, "FloatParamDef", false, false, true);
        this.initEAttribute(this.getFloatParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getFloat(), "defaultValue", "0.0", 0, 1, FloatParamDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFloatParamDef_Max(), (EClassifier)thePrimitivetypesPackage.getFloat(), "max", "0.0", 0, 1, FloatParamDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFloatParamDef_Min(), (EClassifier)thePrimitivetypesPackage.getFloat(), "min", "0.0", 0, 1, FloatParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.derivedIntegerParamDefEClass, DerivedIntegerParamDef.class, "DerivedIntegerParamDef", false, false, true);
        this.initEClass(this.integerParamDefEClass, IntegerParamDef.class, "IntegerParamDef", false, false, true);
        this.initEAttribute(this.getIntegerParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getUnlimitedNatural(), "defaultValue", "0", 0, 1, IntegerParamDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getIntegerParamDef_Max(), (EClassifier)thePrimitivetypesPackage.getUnlimitedNatural(), "max", "0", 0, 1, IntegerParamDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getIntegerParamDef_Min(), (EClassifier)thePrimitivetypesPackage.getUnlimitedNatural(), "min", "0", 0, 1, IntegerParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.derivedStringParamDefEClass, DerivedStringParamDef.class, "DerivedStringParamDef", false, false, true);
        this.initEClass(this.stringParamDefEClass, StringParamDef.class, "StringParamDef", false, false, true);
        this.initEAttribute(this.getStringParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getString(), "defaultValue", "", 0, 1, StringParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.ecuParameterDefinitionEClass, EcuParameterDefinition.class, "EcuParameterDefinition", false, false, true);
        this.initEReference(this.getEcuParameterDefinition_Modules(), (EClassifier)this.getModuleDef(), null, "modules", null, 0, -1, EcuParameterDefinition.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.moduleDefEClass, ModuleDef.class, "ModuleDef", false, false, true);
        this.initEAttribute(this.getModuleDef_ImplementationConfigVariant(), (EClassifier)thePrimitivetypesPackage.getString(), "implementationConfigVariant", "", 0, 1, ModuleDef.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getModuleDef_RefinedModuleDef(), (EClassifier)this.getModuleDef(), null, "refinedModuleDef", null, 0, 1, ModuleDef.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getModuleDef_Containers(), (EClassifier)this.getContainerDef(), null, "containers", null, 0, -1, ModuleDef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.foreignReferenceDefEClass, ForeignReferenceDef.class, "ForeignReferenceDef", false, false, true);
        this.initEAttribute(this.getForeignReferenceDef_DestinationType(), (EClassifier)thePrimitivetypesPackage.getString(), "destinationType", "", 0, 1, ForeignReferenceDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.functionNameDefEClass, FunctionNameDef.class, "FunctionNameDef", false, false, true);
        this.initEClass(this.linkerSymbolDefEClass, LinkerSymbolDef.class, "LinkerSymbolDef", false, false, true);
        this.initEClass(this.instanceReferenceDefEClass, InstanceReferenceDef.class, "InstanceReferenceDef", false, false, true);
        this.initEAttribute(this.getInstanceReferenceDef_DestinationContext(), (EClassifier)thePrimitivetypesPackage.getString(), "destinationContext", "", 0, 1, InstanceReferenceDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInstanceReferenceDef_DestinationType(), (EClassifier)thePrimitivetypesPackage.getString(), "destinationType", "", 0, 1, InstanceReferenceDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.referenceDefEClass, ReferenceDef.class, "ReferenceDef", false, false, true);
        this.initEReference(this.getReferenceDef_Destination(), (EClassifier)this.getParamConfContainerDef(), null, "destination", null, 0, 1, ReferenceDef.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.symbolicNameReferenceDefEClass, SymbolicNameReferenceDef.class, "SymbolicNameReferenceDef", false, false, true);
        this.initEEnum(this.configurationClassEEnum, ConfigurationClass.class, "ConfigurationClass");
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.POST_BUILD_LOADABLE);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.POST_BUILD);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.PRE_COMPILE);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.POST_BUILD_SELECTABLE);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.PUBLISHED_INFORMATION);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.LINK);
        this.initEEnum(this.configurationAffectionEEnum, ConfigurationAffection.class, "ConfigurationAffection");
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.PC_AFFECTS_PB);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.PC_AFFECTS_LT);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.PC_AFFECTS_LT_AND_PB);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.NO_AFFECT);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.LT_AFFECTS_PB);
        this.initEEnum(this.calculationLanguageEEnum, CalculationLanguage.class, "CalculationLanguage");
        this.addEEnumLiteral(this.calculationLanguageEEnum, CalculationLanguage.INFORMAL);
        this.createResource("http://autosar.org/2.1.5/autosar21/ecucpd");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ConfigParameterAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_CommonConfigurationAttributesAnnotations();
        this.createTaggedValuesOfGeneralization_ParamConfMultiplicityAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_ContainerDefAnnotations();
        this.createTaggedValuesOfGeneralization_ConfigReferenceAnnotations();
        this.createTaggedValuesOfGeneralization_BooleanParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_DerivedParamTypeAnnotations();
        this.createTaggedValuesOfGeneralization_EnumerationParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_FloatParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_IntegerParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_StringParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_LinkerSymbolDefAnnotations();
        this.createTaggedValuesOfGeneralization_ReferenceDefAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ECUCParameterDefTemplate", "GUID", "{0B204D95-DABD-4519-809F-B1FF35EA44E9}", "Id", "-200181204"});
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"Name", "BooleanParamDef", "Modified", "Wed Apr 12 10:19:13 CEST 2006", "Created", "Thu Apr 07 13:14:34 CEST 2005", "GUID", "{B4BAD506-8155-447b-9447-AF3D0A598DC5}", "Id", "-1603036622"});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"Name", "defaultValue", "GUID", "{520DBFA8-D914-48b3-A080-2F2413B263BD}", "Id", "593168075"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"Name", "ConfigParameter", "Modified", "Thu Feb 16 13:39:38 CET 2006", "Created", "Thu Apr 07 10:15:42 CEST 2005", "GUID", "{85F8ECDA-408A-4d05-90AA-25102F16E21C}", "Id", "-1077318403"});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"Name", "symbolicNameValue", "GUID", "{DEBAAD99-3850-4fb4-8C11-2F15AB0CC9B0}", "Id", "1784230155"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"Name", "CommonConfigurationAttributes", "Modified", "Thu Feb 16 13:39:09 CET 2006", "Created", "Thu Feb 16 13:24:12 CET 2006", "GUID", "{DA17A62A-E6DB-4a62-872A-D72F739DA6FC}", "Id", "1665731864"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ImplementationConfigClass(), source, new String[]{"Name", "implementationConfigClass", "GUID", "{11324308-565F-4499-8BB0-4877BB31BCB1}", "Id", "-689485263"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"Name", "origin", "GUID", "{DAAD699E-359F-410f-BCBD-6B8540F5C289}", "Id", "528318704"});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"Name", "ParamConfMultiplicity", "Modified", "Wed Sep 13 14:55:27 CEST 2006", "Created", "Wed Apr 20 11:35:09 CEST 2005", "GUID", "{8419A7C8-F18F-4cba-AE4F-CAF7A24F6B7D}", "Id", "1547115141"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"Name", "lowerMultiplicity", "GUID", "{D763F550-A8D3-41ae-BD69-D7D68FD63EFA}", "Id", "2143496034"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"Name", "upperMultiplicity", "GUID", "{CDB51E98-D45A-4f8a-94F9-7C74152265D2}", "Id", "959445051"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"Name", "ConfigurationClass", "Modified", "Thu Feb 16 13:31:46 CET 2006", "Created", "Thu Nov 03 18:22:43 CET 2005", "GUID", "{EA3930DA-1E1D-42c9-9D6F-E9A336B83EC2}", "Id", "1480526182"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"Name", "ConfigurationClassAffection", "Modified", "Thu Aug 10 08:50:35 CEST 2006", "Created", "Tue Aug 08 12:15:30 CEST 2006", "GUID", "{F7CEE5F2-6E88-4aef-9269-4C7DE5E139A3}", "Id", "1155032130"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_AffectionKind(), source, new String[]{"Name", "affectionKind", "GUID", "{A00A8A33-0143-40c5-8636-A06302183912}", "Id", "1248619630"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"Name", "ConfigurationAffection", "Modified", "Thu Aug 10 08:49:45 CEST 2006", "Created", "Thu Nov 03 18:22:43 CET 2005", "GUID", "{E896D8A5-A0CC-4fef-8893-218C44AC1C30}", "Id", "-961350307"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"Name", "CalculationLanguage", "Modified", "Thu Dec 01 11:11:02 CET 2005", "Created", "Thu Nov 03 18:28:25 CET 2005", "GUID", "{7D9151B3-98CE-45d5-A1A9-D8D2C4C8DB02}", "Id", "-1033063407"});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"Name", "ChoiceContainerDef", "Modified", "Mon Aug 07 10:14:56 CEST 2006", "Created", "Mon May 23 09:17:35 CEST 2005", "GUID", "{FEC9099E-46A5-4a21-A006-353E091C805B}", "Id", "1116832655"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"Name", "ContainerDef", "Modified", "Wed Mar 29 15:08:42 CEST 2006", "Created", "Thu Apr 07 10:13:20 CEST 2005", "GUID", "{461B0CA6-942A-4c36-84DE-D6F335B7876B}", "Id", "-1740936555"});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"Name", "postBuildChangeable", "GUID", "{453EA0CA-995C-4008-835D-70940EEB86E6}", "Id", "-359657314"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"Name", "ParamConfContainerDef", "Modified", "Tue Nov 28 15:53:38 CET 2006", "Created", "Wed Apr 20 11:50:02 CEST 2005", "GUID", "{83FBCE41-1C08-4054-9DA1-9D3235667B17}", "Id", "2093869368"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"Name", "multipleConfigurationContainer", "GUID", "{21FA503A-9078-4685-8675-86F7D257F393}", "Id", "1157198465"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"Name", "ConfigReference", "Modified", "Wed Mar 29 15:15:17 CEST 2006", "Created", "Sun Jun 05 11:13:39 CEST 2005", "GUID", "{9BD20B72-E764-487f-8794-1FD0249EB7B8}", "Id", "1117962819"});
        this.addAnnotation((ENamedElement)this.choiceReferenceDefEClass, source, new String[]{"Name", "ChoiceReferenceDef", "Modified", "Wed Jun 07 14:01:16 CEST 2006", "Created", "Wed May 18 22:09:34 CEST 2005", "GUID", "{350F4D81-D603-421b-BA18-54400D117BAB}", "Id", "1116446974"});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"Name", "DerivedBooleanParamDef", "Modified", "Thu Dec 01 11:11:02 CET 2005", "Created", "Thu Apr 07 13:14:34 CEST 2005", "GUID", "{FF8E5E3E-7D33-4af9-8D8D-71EC2E4EEA79}", "Id", "675479335"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"Name", "DerivedParamType", "Modified", "Fri Dec 09 11:55:22 CET 2005", "Created", "Tue Sep 06 15:00:16 CEST 2005", "GUID", "{B2F5CD31-460D-4563-8C09-008DFC0FDFDA}", "Id", "1291180441"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationFormula(), source, new String[]{"Name", "calculationFormula", "GUID", "{F4E0B5DD-CF75-4756-8CDC-A0F44D7EA851}", "Id", "1567450590"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationLanguage(), source, new String[]{"Name", "calculationLanguage", "GUID", "{3AADC5EC-D778-440a-9D8E-5A10D14F797B}", "Id", "1463835655"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"Name", "DerivedEnumerationParamDef", "Modified", "Thu Dec 01 11:11:02 CET 2005", "Created", "Thu Apr 07 10:16:49 CEST 2005", "GUID", "{F54CC204-C22E-42d9-BF5F-2D0B6C04BDC7}", "Id", "-222844543"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"Name", "EnumerationParamDef", "Modified", "Wed Apr 12 22:30:28 CEST 2006", "Created", "Thu Apr 07 10:16:49 CEST 2005", "GUID", "{AB9EC0A5-D391-49ce-A972-6CA069E6BA8A}", "Id", "-655990434"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_DefaultValue(), source, new String[]{"Name", "defaultValue", "GUID", "{DDBEFD6D-FA42-4413-8A45-AB98F2476804}", "Id", "494506375"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"Name", "EnumerationLiteralDef", "Modified", "Tue Oct 31 10:41:41 CET 2006", "Created", "Thu Apr 07 10:17:56 CEST 2005", "GUID", "{1BA8F3AD-6A8F-4880-92C1-B86E13A9C54C}", "Id", "1591570291"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"Name", "DerivedFloatParamDef", "Modified", "Thu Dec 01 11:11:02 CET 2005", "Created", "Thu Apr 07 13:13:06 CEST 2005", "GUID", "{6B952936-06BE-4186-B9E8-43700FF16D46}", "Id", "1576576931"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"Name", "FloatParamDef", "Modified", "Thu Feb 16 13:39:38 CET 2006", "Created", "Thu Apr 07 13:13:06 CEST 2005", "GUID", "{9D679D6B-F304-4b84-A9A7-BA84C0C1119D}", "Id", "722539695"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_DefaultValue(), source, new String[]{"Name", "defaultValue", "GUID", "{E51888F7-0B66-46fd-962E-D47AE77A4C1A}", "Id", "-470245230"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Max(), source, new String[]{"Name", "max", "GUID", "{A6768834-F829-4ed8-AAD8-31CE46AE351B}", "Id", "-546314635"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Min(), source, new String[]{"Name", "min", "GUID", "{48B525E6-E5EE-4d52-B4CD-717482C2E89F}", "Id", "-346694460"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"Name", "DerivedIntegerParamDef", "Modified", "Wed Jun 07 14:05:46 CEST 2006", "Created", "Thu Apr 07 10:16:37 CEST 2005", "GUID", "{5A0D451A-D363-4146-818C-C5624C684957}", "Id", "-284189387"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"Name", "IntegerParamDef", "Modified", "Wed Apr 12 11:13:25 CEST 2006", "Created", "Thu Apr 07 10:16:37 CEST 2005", "GUID", "{FBD47315-78A2-4644-B9DC-984451127CAF}", "Id", "1312007264"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_DefaultValue(), source, new String[]{"Name", "defaultValue", "GUID", "{58ADCD1E-98B2-421e-9842-C759B8235C72}", "Id", "1147203439"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Max(), source, new String[]{"Name", "max", "GUID", "{FF053B0B-6105-40eb-9CB3-2EFBE59035D5}", "Id", "1317183886"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Min(), source, new String[]{"Name", "min", "GUID", "{F595D501-F8EA-4694-9E67-CD59A1F37B01}", "Id", "1556227297"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"Name", "DerivedStringParamDef", "Modified", "Wed Apr 12 10:43:02 CEST 2006", "Created", "Thu Apr 07 13:15:06 CEST 2005", "GUID", "{BE554152-297E-4282-B314-5B3CAA3E7154}", "Id", "-72829659"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"Name", "StringParamDef", "Modified", "Thu Dec 01 11:13:27 CET 2005", "Created", "Thu Apr 07 13:15:06 CEST 2005", "GUID", "{CB52C17C-6E64-4bf6-9735-0F026A8FAB54}", "Id", "-605020157"});
        this.addAnnotation((ENamedElement)this.getStringParamDef_DefaultValue(), source, new String[]{"Name", "defaultValue", "GUID", "{21E83053-5B2B-4dd9-8695-C6B42D5DFC15}", "Id", "-1749527928"});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"Name", "EcuParameterDefinition", "Modified", "Mon Aug 21 14:28:40 CEST 2006", "Created", "Wed Aug 03 09:44:13 CEST 2005", "GUID", "{8310DA41-DCAF-4f2a-88C9-0107FA3117EA}", "Id", "-2106301497"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"Name", "ModuleDef", "Modified", "Thu May 04 18:14:17 CEST 2006", "Created", "Fri Nov 04 08:35:40 CET 2005", "GUID", "{A267C9B9-8CB9-4e89-AD8A-6A01C7F82B82}", "Id", "1131089740"});
        this.addAnnotation((ENamedElement)this.getModuleDef_ImplementationConfigVariant(), source, new String[]{"Name", "implementationConfigVariant", "GUID", "{B287ACF5-EC99-4664-9B2E-A428A40782B8}", "Id", "1131091713"});
        this.addAnnotation((ENamedElement)this.foreignReferenceDefEClass, source, new String[]{"Name", "ForeignReferenceDef", "Modified", "Tue Dec 13 21:58:52 CET 2005", "Created", "Mon Dec 05 13:52:19 CET 2005", "GUID", "{E07D81DE-6669-41fc-8487-0656AB259A0E}", "Id", "1133787139"});
        this.addAnnotation((ENamedElement)this.getForeignReferenceDef_DestinationType(), source, new String[]{"Name", "destinationType", "GUID", "{85CF7FE9-6BBE-4de4-9300-21F75F4743FF}", "Id", "-181499415"});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"Name", "FunctionNameDef", "Modified", "Tue Dec 13 21:59:20 CET 2005", "Created", "Thu Apr 21 11:13:21 CEST 2005", "GUID", "{D9803415-1E50-4ecd-8E8A-7C3D7F3B6563}", "Id", "1366922272"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"Name", "LinkerSymbolDef", "Modified", "Thu Aug 10 08:58:25 CEST 2006", "Created", "Thu Apr 21 11:13:21 CEST 2005", "GUID", "{95BC451D-7F02-42cb-9FD3-3B07356F7AEF}", "Id", "-781583231"});
        this.addAnnotation((ENamedElement)this.instanceReferenceDefEClass, source, new String[]{"Name", "InstanceReferenceDef", "Modified", "Tue Feb 21 11:34:51 CET 2006", "Created", "Tue Apr 19 17:29:14 CEST 2005", "GUID", "{DA1FBB63-1D61-4523-ACD2-4481A461AF86}", "Id", "-86338640"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationContext(), source, new String[]{"Name", "destinationContext", "GUID", "{8E24E8D3-4C70-4d1d-8FED-3E118C5492DD}", "Id", "1151408706"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationType(), source, new String[]{"Name", "destinationType", "GUID", "{24519B19-2433-4f1e-844B-7E7F7D540CB4}", "Id", "-182708751"});
        this.addAnnotation((ENamedElement)this.referenceDefEClass, source, new String[]{"Name", "ReferenceDef", "Modified", "Wed Sep 13 14:55:38 CEST 2006", "Created", "Fri Apr 08 10:24:17 CEST 2005", "GUID", "{A9E98718-94D1-4d76-8895-1D5FF0B5663F}", "Id", "-1547773332"});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceDefEClass, source, new String[]{"Name", "SymbolicNameReferenceDef", "Modified", "Tue Nov 28 15:30:17 CET 2006", "Created", "Tue Dec 13 15:49:08 CET 2005", "GUID", "{7C5A05B7-B05A-452b-9E86-BEBC1843ED34}", "Id", "1134485348"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "ECUC-PARAMETER-DEF-TEMPLATE", "xml.namePlural", "ECUC-PARAMETER-DEF-TEMPLATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"xml.tags", "xml.sequenceOffset=\"0\"", "xml.sequenceOffset", "0", "xml.name", "BOOLEAN-PARAM-DEF", "xml.namePlural", "BOOLEAN-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"xml.name", "CONFIG-PARAMETER", "xml.namePlural", "CONFIG-PARAMETERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SYMBOLIC-NAME-VALUE", "xml.namePlural", "SYMBOLIC-NAME-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"xml.name", "COMMON-CONFIGURATION-ATTRIBUTES", "xml.namePlural", "COMMON-CONFIGURATION-ATTRIBUTESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ConfigurationClassAffection(), source, new String[]{"xml.name", "CONFIGURATION-CLASS-AFFECTION", "xml.namePlural", "CONFIGURATION-CLASS-AFFECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ImplementationConfigClass(), source, new String[]{"xml.name", "IMPLEMENTATION-CONFIG-CLASS", "xml.namePlural", "IMPLEMENTATION-CONFIG-CLASSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"xml.name", "ORIGIN", "xml.namePlural", "ORIGINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"xml.name", "PARAM-CONF-MULTIPLICITY", "xml.namePlural", "PARAM-CONF-MULTIPLICITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"xml.name", "LOWER-MULTIPLICITY", "xml.namePlural", "LOWER-MULTIPLICITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"xml.name", "UPPER-MULTIPLICITY", "xml.namePlural", "UPPER-MULTIPLICITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"xml.name", "CONFIGURATION-CLASS", "xml.namePlural", "CONFIGURATION-CLASSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(0), source, new String[]{"xml.name", "POST-BUILD-LOADABLE", "xml.namePlural", "POST-BUILD-LOADABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(1), source, new String[]{"xml.name", "POST-BUILD", "xml.namePlural", "POST-BUILDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(2), source, new String[]{"xml.name", "PRE-COMPILE", "xml.namePlural", "PRE-COMPILES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(3), source, new String[]{"xml.name", "POST-BUILD-SELECTABLE", "xml.namePlural", "POST-BUILD-SELECTABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(4), source, new String[]{"xml.name", "PUBLISHED-INFORMATION", "xml.namePlural", "PUBLISHED-INFORMATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(5), source, new String[]{"xml.name", "LINK", "xml.namePlural", "LINKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"xml.name", "CONFIGURATION-CLASS-AFFECTION", "xml.namePlural", "CONFIGURATION-CLASS-AFFECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_Affecteds(), source, new String[]{"xml.name", "AFFECTED-REF", "xml.namePlural", "AFFECTED-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_AffectionKind(), source, new String[]{"xml.name", "AFFECTION-KIND", "xml.namePlural", "AFFECTION-KINDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"xml.name", "CONFIGURATION-AFFECTION", "xml.namePlural", "CONFIGURATION-AFFECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(0), source, new String[]{"xml.name", "PC-AFFECTS-PB", "xml.namePlural", "PC-AFFECTS-PBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(1), source, new String[]{"xml.name", "PC-AFFECTS-LT", "xml.namePlural", "PC-AFFECTS-LTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(2), source, new String[]{"xml.name", "PC-AFFECTS-LT-AND-PB", "xml.namePlural", "PC-AFFECTS-LT-AND-PBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(3), source, new String[]{"xml.name", "NO-AFFECT", "xml.namePlural", "NO-AFFECTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(4), source, new String[]{"xml.name", "LT-AFFECTS-PB", "xml.namePlural", "LT-AFFECTS-PBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"xml.name", "CALCULATION-LANGUAGE", "xml.namePlural", "CALCULATION-LANGUAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum.getELiterals().get(0), source, new String[]{"xml.name", "INFORMAL", "xml.namePlural", "INFORMALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"xml.name", "CHOICE-CONTAINER-DEF", "xml.namePlural", "CHOICE-CONTAINER-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getChoiceContainerDef_Choices(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "CHOICE", "xml.namePlural", "CHOICES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"xml.name", "CONTAINER-DEF", "xml.namePlural", "CONTAINER-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "POST-BUILD-CHANGEABLE", "xml.namePlural", "POST-BUILD-CHANGEABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"xml.name", "PARAM-CONF-CONTAINER-DEF", "xml.namePlural", "PARAM-CONF-CONTAINER-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"xml.name", "MULTIPLE-CONFIGURATION-CONTAINER", "xml.namePlural", "MULTIPLE-CONFIGURATION-CONTAINERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_Parameters(), source, new String[]{"xml.name", "PARAMETER", "xml.namePlural", "PARAMETERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_References(), source, new String[]{"xml.name", "REFERENCE", "xml.namePlural", "REFERENCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_SubContainers(), source, new String[]{"xml.name", "SUB-CONTAINER", "xml.namePlural", "SUB-CONTAINERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"xml.name", "CONFIG-REFERENCE", "xml.namePlural", "CONFIG-REFERENCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.choiceReferenceDefEClass, source, new String[]{"xml.name", "CHOICE-REFERENCE-DEF", "xml.namePlural", "CHOICE-REFERENCE-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getChoiceReferenceDef_Destinations(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "DESTINATION-REF", "xml.namePlural", "DESTINATION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"xml.name", "DERIVED-BOOLEAN-PARAM-DEF", "xml.namePlural", "DERIVED-BOOLEAN-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\"", "xml.sequenceOffset", "40", "xml.name", "DERIVED-PARAM-TYPE", "xml.namePlural", "DERIVED-PARAM-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationFormula(), source, new String[]{"xml.name", "CALCULATION-FORMULA", "xml.namePlural", "CALCULATION-FORMULAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationLanguage(), source, new String[]{"xml.name", "CALCULATION-LANGUAGE", "xml.namePlural", "CALCULATION-LANGUAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"xml.name", "DERIVED-ENUMERATION-PARAM-DEF", "xml.namePlural", "DERIVED-ENUMERATION-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"xml.tags", "xml.sequenceOffset=\"0\"", "xml.sequenceOffset", "0", "xml.name", "ENUMERATION-PARAM-DEF", "xml.namePlural", "ENUMERATION-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_DefaultValue(), source, new String[]{"xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_Literals(), source, new String[]{"xml.name", "LITERAL", "xml.namePlural", "LITERALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"xml.name", "ENUMERATION-LITERAL-DEF", "xml.namePlural", "ENUMERATION-LITERAL-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"xml.name", "DERIVED-FLOAT-PARAM-DEF", "xml.namePlural", "DERIVED-FLOAT-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"xml.tags", "xml.sequenceOffset=\"0\"", "xml.sequenceOffset", "0", "xml.name", "FLOAT-PARAM-DEF", "xml.namePlural", "FLOAT-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_DefaultValue(), source, new String[]{"xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Max(), source, new String[]{"xml.name", "MAX", "xml.namePlural", "MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Min(), source, new String[]{"xml.name", "MIN", "xml.namePlural", "MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"xml.name", "DERIVED-INTEGER-PARAM-DEF", "xml.namePlural", "DERIVED-INTEGER-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"xml.tags", "xml.sequenceOffset=\"0\"", "xml.sequenceOffset", "0", "xml.name", "INTEGER-PARAM-DEF", "xml.namePlural", "INTEGER-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_DefaultValue(), source, new String[]{"xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Max(), source, new String[]{"xml.name", "MAX", "xml.namePlural", "MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Min(), source, new String[]{"xml.name", "MIN", "xml.namePlural", "MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"xml.name", "DERIVED-STRING-PARAM-DEF", "xml.namePlural", "DERIVED-STRING-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"xml.tags", "xml.sequenceOffset=\"0\"", "xml.sequenceOffset", "0", "xml.name", "STRING-PARAM-DEF", "xml.namePlural", "STRING-PARAM-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStringParamDef_DefaultValue(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"xml.name", "ECU-PARAMETER-DEFINITION", "xml.namePlural", "ECU-PARAMETER-DEFINITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEcuParameterDefinition_Modules(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "MODULE-REF", "xml.namePlural", "MODULE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"xml.name", "MODULE-DEF", "xml.namePlural", "MODULE-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModuleDef_ImplementationConfigVariant(), source, new String[]{"xml.name", "IMPLEMENTATION-CONFIG-VARIANT", "xml.namePlural", "IMPLEMENTATION-CONFIG-VARIANTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleDef_RefinedModuleDef(), source, new String[]{"xml.name", "REFINED-MODULE-DEF-REF", "xml.namePlural", "REFINED-MODULE-DEF-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleDef_Containers(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"11\"", "xml.sequenceOffset", "2", "xml.name", "CONTAINER", "xml.namePlural", "CONTAINERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.foreignReferenceDefEClass, source, new String[]{"xml.name", "FOREIGN-REFERENCE-DEF", "xml.namePlural", "FOREIGN-REFERENCE-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getForeignReferenceDef_DestinationType(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "DESTINATION-TYPE", "xml.namePlural", "DESTINATION-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"xml.name", "FUNCTION-NAME-DEF", "xml.namePlural", "FUNCTION-NAME-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"xml.name", "LINKER-SYMBOL-DEF", "xml.namePlural", "LINKER-SYMBOL-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.instanceReferenceDefEClass, source, new String[]{"xml.name", "INSTANCE-REFERENCE-DEF", "xml.namePlural", "INSTANCE-REFERENCE-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationContext(), source, new String[]{"xml.name", "DESTINATION-CONTEXT", "xml.namePlural", "DESTINATION-CONTEXTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationType(), source, new String[]{"xml.name", "DESTINATION-TYPE", "xml.namePlural", "DESTINATION-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.referenceDefEClass, source, new String[]{"xml.name", "REFERENCE-DEF", "xml.namePlural", "REFERENCE-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getReferenceDef_Destination(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "DESTINATION-REF", "xml.namePlural", "DESTINATION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceDefEClass, source, new String[]{"xml.name", "SYMBOLIC-NAME-REFERENCE-DEF", "xml.namePlural", "SYMBOLIC-NAME-REFERENCE-DEFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"name", "BOOLEAN-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"name", "CONFIG-PARAMETER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"name", "SYMBOLIC-NAME-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"name", "COMMON-CONFIGURATION-ATTRIBUTES", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ConfigurationClassAffection(), source, new String[]{"name", "CONFIGURATION-CLASS-AFFECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ImplementationConfigClass(), source, new String[]{"name", "IMPLEMENTATION-CONFIG-CLASS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"name", "ORIGIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"name", "PARAM-CONF-MULTIPLICITY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"name", "LOWER-MULTIPLICITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"name", "UPPER-MULTIPLICITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"name", "CONFIGURATION-CLASS-AFFECTION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_Affecteds(), source, new String[]{"name", "AFFECTED-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_AffectionKind(), source, new String[]{"name", "AFFECTION-KIND", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"name", "CHOICE-CONTAINER-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getChoiceContainerDef_Choices(), source, new String[]{"name", "CHOICES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"name", "CONTAINER-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"name", "POST-BUILD-CHANGEABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"name", "PARAM-CONF-CONTAINER-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"name", "MULTIPLE-CONFIGURATION-CONTAINER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_Parameters(), source, new String[]{"name", "PARAMETERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_References(), source, new String[]{"name", "REFERENCES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_SubContainers(), source, new String[]{"name", "SUB-CONTAINERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"name", "CONFIG-REFERENCE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.choiceReferenceDefEClass, source, new String[]{"name", "CHOICE-REFERENCE-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getChoiceReferenceDef_Destinations(), source, new String[]{"name", "DESTINATION-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"name", "DERIVED-BOOLEAN-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"name", "DERIVED-PARAM-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationFormula(), source, new String[]{"name", "CALCULATION-FORMULA", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationLanguage(), source, new String[]{"name", "CALCULATION-LANGUAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"name", "DERIVED-ENUMERATION-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"name", "ENUMERATION-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_Literals(), source, new String[]{"name", "LITERALS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"name", "ENUMERATION-LITERAL-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"name", "DERIVED-FLOAT-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"name", "FLOAT-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"name", "DERIVED-INTEGER-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"name", "INTEGER-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"name", "DERIVED-STRING-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"name", "STRING-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStringParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"name", "ECU-PARAMETER-DEFINITION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEcuParameterDefinition_Modules(), source, new String[]{"name", "MODULE-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"name", "MODULE-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModuleDef_ImplementationConfigVariant(), source, new String[]{"name", "IMPLEMENTATION-CONFIG-VARIANT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModuleDef_RefinedModuleDef(), source, new String[]{"name", "REFINED-MODULE-DEF-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModuleDef_Containers(), source, new String[]{"name", "CONTAINERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.foreignReferenceDefEClass, source, new String[]{"name", "FOREIGN-REFERENCE-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getForeignReferenceDef_DestinationType(), source, new String[]{"name", "DESTINATION-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"name", "FUNCTION-NAME-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"name", "LINKER-SYMBOL-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.instanceReferenceDefEClass, source, new String[]{"name", "INSTANCE-REFERENCE-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationContext(), source, new String[]{"name", "DESTINATION-CONTEXT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationType(), source, new String[]{"name", "DESTINATION-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.referenceDefEClass, source, new String[]{"name", "REFERENCE-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getReferenceDef_Destination(), source, new String[]{"name", "DESTINATION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceDefEClass, source, new String[]{"name", "SYMBOLIC-NAME-REFERENCE-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"documentation", "Configuration parameter type for Boolean. allowed values are true and false."});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"documentation", "Default value of the boolean configuration parameter."});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"documentation", "Abstract class used to define the similarities of all ECU Configuration Parameter types defined as subclasses."});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"documentation", "Specifies that this parameter's value is used, together with the aggregating container, to derive a symbolic name definition. E.g.: #define \"container_shortName\" \"this parameter's value\"."});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"documentation", "Attributes used by Configuration Parameters as well as References."});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ConfigurationClassAffection(), source, new String[]{"documentation", "Specifes whether changes on this parameter have some affection on other parameters."});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ImplementationConfigClass(), source, new String[]{"documentation", "Specifying the actual configuration class of a configuration parameter in the \"vendor specific module definition\" in which it is mandatory."});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"documentation", "String specifying if this configuration parameter is an AUTOSAR standardized configuration parameter or if the parameter is hardware- or vendor-specific."});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"documentation", "Common class used to express multiplicities in the definition of configuration parameters and containers.\r\nIf not stated otherwise the default multiplicity is exactly one mandatory occurrence of the specified element."});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"documentation", "The lower multiplicity of the specified element.\r\n0: optional\r\n1: at least one occurence\r\nn: at least n occurrences"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"documentation", "The upper multiplicity of the specified element.\r\n1: at most one occurrence\r\nm: at most m occurrences\r\n*: arbitrary number of occurrences"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"documentation", "Possible configuration classes for the AUTOSAR configuration parameters."});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"documentation", "Specifies in the \"VendorSpecificModuleDefinition\" whether changes on this parameter do affect other parameters in a later configuration step."});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_Affecteds(), source, new String[]{"documentation", "Optional reference to parameters or references which are affected by the ConfigurationClassAffection."});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"documentation", "Possible affections used by the ConfigurationClassAffection."});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"documentation", "Definition of the languag used to specify the formula in attribute calculationFormula.\r\nCurrentlfy, only informal definition of the formula is supported."});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"documentation", "Used to define configuration containers that provide a choice between several ParamConfContainerDef. But in the actual ECU Configuration Description only one instance from the choice list will be present (depending on the multiplicites given)."});
        this.addAnnotation((ENamedElement)this.getChoiceContainerDef_Choices(), source, new String[]{"documentation", "The choices available in a ChoiceContainerDef."});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"documentation", "Base class used to gather common attributes of configuration container definitions."});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"documentation", "Specifies if the number of instances of this container may be changed post-build time. This parameter may only be set to true if all of the following conditions hold:\r\n- the container's upperMultiplicity > lowerMultiplicity\r\n- all parameters within the container and subContainers are post-build time changeable.\r\nIf any of the aggregated parameters is either pre-compile time or link time this attribute is ignored and may be omitted."});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"documentation", "Used to define configuration containers that can hierarchically contain other containers and/or parameter definitions."});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"documentation", "Specifies whether this container is used to define multiple configuration sets. Only one container in the whole ModuleDef shall have this enabled."});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_Parameters(), source, new String[]{"documentation", "The parameters defined within the ParamConfContainerDef."});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_References(), source, new String[]{"documentation", "The references defined within the ParamConfContainerDef."});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_SubContainers(), source, new String[]{"documentation", "The containers defined within the ParamConfContainerDef."});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"documentation", "Common class to gather the attributes for the definition of references."});
        this.addAnnotation((ENamedElement)this.choiceReferenceDefEClass, source, new String[]{"documentation", "Specify alternative references where in the ECU Configuration description only one of the specified references will actually be used."});
        this.addAnnotation((ENamedElement)this.getChoiceReferenceDef_Destinations(), source, new String[]{"documentation", "All the possible parameter containers for the reference are specified."});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"documentation", "Derived value is of type Boolean"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"documentation", "Allows to define configuration items that are calculated based on the value of \r\n* other parameters values\r\n* elements (attributes /classes) defined in other AUTOSAR templates such as System template and SW component template.\r\nFor these definitions there is no corresponding entry in the ECUC description. Instead, a calculation definition is given that defines how Configuration Editors and Generators can calculate the value from other values when needed to display/use the configuration item "});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationFormula(), source, new String[]{"documentation", "Definition of the formula used to calculate the value of the configuration element."});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationLanguage(), source, new String[]{"documentation", "Definition of the languag used to specify the formula in attribute calculationFormula.\r\nCurrentlfy, only informal definition of the formula is supported."});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"documentation", "Derived value is an Enumeration."});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"documentation", "Configuration parameter type for Enumeration."});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_DefaultValue(), source, new String[]{"documentation", "Default value of the enumeration configuration parameter. This string nees to be one of the literals specified for this enumeration."});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_Literals(), source, new String[]{"documentation", "Aggregation on the literals used to define this enumeration parameter."});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"documentation", "Configuration parameter type for enumeration literals definition."});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"documentation", "Derived value is of type Float"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"documentation", "Configuration parameter type for Float."});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_DefaultValue(), source, new String[]{"documentation", "Default value of the float configuration parameter."});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Max(), source, new String[]{"documentation", "max value allowed for the parameter defined."});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Min(), source, new String[]{"documentation", "min value allowed for the parameter defined."});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"documentation", "Derived value is of type Integer.\r\n"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"documentation", "Configuration parameter type for Integer."});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_DefaultValue(), source, new String[]{"documentation", "Default value of the integer configuration parameter."});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Max(), source, new String[]{"documentation", "max value allowed for the parameter defined."});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Min(), source, new String[]{"documentation", "min value allowed for the parameter defined."});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"documentation", "Derived value is of type String."});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"documentation", "Configuration parameter type for String."});
        this.addAnnotation((ENamedElement)this.getStringParamDef_DefaultValue(), source, new String[]{"documentation", "Default value of the string configuration parameter."});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"documentation", "This represents the anchor point of an ECU Configuration Parameter Definition within the AUTOSAR templates structure."});
        this.addAnnotation((ENamedElement)this.getEcuParameterDefinition_Modules(), source, new String[]{"documentation", "References to  the module definitions of individual software modules."});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"documentation", "Used as the top-level element for configuration definition for Software Modules, including BSW and RTE as well as ECU Infrastructure."});
        this.addAnnotation((ENamedElement)this.getModuleDef_ImplementationConfigVariant(), source, new String[]{"documentation", "Used to define the actual implemented configuration variant in a specific \"vendor specific module definition\", where it is mandatory."});
        this.addAnnotation((ENamedElement)this.getModuleDef_RefinedModuleDef(), source, new String[]{"documentation", "Optional reference from the Vendor Specific Module Definition to the Standardized Module Definition it refines. "});
        this.addAnnotation((ENamedElement)this.getModuleDef_Containers(), source, new String[]{"documentation", "Aggregates the top-level container definitions of this specific module definition."});
        this.addAnnotation((ENamedElement)this.foreignReferenceDefEClass, source, new String[]{"documentation", "Specify a reference to an XML description of an entity desribed in another AUTOSAR template."});
        this.addAnnotation((ENamedElement)this.getForeignReferenceDef_DestinationType(), source, new String[]{"documentation", "The type in the AUTOSAR Metamodel to which' instance this reference is allowed to point to. "});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"documentation", "Configuration parameter type for Function Names like those used to specify callback functions."});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"documentation", "Configuration parameter type for Linker Symbol Names like those used to specify memory locations of variables and constants."});
        this.addAnnotation((ENamedElement)this.instanceReferenceDefEClass, source, new String[]{"documentation", "Specify a reference to an XML description of an entity desribed in another AUTOSAR template using the INSTANCE REFERENCE semantics."});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationContext(), source, new String[]{"documentation", "The context in the AUTOSAR Metamodel to which' this reference is allowed to point to."});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceDef_DestinationType(), source, new String[]{"documentation", "The type in the AUTOSAR Metamodel to which' instance this reference is allowed to point to. "});
        this.addAnnotation((ENamedElement)this.referenceDefEClass, source, new String[]{"documentation", "Specify references within the ECU Configuration Description between parameter containers."});
        this.addAnnotation((ENamedElement)this.getReferenceDef_Destination(), source, new String[]{"documentation", "Exactly one reference  to an parameter container is allowed as destination."});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceDefEClass, source, new String[]{"documentation", "This specialization of a ReferenceDef specifies that the implementation of the reference is done using a symbolic name defined by the referenced Container's shortName."});
    }

    protected void createTaggedValuesOfGeneralization_ConfigParameterAnnotations() {
        String source = "TaggedValuesOfGeneralization_ConfigParameter";
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"Name", "", "GUID", "{706AA564-8A04-487a-8B00-621D5C56B875}", "Id", "-678419893", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"Name", "", "GUID", "{A9C40D52-DB44-46d3-A6B3-1292DF9C0BF4}", "Id", "-1903166955", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"Name", "", "GUID", "{49F90E1B-B9A9-4c12-A1C7-AED4D86B3FDA}", "Id", "-809119102", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "GUID", "{EEA318B8-4B77-43df-A8A3-912CEEE958CD}", "Id", "1759429760"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"Name", "", "GUID", "{15B49CE7-2B69-43e9-AD91-7D743F3D58A0}", "Id", "-228067309", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.choiceReferenceDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.foreignReferenceDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.instanceReferenceDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.referenceDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceDefEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_CommonConfigurationAttributesAnnotations() {
        String source = "TaggedValuesOfGeneralization_CommonConfigurationAttributes";
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"Name", "", "GUID", "{45E80E41-A29C-4524-9AA3-4A4C2588FD80}", "Id", "411638485", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"Name", "", "GUID", "{922778B2-DFE6-4278-9F8E-C581FD665E34}", "Id", "-898296462", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ParamConfMultiplicityAnnotations() {
        String source = "TaggedValuesOfGeneralization_ParamConfMultiplicity";
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"Name", "", "GUID", "{5E57B09C-81C1-4cec-B23B-47846701E210}", "Id", "1077886638", "xml.sequenceOffset", "1"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"Name", "", "GUID", "{E17250D3-DC19-46bf-B453-337D428F577A}", "Id", "867404417", "xml.sequenceOffset", "1"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"Name", "", "GUID", "{9D7286C4-F6C7-406f-9DD4-62D8F84176DC}", "Id", "1785605144", "xml.sequenceOffset", "1"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"Name", "", "GUID", "{1C76E6DE-D1E6-4bab-9171-2BD9EF43F754}", "Id", "1894675065", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"Name", "", "GUID", "{A5FDE72B-BE1C-4dc4-BC57-E51BFFE03FF8}", "Id", "-925780227", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"Name", "", "GUID", "{16AF0E74-5350-49e0-BAB8-D06664FBBF4A}", "Id", "2108326933", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ContainerDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_ContainerDef";
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"Name", "", "GUID", "{41515AF6-A353-416d-A36D-18C0BDCBA107}", "Id", "52785237", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"Name", "", "GUID", "{6550EB33-9F6E-4cbd-A043-C0A339753135}", "Id", "-1809248627", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ConfigReferenceAnnotations() {
        String source = "TaggedValuesOfGeneralization_ConfigReference";
        this.addAnnotation((ENamedElement)this.choiceReferenceDefEClass, source, new String[]{"Name", "", "GUID", "{0BF85BCA-91DD-49b9-8600-04986841C253}", "Id", "1570034772", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.foreignReferenceDefEClass, source, new String[]{"Name", "", "GUID", "{8EC5B3C3-4C73-4ee0-8D1A-054028824377}", "Id", "-1772776458", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.instanceReferenceDefEClass, source, new String[]{"Name", "", "GUID", "{91E2422F-6537-48f1-9F17-59AC79A18FFB}", "Id", "-1701333889", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.referenceDefEClass, source, new String[]{"Name", "", "GUID", "{85713DD1-5952-4203-B42D-E54B983E2E78}", "Id", "-1695757627", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_BooleanParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_BooleanParamDef";
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "GUID", "{2992471B-D80B-4ba5-80C1-812F3FE549D4}", "Id", "683181602"});
    }

    protected void createTaggedValuesOfGeneralization_DerivedParamTypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_DerivedParamType";
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "GUID", "{DB6A2991-65F4-4476-8700-2622C1A2FDAC}", "Id", "-1851425891"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "GUID", "{E1E2319B-939F-4767-9342-D5872FF8B9A5}", "Id", "155813753"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "GUID", "{49E01D3D-07B6-4d80-B5B0-0AC14661F3DA}", "Id", "27172627"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "GUID", "{A966A876-A20C-42d5-A520-D4054C70D6E8}", "Id", "-580532070"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "GUID", "{534D176C-9E3C-4323-95A1-0D6023B99DE7}", "Id", "1905068120"});
    }

    protected void createTaggedValuesOfGeneralization_EnumerationParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_EnumerationParamDef";
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "GUID", "{831E9B65-C3F6-4628-8FCA-F11C0DCC2A83}", "Id", "552234298"});
    }

    protected void createTaggedValuesOfGeneralization_FloatParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_FloatParamDef";
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "GUID", "{D951D4D6-90E8-4708-8151-EC1DE7693CAF}", "Id", "2091754284"});
    }

    protected void createTaggedValuesOfGeneralization_IntegerParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_IntegerParamDef";
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "GUID", "{E19802D6-168B-4727-A989-F8E530AAE63B}", "Id", "-1412555337"});
    }

    protected void createTaggedValuesOfGeneralization_StringParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_StringParamDef";
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "GUID", "{7C565068-3A70-447d-9106-AFFC243B25CE}", "Id", "-635488579"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"Name", "", "GUID", "{43670618-31AB-4f32-ADA2-703A5CF86761}", "Id", "-586016105", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"Name", "", "GUID", "{55AE6A5A-DC47-483e-8D78-AAB6B94E5BE1}", "Id", "-682382525", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"Name", "", "GUID", "{CEF10269-0A4D-4783-B570-1469EA565327}", "Id", "1143050676", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_LinkerSymbolDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_LinkerSymbolDef";
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"Name", "", "GUID", "{B33FE748-F029-4081-A5B3-EAC59BEBF6C0}", "Id", "-1190774913", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ReferenceDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_ReferenceDef";
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceDefEClass, source, new String[]{"Name", "", "GUID", "{637CD39B-4BF4-4301-9867-653F3711A820}", "Id", "205513778", "xml.sequenceOffset", "0"});
    }
}

