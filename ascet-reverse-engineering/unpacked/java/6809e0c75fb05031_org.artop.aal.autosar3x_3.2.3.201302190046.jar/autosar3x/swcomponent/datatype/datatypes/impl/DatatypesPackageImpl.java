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
 *  org.eclipse.emf.ecore.EGenericType
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EValidator
 *  org.eclipse.emf.ecore.EValidator$Descriptor
 *  org.eclipse.emf.ecore.EValidator$Registry
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar3x.swcomponent.datatype.datatypes.impl;

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
import autosar3x.swcomponent.datatype.datatypes.ARLimit;
import autosar3x.swcomponent.datatype.datatypes.ArrayElement;
import autosar3x.swcomponent.datatype.datatypes.ArrayType;
import autosar3x.swcomponent.datatype.datatypes.BooleanType;
import autosar3x.swcomponent.datatype.datatypes.CharType;
import autosar3x.swcomponent.datatype.datatypes.CompositeType;
import autosar3x.swcomponent.datatype.datatypes.DataPrototype;
import autosar3x.swcomponent.datatype.datatypes.Datatype;
import autosar3x.swcomponent.datatype.datatypes.DatatypesFactory;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.IntegerType;
import autosar3x.swcomponent.datatype.datatypes.OpaqueType;
import autosar3x.swcomponent.datatype.datatypes.PrimitiveType;
import autosar3x.swcomponent.datatype.datatypes.Range;
import autosar3x.swcomponent.datatype.datatypes.RealType;
import autosar3x.swcomponent.datatype.datatypes.RealTypeEncodingEnum;
import autosar3x.swcomponent.datatype.datatypes.RecordElement;
import autosar3x.swcomponent.datatype.datatypes.RecordType;
import autosar3x.swcomponent.datatype.datatypes.StringType;
import autosar3x.swcomponent.datatype.datatypes.util.DatatypesValidator;
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
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class DatatypesPackageImpl
extends EPackageImpl
implements DatatypesPackage {
    private EClass arLimitEClass = null;
    private EClass arrayElementEClass = null;
    private EClass booleanTypeEClass = null;
    private EClass primitiveTypeEClass = null;
    private EClass datatypeEClass = null;
    private EClass compositeTypeEClass = null;
    private EClass opaqueTypeEClass = null;
    private EClass rangeEClass = null;
    private EClass recordElementEClass = null;
    private EClass stringTypeEClass = null;
    private EClass integerTypeEClass = null;
    private EClass realTypeEClass = null;
    private EClass charTypeEClass = null;
    private EClass arrayTypeEClass = null;
    private EClass recordTypeEClass = null;
    private EClass dataPrototypeEClass = null;
    private EEnum realTypeEncodingEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private DatatypesPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/swc/d/d", (EFactory)DatatypesFactory.eINSTANCE);
    }

    public static DatatypesPackage init() {
        if (isInited) {
            return (DatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/d");
        }
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/d/d") : new DatatypesPackageImpl());
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
        ServicemappingPackageImpl theServicemappingPackage = (ServicemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sm") instanceof ServicemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sm") : ServicemappingPackage.eINSTANCE);
        ComponentlocalcalprmPackageImpl theComponentlocalcalprmPackage = (ComponentlocalcalprmPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/clc") instanceof ComponentlocalcalprmPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/clc") : ComponentlocalcalprmPackage.eINSTANCE);
        ServicesPackageImpl theServicesPackage = (ServicesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/s") instanceof ServicesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/s") : ServicesPackage.eINSTANCE);
        SwcimplementationPackageImpl theSwcimplementationPackage = (SwcimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/si") instanceof SwcimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/si") : SwcimplementationPackage.eINSTANCE);
        ConstantsPackageImpl theConstantsPackage = (ConstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c") instanceof ConstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c") : ConstantsPackage.eINSTANCE);
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
        theDatatypesPackage.createPackageContents();
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
        theServicemappingPackage.createPackageContents();
        theComponentlocalcalprmPackage.createPackageContents();
        theServicesPackage.createPackageContents();
        theSwcimplementationPackage.createPackageContents();
        theConstantsPackage.createPackageContents();
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
        theDatatypesPackage.initializePackageContents();
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
        theServicemappingPackage.initializePackageContents();
        theComponentlocalcalprmPackage.initializePackageContents();
        theServicesPackage.initializePackageContents();
        theSwcimplementationPackage.initializePackageContents();
        theConstantsPackage.initializePackageContents();
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
        EValidator.Registry.INSTANCE.put((Object)theDatatypesPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return DatatypesValidator.INSTANCE;
            }
        });
        theDatatypesPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/swc/d/d", (Object)theDatatypesPackage);
        return theDatatypesPackage;
    }

    public EClass getARLimit() {
        return this.arLimitEClass;
    }

    public EAttribute getARLimit_IntervalType() {
        return (EAttribute)this.arLimitEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getARLimit_Value() {
        return (EAttribute)this.arLimitEClass.getEStructuralFeatures().get(1);
    }

    public EClass getArrayElement() {
        return this.arrayElementEClass;
    }

    public EReference getArrayElement_ArrayType() {
        return (EReference)this.arrayElementEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getArrayElement_MaxNumberOfElements() {
        return (EAttribute)this.arrayElementEClass.getEStructuralFeatures().get(1);
    }

    public EClass getBooleanType() {
        return this.booleanTypeEClass;
    }

    public EClass getPrimitiveType() {
        return this.primitiveTypeEClass;
    }

    public EReference getPrimitiveType_SwDataDefProps() {
        return (EReference)this.primitiveTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDatatype() {
        return this.datatypeEClass;
    }

    public EClass getCompositeType() {
        return this.compositeTypeEClass;
    }

    public EClass getOpaqueType() {
        return this.opaqueTypeEClass;
    }

    public EAttribute getOpaqueType_NumberOfBits() {
        return (EAttribute)this.opaqueTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getRange() {
        return this.rangeEClass;
    }

    public EReference getRange_LowerLimit() {
        return (EReference)this.rangeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRange_UpperLimit() {
        return (EReference)this.rangeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getRecordElement() {
        return this.recordElementEClass;
    }

    public EReference getRecordElement_RecordType() {
        return (EReference)this.recordElementEClass.getEStructuralFeatures().get(0);
    }

    public EClass getStringType() {
        return this.stringTypeEClass;
    }

    public EAttribute getStringType_Encoding() {
        return (EAttribute)this.stringTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getStringType_MaxNumberOfChars() {
        return (EAttribute)this.stringTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getIntegerType() {
        return this.integerTypeEClass;
    }

    public EClass getRealType() {
        return this.realTypeEClass;
    }

    public EAttribute getRealType_AllowNaN() {
        return (EAttribute)this.realTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getRealType_Encoding() {
        return (EAttribute)this.realTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCharType() {
        return this.charTypeEClass;
    }

    public EAttribute getCharType_Encoding() {
        return (EAttribute)this.charTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getArrayType() {
        return this.arrayTypeEClass;
    }

    public EReference getArrayType_Element() {
        return (EReference)this.arrayTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getRecordType() {
        return this.recordTypeEClass;
    }

    public EReference getRecordType_Elements() {
        return (EReference)this.recordTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDataPrototype() {
        return this.dataPrototypeEClass;
    }

    public EReference getDataPrototype_SwDataDefProps() {
        return (EReference)this.dataPrototypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getDataPrototype_Type() {
        return (EReference)this.dataPrototypeEClass.getEStructuralFeatures().get(1);
    }

    public EEnum getRealTypeEncodingEnum() {
        return this.realTypeEncodingEnumEEnum;
    }

    public DatatypesFactory getDatatypesFactory() {
        return (DatatypesFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.arLimitEClass = this.createEClass(0);
        this.createEAttribute(this.arLimitEClass, 6);
        this.createEAttribute(this.arLimitEClass, 7);
        this.arrayElementEClass = this.createEClass(1);
        this.createEReference(this.arrayElementEClass, 21);
        this.createEAttribute(this.arrayElementEClass, 22);
        this.booleanTypeEClass = this.createEClass(2);
        this.primitiveTypeEClass = this.createEClass(3);
        this.createEReference(this.primitiveTypeEClass, 19);
        this.datatypeEClass = this.createEClass(4);
        this.compositeTypeEClass = this.createEClass(5);
        this.opaqueTypeEClass = this.createEClass(6);
        this.createEAttribute(this.opaqueTypeEClass, 20);
        this.rangeEClass = this.createEClass(7);
        this.createEReference(this.rangeEClass, 4);
        this.createEReference(this.rangeEClass, 5);
        this.recordElementEClass = this.createEClass(8);
        this.createEReference(this.recordElementEClass, 21);
        this.stringTypeEClass = this.createEClass(9);
        this.createEAttribute(this.stringTypeEClass, 20);
        this.createEAttribute(this.stringTypeEClass, 21);
        this.integerTypeEClass = this.createEClass(10);
        this.realTypeEClass = this.createEClass(11);
        this.createEAttribute(this.realTypeEClass, 22);
        this.createEAttribute(this.realTypeEClass, 23);
        this.charTypeEClass = this.createEClass(12);
        this.createEAttribute(this.charTypeEClass, 20);
        this.arrayTypeEClass = this.createEClass(13);
        this.createEReference(this.arrayTypeEClass, 19);
        this.recordTypeEClass = this.createEClass(14);
        this.createEReference(this.recordTypeEClass, 20);
        this.dataPrototypeEClass = this.createEClass(15);
        this.createEReference(this.dataPrototypeEClass, 19);
        this.createEReference(this.dataPrototypeEClass, 20);
        this.realTypeEncodingEnumEEnum = this.createEEnum(16);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("datatypes");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/swc/d/d");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        GdatatypesPackage theGdatatypesPackage = (GdatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/d");
        LocalconstraintsPackage theLocalconstraintsPackage = (LocalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        DatadefpropertiesPackage theDatadefpropertiesPackage = (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ddp");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i");
        GdataprototypesPackage theGdataprototypesPackage = (GdataprototypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/dp");
        this.arLimitEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.arLimitEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGARLimit());
        this.arrayElementEClass.getESuperTypes().add((Object)this.getDataPrototype());
        this.booleanTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.primitiveTypeEClass.getESuperTypes().add((Object)this.getDatatype());
        this.primitiveTypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationPrimitiveDataType());
        this.datatypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.datatypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationDataType());
        this.compositeTypeEClass.getESuperTypes().add((Object)this.getDatatype());
        this.compositeTypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationCompositeDataType());
        this.opaqueTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.rangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.recordElementEClass.getESuperTypes().add((Object)this.getDataPrototype());
        this.recordElementEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGApplicationRecordElement());
        this.stringTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.integerTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.integerTypeEClass.getESuperTypes().add((Object)this.getRange());
        this.realTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.realTypeEClass.getESuperTypes().add((Object)this.getRange());
        this.charTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.arrayTypeEClass.getESuperTypes().add((Object)this.getCompositeType());
        this.recordTypeEClass.getESuperTypes().add((Object)this.getCompositeType());
        this.recordTypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationRecordDataType());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGAutosarDataPrototype());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGDataPrototype());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGApplicationCompositeElementDataPrototype());
        this.initEClass(this.arLimitEClass, ARLimit.class, "ARLimit", false, false, true);
        this.initEAttribute(this.getARLimit_IntervalType(), (EClassifier)theLocalconstraintsPackage.getIntervalTypeEnum(), "intervalType", "CLOSED", 0, 1, ARLimit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getARLimit_Value(), (EClassifier)thePrimitivetypesPackage.getString(), "value", "", 0, 1, ARLimit.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.arrayElementEClass, ArrayElement.class, "ArrayElement", false, false, true);
        this.initEReference(this.getArrayElement_ArrayType(), (EClassifier)this.getArrayType(), this.getArrayType_Element(), "arrayType", null, 0, 1, ArrayElement.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getArrayElement_MaxNumberOfElements(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxNumberOfElements", "0", 0, 1, ArrayElement.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.booleanTypeEClass, BooleanType.class, "BooleanType", false, false, true);
        EOperation op = this.addEOperation(this.booleanTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesTRUEFALSE", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        EGenericType g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.primitiveTypeEClass, PrimitiveType.class, "PrimitiveType", true, false, true);
        this.initEReference(this.getPrimitiveType_SwDataDefProps(), (EClassifier)theDatadefpropertiesPackage.getSwDataDefProps(), null, "swDataDefProps", null, 0, 1, PrimitiveType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.datatypeEClass, Datatype.class, "Datatype", true, false, true);
        op = this.addEOperation(this.datatypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesSetOclAny", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.compositeTypeEClass, CompositeType.class, "CompositeType", true, false, true);
        this.initEClass(this.opaqueTypeEClass, OpaqueType.class, "OpaqueType", false, false, true);
        this.initEAttribute(this.getOpaqueType_NumberOfBits(), (EClassifier)thePrimitivetypesPackage.getInteger(), "numberOfBits", "0", 0, 1, OpaqueType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.opaqueTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "numberOfBits0", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.rangeEClass, Range.class, "Range", true, false, true);
        this.initEReference(this.getRange_LowerLimit(), (EClassifier)this.getARLimit(), null, "lowerLimit", null, 0, 1, Range.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRange_UpperLimit(), (EClassifier)this.getARLimit(), null, "upperLimit", null, 0, 1, Range.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.rangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesInRangeSetFloat", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        op = this.addEOperation(this.rangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "lowerLimitupperLimit", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.recordElementEClass, RecordElement.class, "RecordElement", false, false, true);
        this.initEReference(this.getRecordElement_RecordType(), (EClassifier)this.getRecordType(), this.getRecordType_Elements(), "recordType", null, 0, 1, RecordElement.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.stringTypeEClass, StringType.class, "StringType", false, false, true);
        this.initEAttribute(this.getStringType_Encoding(), (EClassifier)thePrimitivetypesPackage.getString(), "encoding", "", 0, 1, StringType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getStringType_MaxNumberOfChars(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxNumberOfChars", "0", 0, 1, StringType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.stringTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "maxLength0", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.integerTypeEClass, IntegerType.class, "IntegerType", false, false, true);
        op = this.addEOperation(this.integerTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesvaluesInRangeintersectInteger", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.realTypeEClass, RealType.class, "RealType", false, false, true);
        this.initEAttribute(this.getRealType_AllowNaN(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "allowNaN", "false", 0, 1, RealType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRealType_Encoding(), (EClassifier)this.getRealTypeEncodingEnum(), "encoding", "SINGLE", 0, 1, RealType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.realTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defallRealsSetRealdefinedbyencoding", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        op = this.addEOperation(this.realTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesvaluesInRangeintersectallReals", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.charTypeEClass, CharType.class, "CharType", false, false, true);
        this.initEAttribute(this.getCharType_Encoding(), (EClassifier)thePrimitivetypesPackage.getString(), "encoding", "", 0, 1, CharType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.charTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "TBDnamingconventionforencoding", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.arrayTypeEClass, ArrayType.class, "ArrayType", false, false, true);
        this.initEReference(this.getArrayType_Element(), (EClassifier)this.getArrayElement(), this.getArrayElement_ArrayType(), "element", null, 0, 1, ArrayType.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.arrayTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "numberOfElements0", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.recordTypeEClass, RecordType.class, "RecordType", false, false, true);
        this.initEReference(this.getRecordType_Elements(), (EClassifier)this.getRecordElement(), this.getRecordElement_RecordType(), "elements", null, 0, -1, RecordType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.dataPrototypeEClass, DataPrototype.class, "DataPrototype", true, false, true);
        this.initEReference(this.getDataPrototype_SwDataDefProps(), (EClassifier)theDatadefpropertiesPackage.getSwDataDefProps(), null, "swDataDefProps", null, 0, 1, DataPrototype.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataPrototype_Type(), (EClassifier)this.getDatatype(), null, "type", null, 0, 1, DataPrototype.class, false, false, true, false, true, false, true, false, true);
        this.initEEnum(this.realTypeEncodingEnumEEnum, RealTypeEncodingEnum.class, "RealTypeEncodingEnum");
        this.addEEnumLiteral(this.realTypeEncodingEnumEEnum, RealTypeEncodingEnum.SINGLE);
        this.addEEnumLiteral(this.realTypeEncodingEnumEEnum, RealTypeEncodingEnum.DOUBLE);
        this.createResource("http://autosar.org/3.2.1/autosar3x/swc/d/d");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_DataPrototypeAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_PrimitiveTypeAnnotations();
        this.createTaggedValuesOfGeneralization_DatatypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_RangeAnnotations();
        this.createTaggedValuesOfGeneralization_CompositeTypeAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "1D020A77-14BB-4697-91D0-5A0329247C19", "Created", "Wed May 12 10:28:24 CEST 2004", "Modified", "Fri Apr 15 21:05:50 CEST 2005", "Id", "707438285", "Name", "Datatypes"});
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"GUID", "466E4801-76E2-42ba-82BC-1D3969F95D7F", "Created", "Wed Jan 24 14:51:14 CET 2007", "Modified", "Wed Jan 24 14:52:02 CET 2007", "Id", "-1192156390", "Name", "ARLimit"});
        this.addAnnotation((ENamedElement)this.getARLimit_IntervalType(), source, new String[]{"GUID", "DAB95A9C-CBC0-41cd-9698-C94B3CA6FCBC", "Id", "769369081", "Name", "intervalType"});
        this.addAnnotation((ENamedElement)this.getARLimit_Value(), source, new String[]{"GUID", "C40CE886-89CB-4064-91C9-2171BBA19107", "Id", "1177389254", "Name", "value"});
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"GUID", "AE434591-1829-4f5d-92AB-5883D9F8654B", "Created", "Fri Sep 29 18:41:03 CEST 2006", "Modified", "Mon Sep 03 15:13:24 CEST 2007", "Id", "1159548063", "Name", "ArrayElement"});
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"GUID", "9F2FC0CB-431C-4afa-A308-F345A79FD1E2", "Id", "870231074", "Name", "maxNumberOfElements"});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"GUID", "033BC600-54FC-4cbd-A786-5A65B12B14AF", "Created", "Mon Feb 23 00:47:32 CET 2004", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Id", "765165578", "Name", "BooleanType"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"GUID", "7D5DBD9C-54B1-4085-9A45-064DFAC83FA8", "Created", "Tue Feb 17 07:52:56 CET 2004", "Modified", "Tue May 16 10:15:53 CEST 2006", "Id", "1626350036", "Name", "PrimitiveType"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"GUID", "25355E8E-7679-4851-97FD-10EBA8F3B931", "Created", "Mon Feb 16 09:01:40 CET 2004", "Modified", "Wed Jun 21 10:14:20 CEST 2006", "Id", "660744191", "Name", "Datatype"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"GUID", "EFE6966E-B5BD-475d-A1F9-55C81F4269BC", "Created", "Thu Feb 19 16:26:41 CET 2004", "Modified", "Thu Aug 09 10:29:03 CEST 2007", "Id", "631326121", "Name", "CompositeType"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"GUID", "0D2350ED-78A6-41a3-96F5-06382CAB2C50", "Created", "Sun May 02 19:02:18 CEST 2004", "Modified", "Thu Jun 23 16:23:09 CEST 2005", "Id", "714341094", "Name", "OpaqueType"});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"GUID", "1A9FE4E5-DB83-482b-B476-6BF08F727F7E", "Id", "720223855", "Name", "numberOfBits"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"GUID", "E4B27CF1-0865-4bfa-9835-308B7DA9E2EA", "Created", "Sun May 02 19:59:17 CEST 2004", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Id", "1596921014", "Name", "Range"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum, source, new String[]{"GUID", "436E3E43-E90D-4362-AAC1-3DDAC8BC63EA", "Created", "Thu Aug 02 20:26:25 CEST 2007", "Modified", "Thu Aug 02 20:27:09 CEST 2007", "Id", "-1217919180", "Name", "RealTypeEncodingEnum"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum.getELiterals().get(0), source, new String[]{"GUID", "B47BE967-3243-4c79-84F1-B44411F10E5A", "Id", "1189253250", "Name", "single"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum.getELiterals().get(1), source, new String[]{"GUID", "EF71BDC6-462C-4e65-9653-4529DEBA6D1B", "Id", "438842075", "Name", "double"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"GUID", "99547850-73D7-42b3-AB0B-1EA1125C5D52", "Created", "Mon Nov 28 13:15:56 CET 2005", "Modified", "Wed Aug 23 12:07:44 CEST 2006", "Id", "-1241121027", "Name", "RecordElement"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"GUID", "94D517F8-6681-4d02-88C7-4E37DFEF5D56", "Created", "Sun May 02 18:56:55 CEST 2004", "Modified", "Wed Dec 07 11:49:50 CET 2005", "Id", "-311209158", "Name", "StringType"});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"GUID", "4E89B605-8A33-4763-93F5-8FA199775C6E", "Id", "-2037662413", "Name", "encoding"});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"GUID", "5A019904-AFF3-4e9c-9792-4169BCE54AEF", "Id", "-1068755976", "Name", "maxNumberOfChars"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"GUID", "DA7F0DC1-A985-4de9-A9FE-2197C99E9114", "Created", "Tue Feb 17 08:00:40 CET 2004", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Id", "189451771", "Name", "IntegerType"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"GUID", "B52D42CF-AF6E-49c8-9AD3-43A61A836E32", "Created", "Tue Feb 17 08:02:14 CET 2004", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Id", "150320928", "Name", "RealType"});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"GUID", "91EE06DA-8A15-499c-B56F-AB088F6CA1C0", "Id", "516289102", "Name", "allowNaN"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"GUID", "912B61AF-837B-41e0-9736-F094AF1AE634", "Id", "2109206689", "Name", "encoding"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"GUID", "25F947CE-6B8E-48e5-8DE0-7532BF3FC068", "Created", "Tue Feb 17 09:27:34 CET 2004", "Modified", "Thu Jun 30 07:28:28 CEST 2005", "Id", "-1197631188", "Name", "CharType"});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"GUID", "54C367A7-E1DD-46d2-841B-D5183CA62404", "Id", "2052158653", "Name", "encoding"});
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"GUID", "E9A40D08-10B0-492c-858A-986808073962", "Created", "Tue Feb 17 07:53:22 CET 2004", "Modified", "Thu Jul 21 16:16:26 CEST 2005", "Id", "429550149", "Name", "ArrayType"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"GUID", "08B3F740-9055-416c-A274-D5ECC29AFC0B", "Created", "Tue Feb 17 08:12:31 CET 2004", "Modified", "Thu Jul 21 16:16:26 CEST 2005", "Id", "-839013449", "Name", "RecordType"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"GUID", "11167B2D-0629-40e5-B1E4-AEB76114D0D1", "Created", "Wed May 12 13:40:54 CEST 2004", "Modified", "Fri Jul 07 15:40:31 CEST 2006", "Id", "-710790268", "Name", "DataPrototype"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DATATYPES", "xml.namePlural", "DATATYPESS"});
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"mmt.qualifiedName", "ARLimit", "xml.tags", "mmt.qualifiedName=\"ARLimit\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "AR-LIMIT", "xml.namePlural", "AR-LIMITS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getARLimit_IntervalType(), source, new String[]{"mmt.qualifiedName", "ARLimit.intervalType", "xml.tags", "xml.attribute=\"true\";mmt.qualifiedName=\"ARLimit.intervalType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "xml.attribute", "true", "pureMM.maxOccurs", "1", "xml.name", "INTERVAL-TYPE", "xml.namePlural", "INTERVAL-TYPES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.getARLimit_Value(), source, new String[]{"xml.typeWrapperElement", "false", "pureMM.minOccurs", "1", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";mmt.qualifiedName=\"ARLimit.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.roleWrapperElement", "false", "pureMM.maxOccurs", "1", "xml.typeElement", "false", "xml.roleElement", "false", "mmt.qualifiedName", "ARLimit.value", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"mmt.qualifiedName", "ArrayElement", "xml.tags", "mmt.qualifiedName=\"ArrayElement\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ARRAY-ELEMENT", "xml.namePlural", "ARRAY-ELEMENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ArrayElement.maxNumberOfElements\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ArrayElement.maxNumberOfElements", "pureMM.maxOccurs", "1", "xml.name", "MAX-NUMBER-OF-ELEMENTS", "xml.namePlural", "MAX-NUMBER-OF-ELEMENTSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"mmt.qualifiedName", "BooleanType", "xml.tags", "java.instanceClass=\"java.lang.Boolean\";mmt.qualifiedName=\"BooleanType\"", "java.instanceClass", "java.lang.Boolean", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "BOOLEAN-TYPE", "xml.namePlural", "BOOLEAN-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"mmt.qualifiedName", "PrimitiveType", "xml.tags", "mmt.qualifiedName=\"PrimitiveType\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PRIMITIVE-TYPE", "xml.namePlural", "PRIMITIVE-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getPrimitiveType_SwDataDefProps(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"PrimitiveType.swDataDefProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "PrimitiveType.swDataDefProps", "pureMM.maxOccurs", "1", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"mmt.qualifiedName", "Datatype", "xml.tags", "mmt.qualifiedName=\"Datatype\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DATATYPE", "xml.namePlural", "DATATYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"mmt.qualifiedName", "CompositeType", "xml.tags", "mmt.qualifiedName=\"CompositeType\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPOSITE-TYPE", "xml.namePlural", "COMPOSITE-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"mmt.qualifiedName", "OpaqueType", "xml.tags", "java.instanceClass=\"java.lang.String\";mmt.qualifiedName=\"OpaqueType\"", "java.instanceClass", "java.lang.String", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "OPAQUE-TYPE", "xml.namePlural", "OPAQUE-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"OpaqueType.numberOfBits\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "OpaqueType.numberOfBits", "pureMM.maxOccurs", "1", "xml.name", "NUMBER-OF-BITS", "xml.namePlural", "NUMBER-OF-BITSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"mmt.qualifiedName", "Range", "xml.tags", "mmt.qualifiedName=\"Range\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "RANGE", "xml.namePlural", "RANGES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRange_LowerLimit(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Range.lowerLimit\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "Range.lowerLimit", "pureMM.maxOccurs", "1", "xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRange_UpperLimit(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Range.upperLimit\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "Range.upperLimit", "pureMM.maxOccurs", "1", "xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum, source, new String[]{"mmt.qualifiedName", "RealTypeEncodingEnum", "xml.tags", "mmt.qualifiedName=\"RealTypeEncodingEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "REAL-TYPE-ENCODING-ENUM", "xml.namePlural", "REAL-TYPE-ENCODING-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "RealTypeEncodingEnum.single", "xml.tags", "mmt.qualifiedName=\"RealTypeEncodingEnum.single\"", "xml.name", "SINGLE", "xml.namePlural", "SINGLES"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "RealTypeEncodingEnum.double", "xml.tags", "mmt.qualifiedName=\"RealTypeEncodingEnum.double\"", "xml.name", "DOUBLE", "xml.namePlural", "DOUBLES"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"mmt.qualifiedName", "RecordElement", "xml.tags", "mmt.qualifiedName=\"RecordElement\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "RECORD-ELEMENT", "xml.namePlural", "RECORD-ELEMENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"mmt.qualifiedName", "StringType", "xml.tags", "java.instanceClass=\"java.lang.String\";mmt.qualifiedName=\"StringType\"", "java.instanceClass", "java.lang.String", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "STRING-TYPE", "xml.namePlural", "STRING-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"StringType.encoding\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "StringType.encoding", "pureMM.maxOccurs", "1", "xml.name", "ENCODING", "xml.namePlural", "ENCODINGS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"StringType.maxNumberOfChars\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "StringType.maxNumberOfChars", "pureMM.maxOccurs", "1", "xml.name", "MAX-NUMBER-OF-CHARS", "xml.namePlural", "MAX-NUMBER-OF-CHARSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"mmt.qualifiedName", "IntegerType", "xml.tags", "java.instanceClass=\"java.lang.Integer\";mmt.qualifiedName=\"IntegerType\"", "java.instanceClass", "java.lang.Integer", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "INTEGER-TYPE", "xml.namePlural", "INTEGER-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"mmt.qualifiedName", "RealType", "xml.tags", "java.instanceClass=\"java.lang.Float\";mmt.qualifiedName=\"RealType\"", "java.instanceClass", "java.lang.Float", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "REAL-TYPE", "xml.namePlural", "REAL-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"mmt.qualifiedName", "RealType.allowNaN", "xml.tags", "xml.name=\"ALLOW-NAN\";mmt.qualifiedName=\"RealType.allowNaN\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "ALLOW-NAN", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.namePlural", "ALLOW-NA-NS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"RealType.encoding\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "RealType.encoding", "pureMM.maxOccurs", "1", "xml.name", "ENCODING", "xml.namePlural", "ENCODINGS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"mmt.qualifiedName", "CharType", "xml.tags", "java.instanceClass=\"java.lang.Character\";mmt.qualifiedName=\"CharType\"", "java.instanceClass", "java.lang.Character", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CHAR-TYPE", "xml.namePlural", "CHAR-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"CharType.encoding\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "CharType.encoding", "pureMM.maxOccurs", "1", "xml.name", "ENCODING", "xml.namePlural", "ENCODINGS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"mmt.qualifiedName", "ArrayType", "xml.tags", "mmt.qualifiedName=\"ArrayType\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ARRAY-TYPE", "xml.namePlural", "ARRAY-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getArrayType_Element(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ArrayType.element\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ArrayType.element", "pureMM.maxOccurs", "1", "xml.name", "ELEMENT", "xml.namePlural", "ELEMENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"mmt.qualifiedName", "RecordType", "xml.tags", "mmt.qualifiedName=\"RecordType\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "RECORD-TYPE", "xml.namePlural", "RECORD-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRecordType_Elements(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"element.RecordType\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "element.RecordType", "pureMM.maxOccurs", "-1", "xml.name", "ELEMENT", "xml.namePlural", "ELEMENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"mmt.qualifiedName", "DataPrototype", "xml.tags", "mmt.qualifiedName=\"DataPrototype\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DATA-PROTOTYPE", "xml.namePlural", "DATA-PROTOTYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_SwDataDefProps(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"DataPrototype.swDataDefProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "DataPrototype.swDataDefProps", "pureMM.maxOccurs", "1", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_Type(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"DataPrototype.type\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "DataPrototype.type", "pureMM.maxOccurs", "1", "xml.name", "TYPE-TREF", "xml.namePlural", "TYPE-TREFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"name", "AR-LIMIT", "kind", "simple", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getARLimit_IntervalType(), source, new String[]{"name", "INTERVAL-TYPE", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.getARLimit_Value(), source, new String[]{"name", ":0", "kind", "simple", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"name", "ARRAY-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"name", "MAX-NUMBER-OF-ELEMENTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"name", "BOOLEAN-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"name", "PRIMITIVE-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPrimitiveType_SwDataDefProps(), source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"name", "DATATYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"name", "COMPOSITE-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"name", "OPAQUE-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"name", "NUMBER-OF-BITS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"name", "RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRange_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRange_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"name", "RECORD-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"name", "STRING-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"name", "ENCODING", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"name", "MAX-NUMBER-OF-CHARS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"name", "INTEGER-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"name", "REAL-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"name", "ALLOW-NAN", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"name", "ENCODING", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"name", "CHAR-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"name", "ENCODING", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"name", "ARRAY-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getArrayType_Element(), source, new String[]{"name", "ELEMENT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"name", "RECORD-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getRecordType_Elements(), source, new String[]{"name", "ELEMENTS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"name", "DATA-PROTOTYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_SwDataDefProps(), source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_Type(), source, new String[]{"name", "TYPE-TREF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DataPrototypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_DataPrototype";
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ArrayElement->DataPrototype", "GUID", "16357359-5458-4be4-856B-493496B1E222", "Id", "-1830248475", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RecordElement->DataPrototype", "GUID", "2B15E6BB-C153-42f7-AAD2-4ECA037DD8CC", "Id", "1500795251", "xml.sequenceOffset", "0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"documentation", "The maximum number of elements that the array can contain."});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"documentation", "This datatype represents a set containing the logical value true and false\r\n"});
        this.addAnnotation((ENamedElement)((EOperation)this.booleanTypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.booleanTypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"documentation", "A primitive datatype consists of a set of allowed values."});
        this.addAnnotation((ENamedElement)this.getPrimitiveType_SwDataDefProps(), source, new String[]{"documentation", "This represents the swDataDefProps of the PrimitiveType."});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"documentation", "Abstract base class for user defined (and AUTOSAR predefined) datatypes."});
        this.addAnnotation((ENamedElement)((EOperation)this.datatypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.datatypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"documentation", "Abstract base class for all data types composed of other data types."});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"documentation", "This Datatype represents an array of exactly numberOfBits bits.  It is called \"opaque\" because this array of bits should be transported \"as is\" by the AUTOSAR RTE.\r\n"});
        this.addAnnotation((ENamedElement)((EOperation)this.opaqueTypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.opaqueTypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"documentation", "The number of bits that are used to make up the opaque type."});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"documentation", "Abstract class for specifying a range from lower limit to upper limit. "});
        this.addAnnotation((ENamedElement)((EOperation)this.rangeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.rangeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)((EOperation)this.rangeEClass.getEOperations().get(1)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.rangeEClass.getEOperations().get(1)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getRange_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getRange_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum, source, new String[]{"documentation", "Denotes the encoding / precision of a real type"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"documentation", "An element in a record. "});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"documentation", "This represents a string of characters out of the character-set specified by the given encoding.\r\nThe maxNumberOfChars is the maximal number of characters which can be stored within the String. The actual number of bytes that is required to represent the string can be calculated out of maxNumberOfChars and the encoding:\r\n\r\nbytes required to represent the string =\r\nmaxNumberOfChars * (max bytes per character using the given encoding) + 1 (terminating null)\r\n"});
        this.addAnnotation((ENamedElement)((EOperation)this.stringTypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.stringTypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"documentation", "Specification of character encoding, e. g. ISO-8859-1."});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"documentation", "The maxNumberOfChars is the maximum number of characters that can be stored in the string. "});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"documentation", "This data-type are the integers in the interval defined by the Range."});
        this.addAnnotation((ENamedElement)((EOperation)this.integerTypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.integerTypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"documentation", "This represents a range of reals that can be represented by either the IEEE 754 \"Single Precision\" (encoding is \"Single\") or IEEE 754 \"Double Precision\" (encoding is \"Double\") arithmetic.\r\nNote that these standards include representations for +infinity, -infinity, QNaN and SNaN.  When defining a RealType, one must indicate whether these special values are allowed or not. \r\n\r\n\r\n"});
        this.addAnnotation((ENamedElement)((EOperation)this.realTypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.realTypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)((EOperation)this.realTypeEClass.getEOperations().get(1)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.realTypeEClass.getEOperations().get(1)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"documentation", "Denotes whether this data type permits for \"not a number\" being represented by the type"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"documentation", "Denotes the precision of the RealType"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"documentation", "This represents a character belonging to the character-set specified in the encoding.  The semantics are built-in into this datatype."});
        this.addAnnotation((ENamedElement)((EOperation)this.charTypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.charTypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"documentation", "Specification of character encoding, e.g. ISO-8859-1"});
        this.addAnnotation((ENamedElement)((EOperation)this.arrayTypeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.arrayTypeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getArrayType_Element(), source, new String[]{"documentation", "This represents a formal representation of the ArrayElement within ArrayType."});
        this.addAnnotation((ENamedElement)this.getRecordType_Elements(), source, new String[]{"documentation", "This represents the collection of RecordElements that make up the RecordType."});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"documentation", "Base class for prototypical roles of a datatype."});
        this.addAnnotation((ENamedElement)this.getDataPrototype_SwDataDefProps(), source, new String[]{"documentation", "This element describes all of the distinguishing characteristics of a data object (variable or parameter). <swDataDefProps> is used in every case, where characteristics of data objects must be given.\r\n\r\nIt is inevitable that not all of the inputs are useful all of the time. Hence, the process definition or the DCI has the task of implementing limitations.\r\n\r\nThe <swDataDefProps> describe the characteristics of all axes:\r\n\r\n* The characteristics of the argument axes (abscissas) are described in <swCalprmAxisSet> .\r\n\r\n* The characteristics of the value axis are described directly in <swDataDefProps> ."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"Stereotype", "atpMaxMultiplicity"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"Stereotype", "atpPrototype"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_Type(), source, new String[]{"Stereotype", "isOfType"});
    }

    protected void createTaggedValuesOfGeneralization_PrimitiveTypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_PrimitiveType";
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BooleanType->PrimitiveType", "GUID", "EADD8654-57AA-4ae2-8A5E-135D6A682339", "Id", "1253389466", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "OpaqueType->PrimitiveType", "GUID", "148C092C-3E14-40d9-8BC9-0E8F62B79223", "Id", "-1988865619", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "StringType->PrimitiveType", "GUID", "27C6F22A-A297-472c-B453-651B1986A9B5", "Id", "-955944996", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "IntegerType->PrimitiveType", "GUID", "FAF88942-A52D-4cb9-9116-9F0AFD4E825B", "Id", "-1564151088", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RealType->PrimitiveType", "GUID", "7B088FF0-6842-4646-84DE-7127B3374C68", "Id", "-99592834", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CharType->PrimitiveType", "GUID", "560DAD22-510F-4f3f-A029-4D7D0A0E97E7", "Id", "187579175", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DatatypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_Datatype";
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "PrimitiveType->Datatype", "GUID", "ECC77238-0C92-4ebe-919B-5FBC9573F9FD", "Id", "602907555", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompositeType->Datatype", "GUID", "EDA79A89-1D9C-47f6-B839-57031E8ED9CC", "Id", "-680622719", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "Datatype->ARElement", "GUID", "1685F822-225D-410e-9694-2F40A026A5FF", "Id", "755312288", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_RangeAnnotations() {
        String source = "TaggedValuesOfGeneralization_Range";
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "IntegerType->Range", "GUID", "3801D1EF-91A8-45d0-A20C-4F85BD8C5B07", "Id", "745918757", "xml.sequenceOffset", "1"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RealType->Range", "GUID", "34891DE3-AC07-4710-8028-4897C1251946", "Id", "-86179454", "xml.sequenceOffset", "1"});
    }

    protected void createTaggedValuesOfGeneralization_CompositeTypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompositeType";
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ArrayType->CompositeType", "GUID", "84D22C56-80B9-4d97-847D-DF2465D7DF36", "Id", "-21753893", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "RecordType->CompositeType", "GUID", "6F50F70C-366C-4814-AB89-34FC1BC0092C", "Id", "2074446720", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "DataPrototype->Identifiable", "GUID", "57B4A8D7-2C93-413e-844F-53E4D27D4BD8", "Id", "1359952852", "xml.sequenceOffset", "0"});
    }
}

