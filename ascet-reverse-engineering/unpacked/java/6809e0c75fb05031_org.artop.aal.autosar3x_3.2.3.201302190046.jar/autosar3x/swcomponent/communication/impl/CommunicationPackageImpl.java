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
package autosar3x.swcomponent.communication.impl;

import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.impl.BswbehaviorPackageImpl;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.bswmodule.bswimplementation.impl.BswimplementationPackageImpl;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswinterfaces.impl.BswinterfacesPackageImpl;
import autosar3x.bswmodule.bswoverview.BswoverviewPackage;
import autosar3x.bswmodule.bswoverview.impl.BswoverviewPackageImpl;
import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.impl.AuxillaryobjectsPackageImpl;
import autosar3x.commonstructure.axis.AxisPackage;
import autosar3x.commonstructure.axis.impl.AxisPackageImpl;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.basetypes.impl.BasetypesPackageImpl;
import autosar3x.commonstructure.byteorder.ByteorderPackage;
import autosar3x.commonstructure.byteorder.impl.ByteorderPackageImpl;
import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.impl.CalibrationparameterPackageImpl;
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.impl.DatadefpropertiesPackageImpl;
import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar3x.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.impl.FilterPackageImpl;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.impl.GlobalconstraintsPackageImpl;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.impl.ImplementationPackageImpl;
import autosar3x.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar3x.commonstructure.internalbehavior.impl.InternalbehaviorPackageImpl;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimePackageImpl;
import autosar3x.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar3x.commonstructure.resourceconsumption.heapusage.impl.HeapusagePackageImpl;
import autosar3x.commonstructure.resourceconsumption.impl.ResourceconsumptionPackageImpl;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusagePackageImpl;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar3x.commonstructure.resourceconsumption.stackusage.impl.StackusagePackageImpl;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceneedsPackageImpl;
import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.impl.ServiceprocesstaskPackageImpl;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.commonstructure.swclass.impl.SwclassPackageImpl;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.impl.EcucdescriptionPackageImpl;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.impl.EcucparameterdefPackageImpl;
import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.impl.BasicelementsPackageImpl;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.impl.EcuelectronicsPackageImpl;
import autosar3x.ecuresource.impl.EcuresourcePackageImpl;
import autosar3x.ecuresource.memory.MemoryPackage;
import autosar3x.ecuresource.memory.impl.MemoryPackageImpl;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.PeripheralsPackageImpl;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.processingunit.impl.ProcessingunitPackageImpl;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.ecuresource.sensoractuator.impl.SensoractuatorPackageImpl;
import autosar3x.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar3x.genericstructure.commonpatterns.admindata.impl.AdmindataPackageImpl;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.impl.AnnotationPackageImpl;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockPackage;
import autosar3x.genericstructure.commonpatterns.documentationblock.impl.DocumentationblockPackageImpl;
import autosar3x.genericstructure.commonpatterns.enumerations.EnumerationsPackage;
import autosar3x.genericstructure.commonpatterns.enumerations.impl.EnumerationsPackageImpl;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.impl.InlinetextmodelPackageImpl;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.InlinesPackageImpl;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.LanguagedatamodelPackageImpl;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.impl.MultilanguagedataPackageImpl;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.PrimitivetypesPackageImpl;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SpecialdataPackageImpl;
import autosar3x.genericstructure.infrastructure.InfrastructurePackage;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.autosar.impl.AutosarPackageImpl;
import autosar3x.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiablePackageImpl;
import autosar3x.genericstructure.infrastructure.impl.InfrastructurePackageImpl;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import autosar3x.swcomponent.communication.ClientComSpec;
import autosar3x.swcomponent.communication.CommunicationFactory;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.HandleInvalidType;
import autosar3x.swcomponent.communication.ModeSwitchComSpec;
import autosar3x.swcomponent.communication.ModeSwitchedAckRequest;
import autosar3x.swcomponent.communication.PPortComSpec;
import autosar3x.swcomponent.communication.ParameterProvideComSpec;
import autosar3x.swcomponent.communication.ParameterRequireComSpec;
import autosar3x.swcomponent.communication.QueuedReceiverComSpec;
import autosar3x.swcomponent.communication.QueuedSenderComSpec;
import autosar3x.swcomponent.communication.RPortComSpec;
import autosar3x.swcomponent.communication.ReceiverComSpec;
import autosar3x.swcomponent.communication.SenderComSpec;
import autosar3x.swcomponent.communication.ServerComSpec;
import autosar3x.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar3x.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar3x.swcomponent.communication.UnqueuedSenderComSpec;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.impl.ComponentsPackageImpl;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.impl.CompositionPackageImpl;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.computationmethod.impl.ComputationmethodPackageImpl;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.impl.ConstantsPackageImpl;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.impl.DatatypesPackageImpl;
import autosar3x.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar3x.swcomponent.datatype.localconstraints.impl.LocalconstraintsPackageImpl;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
import autosar3x.swcomponent.datatype.units.impl.UnitsPackageImpl;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.impl.ValuemodelPackageImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.impl.CharacteristicPackageImpl;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurementpropertyPackageImpl;
import autosar3x.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar3x.swcomponent.modedeclaration.impl.ModedeclarationPackageImpl;
import autosar3x.swcomponent.modedeclaration.instanceref.InstancerefPackage;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.impl.PortinterfacePackageImpl;
import autosar3x.swcomponent.services.ServicesPackage;
import autosar3x.swcomponent.services.impl.ServicesPackageImpl;
import autosar3x.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar3x.swcomponent.swcimplementation.impl.SwcimplementationPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.impl.ComponentlocalcalprmPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.impl.InterrunnablecommunicationPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.impl.PerinstancememoryPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.impl.PortapioptionsPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RteeventsPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.impl.ServercallPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingPackageImpl;
import autosar3x.system.SystemPackage;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.impl.DatamappingPackageImpl;
import autosar3x.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar3x.system.ecuresourcemapping.impl.EcuresourcemappingPackageImpl;
import autosar3x.system.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.system.endtoendprotection.impl.EndtoendprotectionPackageImpl;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.impl.CancommunicationPackageImpl;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CantopologyPackageImpl;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationPackageImpl;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyPackageImpl;
import autosar3x.system.fibex.fibex4flexray.impl.Fibex4flexrayPackageImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.LincommunicationPackageImpl;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LintopologyPackageImpl;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.impl.Fibex4multiplatformPackageImpl;
import autosar3x.system.fibex.fibexcore.FibexcorePackage;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.CorecommunicationPackageImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TimingPackageImpl;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CoretopologyPackageImpl;
import autosar3x.system.fibex.fibexcore.impl.FibexcorePackageImpl;
import autosar3x.system.impl.SystemPackageImpl;
import autosar3x.system.signalpaths.SignalpathsPackage;
import autosar3x.system.signalpaths.impl.SignalpathsPackageImpl;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.impl.SwmappingPackageImpl;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TransportprotocolsPackageImpl;
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

public class CommunicationPackageImpl
extends EPackageImpl
implements CommunicationPackage {
    private EClass modeSwitchComSpecEClass = null;
    private EClass pPortComSpecEClass = null;
    private EClass modeSwitchedAckRequestEClass = null;
    private EClass parameterProvideComSpecEClass = null;
    private EClass parameterRequireComSpecEClass = null;
    private EClass senderComSpecEClass = null;
    private EClass transmissionAcknowledgementRequestEClass = null;
    private EClass unqueuedSenderComSpecEClass = null;
    private EClass queuedSenderComSpecEClass = null;
    private EClass serverComSpecEClass = null;
    private EClass receiverComSpecEClass = null;
    private EClass unqueuedReceiverComSpecEClass = null;
    private EClass queuedReceiverComSpecEClass = null;
    private EClass clientComSpecEClass = null;
    private EClass rPortComSpecEClass = null;
    private EEnum handleInvalidTypeEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private CommunicationPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/swc/communication", (EFactory)CommunicationFactory.eINSTANCE);
    }

    public static CommunicationPackage init() {
        if (isInited) {
            return (CommunicationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/communication");
        }
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/communication") : new CommunicationPackageImpl());
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
        EcuresourcePackageImpl theEcuresourcePackage = (EcuresourcePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur") instanceof EcuresourcePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur") : EcuresourcePackage.eINSTANCE);
        PeripheralsPackageImpl thePeripheralsPackage = (PeripheralsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/p") instanceof PeripheralsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/p") : PeripheralsPackage.eINSTANCE);
        EcuelectronicsPackageImpl theEcuelectronicsPackage = (EcuelectronicsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/ecue") instanceof EcuelectronicsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/ecue") : EcuelectronicsPackage.eINSTANCE);
        ProcessingunitPackageImpl theProcessingunitPackage = (ProcessingunitPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/pu") instanceof ProcessingunitPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/pu") : ProcessingunitPackage.eINSTANCE);
        MemoryPackageImpl theMemoryPackage = (MemoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/m") instanceof MemoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/m") : MemoryPackage.eINSTANCE);
        BasicelementsPackageImpl theBasicelementsPackage = (BasicelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/be") instanceof BasicelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/be") : BasicelementsPackage.eINSTANCE);
        SensoractuatorPackageImpl theSensoractuatorPackage = (SensoractuatorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/sa") instanceof SensoractuatorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/sa") : SensoractuatorPackage.eINSTANCE);
        InfrastructurePackageImpl theInfrastructurePackage = (InfrastructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i") instanceof InfrastructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i") : InfrastructurePackage.eINSTANCE);
        IdentifiablePackageImpl theIdentifiablePackage = (IdentifiablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i") instanceof IdentifiablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i") : IdentifiablePackage.eINSTANCE);
        AutosarPackageImpl theAutosarPackage = (AutosarPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/a") instanceof AutosarPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/a") : AutosarPackage.eINSTANCE);
        EnumerationsPackageImpl theEnumerationsPackage = (EnumerationsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/e") instanceof EnumerationsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/e") : EnumerationsPackage.eINSTANCE);
        InlinetextmodelPackageImpl theInlinetextmodelPackage = (InlinetextmodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm") instanceof InlinetextmodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm") : InlinetextmodelPackage.eINSTANCE);
        InlinesPackageImpl theInlinesPackage = (InlinesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm/i") instanceof InlinesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm/i") : InlinesPackage.eINSTANCE);
        MultilanguagedataPackageImpl theMultilanguagedataPackage = (MultilanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/md") instanceof MultilanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/md") : MultilanguagedataPackage.eINSTANCE);
        LanguagedatamodelPackageImpl theLanguagedatamodelPackage = (LanguagedatamodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ldm") instanceof LanguagedatamodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ldm") : LanguagedatamodelPackage.eINSTANCE);
        SinglelanguagedataPackageImpl theSinglelanguagedataPackage = (SinglelanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sld") instanceof SinglelanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sld") : SinglelanguagedataPackage.eINSTANCE);
        AdmindataPackageImpl theAdmindataPackage = (AdmindataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ad") instanceof AdmindataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ad") : AdmindataPackage.eINSTANCE);
        SpecialdataPackageImpl theSpecialdataPackage = (SpecialdataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sd") instanceof SpecialdataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sd") : SpecialdataPackage.eINSTANCE);
        DocumentationblockPackageImpl theDocumentationblockPackage = (DocumentationblockPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/db") instanceof DocumentationblockPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/db") : DocumentationblockPackage.eINSTANCE);
        AnnotationPackageImpl theAnnotationPackage = (AnnotationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/a") instanceof AnnotationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/a") : AnnotationPackage.eINSTANCE);
        PrimitivetypesPackageImpl thePrimitivetypesPackage = (PrimitivetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt") instanceof PrimitivetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt") : PrimitivetypesPackage.eINSTANCE);
        FilterPackageImpl theFilterPackage = (FilterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/f") instanceof FilterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/f") : FilterPackage.eINSTANCE);
        InternalbehaviorPackageImpl theInternalbehaviorPackage = (InternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ib") instanceof InternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ib") : InternalbehaviorPackage.eINSTANCE);
        ServiceneedsPackageImpl theServiceneedsPackage = (ServiceneedsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sn") instanceof ServiceneedsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sn") : ServiceneedsPackage.eINSTANCE);
        ImplementationPackageImpl theImplementationPackage = (ImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/implementation") instanceof ImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/implementation") : ImplementationPackage.eINSTANCE);
        ResourceconsumptionPackageImpl theResourceconsumptionPackage = (ResourceconsumptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc") instanceof ResourceconsumptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc") : ResourceconsumptionPackage.eINSTANCE);
        MemorysectionusagePackageImpl theMemorysectionusagePackage = (MemorysectionusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/msu") instanceof MemorysectionusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/msu") : MemorysectionusagePackage.eINSTANCE);
        StackusagePackageImpl theStackusagePackage = (StackusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/su") instanceof StackusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/su") : StackusagePackage.eINSTANCE);
        HeapusagePackageImpl theHeapusagePackage = (HeapusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/hu") instanceof HeapusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/hu") : HeapusagePackage.eINSTANCE);
        ExecutiontimePackageImpl theExecutiontimePackage = (ExecutiontimePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/et") instanceof ExecutiontimePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/et") : ExecutiontimePackage.eINSTANCE);
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ao") : AuxillaryobjectsPackage.eINSTANCE);
        AxisPackageImpl theAxisPackage = (AxisPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/a") instanceof AxisPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/a") : AxisPackage.eINSTANCE);
        DatadictionaryproxiesPackageImpl theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/dp") instanceof DatadictionaryproxiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/dp") : DatadictionaryproxiesPackage.eINSTANCE);
        CalibrationparameterPackageImpl theCalibrationparameterPackage = (CalibrationparameterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/cp") instanceof CalibrationparameterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/cp") : CalibrationparameterPackage.eINSTANCE);
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ddp") : DatadefpropertiesPackage.eINSTANCE);
        SwclassPackageImpl theSwclassPackage = (SwclassPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sc") instanceof SwclassPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sc") : SwclassPackage.eINSTANCE);
        ServiceprocesstaskPackageImpl theServiceprocesstaskPackage = (ServiceprocesstaskPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/spt") instanceof ServiceprocesstaskPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/spt") : ServiceprocesstaskPackage.eINSTANCE);
        GlobalconstraintsPackageImpl theGlobalconstraintsPackage = (GlobalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/gc") instanceof GlobalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/gc") : GlobalconstraintsPackage.eINSTANCE);
        BasetypesPackageImpl theBasetypesPackage = (BasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bt") instanceof BasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bt") : BasetypesPackage.eINSTANCE);
        ByteorderPackageImpl theByteorderPackage = (ByteorderPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bo") instanceof ByteorderPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bo") : ByteorderPackage.eINSTANCE);
        autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl theEndtoendprotectionPackage = (autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/etep") instanceof autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/etep") : autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage.eINSTANCE);
        CompositionPackageImpl theCompositionPackage = (CompositionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition") instanceof CompositionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition") : CompositionPackage.eINSTANCE);
        autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl theInstancerefPackage = (autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition/r") instanceof autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition/r") : autosar3x.swcomponent.composition.instanceref.InstancerefPackage.eINSTANCE);
        ComponentsPackageImpl theComponentsPackage = (ComponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components") instanceof ComponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components") : ComponentsPackage.eINSTANCE);
        autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_1 = (autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components/r") instanceof autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components/r") : autosar3x.swcomponent.components.instanceref.InstancerefPackage.eINSTANCE);
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/aa") : ApplicationattributesPackage.eINSTANCE);
        MeasurementpropertyPackageImpl theMeasurementpropertyPackage = (MeasurementpropertyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp") instanceof MeasurementpropertyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp") : MeasurementpropertyPackage.eINSTANCE);
        autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_2 = (autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp/r") instanceof autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp/r") : autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage.eINSTANCE);
        CharacteristicPackageImpl theCharacteristicPackage = (CharacteristicPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c") instanceof CharacteristicPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c") : CharacteristicPackage.eINSTANCE);
        autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_3 = (autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c/r") instanceof autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c/r") : autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage.eINSTANCE);
        PortinterfacePackageImpl thePortinterfacePackage = (PortinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi") instanceof PortinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi") : PortinterfacePackage.eINSTANCE);
        ModedeclarationPackageImpl theModedeclarationPackage = (ModedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md") instanceof ModedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md") : ModedeclarationPackage.eINSTANCE);
        autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_4 = (autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md/r") instanceof autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md/r") : InstancerefPackage.eINSTANCE);
        SwcinternalbehaviorPackageImpl theSwcinternalbehaviorPackage = (SwcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib") instanceof SwcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib") : SwcinternalbehaviorPackage.eINSTANCE);
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee") : RteeventsPackage.eINSTANCE);
        InstancerefPackageImpl theInstancerefPackage_5 = (InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r") instanceof InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r") : autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage.eINSTANCE);
        ModedeclarationgroupPackageImpl theModedeclarationgroupPackage = (ModedeclarationgroupPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg") instanceof ModedeclarationgroupPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg") : ModedeclarationgroupPackage.eINSTANCE);
        autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_6 = (autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg/r") instanceof autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg/r") : autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.InstancerefPackage.eINSTANCE);
        ServercallPackageImpl theServercallPackage = (ServercallPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc") instanceof ServercallPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc") : ServercallPackage.eINSTANCE);
        autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_7 = (autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc/r") instanceof autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc/r") : autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.InstancerefPackage.eINSTANCE);
        DataelementsPackageImpl theDataelementsPackage = (DataelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de") instanceof DataelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de") : DataelementsPackage.eINSTANCE);
        autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_8 = (autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de/r") instanceof autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de/r") : autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefPackage.eINSTANCE);
        InterrunnablecommunicationPackageImpl theInterrunnablecommunicationPackage = (InterrunnablecommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/irc") instanceof InterrunnablecommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/irc") : InterrunnablecommunicationPackage.eINSTANCE);
        PerinstancememoryPackageImpl thePerinstancememoryPackage = (PerinstancememoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/pim") instanceof PerinstancememoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/pim") : PerinstancememoryPackage.eINSTANCE);
        PortapioptionsPackageImpl thePortapioptionsPackage = (PortapioptionsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/papio") instanceof PortapioptionsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/papio") : PortapioptionsPackage.eINSTANCE);
        ServicemappingPackageImpl theServicemappingPackage = (ServicemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sm") instanceof ServicemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sm") : ServicemappingPackage.eINSTANCE);
        ComponentlocalcalprmPackageImpl theComponentlocalcalprmPackage = (ComponentlocalcalprmPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/clc") instanceof ComponentlocalcalprmPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/clc") : ComponentlocalcalprmPackage.eINSTANCE);
        ServicesPackageImpl theServicesPackage = (ServicesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/s") instanceof ServicesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/s") : ServicesPackage.eINSTANCE);
        SwcimplementationPackageImpl theSwcimplementationPackage = (SwcimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/si") instanceof SwcimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/si") : SwcimplementationPackage.eINSTANCE);
        ConstantsPackageImpl theConstantsPackage = (ConstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c") instanceof ConstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c") : ConstantsPackage.eINSTANCE);
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/d") : DatatypesPackage.eINSTANCE);
        LocalconstraintsPackageImpl theLocalconstraintsPackage = (LocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc") instanceof LocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc") : LocalconstraintsPackage.eINSTANCE);
        UnitsPackageImpl theUnitsPackage = (UnitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u") instanceof UnitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u") : UnitsPackage.eINSTANCE);
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm") : ComputationmethodPackage.eINSTANCE);
        ValuemodelPackageImpl theValuemodelPackage = (ValuemodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm") instanceof ValuemodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm") : ValuemodelPackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_9 = (autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd/r") instanceof autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd/r") : autosar3x.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        BswimplementationPackageImpl theBswimplementationPackage = (BswimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bimplementation") instanceof BswimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bimplementation") : BswimplementationPackage.eINSTANCE);
        BswoverviewPackageImpl theBswoverviewPackage = (BswoverviewPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bo") instanceof BswoverviewPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bo") : BswoverviewPackage.eINSTANCE);
        BswinterfacesPackageImpl theBswinterfacesPackage = (BswinterfacesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/binterfaces") instanceof BswinterfacesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/binterfaces") : BswinterfacesPackage.eINSTANCE);
        BswbehaviorPackageImpl theBswbehaviorPackage = (BswbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bb") instanceof BswbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bb") : BswbehaviorPackage.eINSTANCE);
        SystemPackageImpl theSystemPackage = (SystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s") instanceof SystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s") : SystemPackage.eINSTANCE);
        SwmappingPackageImpl theSwmappingPackage = (SwmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw") instanceof SwmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw") : SwmappingPackage.eINSTANCE);
        autosar3x.system.swmapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_10 = (autosar3x.system.swmapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw/r") instanceof autosar3x.system.swmapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw/r") : autosar3x.system.swmapping.instanceref.InstancerefPackage.eINSTANCE);
        CancommunicationPackageImpl theCancommunicationPackage = (CancommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/cc") instanceof CancommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/cc") : CancommunicationPackage.eINSTANCE);
        CantopologyPackageImpl theCantopologyPackage = (CantopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/ct") instanceof CantopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/ct") : CantopologyPackage.eINSTANCE);
        Fibex4flexrayPackageImpl theFibex4flexrayPackage = (Fibex4flexrayPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff") instanceof Fibex4flexrayPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff") : Fibex4flexrayPackage.eINSTANCE);
        FlexraycommunicationPackageImpl theFlexraycommunicationPackage = (FlexraycommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/fc") instanceof FlexraycommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/fc") : FlexraycommunicationPackage.eINSTANCE);
        FlexraytopologyPackageImpl theFlexraytopologyPackage = (FlexraytopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/ft") instanceof FlexraytopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/ft") : FlexraytopologyPackage.eINSTANCE);
        LincommunicationPackageImpl theLincommunicationPackage = (LincommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lc") instanceof LincommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lc") : LincommunicationPackage.eINSTANCE);
        LintopologyPackageImpl theLintopologyPackage = (LintopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lt") instanceof LintopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lt") : LintopologyPackage.eINSTANCE);
        Fibex4multiplatformPackageImpl theFibex4multiplatformPackage = (Fibex4multiplatformPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fm") instanceof Fibex4multiplatformPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fm") : Fibex4multiplatformPackage.eINSTANCE);
        FibexcorePackageImpl theFibexcorePackage = (FibexcorePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore") instanceof FibexcorePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore") : FibexcorePackage.eINSTANCE);
        CorecommunicationPackageImpl theCorecommunicationPackage = (CorecommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc") instanceof CorecommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc") : CorecommunicationPackage.eINSTANCE);
        TimingPackageImpl theTimingPackage = (TimingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc/t") instanceof TimingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc/t") : TimingPackage.eINSTANCE);
        CoretopologyPackageImpl theCoretopologyPackage = (CoretopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/ct") instanceof CoretopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/ct") : CoretopologyPackage.eINSTANCE);
        TransportprotocolsPackageImpl theTransportprotocolsPackage = (TransportprotocolsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/tp") instanceof TransportprotocolsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/tp") : TransportprotocolsPackage.eINSTANCE);
        EcuresourcemappingPackageImpl theEcuresourcemappingPackage = (EcuresourcemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/ecurm") instanceof EcuresourcemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/ecurm") : EcuresourcemappingPackage.eINSTANCE);
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm") : DatamappingPackage.eINSTANCE);
        autosar3x.system.datamapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_11 = (autosar3x.system.datamapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm/r") instanceof autosar3x.system.datamapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm/r") : autosar3x.system.datamapping.instanceref.InstancerefPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp") : SignalpathsPackage.eINSTANCE);
        autosar3x.system.signalpaths.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_12 = (autosar3x.system.signalpaths.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp/r") instanceof autosar3x.system.signalpaths.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp/r") : autosar3x.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE);
        EndtoendprotectionPackageImpl theEndtoendprotectionPackage_1 = (EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/etep") instanceof EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/etep") : EndtoendprotectionPackage.eINSTANCE);
        theCommunicationPackage.createPackageContents();
        theEcuresourcePackage.createPackageContents();
        thePeripheralsPackage.createPackageContents();
        theEcuelectronicsPackage.createPackageContents();
        theProcessingunitPackage.createPackageContents();
        theMemoryPackage.createPackageContents();
        theBasicelementsPackage.createPackageContents();
        theSensoractuatorPackage.createPackageContents();
        theInfrastructurePackage.createPackageContents();
        theIdentifiablePackage.createPackageContents();
        theAutosarPackage.createPackageContents();
        theEnumerationsPackage.createPackageContents();
        theInlinetextmodelPackage.createPackageContents();
        theInlinesPackage.createPackageContents();
        theMultilanguagedataPackage.createPackageContents();
        theLanguagedatamodelPackage.createPackageContents();
        theSinglelanguagedataPackage.createPackageContents();
        theAdmindataPackage.createPackageContents();
        theSpecialdataPackage.createPackageContents();
        theDocumentationblockPackage.createPackageContents();
        theAnnotationPackage.createPackageContents();
        thePrimitivetypesPackage.createPackageContents();
        theFilterPackage.createPackageContents();
        theInternalbehaviorPackage.createPackageContents();
        theServiceneedsPackage.createPackageContents();
        theImplementationPackage.createPackageContents();
        theResourceconsumptionPackage.createPackageContents();
        theMemorysectionusagePackage.createPackageContents();
        theStackusagePackage.createPackageContents();
        theHeapusagePackage.createPackageContents();
        theExecutiontimePackage.createPackageContents();
        theAuxillaryobjectsPackage.createPackageContents();
        theAxisPackage.createPackageContents();
        theDatadictionaryproxiesPackage.createPackageContents();
        theCalibrationparameterPackage.createPackageContents();
        theDatadefpropertiesPackage.createPackageContents();
        theSwclassPackage.createPackageContents();
        theServiceprocesstaskPackage.createPackageContents();
        theGlobalconstraintsPackage.createPackageContents();
        theBasetypesPackage.createPackageContents();
        theByteorderPackage.createPackageContents();
        theEndtoendprotectionPackage.createPackageContents();
        theCompositionPackage.createPackageContents();
        theInstancerefPackage.createPackageContents();
        theComponentsPackage.createPackageContents();
        theInstancerefPackage_1.createPackageContents();
        theApplicationattributesPackage.createPackageContents();
        theMeasurementpropertyPackage.createPackageContents();
        theInstancerefPackage_2.createPackageContents();
        theCharacteristicPackage.createPackageContents();
        theInstancerefPackage_3.createPackageContents();
        thePortinterfacePackage.createPackageContents();
        theModedeclarationPackage.createPackageContents();
        theInstancerefPackage_4.createPackageContents();
        theSwcinternalbehaviorPackage.createPackageContents();
        theRteeventsPackage.createPackageContents();
        theInstancerefPackage_5.createPackageContents();
        theModedeclarationgroupPackage.createPackageContents();
        theInstancerefPackage_6.createPackageContents();
        theServercallPackage.createPackageContents();
        theInstancerefPackage_7.createPackageContents();
        theDataelementsPackage.createPackageContents();
        theInstancerefPackage_8.createPackageContents();
        theInterrunnablecommunicationPackage.createPackageContents();
        thePerinstancememoryPackage.createPackageContents();
        thePortapioptionsPackage.createPackageContents();
        theServicemappingPackage.createPackageContents();
        theComponentlocalcalprmPackage.createPackageContents();
        theServicesPackage.createPackageContents();
        theSwcimplementationPackage.createPackageContents();
        theConstantsPackage.createPackageContents();
        theDatatypesPackage.createPackageContents();
        theLocalconstraintsPackage.createPackageContents();
        theUnitsPackage.createPackageContents();
        theComputationmethodPackage.createPackageContents();
        theValuemodelPackage.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_9.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theBswimplementationPackage.createPackageContents();
        theBswoverviewPackage.createPackageContents();
        theBswinterfacesPackage.createPackageContents();
        theBswbehaviorPackage.createPackageContents();
        theSystemPackage.createPackageContents();
        theSwmappingPackage.createPackageContents();
        theInstancerefPackage_10.createPackageContents();
        theCancommunicationPackage.createPackageContents();
        theCantopologyPackage.createPackageContents();
        theFibex4flexrayPackage.createPackageContents();
        theFlexraycommunicationPackage.createPackageContents();
        theFlexraytopologyPackage.createPackageContents();
        theLincommunicationPackage.createPackageContents();
        theLintopologyPackage.createPackageContents();
        theFibex4multiplatformPackage.createPackageContents();
        theFibexcorePackage.createPackageContents();
        theCorecommunicationPackage.createPackageContents();
        theTimingPackage.createPackageContents();
        theCoretopologyPackage.createPackageContents();
        theTransportprotocolsPackage.createPackageContents();
        theEcuresourcemappingPackage.createPackageContents();
        theDatamappingPackage.createPackageContents();
        theInstancerefPackage_11.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theInstancerefPackage_12.createPackageContents();
        theEndtoendprotectionPackage_1.createPackageContents();
        theCommunicationPackage.initializePackageContents();
        theEcuresourcePackage.initializePackageContents();
        thePeripheralsPackage.initializePackageContents();
        theEcuelectronicsPackage.initializePackageContents();
        theProcessingunitPackage.initializePackageContents();
        theMemoryPackage.initializePackageContents();
        theBasicelementsPackage.initializePackageContents();
        theSensoractuatorPackage.initializePackageContents();
        theInfrastructurePackage.initializePackageContents();
        theIdentifiablePackage.initializePackageContents();
        theAutosarPackage.initializePackageContents();
        theEnumerationsPackage.initializePackageContents();
        theInlinetextmodelPackage.initializePackageContents();
        theInlinesPackage.initializePackageContents();
        theMultilanguagedataPackage.initializePackageContents();
        theLanguagedatamodelPackage.initializePackageContents();
        theSinglelanguagedataPackage.initializePackageContents();
        theAdmindataPackage.initializePackageContents();
        theSpecialdataPackage.initializePackageContents();
        theDocumentationblockPackage.initializePackageContents();
        theAnnotationPackage.initializePackageContents();
        thePrimitivetypesPackage.initializePackageContents();
        theFilterPackage.initializePackageContents();
        theInternalbehaviorPackage.initializePackageContents();
        theServiceneedsPackage.initializePackageContents();
        theImplementationPackage.initializePackageContents();
        theResourceconsumptionPackage.initializePackageContents();
        theMemorysectionusagePackage.initializePackageContents();
        theStackusagePackage.initializePackageContents();
        theHeapusagePackage.initializePackageContents();
        theExecutiontimePackage.initializePackageContents();
        theAuxillaryobjectsPackage.initializePackageContents();
        theAxisPackage.initializePackageContents();
        theDatadictionaryproxiesPackage.initializePackageContents();
        theCalibrationparameterPackage.initializePackageContents();
        theDatadefpropertiesPackage.initializePackageContents();
        theSwclassPackage.initializePackageContents();
        theServiceprocesstaskPackage.initializePackageContents();
        theGlobalconstraintsPackage.initializePackageContents();
        theBasetypesPackage.initializePackageContents();
        theByteorderPackage.initializePackageContents();
        theEndtoendprotectionPackage.initializePackageContents();
        theCompositionPackage.initializePackageContents();
        theInstancerefPackage.initializePackageContents();
        theComponentsPackage.initializePackageContents();
        theInstancerefPackage_1.initializePackageContents();
        theApplicationattributesPackage.initializePackageContents();
        theMeasurementpropertyPackage.initializePackageContents();
        theInstancerefPackage_2.initializePackageContents();
        theCharacteristicPackage.initializePackageContents();
        theInstancerefPackage_3.initializePackageContents();
        thePortinterfacePackage.initializePackageContents();
        theModedeclarationPackage.initializePackageContents();
        theInstancerefPackage_4.initializePackageContents();
        theSwcinternalbehaviorPackage.initializePackageContents();
        theRteeventsPackage.initializePackageContents();
        theInstancerefPackage_5.initializePackageContents();
        theModedeclarationgroupPackage.initializePackageContents();
        theInstancerefPackage_6.initializePackageContents();
        theServercallPackage.initializePackageContents();
        theInstancerefPackage_7.initializePackageContents();
        theDataelementsPackage.initializePackageContents();
        theInstancerefPackage_8.initializePackageContents();
        theInterrunnablecommunicationPackage.initializePackageContents();
        thePerinstancememoryPackage.initializePackageContents();
        thePortapioptionsPackage.initializePackageContents();
        theServicemappingPackage.initializePackageContents();
        theComponentlocalcalprmPackage.initializePackageContents();
        theServicesPackage.initializePackageContents();
        theSwcimplementationPackage.initializePackageContents();
        theConstantsPackage.initializePackageContents();
        theDatatypesPackage.initializePackageContents();
        theLocalconstraintsPackage.initializePackageContents();
        theUnitsPackage.initializePackageContents();
        theComputationmethodPackage.initializePackageContents();
        theValuemodelPackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_9.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theBswimplementationPackage.initializePackageContents();
        theBswoverviewPackage.initializePackageContents();
        theBswinterfacesPackage.initializePackageContents();
        theBswbehaviorPackage.initializePackageContents();
        theSystemPackage.initializePackageContents();
        theSwmappingPackage.initializePackageContents();
        theInstancerefPackage_10.initializePackageContents();
        theCancommunicationPackage.initializePackageContents();
        theCantopologyPackage.initializePackageContents();
        theFibex4flexrayPackage.initializePackageContents();
        theFlexraycommunicationPackage.initializePackageContents();
        theFlexraytopologyPackage.initializePackageContents();
        theLincommunicationPackage.initializePackageContents();
        theLintopologyPackage.initializePackageContents();
        theFibex4multiplatformPackage.initializePackageContents();
        theFibexcorePackage.initializePackageContents();
        theCorecommunicationPackage.initializePackageContents();
        theTimingPackage.initializePackageContents();
        theCoretopologyPackage.initializePackageContents();
        theTransportprotocolsPackage.initializePackageContents();
        theEcuresourcemappingPackage.initializePackageContents();
        theDatamappingPackage.initializePackageContents();
        theInstancerefPackage_11.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theInstancerefPackage_12.initializePackageContents();
        theEndtoendprotectionPackage_1.initializePackageContents();
        theCommunicationPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/swc/communication", (Object)theCommunicationPackage);
        return theCommunicationPackage;
    }

    public EClass getModeSwitchComSpec() {
        return this.modeSwitchComSpecEClass;
    }

    public EReference getModeSwitchComSpec_ModeGroup() {
        return (EReference)this.modeSwitchComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getModeSwitchComSpec_ModeSwitchedAck() {
        return (EReference)this.modeSwitchComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getModeSwitchComSpec_QueueLength() {
        return (EAttribute)this.modeSwitchComSpecEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPPortComSpec() {
        return this.pPortComSpecEClass;
    }

    public EReference getPPortComSpec_PPortPrototype() {
        return (EReference)this.pPortComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getModeSwitchedAckRequest() {
        return this.modeSwitchedAckRequestEClass;
    }

    public EReference getModeSwitchedAckRequest_ModeSwitchComSpec() {
        return (EReference)this.modeSwitchedAckRequestEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getModeSwitchedAckRequest_Timeout() {
        return (EAttribute)this.modeSwitchedAckRequestEClass.getEStructuralFeatures().get(1);
    }

    public EClass getParameterProvideComSpec() {
        return this.parameterProvideComSpecEClass;
    }

    public EClass getParameterRequireComSpec() {
        return this.parameterRequireComSpecEClass;
    }

    public EClass getSenderComSpec() {
        return this.senderComSpecEClass;
    }

    public EReference getSenderComSpec_DataElement() {
        return (EReference)this.senderComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderComSpec_TransmissionAcknowledge() {
        return (EReference)this.senderComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSenderComSpec_UsesEndToEndProtection() {
        return (EAttribute)this.senderComSpecEClass.getEStructuralFeatures().get(2);
    }

    public EClass getTransmissionAcknowledgementRequest() {
        return this.transmissionAcknowledgementRequestEClass;
    }

    public EReference getTransmissionAcknowledgementRequest_SenderComSpec() {
        return (EReference)this.transmissionAcknowledgementRequestEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getTransmissionAcknowledgementRequest_Timeout() {
        return (EAttribute)this.transmissionAcknowledgementRequestEClass.getEStructuralFeatures().get(1);
    }

    public EClass getUnqueuedSenderComSpec() {
        return this.unqueuedSenderComSpecEClass;
    }

    public EAttribute getUnqueuedSenderComSpec_CanInvalidate() {
        return (EAttribute)this.unqueuedSenderComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getUnqueuedSenderComSpec_InitValue() {
        return (EReference)this.unqueuedSenderComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EClass getQueuedSenderComSpec() {
        return this.queuedSenderComSpecEClass;
    }

    public EClass getServerComSpec() {
        return this.serverComSpecEClass;
    }

    public EReference getServerComSpec_Operation() {
        return (EReference)this.serverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getServerComSpec_QueueLength() {
        return (EAttribute)this.serverComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EClass getReceiverComSpec() {
        return this.receiverComSpecEClass;
    }

    public EReference getReceiverComSpec_DataElement() {
        return (EReference)this.receiverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getReceiverComSpec_Filter() {
        return (EReference)this.receiverComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getReceiverComSpec_UsesEndToEndProtection() {
        return (EAttribute)this.receiverComSpecEClass.getEStructuralFeatures().get(2);
    }

    public EClass getUnqueuedReceiverComSpec() {
        return this.unqueuedReceiverComSpecEClass;
    }

    public EAttribute getUnqueuedReceiverComSpec_AliveTimeout() {
        return (EAttribute)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getUnqueuedReceiverComSpec_HandleInvalid() {
        return (EAttribute)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getUnqueuedReceiverComSpec_HandleNeverReceived() {
        return (EAttribute)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(2);
    }

    public EReference getUnqueuedReceiverComSpec_InitValue() {
        return (EReference)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getUnqueuedReceiverComSpec_ResyncTime() {
        return (EAttribute)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(4);
    }

    public EClass getQueuedReceiverComSpec() {
        return this.queuedReceiverComSpecEClass;
    }

    public EAttribute getQueuedReceiverComSpec_QueueLength() {
        return (EAttribute)this.queuedReceiverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getClientComSpec() {
        return this.clientComSpecEClass;
    }

    public EReference getClientComSpec_Operation() {
        return (EReference)this.clientComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getRPortComSpec() {
        return this.rPortComSpecEClass;
    }

    public EReference getRPortComSpec_RPortPrototype() {
        return (EReference)this.rPortComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getHandleInvalidType() {
        return this.handleInvalidTypeEEnum;
    }

    public CommunicationFactory getCommunicationFactory() {
        return (CommunicationFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.modeSwitchComSpecEClass = this.createEClass(0);
        this.createEReference(this.modeSwitchComSpecEClass, 5);
        this.createEReference(this.modeSwitchComSpecEClass, 6);
        this.createEAttribute(this.modeSwitchComSpecEClass, 7);
        this.pPortComSpecEClass = this.createEClass(1);
        this.createEReference(this.pPortComSpecEClass, 4);
        this.modeSwitchedAckRequestEClass = this.createEClass(2);
        this.createEReference(this.modeSwitchedAckRequestEClass, 4);
        this.createEAttribute(this.modeSwitchedAckRequestEClass, 5);
        this.parameterProvideComSpecEClass = this.createEClass(3);
        this.parameterRequireComSpecEClass = this.createEClass(4);
        this.senderComSpecEClass = this.createEClass(5);
        this.createEReference(this.senderComSpecEClass, 6);
        this.createEReference(this.senderComSpecEClass, 7);
        this.createEAttribute(this.senderComSpecEClass, 8);
        this.transmissionAcknowledgementRequestEClass = this.createEClass(6);
        this.createEReference(this.transmissionAcknowledgementRequestEClass, 4);
        this.createEAttribute(this.transmissionAcknowledgementRequestEClass, 5);
        this.unqueuedSenderComSpecEClass = this.createEClass(7);
        this.createEAttribute(this.unqueuedSenderComSpecEClass, 10);
        this.createEReference(this.unqueuedSenderComSpecEClass, 11);
        this.queuedSenderComSpecEClass = this.createEClass(8);
        this.serverComSpecEClass = this.createEClass(9);
        this.createEReference(this.serverComSpecEClass, 7);
        this.createEAttribute(this.serverComSpecEClass, 8);
        this.receiverComSpecEClass = this.createEClass(10);
        this.createEReference(this.receiverComSpecEClass, 6);
        this.createEReference(this.receiverComSpecEClass, 7);
        this.createEAttribute(this.receiverComSpecEClass, 8);
        this.unqueuedReceiverComSpecEClass = this.createEClass(11);
        this.createEAttribute(this.unqueuedReceiverComSpecEClass, 10);
        this.createEAttribute(this.unqueuedReceiverComSpecEClass, 11);
        this.createEAttribute(this.unqueuedReceiverComSpecEClass, 12);
        this.createEReference(this.unqueuedReceiverComSpecEClass, 13);
        this.createEAttribute(this.unqueuedReceiverComSpecEClass, 14);
        this.queuedReceiverComSpecEClass = this.createEClass(12);
        this.createEAttribute(this.queuedReceiverComSpecEClass, 10);
        this.clientComSpecEClass = this.createEClass(13);
        this.createEReference(this.clientComSpecEClass, 6);
        this.rPortComSpecEClass = this.createEClass(14);
        this.createEReference(this.rPortComSpecEClass, 4);
        this.handleInvalidTypeEEnum = this.createEEnum(15);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("communication");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/swc/communication");
        PortinterfacePackage thePortinterfacePackage = (PortinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        GcommunicationPackage theGcommunicationPackage = (GcommunicationPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/communication");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components");
        ComponentlocalcalprmPackage theComponentlocalcalprmPackage = (ComponentlocalcalprmPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/clc");
        ConstantsPackage theConstantsPackage = (ConstantsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c");
        FilterPackage theFilterPackage = (FilterPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/f");
        this.modeSwitchComSpecEClass.getESuperTypes().add((Object)this.getPPortComSpec());
        this.pPortComSpecEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.pPortComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGPPortComSpec());
        this.modeSwitchedAckRequestEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.parameterProvideComSpecEClass.getESuperTypes().add((Object)this.getPPortComSpec());
        this.parameterProvideComSpecEClass.getESuperTypes().add((Object)theComponentlocalcalprmPackage.getInitValueAssignment());
        this.parameterRequireComSpecEClass.getESuperTypes().add((Object)this.getRPortComSpec());
        this.parameterRequireComSpecEClass.getESuperTypes().add((Object)theComponentlocalcalprmPackage.getInitValueAssignment());
        this.senderComSpecEClass.getESuperTypes().add((Object)this.getPPortComSpec());
        this.senderComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGSenderComSpec());
        this.transmissionAcknowledgementRequestEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.unqueuedSenderComSpecEClass.getESuperTypes().add((Object)this.getSenderComSpec());
        this.unqueuedSenderComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGNonqueuedSenderComSpec());
        this.queuedSenderComSpecEClass.getESuperTypes().add((Object)this.getSenderComSpec());
        this.queuedSenderComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGQueuedSenderComSpec());
        this.serverComSpecEClass.getESuperTypes().add((Object)this.getPPortComSpec());
        this.serverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGServerComSpec());
        this.receiverComSpecEClass.getESuperTypes().add((Object)this.getRPortComSpec());
        this.receiverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGReceiverComSpec());
        this.unqueuedReceiverComSpecEClass.getESuperTypes().add((Object)this.getReceiverComSpec());
        this.unqueuedReceiverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGNonqueuedReceiverComSpec());
        this.queuedReceiverComSpecEClass.getESuperTypes().add((Object)this.getReceiverComSpec());
        this.queuedReceiverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGQueuedReceiverComSpec());
        this.clientComSpecEClass.getESuperTypes().add((Object)this.getRPortComSpec());
        this.clientComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGClientComSpec());
        this.rPortComSpecEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.rPortComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGRPortComSpec());
        this.initEClass(this.modeSwitchComSpecEClass, ModeSwitchComSpec.class, "ModeSwitchComSpec", false, false, true);
        this.initEReference(this.getModeSwitchComSpec_ModeGroup(), (EClassifier)thePortinterfacePackage.getModeDeclarationGroupPrototype(), null, "modeGroup", null, 0, 1, ModeSwitchComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getModeSwitchComSpec_ModeSwitchedAck(), (EClassifier)this.getModeSwitchedAckRequest(), this.getModeSwitchedAckRequest_ModeSwitchComSpec(), "modeSwitchedAck", null, 0, 1, ModeSwitchComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getModeSwitchComSpec_QueueLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "queueLength", "0", 0, 1, ModeSwitchComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.pPortComSpecEClass, PPortComSpec.class, "PPortComSpec", true, false, true);
        this.initEReference(this.getPPortComSpec_PPortPrototype(), (EClassifier)theComponentsPackage.getPPortPrototype(), theComponentsPackage.getPPortPrototype_ProvidedComSpecs(), "pPortPrototype", null, 0, 1, PPortComSpec.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.modeSwitchedAckRequestEClass, ModeSwitchedAckRequest.class, "ModeSwitchedAckRequest", false, false, true);
        this.initEReference(this.getModeSwitchedAckRequest_ModeSwitchComSpec(), (EClassifier)this.getModeSwitchComSpec(), this.getModeSwitchComSpec_ModeSwitchedAck(), "modeSwitchComSpec", null, 0, 1, ModeSwitchedAckRequest.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getModeSwitchedAckRequest_Timeout(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeout", "0.0", 0, 1, ModeSwitchedAckRequest.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.parameterProvideComSpecEClass, ParameterProvideComSpec.class, "ParameterProvideComSpec", false, false, true);
        this.initEClass(this.parameterRequireComSpecEClass, ParameterRequireComSpec.class, "ParameterRequireComSpec", false, false, true);
        this.initEClass(this.senderComSpecEClass, SenderComSpec.class, "SenderComSpec", true, false, true);
        this.initEReference(this.getSenderComSpec_DataElement(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElement", null, 0, 1, SenderComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderComSpec_TransmissionAcknowledge(), (EClassifier)this.getTransmissionAcknowledgementRequest(), this.getTransmissionAcknowledgementRequest_SenderComSpec(), "transmissionAcknowledge", null, 0, 1, SenderComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSenderComSpec_UsesEndToEndProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "usesEndToEndProtection", "false", 0, 1, SenderComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.transmissionAcknowledgementRequestEClass, TransmissionAcknowledgementRequest.class, "TransmissionAcknowledgementRequest", false, false, true);
        this.initEReference(this.getTransmissionAcknowledgementRequest_SenderComSpec(), (EClassifier)this.getSenderComSpec(), this.getSenderComSpec_TransmissionAcknowledge(), "senderComSpec", null, 0, 1, TransmissionAcknowledgementRequest.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getTransmissionAcknowledgementRequest_Timeout(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeout", "0.0", 0, 1, TransmissionAcknowledgementRequest.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.unqueuedSenderComSpecEClass, UnqueuedSenderComSpec.class, "UnqueuedSenderComSpec", false, false, true);
        this.initEAttribute(this.getUnqueuedSenderComSpec_CanInvalidate(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canInvalidate", "false", 0, 1, UnqueuedSenderComSpec.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getUnqueuedSenderComSpec_InitValue(), (EClassifier)theConstantsPackage.getValueSpecification(), null, "initValue", null, 0, 1, UnqueuedSenderComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.queuedSenderComSpecEClass, QueuedSenderComSpec.class, "QueuedSenderComSpec", false, false, true);
        this.initEClass(this.serverComSpecEClass, ServerComSpec.class, "ServerComSpec", false, false, true);
        this.initEReference(this.getServerComSpec_Operation(), (EClassifier)thePortinterfacePackage.getOperationPrototype(), null, "operation", null, 0, 1, ServerComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getServerComSpec_QueueLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "queueLength", "0", 0, 1, ServerComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.receiverComSpecEClass, ReceiverComSpec.class, "ReceiverComSpec", true, false, true);
        this.initEReference(this.getReceiverComSpec_DataElement(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElement", null, 0, 1, ReceiverComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getReceiverComSpec_Filter(), (EClassifier)theFilterPackage.getDataFilter(), null, "filter", null, 0, 1, ReceiverComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getReceiverComSpec_UsesEndToEndProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "usesEndToEndProtection", "false", 0, 1, ReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.unqueuedReceiverComSpecEClass, UnqueuedReceiverComSpec.class, "UnqueuedReceiverComSpec", false, false, true);
        this.initEAttribute(this.getUnqueuedReceiverComSpec_AliveTimeout(), (EClassifier)thePrimitivetypesPackage.getFloat(), "aliveTimeout", "0.0", 0, 1, UnqueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getUnqueuedReceiverComSpec_HandleInvalid(), (EClassifier)this.getHandleInvalidType(), "handleInvalid", "KEEP", 0, 1, UnqueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getUnqueuedReceiverComSpec_HandleNeverReceived(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "handleNeverReceived", "false", 0, 1, UnqueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getUnqueuedReceiverComSpec_InitValue(), (EClassifier)theConstantsPackage.getValueSpecification(), null, "initValue", null, 0, 1, UnqueuedReceiverComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getUnqueuedReceiverComSpec_ResyncTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "resyncTime", "0.0", 0, 1, UnqueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.queuedReceiverComSpecEClass, QueuedReceiverComSpec.class, "QueuedReceiverComSpec", false, false, true);
        this.initEAttribute(this.getQueuedReceiverComSpec_QueueLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "queueLength", "0", 0, 1, QueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.clientComSpecEClass, ClientComSpec.class, "ClientComSpec", false, false, true);
        this.initEReference(this.getClientComSpec_Operation(), (EClassifier)thePortinterfacePackage.getOperationPrototype(), null, "operation", null, 0, 1, ClientComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.rPortComSpecEClass, RPortComSpec.class, "RPortComSpec", true, false, true);
        this.initEReference(this.getRPortComSpec_RPortPrototype(), (EClassifier)theComponentsPackage.getRPortPrototype(), theComponentsPackage.getRPortPrototype_RequiredComSpecs(), "rPortPrototype", null, 0, 1, RPortComSpec.class, true, false, true, false, false, false, true, false, true);
        this.initEEnum(this.handleInvalidTypeEEnum, HandleInvalidType.class, "HandleInvalidType");
        this.addEEnumLiteral(this.handleInvalidTypeEEnum, HandleInvalidType.KEEP);
        this.addEEnumLiteral(this.handleInvalidTypeEEnum, HandleInvalidType.REPLACE);
        this.addEEnumLiteral(this.handleInvalidTypeEEnum, HandleInvalidType.DONT_INVALIDATE);
        this.createResource("http://autosar.org/3.2.1/autosar3x/swc/communication");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_PPortComSpecAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_InitValueAssignmentAnnotations();
        this.createTaggedValuesOfGeneralization_RPortComSpecAnnotations();
        this.createTaggedValuesOfGeneralization_SenderComSpecAnnotations();
        this.createTaggedValuesOfGeneralization_ReceiverComSpecAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "E385B2A4-C7E3-4548-816C-03640915AE63", "Created", "Mon Mar 22 14:56:41 CET 2004", "Modified", "Mon Mar 22 14:56:41 CET 2004", "Id", "153445678", "Name", "Communication"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"GUID", "3D91136C-CD68-42aa-9010-546CB65DFBCF", "Created", "Wed Sep 20 17:30:56 CEST 2006", "Modified", "Wed Sep 20 18:42:15 CEST 2006", "Id", "1158766256", "Name", "HandleInvalidType"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(0), source, new String[]{"GUID", "40AFE2F5-8B00-4f35-A446-241F6AF4123A", "Id", "-154786722", "Name", "keep"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(1), source, new String[]{"GUID", "32B724C5-479F-4ac4-9225-8D9FC0CDEA24", "Id", "654366855", "Name", "replace"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(2), source, new String[]{"GUID", "091C73FB-568B-4aee-B0EC-8BA6BF104704", "Id", "1280234173", "Name", "dontInvalidate"});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"GUID", "0261AE4C-0114-43f7-A4CA-9D4CE6240CDF", "Created", "Mon Aug 28 14:34:52 CEST 2006", "Modified", "Thu Aug 09 08:49:54 CEST 2007", "Id", "1568761875", "Name", "ModeSwitchComSpec"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"GUID", "42FA3388-8441-4aed-956F-31E2B092105D", "Id", "-1728029352", "Name", "queueLength"});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"GUID", "CD517AED-7818-4d78-950F-CC4C7D66D969", "Created", "Tue Jul 13 11:33:00 CEST 2004", "Modified", "Tue Aug 09 08:58:46 CEST 2005", "Id", "-2068147579", "Name", "PPortComSpec"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"GUID", "6C1125B9-E66A-427c-8701-9360A3071FEE", "Created", "Mon Aug 28 14:41:57 CEST 2006", "Modified", "Thu Sep 28 13:48:27 CEST 2006", "Id", "-2083155059", "Name", "ModeSwitchedAckRequest"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"GUID", "AB52442F-7234-4b52-A62E-CFE82022C757", "Id", "-245654070", "Name", "timeout"});
        this.addAnnotation((ENamedElement)this.parameterProvideComSpecEClass, source, new String[]{"GUID", "3D115462-F1D8-4a19-B4B8-C98741AB8887", "Created", "Tue Sep 08 16:35:06 CEST 2009", "Modified", "Tue Sep 08 16:35:58 CEST 2009", "Id", "1252420506", "Name", "ParameterProvideComSpec"});
        this.addAnnotation((ENamedElement)this.parameterRequireComSpecEClass, source, new String[]{"GUID", "8F5720C9-3ACA-4652-96ED-4880F74631DA", "Created", "Tue Sep 08 16:45:56 CEST 2009", "Modified", "Tue Sep 08 16:46:33 CEST 2009", "Id", "-1692061621", "Name", "ParameterRequireComSpec"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"GUID", "16848CB4-FAB0-41b3-A71B-0A2D6C1AA3C8", "Created", "Tue Jul 13 11:34:41 CEST 2004", "Modified", "Tue Aug 09 08:58:46 CEST 2005", "Id", "-94536608", "Name", "SenderComSpec"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_UsesEndToEndProtection(), source, new String[]{"GUID", "D0DAE0CA-FDB4-4788-BDD6-C5892BFDA6E5", "Id", "1298643616", "Name", "usesEndToEndProtection"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"GUID", "0DA3AA4A-FF2A-46a5-84A9-E3B3424433E4", "Created", "Fri May 14 13:01:50 CEST 2004", "Modified", "Thu Sep 14 16:33:21 CEST 2006", "Id", "-1649251510", "Name", "TransmissionAcknowledgementRequest"});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"GUID", "3A837E56-1F9A-4e4c-B375-2CB0B171A08C", "Id", "-448702461", "Name", "timeout"});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"GUID", "7E4D8F1F-22AF-439b-B936-60B4CFE4A271", "Created", "Tue Jul 13 11:35:43 CEST 2004", "Modified", "Mon Jul 31 15:06:36 CEST 2006", "Id", "1597580863", "Name", "UnqueuedSenderComSpec"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"GUID", "CEAA6EEF-CEEB-4583-AE53-AD52AC523967", "Id", "1091624005", "Name", "canInvalidate"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"GUID", "841C63DB-519F-4030-9215-0D2A5F5DC85D", "Created", "Tue Jul 13 11:36:05 CEST 2004", "Modified", "Mon Jul 31 15:06:57 CEST 2006", "Id", "-616666192", "Name", "QueuedSenderComSpec"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"GUID", "04FC1178-650D-4a1b-B7BE-6813A52C63D1", "Created", "Tue Jul 13 11:34:55 CEST 2004", "Modified", "Tue Aug 09 08:54:50 CEST 2005", "Id", "-1440197868", "Name", "ServerComSpec"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"GUID", "4F5275AD-4E00-4c08-9C19-1A4A4395654E", "Id", "-1622631346", "Name", "queueLength"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"GUID", "F04DB475-1EF1-46ee-8FA1-23E4405EDE27", "Created", "Tue Jul 13 11:36:56 CEST 2004", "Modified", "Tue Aug 09 08:13:24 CEST 2005", "Id", "1507444492", "Name", "ReceiverComSpec"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_UsesEndToEndProtection(), source, new String[]{"GUID", "9D63D1B7-7BB8-4ea3-B42E-55B2AFD64455", "Id", "1424461345", "Name", "usesEndToEndProtection"});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"GUID", "97EE7442-5A54-4712-8588-91D42CDBCF28", "Created", "Tue Jul 13 11:37:31 CEST 2004", "Modified", "Thu Aug 09 08:41:00 CEST 2007", "Id", "1936110618", "Name", "UnqueuedReceiverComSpec"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"GUID", "40CD06A5-EFFD-4878-9393-3386E09343C9", "Id", "-1767046220", "Name", "aliveTimeout"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"GUID", "F8E944B3-2AE3-4528-ACBC-27EFB7D74383", "Id", "1550801340", "Name", "handleInvalid"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleNeverReceived(), source, new String[]{"GUID", "A5D679BE-1FB5-46c3-8402-9CDAFAA8C7F5", "Id", "1295272451", "Name", "handleNeverReceived"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"GUID", "B5786416-29CD-46d3-B28F-A8B55D92005B", "Id", "-1822620525", "Name", "resyncTime"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"GUID", "5E2419D4-F8D3-4ae1-A7A7-B5D6AACC3A5A", "Created", "Tue Jul 13 11:38:04 CEST 2004", "Modified", "Thu Aug 09 08:41:19 CEST 2007", "Id", "522234345", "Name", "QueuedReceiverComSpec"});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"GUID", "433EF430-1A05-4cb9-80C1-9C3EACF98716", "Id", "2124755958", "Name", "queueLength"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"GUID", "36254FC8-3569-4ea5-AD1D-6AEFEFCAE211", "Created", "Tue Jul 13 11:37:12 CEST 2004", "Modified", "Tue Aug 09 08:46:47 CEST 2005", "Id", "2085484894", "Name", "ClientComSpec"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"GUID", "260905B8-211F-473b-8F4C-A6BA3E138C96", "Created", "Tue Jul 13 11:33:21 CEST 2004", "Modified", "Tue Aug 09 08:46:26 CEST 2005", "Id", "-621857092", "Name", "RPortComSpec"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMMUNICATION", "xml.namePlural", "COMMUNICATIONS"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"mmt.qualifiedName", "HandleInvalidType", "xml.tags", "mmt.qualifiedName=\"HandleInvalidType\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "HANDLE-INVALID-TYPE", "xml.namePlural", "HANDLE-INVALID-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "HandleInvalidType.keep", "xml.tags", "mmt.qualifiedName=\"HandleInvalidType.keep\"", "xml.name", "KEEP", "xml.namePlural", "KEEPS"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "HandleInvalidType.replace", "xml.tags", "mmt.qualifiedName=\"HandleInvalidType.replace\"", "xml.name", "REPLACE", "xml.namePlural", "REPLACES"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(2), source, new String[]{"mmt.qualifiedName", "HandleInvalidType.dontInvalidate", "xml.tags", "mmt.qualifiedName=\"HandleInvalidType.dontInvalidate\"", "xml.name", "DONT-INVALIDATE", "xml.namePlural", "DONT-INVALIDATES"});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"mmt.qualifiedName", "ModeSwitchComSpec", "xml.tags", "mmt.qualifiedName=\"ModeSwitchComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "MODE-SWITCH-COM-SPEC", "xml.namePlural", "MODE-SWITCH-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeGroup(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModeSwitchComSpec.modeGroup\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ModeSwitchComSpec.modeGroup", "pureMM.maxOccurs", "1", "xml.name", "MODE-GROUP-REF", "xml.namePlural", "MODE-GROUP-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeSwitchedAck(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"modeSwitchedAck.ModeSwitchComSpec\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "modeSwitchedAck.ModeSwitchComSpec", "pureMM.maxOccurs", "1", "xml.name", "MODE-SWITCHED-ACK", "xml.namePlural", "MODE-SWITCHED-ACKS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModeSwitchComSpec.queueLength\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ModeSwitchComSpec.queueLength", "pureMM.maxOccurs", "1", "xml.name", "QUEUE-LENGTH", "xml.namePlural", "QUEUE-LENGTHS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"mmt.qualifiedName", "PPortComSpec", "xml.tags", "mmt.qualifiedName=\"PPortComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "P-PORT-COM-SPEC", "xml.namePlural", "P-PORT-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"mmt.qualifiedName", "ModeSwitchedAckRequest", "xml.tags", "mmt.qualifiedName=\"ModeSwitchedAckRequest\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "MODE-SWITCHED-ACK-REQUEST", "xml.namePlural", "MODE-SWITCHED-ACK-REQUESTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModeSwitchedAckRequest.timeout\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ModeSwitchedAckRequest.timeout", "pureMM.maxOccurs", "1", "xml.name", "TIMEOUT", "xml.namePlural", "TIMEOUTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.parameterProvideComSpecEClass, source, new String[]{"mmt.qualifiedName", "ParameterProvideComSpec", "xml.tags", "mmt.qualifiedName=\"ParameterProvideComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PARAMETER-PROVIDE-COM-SPEC", "xml.namePlural", "PARAMETER-PROVIDE-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.parameterRequireComSpecEClass, source, new String[]{"mmt.qualifiedName", "ParameterRequireComSpec", "xml.tags", "mmt.qualifiedName=\"ParameterRequireComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PARAMETER-REQUIRE-COM-SPEC", "xml.namePlural", "PARAMETER-REQUIRE-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"mmt.qualifiedName", "SenderComSpec", "xml.tags", "mmt.qualifiedName=\"SenderComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SENDER-COM-SPEC", "xml.namePlural", "SENDER-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_DataElement(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SenderComSpec.dataElement\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SenderComSpec.dataElement", "pureMM.maxOccurs", "1", "xml.name", "DATA-ELEMENT-REF", "xml.namePlural", "DATA-ELEMENT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_TransmissionAcknowledge(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"transmissionAcknowledge.SenderComSpec\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "transmissionAcknowledge.SenderComSpec", "pureMM.maxOccurs", "1", "xml.name", "TRANSMISSION-ACKNOWLEDGE", "xml.namePlural", "TRANSMISSION-ACKNOWLEDGES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_UsesEndToEndProtection(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SenderComSpec.usesEndToEndProtection\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SenderComSpec.usesEndToEndProtection", "pureMM.maxOccurs", "1", "xml.name", "USES-END-TO-END-PROTECTION", "xml.namePlural", "USES-END-TO-END-PROTECTIONS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"mmt.qualifiedName", "TransmissionAcknowledgementRequest", "xml.tags", "mmt.qualifiedName=\"TransmissionAcknowledgementRequest\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "TRANSMISSION-ACKNOWLEDGEMENT-REQUEST", "xml.namePlural", "TRANSMISSION-ACKNOWLEDGEMENT-REQUESTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"TransmissionAcknowledgementRequest.timeout\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "TransmissionAcknowledgementRequest.timeout", "pureMM.maxOccurs", "1", "xml.name", "TIMEOUT", "xml.namePlural", "TIMEOUTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"mmt.qualifiedName", "UnqueuedSenderComSpec", "xml.tags", "mmt.qualifiedName=\"UnqueuedSenderComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "UNQUEUED-SENDER-COM-SPEC", "xml.namePlural", "UNQUEUED-SENDER-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnqueuedSenderComSpec.canInvalidate\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "UnqueuedSenderComSpec.canInvalidate", "pureMM.maxOccurs", "1", "xml.name", "CAN-INVALIDATE", "xml.namePlural", "CAN-INVALIDATES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_InitValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnqueuedSenderComSpec.initValue\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "UnqueuedSenderComSpec.initValue", "pureMM.maxOccurs", "1", "xml.name", "INIT-VALUE-REF", "xml.namePlural", "INIT-VALUE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"mmt.qualifiedName", "QueuedSenderComSpec", "xml.tags", "mmt.qualifiedName=\"QueuedSenderComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "QUEUED-SENDER-COM-SPEC", "xml.namePlural", "QUEUED-SENDER-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"mmt.qualifiedName", "ServerComSpec", "xml.tags", "mmt.qualifiedName=\"ServerComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SERVER-COM-SPEC", "xml.namePlural", "SERVER-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_Operation(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ServerComSpec.operation\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ServerComSpec.operation", "pureMM.maxOccurs", "1", "xml.name", "OPERATION-REF", "xml.namePlural", "OPERATION-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ServerComSpec.queueLength\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ServerComSpec.queueLength", "pureMM.maxOccurs", "1", "xml.name", "QUEUE-LENGTH", "xml.namePlural", "QUEUE-LENGTHS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"mmt.qualifiedName", "ReceiverComSpec", "xml.tags", "mmt.qualifiedName=\"ReceiverComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "RECEIVER-COM-SPEC", "xml.namePlural", "RECEIVER-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_DataElement(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ReceiverComSpec.dataElement\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ReceiverComSpec.dataElement", "pureMM.maxOccurs", "1", "xml.name", "DATA-ELEMENT-REF", "xml.namePlural", "DATA-ELEMENT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_Filter(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"filter.ReceiverComSpec\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "filter.ReceiverComSpec", "pureMM.maxOccurs", "1", "xml.name", "FILTER", "xml.namePlural", "FILTERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_UsesEndToEndProtection(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ReceiverComSpec.usesEndToEndProtection\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ReceiverComSpec.usesEndToEndProtection", "pureMM.maxOccurs", "1", "xml.name", "USES-END-TO-END-PROTECTION", "xml.namePlural", "USES-END-TO-END-PROTECTIONS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"mmt.qualifiedName", "UnqueuedReceiverComSpec", "xml.tags", "mmt.qualifiedName=\"UnqueuedReceiverComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "UNQUEUED-RECEIVER-COM-SPEC", "xml.namePlural", "UNQUEUED-RECEIVER-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnqueuedReceiverComSpec.aliveTimeout\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "UnqueuedReceiverComSpec.aliveTimeout", "pureMM.maxOccurs", "1", "xml.name", "ALIVE-TIMEOUT", "xml.namePlural", "ALIVE-TIMEOUTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnqueuedReceiverComSpec.handleInvalid\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "UnqueuedReceiverComSpec.handleInvalid", "pureMM.maxOccurs", "1", "xml.name", "HANDLE-INVALID", "xml.namePlural", "HANDLE-INVALIDS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleNeverReceived(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnqueuedReceiverComSpec.handleNeverReceived\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "UnqueuedReceiverComSpec.handleNeverReceived", "pureMM.maxOccurs", "1", "xml.name", "HANDLE-NEVER-RECEIVED", "xml.namePlural", "HANDLE-NEVER-RECEIVEDS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_InitValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnqueuedReceiverComSpec.initValue\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "UnqueuedReceiverComSpec.initValue", "pureMM.maxOccurs", "1", "xml.name", "INIT-VALUE-REF", "xml.namePlural", "INIT-VALUE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"UnqueuedReceiverComSpec.resyncTime\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "UnqueuedReceiverComSpec.resyncTime", "pureMM.maxOccurs", "1", "xml.name", "RESYNC-TIME", "xml.namePlural", "RESYNC-TIMES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"mmt.qualifiedName", "QueuedReceiverComSpec", "xml.tags", "mmt.qualifiedName=\"QueuedReceiverComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "QUEUED-RECEIVER-COM-SPEC", "xml.namePlural", "QUEUED-RECEIVER-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"QueuedReceiverComSpec.queueLength\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "QueuedReceiverComSpec.queueLength", "pureMM.maxOccurs", "1", "xml.name", "QUEUE-LENGTH", "xml.namePlural", "QUEUE-LENGTHS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"mmt.qualifiedName", "ClientComSpec", "xml.tags", "mmt.qualifiedName=\"ClientComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CLIENT-COM-SPEC", "xml.namePlural", "CLIENT-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientComSpec_Operation(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ClientComSpec.operation\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ClientComSpec.operation", "pureMM.maxOccurs", "1", "xml.name", "OPERATION-REF", "xml.namePlural", "OPERATION-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"mmt.qualifiedName", "RPortComSpec", "xml.tags", "mmt.qualifiedName=\"RPortComSpec\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "R-PORT-COM-SPEC", "xml.namePlural", "R-PORT-COM-SPECS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"name", "MODE-SWITCH-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeGroup(), source, new String[]{"name", "MODE-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeSwitchedAck(), source, new String[]{"name", "MODE-SWITCHED-ACK", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"name", "QUEUE-LENGTH", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"name", "P-PORT-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"name", "MODE-SWITCHED-ACK-REQUEST", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"name", "TIMEOUT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.parameterProvideComSpecEClass, source, new String[]{"name", "PARAMETER-PROVIDE-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.parameterRequireComSpecEClass, source, new String[]{"name", "PARAMETER-REQUIRE-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"name", "SENDER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_DataElement(), source, new String[]{"name", "DATA-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_TransmissionAcknowledge(), source, new String[]{"name", "TRANSMISSION-ACKNOWLEDGE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_UsesEndToEndProtection(), source, new String[]{"name", "USES-END-TO-END-PROTECTION", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"name", "TRANSMISSION-ACKNOWLEDGEMENT-REQUEST", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"name", "TIMEOUT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"name", "UNQUEUED-SENDER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"name", "CAN-INVALIDATE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_InitValue(), source, new String[]{"name", "INIT-VALUE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"name", "QUEUED-SENDER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"name", "SERVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_Operation(), source, new String[]{"name", "OPERATION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"name", "QUEUE-LENGTH", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"name", "RECEIVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_DataElement(), source, new String[]{"name", "DATA-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_Filter(), source, new String[]{"name", "FILTER", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_UsesEndToEndProtection(), source, new String[]{"name", "USES-END-TO-END-PROTECTION", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"name", "UNQUEUED-RECEIVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"name", "ALIVE-TIMEOUT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"name", "HANDLE-INVALID", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleNeverReceived(), source, new String[]{"name", "HANDLE-NEVER-RECEIVED", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_InitValue(), source, new String[]{"name", "INIT-VALUE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"name", "RESYNC-TIME", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"name", "QUEUED-RECEIVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"name", "QUEUE-LENGTH", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"name", "CLIENT-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getClientComSpec_Operation(), source, new String[]{"name", "OPERATION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"name", "R-PORT-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"documentation", "Strategies of handling the reception of invalidValue."});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(0), source, new String[]{"documentation", "Keep a received invalidValue. This allows handling of Signal Invalidation on RTE API level either by DataReceiveErrorEvent or return of an error code on on read access."});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(1), source, new String[]{"documentation", "Replace a received invalidValue. The replacement value is specified by the initValue."});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(2), source, new String[]{"documentation", "Invalidation is switched off."});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"documentation", "Communication attributes for both sender /server port (P-Port and sender-receiver interface)."});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeGroup(), source, new String[]{"documentation", "Mode Declaration Group (of the same Port Interface) to which these communication attributes apply."});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeSwitchedAck(), source, new String[]{"documentation", "This represents the ModeSwitchedAckrequest owned by the ModeSwitchComSoec."});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"documentation", "Length of call queue on the server side. The queue is implemented by the RTE. The value must be greater or equal to 0. Setting the value of queueLength to 0 implies non-queued communication."});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"documentation", "Communication attributes for P-Ports. This class will contain attributes that are valid for all kinds of provide ports, independent of client-server or sender-receiver communication patterns."});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"documentation", "Requests acknowledgements that a mode switch has been proceeded successfully"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"documentation", "Number of seconds before an error is reported or in case of allowed redundancy, the value is sent again."});
        this.addAnnotation((ENamedElement)this.parameterProvideComSpecEClass, source, new String[]{"documentation", "This meta-class represents the ability to provide an initial value for a calibration parameter.\r\n"});
        this.addAnnotation((ENamedElement)this.parameterRequireComSpecEClass, source, new String[]{"documentation", "This meta-class represents the ability to define an initial value for a calibration parameter.\r\n"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"documentation", "Communication attributes for a sender port (P-Port and sender-receiver interface)."});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_DataElement(), source, new String[]{"documentation", "Data element these quality of service attributes apply to."});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_TransmissionAcknowledge(), source, new String[]{"documentation", "Requested transmission acknowledgement for data element."});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_UsesEndToEndProtection(), source, new String[]{"documentation", "This indicates whether the corresponding dataElement shall be transmitted using end-to-end protection."});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"documentation", "Requests transmission acknowledgement that data has been sent successfully. Success/failure is reported via a SendPoint of a Runnable."});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"documentation", "Number of seconds before an error is reported or in case of allowed redundancy, the value is sent again."});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to distribution of data (P-Port, sender-receiver interface and data element carries \"data\" opposed to carrying an \"event\")."});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"documentation", "Flag whether the component can actively invalidate data."});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_InitValue(), source, new String[]{"documentation", "Init value to be sent if sender component is not yet fully initialized, but receiver needs data already."});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to distribution of  events (P-Port, sender-receiver interface and data element carries an \"event\")."});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"documentation", "Communication attributes for a server port (P-Port and client-server interface)."});
        this.addAnnotation((ENamedElement)this.getServerComSpec_Operation(), source, new String[]{"documentation", "Operation these communication attributes apply to."});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"documentation", "Length of call queue on the server side. The queue is implemented by the RTE."});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"documentation", "Receiver specific communication attributes (R-Port and sender-receiver interface)."});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_DataElement(), source, new String[]{"documentation", "Data element these attributes belong to."});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_Filter(), source, new String[]{"documentation", "The DataFilter associated with this ReceiverComSpec."});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_UsesEndToEndProtection(), source, new String[]{"documentation", "This indicates whether the corresponding dataElement shall be transmitted using end-to-end protection."});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to unqueued receiving."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"documentation", "Specify the amount of time (in seconds) after which the software component (via the RTE)  needs to be notified if the corresponding data item have not been received according to the specified timing description."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"documentation", "Specifies strategy of handling the reception of invalidValue."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleNeverReceived(), source, new String[]{"documentation", "This attribute specifies whether for the corresponding DataElementPrototype the \"never received\" flag is available. If yes, the RTE is supposed to assume that initially the DataElementPrototype has not been received before.\r\nAfter the first reception of the corresponding DataElementPrototype the flag is cleared.\r\nIf the value of this attribute is set to TRUE the flag is required. If set to FALSE, the RTE shall not support the \"never received\" functionality for the corresponding DataElementPrototype. "});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_InitValue(), source, new String[]{"documentation", "Initial value to be used in case the sending component is not yet initialized. If the sender also specifies an init value the receiver's value will be used."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"documentation", "Time allowed for resynchronization of data values after current data is lost, e.g. after an ECU reset."});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to queued receiving."});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"documentation", "Length of queue for received events."});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"documentation", "Client specific communication attributes (R-Port and client-server interface)."});
        this.addAnnotation((ENamedElement)this.getClientComSpec_Operation(), source, new String[]{"documentation", "Operation these attributes belong to."});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"documentation", "Communication attributes of an R-Port. This class will contain attributes that are valid for all kinds of require-ports, independent of client-server or sender-receiver communication patterns."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"Stereotype", "enumeration"});
    }

    protected void createTaggedValuesOfGeneralization_PPortComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_PPortComSpec";
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ModeSwitchComSpec->PPortComSpec", "GUID", "93130CE3-BE22-4bc9-9CF5-C93D7CF1D31F", "Id", "1705126102", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.parameterProvideComSpecEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "ParameterProvideComSpec->PPortComSpec", "GUID", "F34EF744-6D79-4080-804F-377D716ABB7D", "Id", "233464664"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SenderComSpec->PPortComSpec", "GUID", "94352365-7E2D-4e73-8368-13A453B0E742", "Id", "754010232", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ServerComSpec->PPortComSpec", "GUID", "D561768F-5CB8-45ec-B9BF-3646345F14A8", "Id", "-729922714", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_InitValueAssignmentAnnotations() {
        String source = "TaggedValuesOfGeneralization_InitValueAssignment";
        this.addAnnotation((ENamedElement)this.parameterProvideComSpecEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "mmt.qualifiedName", "ParameterProvideComSpec->InitValueAssignment", "GUID", "91A3F69B-8B47-4f25-9FC3-8A33E55C7011", "Id", "-1403215854"});
        this.addAnnotation((ENamedElement)this.parameterRequireComSpecEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "mmt.qualifiedName", "ParameterRequireComSpec->InitValueAssignment", "GUID", "DA2130B5-538C-4f14-8BE4-D1D90DAFD3F1", "Id", "-681092698"});
    }

    protected void createTaggedValuesOfGeneralization_RPortComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_RPortComSpec";
        this.addAnnotation((ENamedElement)this.parameterRequireComSpecEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "ParameterRequireComSpec->RPortComSpec", "GUID", "9C4B9395-4BE1-4837-80F2-56B7740389A6", "Id", "-1930929295"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ReceiverComSpec->RPortComSpec", "GUID", "7A69A9C5-904C-41b5-9CB8-34A50C5FCD58", "Id", "1730314405", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ClientComSpec->RPortComSpec", "GUID", "2011CC53-C68A-4c7f-BB1F-0D2C31EC358B", "Id", "-510861988", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SenderComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_SenderComSpec";
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "UnqueuedSenderComSpec->SenderComSpec", "GUID", "CA7BDE7F-993A-49f0-A036-643161B6B6B3", "Id", "-1809338364", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "QueuedSenderComSpec->SenderComSpec", "GUID", "E516D281-FE12-480d-807B-8E9E9630A54B", "Id", "-1079799507", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ReceiverComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_ReceiverComSpec";
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "UnqueuedReceiverComSpec->ReceiverComSpec", "GUID", "D967357A-A3AE-499d-8777-7BA4F2326C70", "Id", "215445343", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "QueuedReceiverComSpec->ReceiverComSpec", "GUID", "CDEE30BE-564A-4cbb-871B-6F46C309D3D7", "Id", "212725172", "xml.sequenceOffset", "0"});
    }
}

