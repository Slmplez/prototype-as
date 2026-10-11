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
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar3x.commonstructure.datadefproperties.impl;

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
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesFactory;
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.SwArraysize;
import autosar3x.commonstructure.datadefproperties.SwBitRepresentation;
import autosar3x.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar3x.commonstructure.datadefproperties.SwComparisonVariables;
import autosar3x.commonstructure.datadefproperties.SwDataDefProps;
import autosar3x.commonstructure.datadefproperties.SwDataDependency;
import autosar3x.commonstructure.datadefproperties.SwDataDependencyArgs;
import autosar3x.commonstructure.datadefproperties.SwGenericAxisParamValue;
import autosar3x.commonstructure.datadefproperties.SwImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwPointer;
import autosar3x.commonstructure.datadefproperties.SwSemaphore;
import autosar3x.commonstructure.datadefproperties.SwTextProps;
import autosar3x.commonstructure.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar3x.commonstructure.datadefproperties.SwVariableRef;
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
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class DatadefpropertiesPackageImpl
extends EPackageImpl
implements DatadefpropertiesPackage {
    private EClass swDataDefPropsEClass = null;
    private EClass swArraysizeEClass = null;
    private EClass swDataDependencyEClass = null;
    private EClass swDataDependencyArgsEClass = null;
    private EClass swVariableRefEClass = null;
    private EClass swBitRepresentationEClass = null;
    private EClass swTextPropsEClass = null;
    private EClass swComparisonVariablesEClass = null;
    private EClass swSemaphoreEClass = null;
    private EClass swPointerEClass = null;
    private EClass swGenericAxisParamValueEClass = null;
    private EEnum swCalibrationAccessEnumEEnum = null;
    private EEnum swImplPolicyEnumEEnum = null;
    private EEnum swVariableAccessImplPolicyEnumEEnum = null;
    private EDataType displayFormatStringEDataType = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private DatadefpropertiesPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/cs/ddp", (EFactory)DatadefpropertiesFactory.eINSTANCE);
    }

    public static DatadefpropertiesPackage init() {
        if (isInited) {
            return (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ddp");
        }
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/cs/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/cs/ddp") : new DatadefpropertiesPackageImpl());
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
        theDatadefpropertiesPackage.createPackageContents();
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
        theDatadefpropertiesPackage.initializePackageContents();
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
        theDatadefpropertiesPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/cs/ddp", (Object)theDatadefpropertiesPackage);
        return theDatadefpropertiesPackage;
    }

    public EClass getSwDataDefProps() {
        return this.swDataDefPropsEClass;
    }

    public EReference getSwDataDefProps_Annotations() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDefProps_SwAddrMethod() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDefProps_BaseType() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwDataDefProps_SwBitRepresentation() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getSwDataDefProps_SwCalibrationAccess() {
        return (EAttribute)this.swDataDefPropsEClass.getEStructuralFeatures().get(4);
    }

    public EReference getSwDataDefProps_SwValueBlockSize() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSwDataDefProps_SwCalprmAxisSet() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(6);
    }

    public EReference getSwDataDefProps_SwTextProps() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(7);
    }

    public EReference getSwDataDefProps_SwCodeSyntax() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(8);
    }

    public EReference getSwDataDefProps_CompuMethod() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(9);
    }

    public EReference getSwDataDefProps_DataConstr() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(10);
    }

    public EReference getSwDataDefProps_SwDataDependency() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(11);
    }

    public EAttribute getSwDataDefProps_DisplayFormat() {
        return (EAttribute)this.swDataDefPropsEClass.getEStructuralFeatures().get(12);
    }

    public EReference getSwDataDefProps_InvalidValue() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(13);
    }

    public EReference getSwDataDefProps_SwHostVariable() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(14);
    }

    public EAttribute getSwDataDefProps_SwImplPolicy() {
        return (EAttribute)this.swDataDefPropsEClass.getEStructuralFeatures().get(15);
    }

    public EReference getSwDataDefProps_SwPointer() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(16);
    }

    public EReference getSwDataDefProps_SwRecordLayout() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(17);
    }

    public EReference getSwDataDefProps_Unit() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(18);
    }

    public EAttribute getSwDataDefProps_SwVariableAccessImplPolicy() {
        return (EAttribute)this.swDataDefPropsEClass.getEStructuralFeatures().get(19);
    }

    public EClass getSwArraysize() {
        return this.swArraysizeEClass;
    }

    public EReference getSwArraysize_Vfs() {
        return (EReference)this.swArraysizeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwArraysize_Vs() {
        return (EAttribute)this.swArraysizeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwDataDependency() {
        return this.swDataDependencyEClass;
    }

    public EReference getSwDataDependency_SwDataDefProps() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDependency_SwDataDependencyFormula() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDependency_SwDataDependencyArgs() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwDataDependencyArgs() {
        return this.swDataDependencyArgsEClass;
    }

    public EReference getSwDataDependencyArgs_SwDataDependency() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDependencyArgs_SwCalprms() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDependencyArgs_SwVariableRefs() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwVariableRef() {
        return this.swVariableRefEClass;
    }

    public EReference getSwVariableRef_SwDataDefProps() {
        return (EReference)this.swVariableRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwVariableRef_SwVariableRef() {
        return (EReference)this.swVariableRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwBitRepresentation() {
        return this.swBitRepresentationEClass;
    }

    public EReference getSwBitRepresentation_SwDataDefProps() {
        return (EReference)this.swBitRepresentationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwBitRepresentation_BitPosition() {
        return (EAttribute)this.swBitRepresentationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwBitRepresentation_NumberOfBits() {
        return (EAttribute)this.swBitRepresentationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwTextProps() {
        return this.swTextPropsEClass;
    }

    public EReference getSwTextProps_SwDataDefProps() {
        return (EReference)this.swTextPropsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwTextProps_SwMaxTextSize() {
        return (EReference)this.swTextPropsEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwTextProps_SwFillCharacter() {
        return (EAttribute)this.swTextPropsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwComparisonVariables() {
        return this.swComparisonVariablesEClass;
    }

    public EReference getSwComparisonVariables_SwVariableRefs() {
        return (EReference)this.swComparisonVariablesEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwSemaphore() {
        return this.swSemaphoreEClass;
    }

    public EReference getSwSemaphore_SwVariableRef() {
        return (EReference)this.swSemaphoreEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwPointer() {
        return this.swPointerEClass;
    }

    public EReference getSwPointer_SwDataDefProps() {
        return (EReference)this.swPointerEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwGenericAxisParamValue() {
        return this.swGenericAxisParamValueEClass;
    }

    public EReference getSwGenericAxisParamValue_SwGenericAxisParam() {
        return (EReference)this.swGenericAxisParamValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwGenericAxisParamValue_Vfs() {
        return (EReference)this.swGenericAxisParamValueEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwGenericAxisParamValue_Vs() {
        return (EAttribute)this.swGenericAxisParamValueEClass.getEStructuralFeatures().get(2);
    }

    public EEnum getSwCalibrationAccessEnum() {
        return this.swCalibrationAccessEnumEEnum;
    }

    public EEnum getSwImplPolicyEnum() {
        return this.swImplPolicyEnumEEnum;
    }

    public EEnum getSwVariableAccessImplPolicyEnum() {
        return this.swVariableAccessImplPolicyEnumEEnum;
    }

    public EDataType getDisplayFormatString() {
        return this.displayFormatStringEDataType;
    }

    public DatadefpropertiesFactory getDatadefpropertiesFactory() {
        return (DatadefpropertiesFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.swDataDefPropsEClass = this.createEClass(0);
        this.createEReference(this.swDataDefPropsEClass, 7);
        this.createEReference(this.swDataDefPropsEClass, 8);
        this.createEReference(this.swDataDefPropsEClass, 9);
        this.createEReference(this.swDataDefPropsEClass, 10);
        this.createEAttribute(this.swDataDefPropsEClass, 11);
        this.createEReference(this.swDataDefPropsEClass, 12);
        this.createEReference(this.swDataDefPropsEClass, 13);
        this.createEReference(this.swDataDefPropsEClass, 14);
        this.createEReference(this.swDataDefPropsEClass, 15);
        this.createEReference(this.swDataDefPropsEClass, 16);
        this.createEReference(this.swDataDefPropsEClass, 17);
        this.createEReference(this.swDataDefPropsEClass, 18);
        this.createEAttribute(this.swDataDefPropsEClass, 19);
        this.createEReference(this.swDataDefPropsEClass, 20);
        this.createEReference(this.swDataDefPropsEClass, 21);
        this.createEAttribute(this.swDataDefPropsEClass, 22);
        this.createEReference(this.swDataDefPropsEClass, 23);
        this.createEReference(this.swDataDefPropsEClass, 24);
        this.createEReference(this.swDataDefPropsEClass, 25);
        this.createEAttribute(this.swDataDefPropsEClass, 26);
        this.swArraysizeEClass = this.createEClass(1);
        this.createEReference(this.swArraysizeEClass, 4);
        this.createEAttribute(this.swArraysizeEClass, 5);
        this.swDataDependencyEClass = this.createEClass(2);
        this.createEReference(this.swDataDependencyEClass, 4);
        this.createEReference(this.swDataDependencyEClass, 5);
        this.createEReference(this.swDataDependencyEClass, 6);
        this.swDataDependencyArgsEClass = this.createEClass(3);
        this.createEReference(this.swDataDependencyArgsEClass, 4);
        this.createEReference(this.swDataDependencyArgsEClass, 5);
        this.createEReference(this.swDataDependencyArgsEClass, 6);
        this.swVariableRefEClass = this.createEClass(4);
        this.createEReference(this.swVariableRefEClass, 4);
        this.createEReference(this.swVariableRefEClass, 5);
        this.swBitRepresentationEClass = this.createEClass(5);
        this.createEReference(this.swBitRepresentationEClass, 4);
        this.createEAttribute(this.swBitRepresentationEClass, 5);
        this.createEAttribute(this.swBitRepresentationEClass, 6);
        this.swTextPropsEClass = this.createEClass(6);
        this.createEReference(this.swTextPropsEClass, 4);
        this.createEReference(this.swTextPropsEClass, 5);
        this.createEAttribute(this.swTextPropsEClass, 6);
        this.swComparisonVariablesEClass = this.createEClass(7);
        this.createEReference(this.swComparisonVariablesEClass, 4);
        this.swSemaphoreEClass = this.createEClass(8);
        this.createEReference(this.swSemaphoreEClass, 4);
        this.swPointerEClass = this.createEClass(9);
        this.createEReference(this.swPointerEClass, 4);
        this.swGenericAxisParamValueEClass = this.createEClass(10);
        this.createEReference(this.swGenericAxisParamValueEClass, 4);
        this.createEReference(this.swGenericAxisParamValueEClass, 5);
        this.createEAttribute(this.swGenericAxisParamValueEClass, 6);
        this.swCalibrationAccessEnumEEnum = this.createEEnum(11);
        this.swImplPolicyEnumEEnum = this.createEEnum(12);
        this.swVariableAccessImplPolicyEnumEEnum = this.createEEnum(13);
        this.displayFormatStringEDataType = this.createEDataType(14);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("datadefproperties");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/cs/ddp");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        GdatadefpropertiesPackage theGdatadefpropertiesPackage = (GdatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp");
        AnnotationPackage theAnnotationPackage = (AnnotationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/a");
        AuxillaryobjectsPackage theAuxillaryobjectsPackage = (AuxillaryobjectsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ao");
        BasetypesPackage theBasetypesPackage = (BasetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bt");
        CalibrationparameterPackage theCalibrationparameterPackage = (CalibrationparameterPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/cp");
        ComputationmethodPackage theComputationmethodPackage = (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm");
        GlobalconstraintsPackage theGlobalconstraintsPackage = (GlobalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/gc");
        ConstantsPackage theConstantsPackage = (ConstantsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u");
        ValuemodelPackage theValuemodelPackage = (ValuemodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        DatadictionaryproxiesPackage theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/dp");
        AxisPackage theAxisPackage = (AxisPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/a");
        this.swDataDefPropsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swDataDefPropsEClass.getESuperTypes().add((Object)theGdatadefpropertiesPackage.getGSwDataDefPropsConditional());
        this.swArraysizeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swDataDependencyEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swDataDependencyArgsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swVariableRefEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swBitRepresentationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swTextPropsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swComparisonVariablesEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swSemaphoreEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swPointerEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swGenericAxisParamValueEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.swDataDefPropsEClass, SwDataDefProps.class, "SwDataDefProps", false, false, true);
        this.initEReference(this.getSwDataDefProps_Annotations(), (EClassifier)theAnnotationPackage.getAnnotation(), theAnnotationPackage.getAnnotation_SwDataDefProps(), "annotations", null, 0, -1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwAddrMethod(), (EClassifier)theAuxillaryobjectsPackage.getSwAddrMethod(), null, "swAddrMethod", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_BaseType(), (EClassifier)theBasetypesPackage.getSwBaseType(), null, "baseType", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwBitRepresentation(), (EClassifier)this.getSwBitRepresentation(), this.getSwBitRepresentation_SwDataDefProps(), "swBitRepresentation", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefProps_SwCalibrationAccess(), (EClassifier)this.getSwCalibrationAccessEnum(), "swCalibrationAccess", "READ-ONLY", 0, 1, SwDataDefProps.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwValueBlockSize(), (EClassifier)this.getSwArraysize(), null, "swValueBlockSize", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwCalprmAxisSet(), (EClassifier)theCalibrationparameterPackage.getSwCalprmAxisSet(), theCalibrationparameterPackage.getSwCalprmAxisSet_SwDataDefProps(), "swCalprmAxisSet", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwTextProps(), (EClassifier)this.getSwTextProps(), this.getSwTextProps_SwDataDefProps(), "swTextProps", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwCodeSyntax(), (EClassifier)theAuxillaryobjectsPackage.getSwCodeSyntax(), null, "swCodeSyntax", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_CompuMethod(), (EClassifier)theComputationmethodPackage.getCompuMethod(), null, "compuMethod", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_DataConstr(), (EClassifier)theGlobalconstraintsPackage.getDataConstr(), null, "dataConstr", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwDataDependency(), (EClassifier)this.getSwDataDependency(), this.getSwDataDependency_SwDataDefProps(), "swDataDependency", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefProps_DisplayFormat(), (EClassifier)this.getDisplayFormatString(), "displayFormat", "", 0, 1, SwDataDefProps.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_InvalidValue(), (EClassifier)theConstantsPackage.getPrimitiveSpecification(), null, "invalidValue", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwHostVariable(), (EClassifier)this.getSwVariableRef(), this.getSwVariableRef_SwDataDefProps(), "swHostVariable", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefProps_SwImplPolicy(), (EClassifier)this.getSwImplPolicyEnum(), "swImplPolicy", "MEASUREMENT-POINT", 0, 1, SwDataDefProps.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwPointer(), (EClassifier)this.getSwPointer(), null, "swPointer", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwRecordLayout(), (EClassifier)theAuxillaryobjectsPackage.getSwRecordLayout(), null, "swRecordLayout", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getSwDataDefProps_SwVariableAccessImplPolicy(), (EClassifier)this.getSwVariableAccessImplPolicyEnum(), "swVariableAccessImplPolicy", "OPTIMIZED", 0, 1, SwDataDefProps.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swArraysizeEClass, SwArraysize.class, "SwArraysize", false, false, true);
        this.initEReference(this.getSwArraysize_Vfs(), (EClassifier)theValuemodelPackage.getVf(), null, "vfs", null, 0, -1, SwArraysize.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwArraysize_Vs(), (EClassifier)thePrimitivetypesPackage.getString(), "vs", "", 0, -1, SwArraysize.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swDataDependencyEClass, SwDataDependency.class, "SwDataDependency", false, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwDataDependency(), "swDataDefProps", null, 0, 1, SwDataDependency.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDependencyFormula(), (EClassifier)theComputationmethodPackage.getCompuGenericMath(), theComputationmethodPackage.getCompuGenericMath_SwDataDependency(), "swDataDependencyFormula", null, 0, 1, SwDataDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDependencyArgs(), (EClassifier)this.getSwDataDependencyArgs(), this.getSwDataDependencyArgs_SwDataDependency(), "swDataDependencyArgs", null, 0, 1, SwDataDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swDataDependencyArgsEClass, SwDataDependencyArgs.class, "SwDataDependencyArgs", false, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwDataDependency(), (EClassifier)this.getSwDataDependency(), this.getSwDataDependency_SwDataDependencyArgs(), "swDataDependency", null, 0, 1, SwDataDependencyArgs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwCalprms(), (EClassifier)theDatadictionaryproxiesPackage.getSwCalprmRefProxy(), null, "swCalprms", null, 0, -1, SwDataDependencyArgs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwVariableRefs(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRefs", null, 0, -1, SwDataDependencyArgs.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swVariableRefEClass, SwVariableRef.class, "SwVariableRef", false, false, true);
        this.initEReference(this.getSwVariableRef_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwHostVariable(), "swDataDefProps", null, 0, 1, SwVariableRef.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwVariableRef_SwVariableRef(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRef", null, 0, 1, SwVariableRef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swBitRepresentationEClass, SwBitRepresentation.class, "SwBitRepresentation", false, false, true);
        this.initEReference(this.getSwBitRepresentation_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwBitRepresentation(), "swDataDefProps", null, 0, 1, SwBitRepresentation.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getSwBitRepresentation_BitPosition(), (EClassifier)thePrimitivetypesPackage.getInteger(), "bitPosition", "0", 0, 1, SwBitRepresentation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwBitRepresentation_NumberOfBits(), (EClassifier)thePrimitivetypesPackage.getInteger(), "numberOfBits", "0", 0, 1, SwBitRepresentation.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swTextPropsEClass, SwTextProps.class, "SwTextProps", false, false, true);
        this.initEReference(this.getSwTextProps_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwTextProps(), "swDataDefProps", null, 0, 1, SwTextProps.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwTextProps_SwMaxTextSize(), (EClassifier)theValuemodelPackage.getVf(), null, "swMaxTextSize", null, 0, 1, SwTextProps.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwTextProps_SwFillCharacter(), (EClassifier)thePrimitivetypesPackage.getInteger(), "swFillCharacter", "0", 0, 1, SwTextProps.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swComparisonVariablesEClass, SwComparisonVariables.class, "SwComparisonVariables", false, false, true);
        this.initEReference(this.getSwComparisonVariables_SwVariableRefs(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRefs", null, 0, -1, SwComparisonVariables.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swSemaphoreEClass, SwSemaphore.class, "SwSemaphore", false, false, true);
        this.initEReference(this.getSwSemaphore_SwVariableRef(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRef", null, 0, 1, SwSemaphore.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swPointerEClass, SwPointer.class, "SwPointer", false, false, true);
        this.initEReference(this.getSwPointer_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), null, "swDataDefProps", null, 0, 1, SwPointer.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swGenericAxisParamValueEClass, SwGenericAxisParamValue.class, "SwGenericAxisParamValue", false, false, true);
        this.initEReference(this.getSwGenericAxisParamValue_SwGenericAxisParam(), (EClassifier)theAxisPackage.getSwGenericAxisParam(), theAxisPackage.getSwGenericAxisParam_SwGenericAxisParamValue(), "swGenericAxisParam", null, 0, 1, SwGenericAxisParamValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwGenericAxisParamValue_Vfs(), (EClassifier)theValuemodelPackage.getVf(), null, "vfs", null, 0, -1, SwGenericAxisParamValue.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwGenericAxisParamValue_Vs(), (EClassifier)thePrimitivetypesPackage.getString(), "vs", "", 0, -1, SwGenericAxisParamValue.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.class, "SwCalibrationAccessEnum");
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.READ_ONLY);
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.NOT_ACCESSIBLE);
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.READ_WRITE);
        this.initEEnum(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.class, "SwImplPolicyEnum");
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.MEASUREMENT_POINT);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.STANDARD);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.MESSAGE);
        this.initEEnum(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.class, "SwVariableAccessImplPolicyEnum");
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.OPTIMIZED);
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.SELECTABLE);
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.DIRECT);
        this.initEDataType(this.displayFormatStringEDataType, String.class, "DisplayFormatString", true, false);
        this.createResource("http://autosar.org/3.2.1/autosar3x/cs/ddp");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createStereotypeAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "F9DDEC12-AC2E-4056-8837-ADB17B4998FC", "Created", "Fri Dec 02 17:57:30 CET 2005", "Modified", "Tue Feb 28 16:05:37 CET 2006", "Id", "1339077473", "Name", "DataDefProperties"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"GUID", "116B7194-57DC-47ce-8AA7-012CE3FF2DF4", "Created", "Fri Nov 25 19:53:07 CET 2005", "Modified", "Wed Sep 26 17:01:04 CEST 2007", "Id", "1008250382", "Name", "SwDataDefProps"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"GUID", "C72AE2C8-8ABE-459b-AC76-E0584A1EDD15", "Id", "-1068034257", "Name", "swCalibrationAccess"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DisplayFormat(), source, new String[]{"GUID", "C0C68D31-ECDA-4c4e-AEF9-E7976F478A70", "Id", "2050436215", "Name", "displayFormat"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"GUID", "B048780B-7ED5-4197-99E8-F0EC419C75A2", "Id", "2022404327", "Name", "swImplPolicy"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwVariableAccessImplPolicy(), source, new String[]{"GUID", "E5969B5C-04A5-4eb0-8B91-E964DBBF05A0", "Id", "-1605308073", "Name", "swVariableAccessImplPolicy"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"GUID", "B6DCF0E5-BB4D-4572-9206-EED60652C6ED", "Created", "Tue Oct 31 17:43:43 CET 2006", "Modified", "Thu Sep 20 19:39:44 CEST 2007", "Id", "-253555336", "Name", "SwCalibrationAccessEnum"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(0), source, new String[]{"GUID", "EE63F0AA-DE20-424b-8580-A94F291CE81D", "Id", "-1803773755", "Name", "readOnly"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(1), source, new String[]{"GUID", "F6E9B669-B7C4-401c-83F4-39D62D5427AE", "Id", "594008226", "Name", "notAccessible"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(2), source, new String[]{"GUID", "25CFE72A-4494-49b1-AEB3-1B97631F345A", "Id", "73572475", "Name", "readWrite"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"GUID", "BDBF9933-D31C-4148-B588-57097F7E1AF9", "Created", "Tue Oct 31 18:23:24 CET 2006", "Modified", "Mon Aug 27 21:41:47 CEST 2007", "Id", "-1085762980", "Name", "SwImplPolicyEnum"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"GUID", "9F61AAC4-79CF-41f0-8C80-1E4B20CB6083", "Id", "1497675680", "Name", "measurementPoint"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"GUID", "081E1B3C-421D-4dc3-9E01-772157AAFE16", "Id", "906888993", "Name", "standard"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"GUID", "0B8A6922-1AC0-476b-9F20-B5E5897B1520", "Id", "-31529266", "Name", "message"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"GUID", "E9F3FFB3-C9B0-43e4-B0E1-348F59C3EC2A", "Created", "Tue Oct 31 18:17:52 CET 2006", "Modified", "Mon Aug 27 21:50:02 CEST 2007", "Id", "-1672763849", "Name", "SwVariableAccessImplPolicyEnum"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"GUID", "AFE294B4-6824-413c-A826-22A6E5183059", "Id", "727818668", "Name", "optimized"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"GUID", "51CD03F8-11F4-415a-B6F3-5989DBFC2CD4", "Id", "1718219581", "Name", "selectable"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"GUID", "A758DF2A-145B-4f55-BED8-34ED8131A06F", "Id", "-1888972870", "Name", "direct"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"GUID", "BC78CBD6-1D66-45a3-BD2A-49F413DCB7C1", "Created", "Fri Nov 25 19:53:31 CET 2005", "Modified", "Mon Aug 27 22:06:39 CEST 2007", "Id", "-394049004", "Name", "SwArraysize"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"GUID", "AA424E74-F150-42b8-809B-174E947EBD51", "Created", "Fri Nov 25 19:53:07 CET 2005", "Modified", "Mon Nov 26 19:31:39 CET 2007", "Id", "-1300014333", "Name", "SwDataDependency"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"GUID", "31457F7E-FDDC-4c0f-8BEF-4D95F902C6B3", "Created", "Fri Nov 25 19:53:07 CET 2005", "Modified", "Mon Aug 27 22:09:51 CEST 2007", "Id", "1844479309", "Name", "SwDataDependencyArgs"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"GUID", "5A39A386-3E26-4e28-BEB5-588896820060", "Created", "Fri Nov 25 19:53:31 CET 2005", "Modified", "Mon Nov 26 19:31:47 CET 2007", "Id", "2134999107", "Name", "SwVariableRef"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"GUID", "22353C5D-DBD1-4200-8692-B0DE1495574D", "Created", "Fri Nov 25 19:53:03 CET 2005", "Modified", "Mon Aug 27 21:54:48 CEST 2007", "Id", "-814305585", "Name", "SwBitRepresentation"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"GUID", "AADCADB6-0ABD-4aec-B49F-8101694184AF", "Id", "-195136348", "Name", "bitPosition"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"GUID", "8C77C182-4887-4d18-8EE1-268D98E84532", "Id", "-1128966416", "Name", "numberOfBits"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"GUID", "67884C86-B255-4d5e-A648-2407CE0E0CE1", "Created", "Fri Sep 01 13:28:25 CEST 2006", "Modified", "Mon Aug 27 22:21:32 CEST 2007", "Id", "323874071", "Name", "SwTextProps"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"GUID", "35837DBA-E8F4-4d6b-9EDC-D019473656F2", "Id", "964672968", "Name", "swFillCharacter"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"GUID", "36CBAA52-EAEB-4f74-AC0E-629FA3C334CD", "Created", "Fri Nov 25 19:53:05 CET 2005", "Modified", "Tue Aug 28 17:20:14 CEST 2007", "Id", "-45441910", "Name", "SwComparisonVariables"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"GUID", "156EE340-A11F-4d8b-98A0-7C3174C1EDDD", "Created", "Fri Nov 25 19:53:12 CET 2005", "Modified", "Mon Aug 27 22:27:13 CEST 2007", "Id", "-1700276209", "Name", "SwSemaphore"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"GUID", "C0B728AC-330C-4f58-B108-9E574B7B3F0D", "Created", "Fri Nov 25 19:53:11 CET 2005", "Modified", "Mon Nov 26 19:31:42 CET 2007", "Id", "-190710395", "Name", "SwPointer"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"GUID", "AF36A40F-9A23-41f0-AD05-358725375453", "Created", "Fri Sep 01 13:29:08 CEST 2006", "Modified", "Mon Aug 27 22:16:44 CEST 2007", "Id", "-1713202604", "Name", "SwGenericAxisParamValue"});
        this.addAnnotation((ENamedElement)this.displayFormatStringEDataType, source, new String[]{"GUID", "2EE63033-8DA5-4ba6-8C5B-AD3EC681F3A9", "Created", "Fri Aug 24 10:04:42 CEST 2007", "Modified", "Mon Aug 27 21:21:53 CEST 2007", "Id", "1103451644", "Name", "DisplayFormatString"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DATA-DEF-PROPERTIES", "xml.namePlural", "DATA-DEF-PROPERTIESS"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"mmt.qualifiedName", "SwDataDefProps", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-DATA-DEF-PROPS_TYPE\";msr.isCond=\"true\";mmt.qualifiedName=\"SwDataDefProps\"", "asam.useCase", "MDX", "msr.isCond", "true", "msr.id", "type__SW-DATA-DEF-PROPS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Annotations(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.annotation", "xml.tags", "xml.roleWrapperElement=\"true\";xml.sequenceOffset=\"20\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleElement=\"true\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__ANNOTATIONS\";mmt.qualifiedName=\"SwDataDefProps.annotation\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "pureMM.minOccurs", "0", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "0", "msr.id", "SW-DATA-DEF-PROPS_TYPE__ANNOTATIONS", "xml.name", "ANNOTATION", "xml.namePlural", "ANNOTATIONS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwAddrMethod(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swAddrMethod", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-ADDR-METHOD-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-ADDR-METHOD-REF\";mmt.qualifiedName=\"SwDataDefProps.swAddrMethod\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-ADDR-METHOD-REF", "xml.namePlural", "SW-ADDR-METHOD-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_BaseType(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.baseType", "msr.id", "SW-DATA-DEF-PROPS_TYPE__BASE-TYPE-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "2", "xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__BASE-TYPE-REF\";mmt.qualifiedName=\"SwDataDefProps.baseType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "BASE-TYPE-REF", "xml.namePlural", "BASE-TYPE-REFS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwBitRepresentation(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swBitRepresentation", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-BIT-REPRESENTATION", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "3", "xml.tags", "xml.sequenceOffset=\"60\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-BIT-REPRESENTATION\";mmt.qualifiedName=\"SwDataDefProps.swBitRepresentation\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-BIT-REPRESENTATION", "xml.namePlural", "SW-BIT-REPRESENTATIONS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swCalibrationAccess", "xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CALIBRATION-ACCESS\";msr.tbdString=\"true\";xml.sequenceOffset=\"70\";mmt.qualifiedName=\"SwDataDefProps.swCalibrationAccess\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CALIBRATION-ACCESS", "xml.name", "SW-CALIBRATION-ACCESS", "xml.namePlural", "SW-CALIBRATION-ACCESSS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwValueBlockSize(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swValueBlockSize", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-VALUE-BLOCK-SIZE", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "5", "xml.tags", "xml.sequenceOffset=\"80\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-VALUE-BLOCK-SIZE\";mmt.qualifiedName=\"SwDataDefProps.swValueBlockSize\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-VALUE-BLOCK-SIZE", "xml.namePlural", "SW-VALUE-BLOCK-SIZES", "internal-xml-sequenceOffset", "80", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalprmAxisSet(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swCalprmAxisSet", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CALPRM-AXIS-SET", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "6", "xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CALPRM-AXIS-SET\";mmt.qualifiedName=\"SwDataDefProps.swCalprmAxisSet\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-CALPRM-AXIS-SET", "xml.namePlural", "SW-CALPRM-AXIS-SETS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwTextProps(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swTextProps", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-TEXT-PROPS", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "7", "xml.tags", "xml.sequenceOffset=\"120\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-TEXT-PROPS\";mmt.qualifiedName=\"SwDataDefProps.swTextProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-TEXT-PROPS", "xml.namePlural", "SW-TEXT-PROPSS", "internal-xml-sequenceOffset", "120", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCodeSyntax(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swCodeSyntax", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CODE-SYNTAX-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "8", "xml.tags", "xml.sequenceOffset=\"160\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CODE-SYNTAX-REF\";mmt.qualifiedName=\"SwDataDefProps.swCodeSyntax\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-CODE-SYNTAX-REF", "xml.namePlural", "SW-CODE-SYNTAX-REFS", "internal-xml-sequenceOffset", "160", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_CompuMethod(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.compuMethod", "msr.id", "SW-DATA-DEF-PROPS_TYPE__COMPU-METHOD-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "9", "xml.tags", "xml.sequenceOffset=\"180\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__COMPU-METHOD-REF\";mmt.qualifiedName=\"SwDataDefProps.compuMethod\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-METHOD-REF", "xml.namePlural", "COMPU-METHOD-REFS", "internal-xml-sequenceOffset", "180", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DataConstr(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.dataConstr", "msr.id", "SW-DATA-DEF-PROPS_TYPE__DATA-CONSTR-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "10", "xml.tags", "xml.sequenceOffset=\"190\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__DATA-CONSTR-REF\";mmt.qualifiedName=\"SwDataDefProps.dataConstr\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "DATA-CONSTR-REF", "xml.namePlural", "DATA-CONSTR-REFS", "internal-xml-sequenceOffset", "190", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDependency(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swDataDependency", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-DATA-DEPENDENCY", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "11", "xml.tags", "xml.sequenceOffset=\"200\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-DATA-DEPENDENCY\";mmt.qualifiedName=\"SwDataDefProps.swDataDependency\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-DATA-DEPENDENCY", "xml.namePlural", "SW-DATA-DEPENDENCYS", "internal-xml-sequenceOffset", "200", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DisplayFormat(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.displayFormat", "xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__DISPLAY-FORMAT\";msr.tbdString=\"true\";xml.sequenceOffset=\"210\";mmt.qualifiedName=\"SwDataDefProps.displayFormat\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "12", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__DISPLAY-FORMAT", "xml.name", "DISPLAY-FORMAT", "xml.namePlural", "DISPLAY-FORMATS", "internal-xml-sequenceOffset", "210", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_InvalidValue(), source, new String[]{"xml.sequenceOffset", "13", "mmt.qualifiedName", "SwDataDefProps.invalidValue", "xml.tags", "xml.sequenceOffset=\"215\";mmt.qualifiedName=\"SwDataDefProps.invalidValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "INVALID-VALUE", "xml.namePlural", "INVALID-VALUES", "internal-xml-sequenceOffset", "215", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwHostVariable(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swHostVariable", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-HOST-VARIABLE", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "14", "xml.tags", "xml.sequenceOffset=\"220\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-HOST-VARIABLE\";mmt.qualifiedName=\"SwDataDefProps.swHostVariable\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-HOST-VARIABLE", "xml.namePlural", "SW-HOST-VARIABLES", "internal-xml-sequenceOffset", "220", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swImplPolicy", "xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-IMPL-POLICY\";msr.tbdString=\"true\";xml.sequenceOffset=\"230\";mmt.qualifiedName=\"SwDataDefProps.swImplPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "15", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-IMPL-POLICY", "xml.name", "SW-IMPL-POLICY", "xml.namePlural", "SW-IMPL-POLICYS", "internal-xml-sequenceOffset", "230", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwPointer(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swPointer", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-POINTER", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "16", "xml.tags", "xml.sequenceOffset=\"280\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-POINTER\";mmt.qualifiedName=\"SwDataDefProps.swPointer\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-POINTER", "xml.namePlural", "SW-POINTERS", "internal-xml-sequenceOffset", "280", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwRecordLayout(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swRecordLayout", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-RECORD-LAYOUT-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "17", "xml.tags", "xml.sequenceOffset=\"290\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-RECORD-LAYOUT-REF\";mmt.qualifiedName=\"SwDataDefProps.swRecordLayout\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-RECORD-LAYOUT-REF", "xml.namePlural", "SW-RECORD-LAYOUT-REFS", "internal-xml-sequenceOffset", "290", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Unit(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.unit", "msr.id", "SW-DATA-DEF-PROPS_TYPE__UNIT-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "18", "xml.tags", "xml.sequenceOffset=\"350\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__UNIT-REF\";mmt.qualifiedName=\"SwDataDefProps.unit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "internal-xml-sequenceOffset", "350", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwVariableAccessImplPolicy(), source, new String[]{"mmt.qualifiedName", "SwDataDefProps.swVariableAccessImplPolicy", "xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-VARIABLE-ACCESS-IMPL-POLICY\";msr.tbdString=\"true\";xml.sequenceOffset=\"390\";mmt.qualifiedName=\"SwDataDefProps.swVariableAccessImplPolicy\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "19", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-VARIABLE-ACCESS-IMPL-POLICY", "xml.name", "SW-VARIABLE-ACCESS-IMPL-POLICY", "xml.namePlural", "SW-VARIABLE-ACCESS-IMPL-POLICYS", "internal-xml-sequenceOffset", "390", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"mmt.qualifiedName", "SwCalibrationAccessEnum", "xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-CALIBRATION-ACCESS-ENUM", "xml.namePlural", "SW-CALIBRATION-ACCESS-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "SwCalibrationAccessEnum.readOnly", "xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum.readOnly\"", "xml.name", "READ-ONLY", "xml.namePlural", "READ-ONLYS"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "SwCalibrationAccessEnum.notAccessible", "xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum.notAccessible\"", "xml.name", "NOT-ACCESSIBLE", "xml.namePlural", "NOT-ACCESSIBLES"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(2), source, new String[]{"mmt.qualifiedName", "SwCalibrationAccessEnum.readWrite", "xml.tags", "mmt.qualifiedName=\"SwCalibrationAccessEnum.readWrite\"", "xml.name", "READ-WRITE", "xml.namePlural", "READ-WRITES"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"mmt.qualifiedName", "SwImplPolicyEnum", "xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-IMPL-POLICY-ENUM", "xml.namePlural", "SW-IMPL-POLICY-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "SwImplPolicyEnum.measurementPoint", "xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum.measurementPoint\"", "xml.name", "MEASUREMENT-POINT", "xml.namePlural", "MEASUREMENT-POINTS"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "SwImplPolicyEnum.standard", "xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum.standard\"", "xml.name", "STANDARD", "xml.namePlural", "STANDARDS"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"mmt.qualifiedName", "SwImplPolicyEnum.message", "xml.tags", "mmt.qualifiedName=\"SwImplPolicyEnum.message\"", "xml.name", "MESSAGE", "xml.namePlural", "MESSAGES"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"mmt.qualifiedName", "SwVariableAccessImplPolicyEnum", "xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-VARIABLE-ACCESS-IMPL-POLICY-ENUM", "xml.namePlural", "SW-VARIABLE-ACCESS-IMPL-POLICY-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "SwVariableAccessImplPolicyEnum.optimized", "xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum.optimized\"", "xml.name", "OPTIMIZED", "xml.namePlural", "OPTIMIZEDS"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "SwVariableAccessImplPolicyEnum.selectable", "xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum.selectable\"", "xml.name", "SELECTABLE", "xml.namePlural", "SELECTABLES"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"mmt.qualifiedName", "SwVariableAccessImplPolicyEnum.direct", "xml.tags", "mmt.qualifiedName=\"SwVariableAccessImplPolicyEnum.direct\"", "xml.name", "DIRECT", "xml.namePlural", "DIRECTS"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"mmt.qualifiedName", "SwArraysize", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-ARRAYSIZE_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"SwArraysize\"", "asam.useCase", "MDX", "msr.isGroupOnly", "true", "msr.id", "type__SW-ARRAYSIZE_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-ARRAYSIZE", "xml.namePlural", "SW-ARRAYSIZES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vfs(), source, new String[]{"mmt.qualifiedName", "SwArraysize.vf", "msr.id", "SW-ARRAYSIZE_TYPE__VF", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"SW-ARRAYSIZE_TYPE__VF\";mmt.qualifiedName=\"SwArraysize.vf\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "VF", "xml.namePlural", "VFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vs(), source, new String[]{"mmt.qualifiedName", "SwArraysize.v", "msr.id", "SW-ARRAYSIZE_TYPE__V", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-ARRAYSIZE_TYPE__V\";mmt.qualifiedName=\"SwArraysize.v\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "V", "xml.namePlural", "VS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"mmt.qualifiedName", "SwDataDependency", "xml.tags", "msr.id=\"type__SW-DATA-DEPENDENCY_TYPE\";mmt.qualifiedName=\"SwDataDependency\"", "msr.id", "type__SW-DATA-DEPENDENCY_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-DATA-DEPENDENCY", "xml.namePlural", "SW-DATA-DEPENDENCYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"mmt.qualifiedName", "SwDataDependency.swDataDependencyFormula", "msr.id", "SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-FORMULA", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-FORMULA\";mmt.qualifiedName=\"SwDataDependency.swDataDependencyFormula\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-DATA-DEPENDENCY-FORMULA", "xml.namePlural", "SW-DATA-DEPENDENCY-FORMULAS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"mmt.qualifiedName", "SwDataDependency.swDataDependencyArgs", "msr.id", "SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-ARGS", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-ARGS\";mmt.qualifiedName=\"SwDataDependency.swDataDependencyArgs\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-DATA-DEPENDENCY-ARGS", "xml.namePlural", "SW-DATA-DEPENDENCY-ARGSS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"mmt.qualifiedName", "SwDataDependencyArgs", "msr.id", "type__SW-DATA-DEPENDENCY-ARGS_TYPE", "msr.isGroupOnly", "true", "xml.tags", "msr.id=\"type__SW-DATA-DEPENDENCY-ARGS_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"SwDataDependencyArgs\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-DATA-DEPENDENCY-ARGS", "xml.namePlural", "SW-DATA-DEPENDENCY-ARGSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprms(), source, new String[]{"xml.typeWrapperElement", "false", "mmt.qualifiedName", "SwDataDependencyArgs.swCalprm", "xml.typeElement", "false", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"60\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"false\";mmt.qualifiedName=\"SwDataDependencyArgs.swCalprm\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "xml.name", "SW-CALPRM", "xml.namePlural", "SW-CALPRMS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariableRefs(), source, new String[]{"xml.typeWrapperElement", "false", "mmt.qualifiedName", "SwDataDependencyArgs.swVariableRef", "xml.typeElement", "false", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.sequenceOffset=\"70\";mmt.qualifiedName=\"SwDataDependencyArgs.swVariableRef\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"mmt.qualifiedName", "SwVariableRef", "msr.id", "type__SW-VARIABLE-REF_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-VARIABLE-REF_TYPE\";mmt.qualifiedName=\"SwVariableRef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwVariableRef_SwVariableRef(), source, new String[]{"xml.typeWrapperElement", "false", "mmt.qualifiedName", "SwVariableRef.swVariableRef", "xml.typeElement", "false", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.typeElement=\"false\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"SwVariableRef.swVariableRef\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"mmt.qualifiedName", "SwBitRepresentation", "msr.id", "type__SW-BIT-REPRESENTATION_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-BIT-REPRESENTATION_TYPE\";mmt.qualifiedName=\"SwBitRepresentation\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-BIT-REPRESENTATION", "xml.namePlural", "SW-BIT-REPRESENTATIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"mmt.qualifiedName", "SwBitRepresentation.bitPosition", "xml.tags", "msr.id=\"SW-BIT-REPRESENTATION_TYPE__BIT-POSITION\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"SwBitRepresentation.bitPosition\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-BIT-REPRESENTATION_TYPE__BIT-POSITION", "xml.name", "BIT-POSITION", "xml.namePlural", "BIT-POSITIONS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"mmt.qualifiedName", "SwBitRepresentation.numberOfBits", "xml.tags", "msr.id=\"SW-BIT-REPRESENTATION_TYPE__NUMBER-OF-BITS\";msr.tbdString=\"true\";xml.sequenceOffset=\"30\";mmt.qualifiedName=\"SwBitRepresentation.numberOfBits\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-BIT-REPRESENTATION_TYPE__NUMBER-OF-BITS", "xml.name", "NUMBER-OF-BITS", "xml.namePlural", "NUMBER-OF-BITSS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"mmt.qualifiedName", "SwTextProps", "xml.tags", "msr.id=\"type__SW-TEXT-PROPS_TYPE\";mmt.qualifiedName=\"SwTextProps\"", "msr.id", "type__SW-TEXT-PROPS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-TEXT-PROPS", "xml.namePlural", "SW-TEXT-PROPSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"mmt.qualifiedName", "SwTextProps.swMaxTextSize", "msr.id", "SW-TEXT-PROPS_TYPE__SW-MAX-TEXT-SIZE", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"SW-TEXT-PROPS_TYPE__SW-MAX-TEXT-SIZE\";mmt.qualifiedName=\"SwTextProps.swMaxTextSize\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-MAX-TEXT-SIZE", "xml.namePlural", "SW-MAX-TEXT-SIZES", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"mmt.qualifiedName", "SwTextProps.swFillCharacter", "xml.tags", "msr.id=\"SW-TEXT-PROPS_TYPE__SW-FILL-CHARACTER\";msr.tbdString=\"true\";xml.sequenceOffset=\"40\";mmt.qualifiedName=\"SwTextProps.swFillCharacter\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-TEXT-PROPS_TYPE__SW-FILL-CHARACTER", "xml.name", "SW-FILL-CHARACTER", "xml.namePlural", "SW-FILL-CHARACTERS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"mmt.qualifiedName", "SwComparisonVariables", "xml.tags", "msr.id=\"type__SW-COMPARISON-VARIABLES_TYPE\";mmt.qualifiedName=\"SwComparisonVariables\"", "msr.id", "type__SW-COMPARISON-VARIABLES_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-COMPARISON-VARIABLES", "xml.namePlural", "SW-COMPARISON-VARIABLESS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwComparisonVariables_SwVariableRefs(), source, new String[]{"xml.typeWrapperElement", "false", "mmt.qualifiedName", "SwComparisonVariables.swVariableRef", "xml.typeElement", "false", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "0", "xml.tags", "xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.sequenceOffset=\"20\";xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";mmt.qualifiedName=\"SwComparisonVariables.swVariableRef\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"mmt.qualifiedName", "SwSemaphore", "xml.tags", "msr.id=\"type__SW-SEMAPHORE_TYPE\";mmt.qualifiedName=\"SwSemaphore\"", "msr.id", "type__SW-SEMAPHORE_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-SEMAPHORE", "xml.namePlural", "SW-SEMAPHORES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwSemaphore_SwVariableRef(), source, new String[]{"xml.typeWrapperElement", "false", "mmt.qualifiedName", "SwSemaphore.swVariableRef", "xml.typeElement", "false", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.typeElement=\"false\";xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.roleElement=\"false\";xml.typeWrapperElement=\"false\";mmt.qualifiedName=\"SwSemaphore.swVariableRef\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"mmt.qualifiedName", "SwPointer", "msr.id", "type__SW-POINTER_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-POINTER_TYPE\";mmt.qualifiedName=\"SwPointer\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-POINTER", "xml.namePlural", "SW-POINTERS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwPointer_SwDataDefProps(), source, new String[]{"mmt.qualifiedName", "SwPointer.swDataDefProps", "msr.id", "SW-POINTER_TYPE__SW-DATA-DEF-PROPS", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-POINTER_TYPE__SW-DATA-DEF-PROPS\";mmt.qualifiedName=\"SwPointer.swDataDefProps\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"mmt.qualifiedName", "SwGenericAxisParamValue", "msr.id", "special__SW-GENERIC-AXIS-PARAM-VALUE", "msr.isGroupOnly", "true", "xml.tags", "msr.id=\"special__SW-GENERIC-AXIS-PARAM-VALUE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"SwGenericAxisParamValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-GENERIC-AXIS-PARAM-VALUE", "xml.namePlural", "SW-GENERIC-AXIS-PARAM-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vfs(), source, new String[]{"mmt.qualifiedName", "SwGenericAxisParamValue.vf", "msr.id", "SW-GENERIC-AXIS-PARAM-VALUE__VF", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"SW-GENERIC-AXIS-PARAM-VALUE__VF\";mmt.qualifiedName=\"SwGenericAxisParamValue.vf\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "VF", "xml.namePlural", "VFS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vs(), source, new String[]{"mmt.qualifiedName", "SwGenericAxisParamValue.v", "msr.id", "SW-GENERIC-AXIS-PARAM-VALUE__V", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"SW-GENERIC-AXIS-PARAM-VALUE__V\";mmt.qualifiedName=\"SwGenericAxisParamValue.v\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "V", "xml.namePlural", "VS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.displayFormatStringEDataType, source, new String[]{"mmt.qualifiedName", "DisplayFormatString", "xml.tags", "xml.xsd.type=\"string\";mmt.qualifiedName=\"DisplayFormatString\"", "xml.xsd.type", "string", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DISPLAY-FORMAT-STRING", "xml.namePlural", "DISPLAY-FORMAT-STRINGS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Annotations(), source, new String[]{"name", "ANNOTATIONS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwAddrMethod(), source, new String[]{"name", "SW-ADDR-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_BaseType(), source, new String[]{"name", "BASE-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwBitRepresentation(), source, new String[]{"name", "SW-BIT-REPRESENTATION", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"name", "SW-CALIBRATION-ACCESS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwValueBlockSize(), source, new String[]{"name", "SW-VALUE-BLOCK-SIZE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalprmAxisSet(), source, new String[]{"name", "SW-CALPRM-AXIS-SET", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwTextProps(), source, new String[]{"name", "SW-TEXT-PROPS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCodeSyntax(), source, new String[]{"name", "SW-CODE-SYNTAX-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_CompuMethod(), source, new String[]{"name", "COMPU-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DataConstr(), source, new String[]{"name", "DATA-CONSTR-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDependency(), source, new String[]{"name", "SW-DATA-DEPENDENCY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DisplayFormat(), source, new String[]{"name", "DISPLAY-FORMAT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_InvalidValue(), source, new String[]{"name", "INVALID-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwHostVariable(), source, new String[]{"name", "SW-HOST-VARIABLE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"name", "SW-IMPL-POLICY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwPointer(), source, new String[]{"name", "SW-POINTER", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwRecordLayout(), source, new String[]{"name", "SW-RECORD-LAYOUT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwVariableAccessImplPolicy(), source, new String[]{"name", "SW-VARIABLE-ACCESS-IMPL-POLICY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"name", "SW-ARRAYSIZE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vfs(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"name", "SW-DATA-DEPENDENCY", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"name", "SW-DATA-DEPENDENCY-FORMULA", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"name", "SW-DATA-DEPENDENCY-ARGS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"name", "SW-DATA-DEPENDENCY-ARGS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprms(), source, new String[]{"name", "SW-CALPRM", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariableRefs(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"name", "SW-VARIABLE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwVariableRef_SwVariableRef(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"name", "SW-BIT-REPRESENTATION", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"name", "BIT-POSITION", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"name", "NUMBER-OF-BITS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"name", "SW-TEXT-PROPS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"name", "SW-MAX-TEXT-SIZE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"name", "SW-FILL-CHARACTER", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"name", "SW-COMPARISON-VARIABLES", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwComparisonVariables_SwVariableRefs(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"name", "SW-SEMAPHORE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwSemaphore_SwVariableRef(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"name", "SW-POINTER", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwPointer_SwDataDefProps(), source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"name", "SW-GENERIC-AXIS-PARAM-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vfs(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"documentation", "This class is a collection of properties relevant for data objects under various aspects. One could consider this class as a \"pattern of inheritance by aggregation\". The properties can be applied to all objects of all classes in which SwDataDefProps is agrregated.\r\n\r\nNote that not all of the attributes or associated elements are useful all of the time. Hence, the process definition (e.g. expressed with an OCL or a Document Control Instance) MSR-DCI has the task of implementing limitations.\r\n\r\nSwDataDefProps covers various aspects:\r\n\r\n* Structure of the data element, is it a single value, a curve, or a map, but also the recordLayouts which specify, how such elements are mapped/converted to the DataTypes in the programming language (or in Autosar). This is mainly expressed by properties like swRecordLayout and swCalprmAxisSet \r\n\r\n* Implementation policy, mainly expressed by swImplPolicy, swVariableAccessImplPolicy, swAddrMethod \r\n\r\n* Access policy for the MDC system, mainly expressed by swCalibrationAccess \r\n\r\n* Semantics of the data element, mainly expressed by compuMethod and/or unit, dataConstr \r\n\r\n* Code generation policy provided by swCodeSyntax"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Annotations(), source, new String[]{"documentation", "This aggregation allows to add annotations (yellow pads ...) related to the current data object. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwAddrMethod(), source, new String[]{"documentation", "Addressing method related to this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_BaseType(), source, new String[]{"documentation", "Base type associated with the value axis of this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwBitRepresentation(), source, new String[]{"documentation", "Description of the binary representaion in case of a bit variable."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"documentation", "Specifies the read or write access by MCD tools for this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwValueBlockSize(), source, new String[]{"documentation", "Specifies the size in case the data object is an VAL_BLK. It is there for compatibility reasons, where value blocks were introduced as a kind of an array."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalprmAxisSet(), source, new String[]{"documentation", "This specifies the properties of the axes in case of a curve or map etc. This is mainly applicable to calibration parameters."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwTextProps(), source, new String[]{"documentation", "the specific properties if the data object is a text object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCodeSyntax(), source, new String[]{"documentation", "Coding policy for this data object expressed as a reference to a Code syntax to be applied."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_CompuMethod(), source, new String[]{"documentation", "Computation method associated with the semantics of this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DataConstr(), source, new String[]{"documentation", "Data constraint for this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDependency(), source, new String[]{"documentation", "If the data object is virtual - that means it is not directly in the ecu, then this property describes how the \"virtual variable\" can be computed from the real ones."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DisplayFormat(), source, new String[]{"documentation", "This property describes how a number is to be rendered e.g. in documents or in a measurement and calibration system. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_InvalidValue(), source, new String[]{"documentation", "Optional value to express invalidity of the actual data element. If given, the owning component has the API to set this data element invalid, otherwise it does not."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwHostVariable(), source, new String[]{"documentation", "Contains a reference to a variable, which serves as a host-variable for a bit variable. Only applicable to bit objects."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"documentation", "Implementation policy for this data object. "});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwPointer(), source, new String[]{"documentation", "Specifies that the containing data object is a pointer to another data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwRecordLayout(), source, new String[]{"documentation", "Record layout for this data object."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Unit(), source, new String[]{"documentation", "Physical unit associated with the semantics of this data object. This attribute applies, if no compuMethod is specified. If buth units (this as well as via compuMethod is specified,the units ust be the same."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwVariableAccessImplPolicy(), source, new String[]{"documentation", "In case of a swImplPolicy set to \"message\" the access policy can be refined here.\r\n"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"documentation", "Determines the access rights to a data object w.r.t. measurement and calibration."});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "The element will only appear as read-only in an ASAP file."});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "The element will not be accessible via MCD tools, i.e. will not appear in the ASAP file."});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "The element will appear in the ASAP file with both read and write access."});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"documentation", "Specifies the implementation strategy with respect to consistency mechanisms of variables."});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "The data element is never read directly within the ECU software. It is written for measurement purposes only."});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "No specific protection measures are taken. Usually applies to variables inside of an excutable entity."});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "The access to the measurement must be implemented using protection mechanisms. This mainly applies to variables shared by executable entities, i.e. InterRunnableVariables.\r\n"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"documentation", "Detailed access policy for variables, for which data consistency is implemented via messages. "});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"documentation", "A Tool handles data consistency. \r\n\r\nIn SwService, where a message is referenced, only OPTIMIZED access (also default\r\nvalue inside SwServcie) is possible."});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"documentation", "The user can decide inside each single service, where these message is referenced, if\r\naccess to that shall be OPTIMIZED or DIRECT."});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"documentation", "Messages with DIRECT access are read but ignored by data consistency tool. Data consistency\r\nis not guaranteed."});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"documentation", "The existence of SwArraysize turns the containing element into a multidimensional object. It is then possible to create arrays of variables, parameters etc. SwArraysize should not be used to imitate stereotypes such as curves or maps since these structures are modeled as separate elements, refer to SwCalprmAxisSet for an SwCalprm. Apart from that any array can be created."});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vfs(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vs(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"documentation", "This element describes the interdependencies of data objects, e.g. variables and parameters. It can be used for example to treat virtual parameters."});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"documentation", "This element describes the formula with which the dependencies between the participating objects are defined."});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"documentation", "Specifies the arguments used in the data dependency. Note that this is 0..1 since the aggregated class is a container (atpMixed).\r\n"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"documentation", "This element specifies the elements used in a SwDataDependency."});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprms(), source, new String[]{"documentation", "Specifies a calibration parameter as an input argument to the dependency."});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariableRefs(), source, new String[]{"documentation", "Specifies a variable as an input argument to the dependency."});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"documentation", "This class establishes a reference to a variable. It is mainly introduced by the reverse engineering tool. "});
        this.addAnnotation((ENamedElement)this.getSwVariableRef_SwVariableRef(), source, new String[]{"documentation", "Proxy for different kinds of references to a variable."});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"documentation", "Description of the structure of a bit variable: Comprises of the bitPosition in a memory object (e.g. swHostVariable, which stands parallel to swBitRepresentation) and the numberOfBits . In this way, interrelated memory areas can be described. Non-related memory areas are not supported."});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"documentation", "If the \"bit data object\" is hosted witin another data object (e.g. if the memory can be accessed via byte as well as bit adress), this attribute specifies the position of the data object. The count starts at zero (0)."});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"documentation", "Number of bits allocated by a \"bit data object\" within its host data object."});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"documentation", "The properties specific for a textual calibration parameter / variable."});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"documentation", "Specifies the maximum text size in characters. Note the the size in bytes depends on the encoding in the corresponding baseType."});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"documentation", "Filler character for text parameter to pad up to the maximum length <SwMaxTextSize>.\r\nThe filler character for texts which are shorter than the maximum permitted text length.\r\nThe value will be interpreted according to the encoding specified in the associated base type of the data object., e.g. 0x30 (hex) represents the ASCII character zero as filler character and 0 (dez) represents an end of string as filler character."});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"documentation", "These variables can be used to display the value of a variable on the value axis of a calibration parameter (characteristic), that is currently displayed in the MCD-System. The purpose is to compare the appropriate result from the calibration parameter in question, with a value being calculated or taken from a sensor (the comparison variable).\r\n\r\nThe sole purpose of this comparison-variable is to serve the calibration process.\r\n\r\nScreen representation of comparison variable\r\n     Vs |              |\r\n                        |              |\r\n                        |              |\r\n                     V _|______________|______________\r\n                        |         /----|------\r\n                        |  /-----/     |\r\n                        | /            |\r\n                        |/             |\r\n                        |--------------|--------------\r\n                                       tx          tmot\r\n                \r\n                        tx: current temperature\r\n                        V:  current speed as shown in the MCD system for comparison:\r\n                            this is the SwComparisonVariable\r\n                        Vs: speed characteristic over temperature\r\n                        tmot: motor temperature"});
        this.addAnnotation((ENamedElement)this.getSwComparisonVariables_SwVariableRefs(), source, new String[]{"documentation", "Proxy for a variable, to which the comparison refers."});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"documentation", "This element denotes a variable which servers as a semaphore for a particular resource which is specified in the surrounding data object, e.g. SwDataDefProps."});
        this.addAnnotation((ENamedElement)this.getSwSemaphore_SwVariableRef(), source, new String[]{"documentation", "Reference to the variable used as semaphore"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"documentation", "This element indicates, that the data object (which is specified by the containing element) is a reference to another data object. The properties of the referred data object are described in the swDataDefProps contained by the SwPointer ."});
        this.addAnnotation((ENamedElement)this.getSwPointer_SwDataDefProps(), source, new String[]{"documentation", "The properties of the data object, to which the pointer points."});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"documentation", "Contains the value for the generic axis parameter."});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vfs(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vs(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.displayFormatStringEDataType, source, new String[]{"documentation", "This String specifies a format specification for the display of values  e.g. in documents ore in measurement and calibration systems. The format specification adheres to the syntax defined for printf format specification fields (e.g. \"%f.2\"), but due to the numerical nature of value settings, only the format types are allowed:\r\nd:  Signed decimal integer \r\ni:  Signed decimal integer \r\no:  Unsigned octal integer \r\nu:  Unsigned decimal integer \r\nx:  Unsigned hexadecimal integer, using \"abcdef\" \r\nX:  Unsigned hexadecimal integer, using \"ABCDEF\" \r\ne:  Signed value having the form [-]d.dddd e [sign]ddd where d is a single decimal digit, dddd is one or more decimal digits, ddd is exactly three decimal digits, and sign is + or - \r\nE:  Identical to the e format except that E rather than e introduces the exponent \r\nf:  Signed value having the form [-]dddd.dddd, where dddd is one or more decimal digits; the number of digits before the decimal point depends on the magnitude of the number, and the number of digits after the decimal point depends on the requested precision \r\ng:  Signed value printed in f or e format, whichever is more compact for the given value and precision; trailing zeros are truncated, and the decimal point appears only if one or more digits follow it \r\nG:  Identical to the g format, except that E, rather than e, introduces the exponent (where appropriate) \r\n"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.displayFormatStringEDataType, source, new String[]{"Stereotype", "primitive"});
    }
}

