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
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl;

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
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.impl.CommunicationPackageImpl;
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
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedPPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.RoleBasedRPortAssignment;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingFactory;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcComMgrUserNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcDiagnosticCommunicationNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcDiagnosticEventNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcEcuStateMgrUserNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcFunctionInhibitionNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcNvBlockNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdControlServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdInfoServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdMonitorServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdPidServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcObdRatioServiceNeeds;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.SwcSupervisedEntityNeeds;
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
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class ServicemappingPackageImpl
extends EPackageImpl
implements ServicemappingPackage {
    private EClass roleBasedPPortAssignmentEClass = null;
    private EClass roleBasedRPortAssignmentEClass = null;
    private EClass swcComMgrUserNeedsEClass = null;
    private EClass swcDiagnosticCommunicationNeedsEClass = null;
    private EClass swcDiagnosticEventNeedsEClass = null;
    private EClass swcEcuStateMgrUserNeedsEClass = null;
    private EClass swcFunctionInhibitionNeedsEClass = null;
    private EClass swcNvBlockNeedsEClass = null;
    private EClass swcObdControlServiceNeedsEClass = null;
    private EClass swcObdInfoServiceNeedsEClass = null;
    private EClass swcObdMonitorServiceNeedsEClass = null;
    private EClass swcObdPidServiceNeedsEClass = null;
    private EClass swcObdRatioServiceNeedsEClass = null;
    private EClass swcSupervisedEntityNeedsEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ServicemappingPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/swc/sib/sm", (EFactory)ServicemappingFactory.eINSTANCE);
    }

    public static ServicemappingPackage init() {
        if (isInited) {
            return (ServicemappingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sm");
        }
        ServicemappingPackageImpl theServicemappingPackage = (ServicemappingPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/sib/sm") instanceof ServicemappingPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/sib/sm") : new ServicemappingPackageImpl());
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
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/communication") : CommunicationPackage.eINSTANCE);
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
        theServicemappingPackage.createPackageContents();
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
        theCommunicationPackage.createPackageContents();
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
        theServicemappingPackage.initializePackageContents();
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
        theCommunicationPackage.initializePackageContents();
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
        theServicemappingPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/swc/sib/sm", (Object)theServicemappingPackage);
        return theServicemappingPackage;
    }

    public EClass getRoleBasedPPortAssignment() {
        return this.roleBasedPPortAssignmentEClass;
    }

    public EReference getRoleBasedPPortAssignment_PPortPrototype() {
        return (EReference)this.roleBasedPPortAssignmentEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getRoleBasedPPortAssignment_Role() {
        return (EAttribute)this.roleBasedPPortAssignmentEClass.getEStructuralFeatures().get(1);
    }

    public EClass getRoleBasedRPortAssignment() {
        return this.roleBasedRPortAssignmentEClass;
    }

    public EReference getRoleBasedRPortAssignment_RPortPrototype() {
        return (EReference)this.roleBasedRPortAssignmentEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getRoleBasedRPortAssignment_Role() {
        return (EAttribute)this.roleBasedRPortAssignmentEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwcComMgrUserNeeds() {
        return this.swcComMgrUserNeedsEClass;
    }

    public EReference getSwcComMgrUserNeeds_CallbackPorts() {
        return (EReference)this.swcComMgrUserNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwcComMgrUserNeeds_ServiceCallPorts() {
        return (EReference)this.swcComMgrUserNeedsEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwcDiagnosticCommunicationNeeds() {
        return this.swcDiagnosticCommunicationNeedsEClass;
    }

    public EReference getSwcDiagnosticCommunicationNeeds_CallbackPorts() {
        return (EReference)this.swcDiagnosticCommunicationNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwcDiagnosticCommunicationNeeds_ServiceCallPort() {
        return (EReference)this.swcDiagnosticCommunicationNeedsEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwcDiagnosticEventNeeds() {
        return this.swcDiagnosticEventNeedsEClass;
    }

    public EReference getSwcDiagnosticEventNeeds_CallbackPorts() {
        return (EReference)this.swcDiagnosticEventNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwcDiagnosticEventNeeds_ServiceCallPorts() {
        return (EReference)this.swcDiagnosticEventNeedsEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwcEcuStateMgrUserNeeds() {
        return this.swcEcuStateMgrUserNeedsEClass;
    }

    public EReference getSwcEcuStateMgrUserNeeds_ServiceCallPorts() {
        return (EReference)this.swcEcuStateMgrUserNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwcFunctionInhibitionNeeds() {
        return this.swcFunctionInhibitionNeedsEClass;
    }

    public EReference getSwcFunctionInhibitionNeeds_ServiceCallPorts() {
        return (EReference)this.swcFunctionInhibitionNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwcNvBlockNeeds() {
        return this.swcNvBlockNeedsEClass;
    }

    public EReference getSwcNvBlockNeeds_CallBackPorts() {
        return (EReference)this.swcNvBlockNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwcNvBlockNeeds_DefaultBlock() {
        return (EReference)this.swcNvBlockNeedsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwcNvBlockNeeds_MirrorBlock() {
        return (EReference)this.swcNvBlockNeedsEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwcNvBlockNeeds_ServiceCallPorts() {
        return (EReference)this.swcNvBlockNeedsEClass.getEStructuralFeatures().get(3);
    }

    public EClass getSwcObdControlServiceNeeds() {
        return this.swcObdControlServiceNeedsEClass;
    }

    public EReference getSwcObdControlServiceNeeds_CallbackPort() {
        return (EReference)this.swcObdControlServiceNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwcObdInfoServiceNeeds() {
        return this.swcObdInfoServiceNeedsEClass;
    }

    public EReference getSwcObdInfoServiceNeeds_CallbackPort() {
        return (EReference)this.swcObdInfoServiceNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwcObdMonitorServiceNeeds() {
        return this.swcObdMonitorServiceNeedsEClass;
    }

    public EReference getSwcObdMonitorServiceNeeds_CallbackPort() {
        return (EReference)this.swcObdMonitorServiceNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwcObdPidServiceNeeds() {
        return this.swcObdPidServiceNeedsEClass;
    }

    public EReference getSwcObdPidServiceNeeds_CallbackPort() {
        return (EReference)this.swcObdPidServiceNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwcObdRatioServiceNeeds() {
        return this.swcObdRatioServiceNeedsEClass;
    }

    public EReference getSwcObdRatioServiceNeeds_ServiceCallPort() {
        return (EReference)this.swcObdRatioServiceNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwcSupervisedEntityNeeds() {
        return this.swcSupervisedEntityNeedsEClass;
    }

    public EReference getSwcSupervisedEntityNeeds_ServiceCallPorts() {
        return (EReference)this.swcSupervisedEntityNeedsEClass.getEStructuralFeatures().get(0);
    }

    public ServicemappingFactory getServicemappingFactory() {
        return (ServicemappingFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.roleBasedPPortAssignmentEClass = this.createEClass(0);
        this.createEReference(this.roleBasedPPortAssignmentEClass, 4);
        this.createEAttribute(this.roleBasedPPortAssignmentEClass, 5);
        this.roleBasedRPortAssignmentEClass = this.createEClass(1);
        this.createEReference(this.roleBasedRPortAssignmentEClass, 4);
        this.createEAttribute(this.roleBasedRPortAssignmentEClass, 5);
        this.swcComMgrUserNeedsEClass = this.createEClass(2);
        this.createEReference(this.swcComMgrUserNeedsEClass, 18);
        this.createEReference(this.swcComMgrUserNeedsEClass, 19);
        this.swcDiagnosticCommunicationNeedsEClass = this.createEClass(3);
        this.createEReference(this.swcDiagnosticCommunicationNeedsEClass, 17);
        this.createEReference(this.swcDiagnosticCommunicationNeedsEClass, 18);
        this.swcDiagnosticEventNeedsEClass = this.createEClass(4);
        this.createEReference(this.swcDiagnosticEventNeedsEClass, 17);
        this.createEReference(this.swcDiagnosticEventNeedsEClass, 18);
        this.swcEcuStateMgrUserNeedsEClass = this.createEClass(5);
        this.createEReference(this.swcEcuStateMgrUserNeedsEClass, 17);
        this.swcFunctionInhibitionNeedsEClass = this.createEClass(6);
        this.createEReference(this.swcFunctionInhibitionNeedsEClass, 17);
        this.swcNvBlockNeedsEClass = this.createEClass(7);
        this.createEReference(this.swcNvBlockNeedsEClass, 25);
        this.createEReference(this.swcNvBlockNeedsEClass, 26);
        this.createEReference(this.swcNvBlockNeedsEClass, 27);
        this.createEReference(this.swcNvBlockNeedsEClass, 28);
        this.swcObdControlServiceNeedsEClass = this.createEClass(8);
        this.createEReference(this.swcObdControlServiceNeedsEClass, 18);
        this.swcObdInfoServiceNeedsEClass = this.createEClass(9);
        this.createEReference(this.swcObdInfoServiceNeedsEClass, 19);
        this.swcObdMonitorServiceNeedsEClass = this.createEClass(10);
        this.createEReference(this.swcObdMonitorServiceNeedsEClass, 20);
        this.swcObdPidServiceNeedsEClass = this.createEClass(11);
        this.createEReference(this.swcObdPidServiceNeedsEClass, 20);
        this.swcObdRatioServiceNeedsEClass = this.createEClass(12);
        this.createEReference(this.swcObdRatioServiceNeedsEClass, 21);
        this.swcSupervisedEntityNeedsEClass = this.createEClass(13);
        this.createEReference(this.swcSupervisedEntityNeedsEClass, 23);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("servicemapping");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/swc/sib/sm");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        ServiceneedsPackage theServiceneedsPackage = (ServiceneedsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sn");
        CharacteristicPackage theCharacteristicPackage = (CharacteristicPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c");
        PerinstancememoryPackage thePerinstancememoryPackage = (PerinstancememoryPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/pim");
        this.roleBasedPPortAssignmentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.roleBasedRPortAssignmentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swcComMgrUserNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getComMgrUserNeeds());
        this.swcDiagnosticCommunicationNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getDiagnosticCommunicationNeeds());
        this.swcDiagnosticEventNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getDiagnosticEventNeeds());
        this.swcEcuStateMgrUserNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getEcuStateMgrUserNeeds());
        this.swcFunctionInhibitionNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getFunctionInhibitionNeeds());
        this.swcNvBlockNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getNvBlockNeeds());
        this.swcObdControlServiceNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getObdControlServiceNeeds());
        this.swcObdInfoServiceNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getObdInfoServiceNeeds());
        this.swcObdMonitorServiceNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getObdMonitorServiceNeeds());
        this.swcObdPidServiceNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getObdPidServiceNeeds());
        this.swcObdRatioServiceNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getObdRatioServiceNeeds());
        this.swcSupervisedEntityNeedsEClass.getESuperTypes().add((Object)theServiceneedsPackage.getSupervisedEntityNeeds());
        this.initEClass(this.roleBasedPPortAssignmentEClass, RoleBasedPPortAssignment.class, "RoleBasedPPortAssignment", false, false, true);
        this.initEReference(this.getRoleBasedPPortAssignment_PPortPrototype(), (EClassifier)theComponentsPackage.getPPortPrototype(), null, "pPortPrototype", null, 0, 1, RoleBasedPPortAssignment.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getRoleBasedPPortAssignment_Role(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "role", "", 0, 1, RoleBasedPPortAssignment.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.roleBasedRPortAssignmentEClass, RoleBasedRPortAssignment.class, "RoleBasedRPortAssignment", false, false, true);
        this.initEReference(this.getRoleBasedRPortAssignment_RPortPrototype(), (EClassifier)theComponentsPackage.getRPortPrototype(), null, "rPortPrototype", null, 0, 1, RoleBasedRPortAssignment.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getRoleBasedRPortAssignment_Role(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "role", "", 0, 1, RoleBasedRPortAssignment.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swcComMgrUserNeedsEClass, SwcComMgrUserNeeds.class, "SwcComMgrUserNeeds", false, false, true);
        this.initEReference(this.getSwcComMgrUserNeeds_CallbackPorts(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callbackPorts", null, 0, -1, SwcComMgrUserNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcComMgrUserNeeds_ServiceCallPorts(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPorts", null, 0, -1, SwcComMgrUserNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcDiagnosticCommunicationNeedsEClass, SwcDiagnosticCommunicationNeeds.class, "SwcDiagnosticCommunicationNeeds", false, false, true);
        this.initEReference(this.getSwcDiagnosticCommunicationNeeds_CallbackPorts(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callbackPorts", null, 0, -1, SwcDiagnosticCommunicationNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcDiagnosticCommunicationNeeds_ServiceCallPort(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPort", null, 0, 1, SwcDiagnosticCommunicationNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcDiagnosticEventNeedsEClass, SwcDiagnosticEventNeeds.class, "SwcDiagnosticEventNeeds", false, false, true);
        this.initEReference(this.getSwcDiagnosticEventNeeds_CallbackPorts(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callbackPorts", null, 0, -1, SwcDiagnosticEventNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcDiagnosticEventNeeds_ServiceCallPorts(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPorts", null, 0, -1, SwcDiagnosticEventNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcEcuStateMgrUserNeedsEClass, SwcEcuStateMgrUserNeeds.class, "SwcEcuStateMgrUserNeeds", false, false, true);
        this.initEReference(this.getSwcEcuStateMgrUserNeeds_ServiceCallPorts(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPorts", null, 0, -1, SwcEcuStateMgrUserNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcFunctionInhibitionNeedsEClass, SwcFunctionInhibitionNeeds.class, "SwcFunctionInhibitionNeeds", false, false, true);
        this.initEReference(this.getSwcFunctionInhibitionNeeds_ServiceCallPorts(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPorts", null, 0, -1, SwcFunctionInhibitionNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcNvBlockNeedsEClass, SwcNvBlockNeeds.class, "SwcNvBlockNeeds", false, false, true);
        this.initEReference(this.getSwcNvBlockNeeds_CallBackPorts(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callBackPorts", null, 0, -1, SwcNvBlockNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwcNvBlockNeeds_DefaultBlock(), (EClassifier)theCharacteristicPackage.getCalprmElementPrototype(), null, "defaultBlock", null, 0, 1, SwcNvBlockNeeds.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcNvBlockNeeds_MirrorBlock(), (EClassifier)thePerinstancememoryPackage.getPerInstanceMemory(), null, "mirrorBlock", null, 0, 1, SwcNvBlockNeeds.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcNvBlockNeeds_ServiceCallPorts(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPorts", null, 0, -1, SwcNvBlockNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcObdControlServiceNeedsEClass, SwcObdControlServiceNeeds.class, "SwcObdControlServiceNeeds", false, false, true);
        this.initEReference(this.getSwcObdControlServiceNeeds_CallbackPort(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callbackPort", null, 0, 1, SwcObdControlServiceNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcObdInfoServiceNeedsEClass, SwcObdInfoServiceNeeds.class, "SwcObdInfoServiceNeeds", false, false, true);
        this.initEReference(this.getSwcObdInfoServiceNeeds_CallbackPort(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callbackPort", null, 0, 1, SwcObdInfoServiceNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcObdMonitorServiceNeedsEClass, SwcObdMonitorServiceNeeds.class, "SwcObdMonitorServiceNeeds", false, false, true);
        this.initEReference(this.getSwcObdMonitorServiceNeeds_CallbackPort(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callbackPort", null, 0, 1, SwcObdMonitorServiceNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcObdPidServiceNeedsEClass, SwcObdPidServiceNeeds.class, "SwcObdPidServiceNeeds", false, false, true);
        this.initEReference(this.getSwcObdPidServiceNeeds_CallbackPort(), (EClassifier)this.getRoleBasedPPortAssignment(), null, "callbackPort", null, 0, 1, SwcObdPidServiceNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcObdRatioServiceNeedsEClass, SwcObdRatioServiceNeeds.class, "SwcObdRatioServiceNeeds", false, false, true);
        this.initEReference(this.getSwcObdRatioServiceNeeds_ServiceCallPort(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPort", null, 0, 1, SwcObdRatioServiceNeeds.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swcSupervisedEntityNeedsEClass, SwcSupervisedEntityNeeds.class, "SwcSupervisedEntityNeeds", false, false, true);
        this.initEReference(this.getSwcSupervisedEntityNeeds_ServiceCallPorts(), (EClassifier)this.getRoleBasedRPortAssignment(), null, "serviceCallPorts", null, 0, -1, SwcSupervisedEntityNeeds.class, false, false, true, true, false, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_ComMgrUserNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_DiagnosticCommunicationNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_DiagnosticEventNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_EcuStateMgrUserNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_FunctionInhibitionNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_NvBlockNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_ObdControlServiceNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_ObdInfoServiceNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_ObdMonitorServiceNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_ObdPidServiceNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_ObdRatioServiceNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_SupervisedEntityNeedsAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "C2298211-8D95-4692-AC3A-AA43B1DC0E65", "Created", "Wed Sep 20 16:28:25 CEST 2006", "Modified", "Fri Jun 29 17:37:44 CEST 2007", "Id", "-406307269", "Name", "ServiceMapping"});
        this.addAnnotation((ENamedElement)this.roleBasedPPortAssignmentEClass, source, new String[]{"GUID", "80512F5E-4DF6-4897-9D61-BCB3B23A1C9C", "Created", "Thu Sep 06 12:14:23 CEST 2007", "Modified", "Thu Sep 06 19:39:29 CEST 2007", "Id", "-164995922", "Name", "RoleBasedPPortAssignment"});
        this.addAnnotation((ENamedElement)this.getRoleBasedPPortAssignment_Role(), source, new String[]{"GUID", "D7608EEA-E77C-473f-802F-6449BF805C4E", "Id", "-488234086", "Name", "role"});
        this.addAnnotation((ENamedElement)this.roleBasedRPortAssignmentEClass, source, new String[]{"GUID", "3309DA7A-432A-4985-A682-DE5ABBD3CF11", "Created", "Thu Sep 06 12:22:04 CEST 2007", "Modified", "Fri Sep 07 13:59:32 CEST 2007", "Id", "183541267", "Name", "RoleBasedRPortAssignment"});
        this.addAnnotation((ENamedElement)this.getRoleBasedRPortAssignment_Role(), source, new String[]{"GUID", "8F52FD6F-0E2F-4c91-B72D-84EDF5EC984A", "Id", "-1819710129", "Name", "role"});
        this.addAnnotation((ENamedElement)this.swcComMgrUserNeedsEClass, source, new String[]{"GUID", "011DB9CB-5F8A-46bb-AA7C-DF13FE9AB45C", "Created", "Fri Jun 29 17:57:07 CEST 2007", "Modified", "Mon Aug 13 23:41:38 CEST 2007", "Id", "-2114053822", "Name", "SwcComMgrUserNeeds"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticCommunicationNeedsEClass, source, new String[]{"GUID", "E981BE79-118B-4407-9E66-CE08D6679B73", "Created", "Thu Sep 06 14:57:32 CEST 2007", "Modified", "Fri Sep 07 14:10:46 CEST 2007", "Id", "-1716900527", "Name", "SwcDiagnosticCommunicationNeeds"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticEventNeedsEClass, source, new String[]{"GUID", "F8362BB5-5969-4f81-871C-6DC4E58B15FB", "Created", "Mon Aug 13 23:33:49 CEST 2007", "Modified", "Thu Jun 05 00:24:41 CEST 2008", "Id", "-1978933703", "Name", "SwcDiagnosticEventNeeds"});
        this.addAnnotation((ENamedElement)this.swcEcuStateMgrUserNeedsEClass, source, new String[]{"GUID", "9241EC4D-D2C7-44ac-A3F8-A9C6263B29B2", "Created", "Mon Aug 13 23:35:20 CEST 2007", "Modified", "Thu Sep 06 14:18:54 CEST 2007", "Id", "-487673073", "Name", "SwcEcuStateMgrUserNeeds"});
        this.addAnnotation((ENamedElement)this.swcFunctionInhibitionNeedsEClass, source, new String[]{"GUID", "DB6B5B28-298A-4ed9-88F9-456E256EB586", "Created", "Mon Aug 13 23:34:49 CEST 2007", "Modified", "Thu Sep 06 14:27:19 CEST 2007", "Id", "519915014", "Name", "SwcFunctionInhibitionNeeds"});
        this.addAnnotation((ENamedElement)this.swcNvBlockNeedsEClass, source, new String[]{"GUID", "CE3AE8FA-D890-4f6c-9751-E889CCDE1117", "Created", "Tue Sep 19 17:46:43 CEST 2006", "Modified", "Mon Aug 20 11:59:57 CEST 2007", "Id", "135328949", "Name", "SwcNvBlockNeeds"});
        this.addAnnotation((ENamedElement)this.swcObdControlServiceNeedsEClass, source, new String[]{"GUID", "D238E97B-2CD7-4c4d-8753-BA97EA8C2ED5", "Created", "Thu Jun 05 01:23:40 CEST 2008", "Modified", "Thu Jun 05 01:27:37 CEST 2008", "Id", "25687216", "Name", "SwcObdControlServiceNeeds"});
        this.addAnnotation((ENamedElement)this.swcObdInfoServiceNeedsEClass, source, new String[]{"GUID", "3B4492B4-298D-4361-83CD-8B39345F3BDE", "Created", "Thu Jun 05 01:20:57 CEST 2008", "Modified", "Thu Jun 05 01:25:53 CEST 2008", "Id", "-2097944035", "Name", "SwcObdInfoServiceNeeds"});
        this.addAnnotation((ENamedElement)this.swcObdMonitorServiceNeedsEClass, source, new String[]{"GUID", "F76D8ACD-D87E-495a-BA77-EE2F5614328D", "Created", "Thu Jun 05 01:21:57 CEST 2008", "Modified", "Thu Jun 05 01:27:11 CEST 2008", "Id", "500135524", "Name", "SwcObdMonitorServiceNeeds"});
        this.addAnnotation((ENamedElement)this.swcObdPidServiceNeedsEClass, source, new String[]{"GUID", "1EF69CB2-11DD-4f06-835C-29955650BF04", "Created", "Thu Jun 05 00:26:38 CEST 2008", "Modified", "Thu Jun 05 01:16:35 CEST 2008", "Id", "-871086211", "Name", "SwcObdPidServiceNeeds"});
        this.addAnnotation((ENamedElement)this.swcObdRatioServiceNeedsEClass, source, new String[]{"GUID", "06205B1C-D2CB-4c16-B424-C132840E2E77", "Created", "Thu Jun 05 00:22:20 CEST 2008", "Modified", "Thu Jun 05 01:16:39 CEST 2008", "Id", "-6488094", "Name", "SwcObdRatioServiceNeeds"});
        this.addAnnotation((ENamedElement)this.swcSupervisedEntityNeedsEClass, source, new String[]{"GUID", "5CA79EF6-FC71-44a4-A99B-7AE9DDF3D349", "Created", "Fri Jun 29 17:51:04 CEST 2007", "Modified", "Mon Aug 13 23:38:21 CEST 2007", "Id", "613087550", "Name", "SwcSupervisedEntityNeeds"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SERVICE-MAPPING", "xml.namePlural", "SERVICE-MAPPINGS"});
        this.addAnnotation((ENamedElement)this.roleBasedPPortAssignmentEClass, source, new String[]{"mmt.qualifiedName", "RoleBasedPPortAssignment", "xml.tags", "mmt.qualifiedName=\"RoleBasedPPortAssignment\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ROLE-BASED-P-PORT-ASSIGNMENT", "xml.namePlural", "ROLE-BASED-P-PORT-ASSIGNMENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRoleBasedPPortAssignment_PPortPrototype(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RoleBasedPPortAssignment.pPortPrototype\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "RoleBasedPPortAssignment.pPortPrototype", "pureMM.maxOccurs", "1", "xml.name", "P-PORT-PROTOTYPE-REF", "xml.namePlural", "P-PORT-PROTOTYPE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRoleBasedPPortAssignment_Role(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RoleBasedPPortAssignment.role\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "RoleBasedPPortAssignment.role", "pureMM.maxOccurs", "1", "xml.name", "ROLE", "xml.namePlural", "ROLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.roleBasedRPortAssignmentEClass, source, new String[]{"mmt.qualifiedName", "RoleBasedRPortAssignment", "xml.tags", "mmt.qualifiedName=\"RoleBasedRPortAssignment\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ROLE-BASED-R-PORT-ASSIGNMENT", "xml.namePlural", "ROLE-BASED-R-PORT-ASSIGNMENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRoleBasedRPortAssignment_RPortPrototype(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RoleBasedRPortAssignment.rPortPrototype\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "RoleBasedRPortAssignment.rPortPrototype", "pureMM.maxOccurs", "1", "xml.name", "R-PORT-PROTOTYPE-REF", "xml.namePlural", "R-PORT-PROTOTYPE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRoleBasedRPortAssignment_Role(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RoleBasedRPortAssignment.role\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "RoleBasedRPortAssignment.role", "pureMM.maxOccurs", "1", "xml.name", "ROLE", "xml.namePlural", "ROLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcComMgrUserNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcComMgrUserNeeds", "xml.tags", "mmt.qualifiedName=\"SwcComMgrUserNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-COM-MGR-USER-NEEDS", "xml.namePlural", "SWC-COM-MGR-USER-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcComMgrUserNeeds_CallbackPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcComMgrUserNeeds.callbackPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcComMgrUserNeeds.callbackPort", "pureMM.maxOccurs", "-1", "xml.name", "CALLBACK-PORT", "xml.namePlural", "CALLBACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcComMgrUserNeeds_ServiceCallPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcComMgrUserNeeds.serviceCallPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcComMgrUserNeeds.serviceCallPort", "pureMM.maxOccurs", "-1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticCommunicationNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcDiagnosticCommunicationNeeds", "xml.tags", "mmt.qualifiedName=\"SwcDiagnosticCommunicationNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-DIAGNOSTIC-COMMUNICATION-NEEDS", "xml.namePlural", "SWC-DIAGNOSTIC-COMMUNICATION-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticCommunicationNeeds_CallbackPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcDiagnosticCommunicationNeeds.callbackPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcDiagnosticCommunicationNeeds.callbackPort", "pureMM.maxOccurs", "-1", "xml.name", "CALLBACK-PORT", "xml.namePlural", "CALLBACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticCommunicationNeeds_ServiceCallPort(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcDiagnosticCommunicationNeeds.serviceCallPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SwcDiagnosticCommunicationNeeds.serviceCallPort", "pureMM.maxOccurs", "1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticEventNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcDiagnosticEventNeeds", "xml.tags", "mmt.qualifiedName=\"SwcDiagnosticEventNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-DIAGNOSTIC-EVENT-NEEDS", "xml.namePlural", "SWC-DIAGNOSTIC-EVENT-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticEventNeeds_CallbackPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcDiagnosticEventNeeds.callbackPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcDiagnosticEventNeeds.callbackPort", "pureMM.maxOccurs", "-1", "xml.name", "CALLBACK-PORT", "xml.namePlural", "CALLBACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticEventNeeds_ServiceCallPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcDiagnosticEventNeeds.serviceCallPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcDiagnosticEventNeeds.serviceCallPort", "pureMM.maxOccurs", "-1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcEcuStateMgrUserNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcEcuStateMgrUserNeeds", "xml.tags", "mmt.qualifiedName=\"SwcEcuStateMgrUserNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-ECU-STATE-MGR-USER-NEEDS", "xml.namePlural", "SWC-ECU-STATE-MGR-USER-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcEcuStateMgrUserNeeds_ServiceCallPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcEcuStateMgrUserNeeds.serviceCallPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcEcuStateMgrUserNeeds.serviceCallPort", "pureMM.maxOccurs", "-1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcFunctionInhibitionNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcFunctionInhibitionNeeds", "xml.tags", "mmt.qualifiedName=\"SwcFunctionInhibitionNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-FUNCTION-INHIBITION-NEEDS", "xml.namePlural", "SWC-FUNCTION-INHIBITION-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcFunctionInhibitionNeeds_ServiceCallPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcFunctionInhibitionNeeds.serviceCallPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcFunctionInhibitionNeeds.serviceCallPort", "pureMM.maxOccurs", "-1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcNvBlockNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcNvBlockNeeds", "xml.tags", "mmt.qualifiedName=\"SwcNvBlockNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-NV-BLOCK-NEEDS", "xml.namePlural", "SWC-NV-BLOCK-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_CallBackPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcNvBlockNeeds.callBackPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcNvBlockNeeds.callBackPort", "pureMM.maxOccurs", "-1", "xml.name", "CALL-BACK-PORT", "xml.namePlural", "CALL-BACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_DefaultBlock(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcNvBlockNeeds.defaultBlock\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcNvBlockNeeds.defaultBlock", "pureMM.maxOccurs", "1", "xml.name", "DEFAULT-BLOCK-REF", "xml.namePlural", "DEFAULT-BLOCK-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_MirrorBlock(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcNvBlockNeeds.mirrorBlock\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcNvBlockNeeds.mirrorBlock", "pureMM.maxOccurs", "1", "xml.name", "MIRROR-BLOCK-REF", "xml.namePlural", "MIRROR-BLOCK-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_ServiceCallPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcNvBlockNeeds.serviceCallPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcNvBlockNeeds.serviceCallPort", "pureMM.maxOccurs", "-1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcObdControlServiceNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcObdControlServiceNeeds", "xml.tags", "mmt.qualifiedName=\"SwcObdControlServiceNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-OBD-CONTROL-SERVICE-NEEDS", "xml.namePlural", "SWC-OBD-CONTROL-SERVICE-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcObdControlServiceNeeds_CallbackPort(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcObdControlServiceNeeds.callbackPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SwcObdControlServiceNeeds.callbackPort", "pureMM.maxOccurs", "1", "xml.name", "CALLBACK-PORT", "xml.namePlural", "CALLBACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcObdInfoServiceNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcObdInfoServiceNeeds", "xml.tags", "mmt.qualifiedName=\"SwcObdInfoServiceNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-OBD-INFO-SERVICE-NEEDS", "xml.namePlural", "SWC-OBD-INFO-SERVICE-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcObdInfoServiceNeeds_CallbackPort(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcObdInfoServiceNeeds.callbackPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SwcObdInfoServiceNeeds.callbackPort", "pureMM.maxOccurs", "1", "xml.name", "CALLBACK-PORT", "xml.namePlural", "CALLBACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcObdMonitorServiceNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcObdMonitorServiceNeeds", "xml.tags", "mmt.qualifiedName=\"SwcObdMonitorServiceNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-OBD-MONITOR-SERVICE-NEEDS", "xml.namePlural", "SWC-OBD-MONITOR-SERVICE-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcObdMonitorServiceNeeds_CallbackPort(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcObdMonitorServiceNeeds.callbackPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SwcObdMonitorServiceNeeds.callbackPort", "pureMM.maxOccurs", "1", "xml.name", "CALLBACK-PORT", "xml.namePlural", "CALLBACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcObdPidServiceNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcObdPidServiceNeeds", "xml.tags", "mmt.qualifiedName=\"SwcObdPidServiceNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-OBD-PID-SERVICE-NEEDS", "xml.namePlural", "SWC-OBD-PID-SERVICE-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcObdPidServiceNeeds_CallbackPort(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcObdPidServiceNeeds.callbackPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SwcObdPidServiceNeeds.callbackPort", "pureMM.maxOccurs", "1", "xml.name", "CALLBACK-PORT", "xml.namePlural", "CALLBACK-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcObdRatioServiceNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcObdRatioServiceNeeds", "xml.tags", "mmt.qualifiedName=\"SwcObdRatioServiceNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-OBD-RATIO-SERVICE-NEEDS", "xml.namePlural", "SWC-OBD-RATIO-SERVICE-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcObdRatioServiceNeeds_ServiceCallPort(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcObdRatioServiceNeeds.serviceCallPort\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "SwcObdRatioServiceNeeds.serviceCallPort", "pureMM.maxOccurs", "1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcSupervisedEntityNeedsEClass, source, new String[]{"mmt.qualifiedName", "SwcSupervisedEntityNeeds", "xml.tags", "mmt.qualifiedName=\"SwcSupervisedEntityNeeds\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SWC-SUPERVISED-ENTITY-NEEDS", "xml.namePlural", "SWC-SUPERVISED-ENTITY-NEEDSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcSupervisedEntityNeeds_ServiceCallPorts(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"SwcSupervisedEntityNeeds.serviceCallPort\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "SwcSupervisedEntityNeeds.serviceCallPort", "pureMM.maxOccurs", "-1", "xml.name", "SERVICE-CALL-PORT", "xml.namePlural", "SERVICE-CALL-PORTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.roleBasedPPortAssignmentEClass, source, new String[]{"name", "ROLE-BASED-P-PORT-ASSIGNMENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRoleBasedPPortAssignment_PPortPrototype(), source, new String[]{"name", "P-PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRoleBasedPPortAssignment_Role(), source, new String[]{"name", "ROLE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.roleBasedRPortAssignmentEClass, source, new String[]{"name", "ROLE-BASED-R-PORT-ASSIGNMENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRoleBasedRPortAssignment_RPortPrototype(), source, new String[]{"name", "R-PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRoleBasedRPortAssignment_Role(), source, new String[]{"name", "ROLE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcComMgrUserNeedsEClass, source, new String[]{"name", "SWC-COM-MGR-USER-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcComMgrUserNeeds_CallbackPorts(), source, new String[]{"name", "CALLBACK-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcComMgrUserNeeds_ServiceCallPorts(), source, new String[]{"name", "SERVICE-CALL-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticCommunicationNeedsEClass, source, new String[]{"name", "SWC-DIAGNOSTIC-COMMUNICATION-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticCommunicationNeeds_CallbackPorts(), source, new String[]{"name", "CALLBACK-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticCommunicationNeeds_ServiceCallPort(), source, new String[]{"name", "SERVICE-CALL-PORT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticEventNeedsEClass, source, new String[]{"name", "SWC-DIAGNOSTIC-EVENT-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticEventNeeds_CallbackPorts(), source, new String[]{"name", "CALLBACK-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticEventNeeds_ServiceCallPorts(), source, new String[]{"name", "SERVICE-CALL-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcEcuStateMgrUserNeedsEClass, source, new String[]{"name", "SWC-ECU-STATE-MGR-USER-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcEcuStateMgrUserNeeds_ServiceCallPorts(), source, new String[]{"name", "SERVICE-CALL-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcFunctionInhibitionNeedsEClass, source, new String[]{"name", "SWC-FUNCTION-INHIBITION-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcFunctionInhibitionNeeds_ServiceCallPorts(), source, new String[]{"name", "SERVICE-CALL-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcNvBlockNeedsEClass, source, new String[]{"name", "SWC-NV-BLOCK-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_CallBackPorts(), source, new String[]{"name", "CALL-BACK-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_DefaultBlock(), source, new String[]{"name", "DEFAULT-BLOCK-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_MirrorBlock(), source, new String[]{"name", "MIRROR-BLOCK-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_ServiceCallPorts(), source, new String[]{"name", "SERVICE-CALL-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcObdControlServiceNeedsEClass, source, new String[]{"name", "SWC-OBD-CONTROL-SERVICE-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcObdControlServiceNeeds_CallbackPort(), source, new String[]{"name", "CALLBACK-PORT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcObdInfoServiceNeedsEClass, source, new String[]{"name", "SWC-OBD-INFO-SERVICE-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcObdInfoServiceNeeds_CallbackPort(), source, new String[]{"name", "CALLBACK-PORT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcObdMonitorServiceNeedsEClass, source, new String[]{"name", "SWC-OBD-MONITOR-SERVICE-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcObdMonitorServiceNeeds_CallbackPort(), source, new String[]{"name", "CALLBACK-PORT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcObdPidServiceNeedsEClass, source, new String[]{"name", "SWC-OBD-PID-SERVICE-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcObdPidServiceNeeds_CallbackPort(), source, new String[]{"name", "CALLBACK-PORT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcObdRatioServiceNeedsEClass, source, new String[]{"name", "SWC-OBD-RATIO-SERVICE-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcObdRatioServiceNeeds_ServiceCallPort(), source, new String[]{"name", "SERVICE-CALL-PORT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swcSupervisedEntityNeedsEClass, source, new String[]{"name", "SWC-SUPERVISED-ENTITY-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwcSupervisedEntityNeeds_ServiceCallPorts(), source, new String[]{"name", "SERVICE-CALL-PORTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.roleBasedPPortAssignmentEClass, source, new String[]{"documentation", "This class specifies an assignment of a role to a particular P-Port. This port must contain a service which is inside of the component and called by outside entity in order to handle a particular issue (e.g. a communication event). This is often named as callback.\r\n"});
        this.addAnnotation((ENamedElement)this.getRoleBasedPPortAssignment_PPortPrototype(), source, new String[]{"documentation", "Port which provides the software component to be connected to an AUTOSAR Service."});
        this.addAnnotation((ENamedElement)this.getRoleBasedPPortAssignment_Role(), source, new String[]{"documentation", "This is the role of the assigned Port in the given context.\r\n\r\nThe value must be a name of a PortInterface as standardized in the Software Specification of the related AUTOSAR Service."});
        this.addAnnotation((ENamedElement)this.roleBasedRPortAssignmentEClass, source, new String[]{"documentation", "This class specifies an assignment of a role to a particular R-Port. This port must contain a service which is outside of the component and called by the component in order to handle a particular issue (e.g. a communication event).\r\n"});
        this.addAnnotation((ENamedElement)this.getRoleBasedRPortAssignment_RPortPrototype(), source, new String[]{"documentation", "Port which requires the software component to be connected to an AUTOSAR Service."});
        this.addAnnotation((ENamedElement)this.getRoleBasedRPortAssignment_Role(), source, new String[]{"documentation", "This is the role the assigned Port in given context.\r\n\r\nThe value must be a name of a  PortInterface as standardized in  Software Specification of the related AUTOSAR Service."});
        this.addAnnotation((ENamedElement)this.swcComMgrUserNeedsEClass, source, new String[]{"documentation", "Specialization of the ComMgrUserNeeds for the case it is owned by a SoftwareComponentType."});
        this.addAnnotation((ENamedElement)this.getSwcComMgrUserNeeds_CallbackPorts(), source, new String[]{"documentation", "This is the provided service to be called by the Com Manager to handle a particular communication channel of the Com Manager.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification ot Com Manager\" (e.g. something like \"modeRequester\")\r\n"});
        this.addAnnotation((ENamedElement)this.getSwcComMgrUserNeeds_ServiceCallPorts(), source, new String[]{"documentation", "This is the expected service to be called by the software component to handle a particular Com Manger event.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification ot Com Manager\" (e.g. something like \"modeRequester\")"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticCommunicationNeedsEClass, source, new String[]{"documentation", "Specialization of the DiagnosticCommunicationNeeds for the case it is owned by a SoftwareComponentType."});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticCommunicationNeeds_CallbackPorts(), source, new String[]{"documentation", "This is the provided service to be called by the Diagnostic Communication Manager to handle a particular Diagnostic Communication..\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification ot Diagnostic Communication Manager\" (e.g. something like \"CallBakReqTreatment\").\r\n"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticCommunicationNeeds_ServiceCallPort(), source, new String[]{"documentation", "This is the expected service to be called by the software component to handle a particular Diagnostic Communkication.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification ot Diagnostic Communication Manager\" (e.g. something like \"DcmService\")"});
        this.addAnnotation((ENamedElement)this.swcDiagnosticEventNeedsEClass, source, new String[]{"documentation", "Specialization of the DiagnosticEventNeeds for the case it is owned by a SoftwareComponentType. It allows to navigate to all ports associated with this diagnostic event.\r\n\r\nNote that there may be further ports to communicate with the DEM Service (e.g. setting the operation cycle type)  which are not included in this mapping because they are independent of the diagnostic event. "});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticEventNeeds_CallbackPorts(), source, new String[]{"documentation", "This aggregation specifies the expected service to be called by the Diagnostic Event Manager.\r\n\r\nThe value of the role attribute in the aggregated class must be be a name of a PortInterface as standardized in \"Specification of Diagnostics Event Manager\", for example CallbackInitMonitorForEvent.\r\n"});
        this.addAnnotation((ENamedElement)this.getSwcDiagnosticEventNeeds_ServiceCallPorts(), source, new String[]{"documentation", "This is the expected service to be called by the software component to handle a particular diagnostic event.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification of Diagnostics Event Manager\", for example \"DiagnosticMonitor\"."});
        this.addAnnotation((ENamedElement)this.swcEcuStateMgrUserNeedsEClass, source, new String[]{"documentation", "Specialization of the EcuStateMgrUserNeeds for the case it is owned  by a SoftwareComponentType. It allows to navigate to all the ports which are used by this component to put requests for this \"user\".\r\n\r\nNote that there are further ports which a component can use to obtain various information from the ECU State Manager. These ports are not included in the mapping because they will be implemented as pure function calls which can be called independently of being a certain\"user\".\r\n\r\nNote that the AUTOSAR ECU State Manager does not support callbacks to services provided by users of ECU State Manger, therefore there is not property \"callbackPort\"."});
        this.addAnnotation((ENamedElement)this.getSwcEcuStateMgrUserNeeds_ServiceCallPorts(), source, new String[]{"documentation", "This is the expected service to be called by the software component to handle a particular User of the Ecu State Manager..\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification ot ECU State Manager\". Examples are \"CurrentMode\", \"ShutdownTarget\", \"BootTarget\" , \"ApplicationMode\", \"StateRequest\".\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.swcFunctionInhibitionNeedsEClass, source, new String[]{"documentation", "Specialization of the FunctionInhibitionNeeds for the case it is owned by a SoftwareComponentType.\r\n\r\nNote that the Function Inhibit Manger does not provide callbacks to services provided by software components. Therefoer there is no property \"callbackPort\"."});
        this.addAnnotation((ENamedElement)this.getSwcFunctionInhibitionNeeds_ServiceCallPorts(), source, new String[]{"documentation", "This is the expected service to be called by the software component to handle a particular inhibition of a particular function. This inhibition is controlled by the FunctionInhibitManager.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification ot Function Inhibition Manager\". e-g- \"FunctionInhibition\".\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.swcNvBlockNeedsEClass, source, new String[]{"documentation", "Specialization of NvBlockNeeds for the case it is owned by a SoftwareComponentType. It specifies all mappings to elements of the SoftwareComponentType concerning a single Nv block. Note that the mapping is the same for all instances of a SoftwareComponentType (because the code depends on it).\r\n\r\nNote that the block size is not specified here because\r\n- it can be derived from the associated PerInstanceMemory size (implementatiion specific) in case of implicit storage/restauration of the block\r\n- if can be derived from the array size passed via the correponding operations of the Service Interface in case of explicit storage/restauration of the block"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_CallBackPorts(), source, new String[]{"documentation", "This is the provided service to be called by the NvRam Manager to handle a particular NvBlock.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification of NVRAM Manager\" (e.g. something like \"NvMNotify\")\r\n"});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_DefaultBlock(), source, new String[]{"documentation", "Defines the ROM default for an Nv block. This data can be also calibratable."});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_MirrorBlock(), source, new String[]{"documentation", "Defines the RAM mirror in case of a permanant Nv block."});
        this.addAnnotation((ENamedElement)this.getSwcNvBlockNeeds_ServiceCallPorts(), source, new String[]{"documentation", "This is the expected service to be called by the software component to handle a particular NvBlock.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification of NVRAM Manager\" (e.g. something like \"NvMAdministration\" , \"NvMService\")"});
        this.addAnnotation((ENamedElement)this.swcObdControlServiceNeedsEClass, source, new String[]{"documentation", "Specialization of the ObdControlServiceNeeds for the case it is owned by a SoftwareComponentType. It allows to navigate to all ports associated with this particular TID."});
        this.addAnnotation((ENamedElement)this.getSwcObdControlServiceNeeds_CallbackPort(), source, new String[]{"documentation", "Port which must be used for reading the test result data provided by trhe Software Component."});
        this.addAnnotation((ENamedElement)this.swcObdInfoServiceNeedsEClass, source, new String[]{"documentation", "Specialization of the ObdInfoServiceNeeds for the case it is owned by a SoftwareComponentType. It allows to navigate to all ports associated with this particular InfoType."});
        this.addAnnotation((ENamedElement)this.getSwcObdInfoServiceNeeds_CallbackPort(), source, new String[]{"documentation", "Port which must be used for reading this InfoType."});
        this.addAnnotation((ENamedElement)this.swcObdMonitorServiceNeedsEClass, source, new String[]{"documentation", "Specialization of the ObdMonitorServiceNeeds for the case it is owned by a SoftwareComponentType. It allows to navigate to all ports associated with this particular ratio monitoring."});
        this.addAnnotation((ENamedElement)this.getSwcObdMonitorServiceNeeds_CallbackPort(), source, new String[]{"documentation", "Port which must be used for reading the TID data provided by trhe Software Component."});
        this.addAnnotation((ENamedElement)this.swcObdPidServiceNeedsEClass, source, new String[]{"documentation", "Specialization of the ObdPidServiceNeeds for the case it is owned by a SoftwareComponentType. It allows to navigate to all ports associated with this particular PID."});
        this.addAnnotation((ENamedElement)this.getSwcObdPidServiceNeeds_CallbackPort(), source, new String[]{"documentation", "This aggregation specifies the expected port to be called by the Diagnostic Event Manager or Diagnosticc Communication Manager in order to read the PID value."});
        this.addAnnotation((ENamedElement)this.swcObdRatioServiceNeedsEClass, source, new String[]{"documentation", "Specialization of the ObdRatioServicetNeeds for the case it is owned by a SoftwareComponentType. It allows to navigate to all ports associated with this element."});
        this.addAnnotation((ENamedElement)this.getSwcObdRatioServiceNeeds_ServiceCallPort(), source, new String[]{"documentation", "Via calls from this port the Software Component is expected to handle a particular ratio monitoring."});
        this.addAnnotation((ENamedElement)this.swcSupervisedEntityNeedsEClass, source, new String[]{"documentation", "Specialization of SupervisedEntityNeeds for the case it is owned by a SoftwareComponentType."});
        this.addAnnotation((ENamedElement)this.getSwcSupervisedEntityNeeds_ServiceCallPorts(), source, new String[]{"documentation", "This is the expected service to be called by the software component to handle a supervised entity by the watchdoc.\r\n\r\nThe value of the role attribute in the aggregated class  must be a name of a PortInterface as standardized in \"Specification of Watchdog Manager\" (e.g. something like \"WdgMService\")"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.roleBasedPPortAssignmentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.roleBasedRPortAssignmentEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ComMgrUserNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ComMgrUserNeeds";
        this.addAnnotation((ENamedElement)this.swcComMgrUserNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcComMgrUserNeeds->ComMgrUserNeeds", "GUID", "9C46292B-EB16-4a58-B1A7-2C45838CF9CB", "Id", "-1428439909", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DiagnosticCommunicationNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_DiagnosticCommunicationNeeds";
        this.addAnnotation((ENamedElement)this.swcDiagnosticCommunicationNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcDiagnosticCommunicationNeeds->DiagnosticCommunicationNeeds", "GUID", "2A2E3032-5B0A-46b9-85BA-EB831D020277", "Id", "-1727596569", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DiagnosticEventNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_DiagnosticEventNeeds";
        this.addAnnotation((ENamedElement)this.swcDiagnosticEventNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcDiagnosticEventNeeds->DiagnosticEventNeeds", "GUID", "8830C088-ED91-461b-8DE4-87D7B8174D97", "Id", "-1615779024", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_EcuStateMgrUserNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_EcuStateMgrUserNeeds";
        this.addAnnotation((ENamedElement)this.swcEcuStateMgrUserNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcEcuStateMgrUserNeeds->EcuStateMgrUserNeeds", "GUID", "F8D062DF-EC60-4a5d-A85B-183C44C28268", "Id", "-1457647865", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_FunctionInhibitionNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_FunctionInhibitionNeeds";
        this.addAnnotation((ENamedElement)this.swcFunctionInhibitionNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcFunctionInhibitionNeeds->FunctionInhibitionNeeds", "GUID", "85EEABE8-A00D-424b-B3D2-1E42EB5315D9", "Id", "617541494", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_NvBlockNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_NvBlockNeeds";
        this.addAnnotation((ENamedElement)this.swcNvBlockNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcNvBlockNeeds->NvBlockNeeds", "GUID", "A2D4367A-33CD-4906-8774-13735D5D6D9F", "Id", "1253993321", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ObdControlServiceNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ObdControlServiceNeeds";
        this.addAnnotation((ENamedElement)this.swcObdControlServiceNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcObdControlServiceNeeds->ObdControlServiceNeeds", "GUID", "B85C5E85-AE14-438f-9E01-83038DC48CC9", "Id", "397174407", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ObdInfoServiceNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ObdInfoServiceNeeds";
        this.addAnnotation((ENamedElement)this.swcObdInfoServiceNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcObdInfoServiceNeeds->ObdInfoServiceNeeds", "GUID", "35D8EDA3-22C7-421a-85D1-8A5FB0CAE7E0", "Id", "916043983", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ObdMonitorServiceNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ObdMonitorServiceNeeds";
        this.addAnnotation((ENamedElement)this.swcObdMonitorServiceNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcObdMonitorServiceNeeds->ObdMonitorServiceNeeds", "GUID", "F9F4700E-FA65-4f59-AFEA-1C78FB33DFBE", "Id", "1976798155", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ObdPidServiceNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ObdPidServiceNeeds";
        this.addAnnotation((ENamedElement)this.swcObdPidServiceNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcObdPidServiceNeeds->ObdPidServiceNeeds", "GUID", "99AA38F2-9F1D-47b5-8AB8-46818C39629E", "Id", "-1346696664", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ObdRatioServiceNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ObdRatioServiceNeeds";
        this.addAnnotation((ENamedElement)this.swcObdRatioServiceNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcObdRatioServiceNeeds->ObdRatioServiceNeeds", "GUID", "25E3B274-C23A-4981-B63C-7C5C59D8A75E", "Id", "1212619299", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SupervisedEntityNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_SupervisedEntityNeeds";
        this.addAnnotation((ENamedElement)this.swcSupervisedEntityNeedsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwcSupervisedEntityNeeds->SupervisedEntityNeeds", "GUID", "301E824D-BDA7-4fb0-9584-12A65871D35E", "Id", "-505707545", "xml.sequenceOffset", "0"});
    }
}

