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
package autosar3x.ecucparameterdef.impl;

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
import autosar3x.ecucparameterdef.DerivedParamType;
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
import autosar3x.ecucparameterdef.ParamConfMultiplicity;
import autosar3x.ecucparameterdef.ReferenceParamDef;
import autosar3x.ecucparameterdef.StringParamDef;
import autosar3x.ecucparameterdef.SymbolicNameReferenceParamDef;
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
    private EClass choiceContainerDefEClass = null;
    private EClass containerDefEClass = null;
    private EClass paramConfMultiplicityEClass = null;
    private EClass paramConfContainerDefEClass = null;
    private EClass configReferenceEClass = null;
    private EClass commonConfigurationAttributesEClass = null;
    private EClass configurationClassAffectionEClass = null;
    private EClass implementationConfigClassEClass = null;
    private EClass choiceReferenceParamDefEClass = null;
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
    private EClass foreignReferenceParamDefEClass = null;
    private EClass functionNameDefEClass = null;
    private EClass linkerSymbolDefEClass = null;
    private EClass instanceReferenceParamDefEClass = null;
    private EClass referenceParamDefEClass = null;
    private EClass symbolicNameReferenceParamDefEClass = null;
    private EClass configParameterEClass = null;
    private EEnum calculationLanguageEEnum = null;
    private EEnum configurationAffectionEEnum = null;
    private EEnum configurationVariantEEnum = null;
    private EEnum configurationClassEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private EcucparameterdefPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/ecucpd", (EFactory)EcucparameterdefFactory.eINSTANCE);
    }

    public static EcucparameterdefPackage init() {
        if (isInited) {
            return (EcucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucpd");
        }
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/ecucpd") : new EcucparameterdefPackageImpl());
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
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/d") : DatatypesPackage.eINSTANCE);
        LocalconstraintsPackageImpl theLocalconstraintsPackage = (LocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc") instanceof LocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc") : LocalconstraintsPackage.eINSTANCE);
        UnitsPackageImpl theUnitsPackage = (UnitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u") instanceof UnitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u") : UnitsPackage.eINSTANCE);
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm") : ComputationmethodPackage.eINSTANCE);
        ValuemodelPackageImpl theValuemodelPackage = (ValuemodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm") instanceof ValuemodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm") : ValuemodelPackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_9 = (autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd/r") instanceof autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd/r") : autosar3x.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
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
        theEcucparameterdefPackage.createPackageContents();
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
        theDatatypesPackage.createPackageContents();
        theLocalconstraintsPackage.createPackageContents();
        theUnitsPackage.createPackageContents();
        theComputationmethodPackage.createPackageContents();
        theValuemodelPackage.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_9.createPackageContents();
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
        theEcucparameterdefPackage.initializePackageContents();
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
        theDatatypesPackage.initializePackageContents();
        theLocalconstraintsPackage.initializePackageContents();
        theUnitsPackage.initializePackageContents();
        theComputationmethodPackage.initializePackageContents();
        theValuemodelPackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_9.initializePackageContents();
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
        theEcucparameterdefPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/ecucpd", (Object)theEcucparameterdefPackage);
        return theEcucparameterdefPackage;
    }

    public EClass getBooleanParamDef() {
        return this.booleanParamDefEClass;
    }

    public EAttribute getBooleanParamDef_DefaultValue() {
        return (EAttribute)this.booleanParamDefEClass.getEStructuralFeatures().get(0);
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

    public EClass getParamConfMultiplicity() {
        return this.paramConfMultiplicityEClass;
    }

    public EAttribute getParamConfMultiplicity_LowerMultiplicity() {
        return (EAttribute)this.paramConfMultiplicityEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getParamConfMultiplicity_UpperMultiplicity() {
        return (EAttribute)this.paramConfMultiplicityEClass.getEStructuralFeatures().get(1);
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

    public EClass getCommonConfigurationAttributes() {
        return this.commonConfigurationAttributesEClass;
    }

    public EReference getCommonConfigurationAttributes_ConfigurationClassAffection() {
        return (EReference)this.commonConfigurationAttributesEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCommonConfigurationAttributes_ImplementationConfigClass() {
        return (EReference)this.commonConfigurationAttributesEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCommonConfigurationAttributes_Origin() {
        return (EAttribute)this.commonConfigurationAttributesEClass.getEStructuralFeatures().get(2);
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

    public EClass getImplementationConfigClass() {
        return this.implementationConfigClassEClass;
    }

    public EReference getImplementationConfigClass_CommonConfigurationAttributes() {
        return (EReference)this.implementationConfigClassEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getImplementationConfigClass_ConfigClass() {
        return (EAttribute)this.implementationConfigClassEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getImplementationConfigClass_ConfigVariant() {
        return (EAttribute)this.implementationConfigClassEClass.getEStructuralFeatures().get(2);
    }

    public EClass getChoiceReferenceParamDef() {
        return this.choiceReferenceParamDefEClass;
    }

    public EReference getChoiceReferenceParamDef_Destinations() {
        return (EReference)this.choiceReferenceParamDefEClass.getEStructuralFeatures().get(0);
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

    public EReference getModuleDef_RefinedModuleDef() {
        return (EReference)this.moduleDefEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getModuleDef_SupportedConfigVariants() {
        return (EAttribute)this.moduleDefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getModuleDef_Containers() {
        return (EReference)this.moduleDefEClass.getEStructuralFeatures().get(2);
    }

    public EClass getForeignReferenceParamDef() {
        return this.foreignReferenceParamDefEClass;
    }

    public EAttribute getForeignReferenceParamDef_DestinationType() {
        return (EAttribute)this.foreignReferenceParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFunctionNameDef() {
        return this.functionNameDefEClass;
    }

    public EClass getLinkerSymbolDef() {
        return this.linkerSymbolDefEClass;
    }

    public EClass getInstanceReferenceParamDef() {
        return this.instanceReferenceParamDefEClass;
    }

    public EAttribute getInstanceReferenceParamDef_DestinationContext() {
        return (EAttribute)this.instanceReferenceParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getInstanceReferenceParamDef_DestinationType() {
        return (EAttribute)this.instanceReferenceParamDefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getReferenceParamDef() {
        return this.referenceParamDefEClass;
    }

    public EReference getReferenceParamDef_Destination() {
        return (EReference)this.referenceParamDefEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSymbolicNameReferenceParamDef() {
        return this.symbolicNameReferenceParamDefEClass;
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

    public EEnum getCalculationLanguage() {
        return this.calculationLanguageEEnum;
    }

    public EEnum getConfigurationAffection() {
        return this.configurationAffectionEEnum;
    }

    public EEnum getConfigurationVariant() {
        return this.configurationVariantEEnum;
    }

    public EEnum getConfigurationClass() {
        return this.configurationClassEEnum;
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
        this.createEAttribute(this.booleanParamDefEClass, 24);
        this.choiceContainerDefEClass = this.createEClass(1);
        this.createEReference(this.choiceContainerDefEClass, 20);
        this.containerDefEClass = this.createEClass(2);
        this.createEAttribute(this.containerDefEClass, 19);
        this.paramConfMultiplicityEClass = this.createEClass(3);
        this.createEAttribute(this.paramConfMultiplicityEClass, 4);
        this.createEAttribute(this.paramConfMultiplicityEClass, 5);
        this.paramConfContainerDefEClass = this.createEClass(4);
        this.createEReference(this.paramConfContainerDefEClass, 20);
        this.createEAttribute(this.paramConfContainerDefEClass, 21);
        this.createEReference(this.paramConfContainerDefEClass, 22);
        this.createEReference(this.paramConfContainerDefEClass, 23);
        this.createEReference(this.paramConfContainerDefEClass, 24);
        this.configReferenceEClass = this.createEClass(5);
        this.createEReference(this.configReferenceEClass, 22);
        this.commonConfigurationAttributesEClass = this.createEClass(6);
        this.createEReference(this.commonConfigurationAttributesEClass, 19);
        this.createEReference(this.commonConfigurationAttributesEClass, 20);
        this.createEAttribute(this.commonConfigurationAttributesEClass, 21);
        this.configurationClassAffectionEClass = this.createEClass(7);
        this.createEReference(this.configurationClassAffectionEClass, 4);
        this.createEReference(this.configurationClassAffectionEClass, 5);
        this.createEAttribute(this.configurationClassAffectionEClass, 6);
        this.implementationConfigClassEClass = this.createEClass(8);
        this.createEReference(this.implementationConfigClassEClass, 4);
        this.createEAttribute(this.implementationConfigClassEClass, 5);
        this.createEAttribute(this.implementationConfigClassEClass, 6);
        this.choiceReferenceParamDefEClass = this.createEClass(9);
        this.createEReference(this.choiceReferenceParamDefEClass, 23);
        this.derivedBooleanParamDefEClass = this.createEClass(10);
        this.derivedParamTypeEClass = this.createEClass(11);
        this.createEAttribute(this.derivedParamTypeEClass, 4);
        this.createEAttribute(this.derivedParamTypeEClass, 5);
        this.derivedEnumerationParamDefEClass = this.createEClass(12);
        this.enumerationParamDefEClass = this.createEClass(13);
        this.createEAttribute(this.enumerationParamDefEClass, 24);
        this.createEReference(this.enumerationParamDefEClass, 25);
        this.enumerationLiteralDefEClass = this.createEClass(14);
        this.createEReference(this.enumerationLiteralDefEClass, 17);
        this.derivedFloatParamDefEClass = this.createEClass(15);
        this.floatParamDefEClass = this.createEClass(16);
        this.createEAttribute(this.floatParamDefEClass, 24);
        this.createEAttribute(this.floatParamDefEClass, 25);
        this.createEAttribute(this.floatParamDefEClass, 26);
        this.derivedIntegerParamDefEClass = this.createEClass(17);
        this.integerParamDefEClass = this.createEClass(18);
        this.createEAttribute(this.integerParamDefEClass, 24);
        this.createEAttribute(this.integerParamDefEClass, 25);
        this.createEAttribute(this.integerParamDefEClass, 26);
        this.derivedStringParamDefEClass = this.createEClass(19);
        this.stringParamDefEClass = this.createEClass(20);
        this.createEAttribute(this.stringParamDefEClass, 24);
        this.ecuParameterDefinitionEClass = this.createEClass(21);
        this.createEReference(this.ecuParameterDefinitionEClass, 19);
        this.moduleDefEClass = this.createEClass(22);
        this.createEReference(this.moduleDefEClass, 21);
        this.createEAttribute(this.moduleDefEClass, 22);
        this.createEReference(this.moduleDefEClass, 23);
        this.foreignReferenceParamDefEClass = this.createEClass(23);
        this.createEAttribute(this.foreignReferenceParamDefEClass, 23);
        this.functionNameDefEClass = this.createEClass(24);
        this.linkerSymbolDefEClass = this.createEClass(25);
        this.instanceReferenceParamDefEClass = this.createEClass(26);
        this.createEAttribute(this.instanceReferenceParamDefEClass, 23);
        this.createEAttribute(this.instanceReferenceParamDefEClass, 24);
        this.referenceParamDefEClass = this.createEClass(27);
        this.createEReference(this.referenceParamDefEClass, 23);
        this.symbolicNameReferenceParamDefEClass = this.createEClass(28);
        this.configParameterEClass = this.createEClass(29);
        this.createEReference(this.configParameterEClass, 22);
        this.createEAttribute(this.configParameterEClass, 23);
        this.calculationLanguageEEnum = this.createEEnum(30);
        this.configurationAffectionEEnum = this.createEEnum(31);
        this.configurationVariantEEnum = this.createEEnum(32);
        this.configurationClassEEnum = this.createEEnum(33);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ecucparameterdef");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/ecucpd");
        GecucparameterdefPackage theGecucparameterdefPackage = (GecucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/pd");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        this.booleanParamDefEClass.getESuperTypes().add((Object)this.getConfigParameter());
        this.booleanParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGBooleanParamDef());
        this.choiceContainerDefEClass.getESuperTypes().add((Object)this.getContainerDef());
        this.choiceContainerDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGChoiceContainerDef());
        this.containerDefEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.containerDefEClass.getESuperTypes().add((Object)this.getParamConfMultiplicity());
        this.containerDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGContainerDef());
        this.paramConfMultiplicityEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.paramConfMultiplicityEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGParamConfMultiplicity());
        this.paramConfContainerDefEClass.getESuperTypes().add((Object)this.getContainerDef());
        this.paramConfContainerDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGParamConfContainerDef());
        this.configReferenceEClass.getESuperTypes().add((Object)this.getCommonConfigurationAttributes());
        this.configReferenceEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGConfigReference());
        this.commonConfigurationAttributesEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.commonConfigurationAttributesEClass.getESuperTypes().add((Object)this.getParamConfMultiplicity());
        this.commonConfigurationAttributesEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGCommonConfigurationAttributes());
        this.configurationClassAffectionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.implementationConfigClassEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.choiceReferenceParamDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.choiceReferenceParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGChoiceReferenceDef());
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
        this.foreignReferenceParamDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.foreignReferenceParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGForeignReferenceDef());
        this.functionNameDefEClass.getESuperTypes().add((Object)this.getLinkerSymbolDef());
        this.functionNameDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGFunctionNameDef());
        this.linkerSymbolDefEClass.getESuperTypes().add((Object)this.getStringParamDef());
        this.linkerSymbolDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGLinkerSymbolDef());
        this.instanceReferenceParamDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.instanceReferenceParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGInstanceReferenceDef());
        this.referenceParamDefEClass.getESuperTypes().add((Object)this.getConfigReference());
        this.referenceParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGReferenceDef());
        this.symbolicNameReferenceParamDefEClass.getESuperTypes().add((Object)this.getReferenceParamDef());
        this.symbolicNameReferenceParamDefEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGSymbolicNameReferenceDef());
        this.configParameterEClass.getESuperTypes().add((Object)this.getCommonConfigurationAttributes());
        this.configParameterEClass.getESuperTypes().add((Object)theGecucparameterdefPackage.getGConfigParameter());
        this.initEClass(this.booleanParamDefEClass, BooleanParamDef.class, "BooleanParamDef", false, false, true);
        this.initEAttribute(this.getBooleanParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "defaultValue", "false", 0, 1, BooleanParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.choiceContainerDefEClass, ChoiceContainerDef.class, "ChoiceContainerDef", false, false, true);
        this.initEReference(this.getChoiceContainerDef_Choices(), (EClassifier)this.getParamConfContainerDef(), this.getParamConfContainerDef_ChoiceContainerDef(), "choices", null, 0, -1, ChoiceContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.containerDefEClass, ContainerDef.class, "ContainerDef", true, false, true);
        this.initEAttribute(this.getContainerDef_PostBuildChangeable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "postBuildChangeable", "false", 0, 1, ContainerDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.paramConfMultiplicityEClass, ParamConfMultiplicity.class, "ParamConfMultiplicity", true, false, true);
        this.initEAttribute(this.getParamConfMultiplicity_LowerMultiplicity(), (EClassifier)thePrimitivetypesPackage.getString(), "lowerMultiplicity", "", 0, 1, ParamConfMultiplicity.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getParamConfMultiplicity_UpperMultiplicity(), (EClassifier)thePrimitivetypesPackage.getString(), "upperMultiplicity", "", 0, 1, ParamConfMultiplicity.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.paramConfContainerDefEClass, ParamConfContainerDef.class, "ParamConfContainerDef", false, false, true);
        this.initEReference(this.getParamConfContainerDef_ChoiceContainerDef(), (EClassifier)this.getChoiceContainerDef(), this.getChoiceContainerDef_Choices(), "choiceContainerDef", null, 0, 1, ParamConfContainerDef.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getParamConfContainerDef_MultipleConfigurationContainer(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "multipleConfigurationContainer", "false", 0, 1, ParamConfContainerDef.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getParamConfContainerDef_Parameters(), (EClassifier)this.getConfigParameter(), this.getConfigParameter_ParamConfContainerDef(), "parameters", null, 0, -1, ParamConfContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getParamConfContainerDef_References(), (EClassifier)this.getConfigReference(), this.getConfigReference_ParamConfContainerDef(), "references", null, 0, -1, ParamConfContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getParamConfContainerDef_SubContainers(), (EClassifier)this.getContainerDef(), null, "subContainers", null, 0, -1, ParamConfContainerDef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.configReferenceEClass, ConfigReference.class, "ConfigReference", true, false, true);
        this.initEReference(this.getConfigReference_ParamConfContainerDef(), (EClassifier)this.getParamConfContainerDef(), this.getParamConfContainerDef_References(), "paramConfContainerDef", null, 0, 1, ConfigReference.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.commonConfigurationAttributesEClass, CommonConfigurationAttributes.class, "CommonConfigurationAttributes", true, false, true);
        this.initEReference(this.getCommonConfigurationAttributes_ConfigurationClassAffection(), (EClassifier)this.getConfigurationClassAffection(), this.getConfigurationClassAffection_CommonConfigurationAttributes(), "configurationClassAffection", null, 0, 1, CommonConfigurationAttributes.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommonConfigurationAttributes_ImplementationConfigClass(), (EClassifier)this.getImplementationConfigClass(), this.getImplementationConfigClass_CommonConfigurationAttributes(), "implementationConfigClass", null, 0, -1, CommonConfigurationAttributes.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCommonConfigurationAttributes_Origin(), (EClassifier)thePrimitivetypesPackage.getString(), "origin", "", 0, 1, CommonConfigurationAttributes.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.configurationClassAffectionEClass, ConfigurationClassAffection.class, "ConfigurationClassAffection", false, false, true);
        this.initEReference(this.getConfigurationClassAffection_CommonConfigurationAttributes(), (EClassifier)this.getCommonConfigurationAttributes(), this.getCommonConfigurationAttributes_ConfigurationClassAffection(), "commonConfigurationAttributes", null, 0, 1, ConfigurationClassAffection.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getConfigurationClassAffection_Affecteds(), (EClassifier)this.getCommonConfigurationAttributes(), null, "affecteds", null, 0, -1, ConfigurationClassAffection.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getConfigurationClassAffection_AffectionKind(), (EClassifier)this.getConfigurationAffection(), "affectionKind", "PC-AFFECTS-PB", 0, 1, ConfigurationClassAffection.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.implementationConfigClassEClass, ImplementationConfigClass.class, "ImplementationConfigClass", false, false, true);
        this.initEReference(this.getImplementationConfigClass_CommonConfigurationAttributes(), (EClassifier)this.getCommonConfigurationAttributes(), this.getCommonConfigurationAttributes_ImplementationConfigClass(), "commonConfigurationAttributes", null, 0, 1, ImplementationConfigClass.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getImplementationConfigClass_ConfigClass(), (EClassifier)this.getConfigurationClass(), "configClass", "POST-BUILD", 0, 1, ImplementationConfigClass.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getImplementationConfigClass_ConfigVariant(), (EClassifier)this.getConfigurationVariant(), "configVariant", "VARIANT-PRE-COMPILE", 0, 1, ImplementationConfigClass.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.choiceReferenceParamDefEClass, ChoiceReferenceParamDef.class, "ChoiceReferenceParamDef", false, false, true);
        this.initEReference(this.getChoiceReferenceParamDef_Destinations(), (EClassifier)this.getParamConfContainerDef(), null, "destinations", null, 0, -1, ChoiceReferenceParamDef.class, false, false, true, false, true, false, true, false, true);
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
        this.initEAttribute(this.getIntegerParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getUnlimitedInteger(), "defaultValue", "0", 0, 1, IntegerParamDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getIntegerParamDef_Max(), (EClassifier)thePrimitivetypesPackage.getUnlimitedInteger(), "max", "0", 0, 1, IntegerParamDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getIntegerParamDef_Min(), (EClassifier)thePrimitivetypesPackage.getUnlimitedInteger(), "min", "0", 0, 1, IntegerParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.derivedStringParamDefEClass, DerivedStringParamDef.class, "DerivedStringParamDef", false, false, true);
        this.initEClass(this.stringParamDefEClass, StringParamDef.class, "StringParamDef", false, false, true);
        this.initEAttribute(this.getStringParamDef_DefaultValue(), (EClassifier)thePrimitivetypesPackage.getString(), "defaultValue", "", 0, 1, StringParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.ecuParameterDefinitionEClass, EcuParameterDefinition.class, "EcuParameterDefinition", false, false, true);
        this.initEReference(this.getEcuParameterDefinition_Modules(), (EClassifier)this.getModuleDef(), null, "modules", null, 0, -1, EcuParameterDefinition.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.moduleDefEClass, ModuleDef.class, "ModuleDef", false, false, true);
        this.initEReference(this.getModuleDef_RefinedModuleDef(), (EClassifier)this.getModuleDef(), null, "refinedModuleDef", null, 0, 1, ModuleDef.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getModuleDef_SupportedConfigVariants(), (EClassifier)this.getConfigurationVariant(), "supportedConfigVariants", "VARIANT-PRE-COMPILE", 0, -1, ModuleDef.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getModuleDef_Containers(), (EClassifier)this.getContainerDef(), null, "containers", null, 0, -1, ModuleDef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.foreignReferenceParamDefEClass, ForeignReferenceParamDef.class, "ForeignReferenceParamDef", false, false, true);
        this.initEAttribute(this.getForeignReferenceParamDef_DestinationType(), (EClassifier)thePrimitivetypesPackage.getString(), "destinationType", "", 0, 1, ForeignReferenceParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.functionNameDefEClass, FunctionNameDef.class, "FunctionNameDef", false, false, true);
        this.initEClass(this.linkerSymbolDefEClass, LinkerSymbolDef.class, "LinkerSymbolDef", false, false, true);
        this.initEClass(this.instanceReferenceParamDefEClass, InstanceReferenceParamDef.class, "InstanceReferenceParamDef", false, false, true);
        this.initEAttribute(this.getInstanceReferenceParamDef_DestinationContext(), (EClassifier)thePrimitivetypesPackage.getString(), "destinationContext", "", 0, 1, InstanceReferenceParamDef.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInstanceReferenceParamDef_DestinationType(), (EClassifier)thePrimitivetypesPackage.getString(), "destinationType", "", 0, 1, InstanceReferenceParamDef.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.referenceParamDefEClass, ReferenceParamDef.class, "ReferenceParamDef", false, false, true);
        this.initEReference(this.getReferenceParamDef_Destination(), (EClassifier)this.getParamConfContainerDef(), null, "destination", null, 0, 1, ReferenceParamDef.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.symbolicNameReferenceParamDefEClass, SymbolicNameReferenceParamDef.class, "SymbolicNameReferenceParamDef", false, false, true);
        this.initEClass(this.configParameterEClass, ConfigParameter.class, "ConfigParameter", true, false, true);
        this.initEReference(this.getConfigParameter_ParamConfContainerDef(), (EClassifier)this.getParamConfContainerDef(), this.getParamConfContainerDef_Parameters(), "paramConfContainerDef", null, 0, 1, ConfigParameter.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getConfigParameter_SymbolicNameValue(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "symbolicNameValue", "false", 0, 1, ConfigParameter.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.calculationLanguageEEnum, CalculationLanguage.class, "CalculationLanguage");
        this.addEEnumLiteral(this.calculationLanguageEEnum, CalculationLanguage.INFORMAL);
        this.addEEnumLiteral(this.calculationLanguageEEnum, CalculationLanguage.ARFORMAL);
        this.initEEnum(this.configurationAffectionEEnum, ConfigurationAffection.class, "ConfigurationAffection");
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.PC_AFFECTS_PB);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.PC_AFFECTS_LT);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.PC_AFFECTS_LT_AND_PB);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.NO_AFFECT);
        this.addEEnumLiteral(this.configurationAffectionEEnum, ConfigurationAffection.LT_AFFECTS_PB);
        this.initEEnum(this.configurationVariantEEnum, ConfigurationVariant.class, "ConfigurationVariant");
        this.addEEnumLiteral(this.configurationVariantEEnum, ConfigurationVariant.VARIANT_PRE_COMPILE);
        this.addEEnumLiteral(this.configurationVariantEEnum, ConfigurationVariant.VARIANT_LINK_TIME);
        this.addEEnumLiteral(this.configurationVariantEEnum, ConfigurationVariant.VARIANT_POST_BUILD);
        this.addEEnumLiteral(this.configurationVariantEEnum, ConfigurationVariant.VARIANT_POST_BUILD_LOADABLE);
        this.addEEnumLiteral(this.configurationVariantEEnum, ConfigurationVariant.VARIANT_POST_BUILD_SELECTABLE);
        this.initEEnum(this.configurationClassEEnum, ConfigurationClass.class, "ConfigurationClass");
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.POST_BUILD);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.PRE_COMPILE);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.PUBLISHED_INFORMATION);
        this.addEEnumLiteral(this.configurationClassEEnum, ConfigurationClass.LINK);
        this.createResource("http://autosar.org/3.2.1/autosar3x/ecucpd");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ConfigParameterAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ContainerDefAnnotations();
        this.createTaggedValuesOfGeneralization_ParamConfMultiplicityAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_CommonConfigurationAttributesAnnotations();
        this.createTaggedValuesOfGeneralization_ConfigReferenceAnnotations();
        this.createTaggedValuesOfGeneralization_DerivedParamTypeAnnotations();
        this.createTaggedValuesOfGeneralization_BooleanParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_EnumerationParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_FloatParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_IntegerParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_StringParamDefAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_LinkerSymbolDefAnnotations();
        this.createTaggedValuesOfGeneralization_ReferenceParamDefAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "0B204D95-DABD-4519-809F-B1FF35EA44E9", "Created", "Wed Apr 20 18:29:23 CEST 2005", "Modified", "Tue Jun 26 07:50:34 CEST 2007", "Id", "-200181204", "Name", "ECUCParameterDefTemplate"});
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"GUID", "B4BAD506-8155-447b-9447-AF3D0A598DC5", "Created", "Thu Apr 07 13:14:34 CEST 2005", "Modified", "Wed Apr 12 10:19:13 CEST 2006", "Id", "-1603036622", "Name", "BooleanParamDef"});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"GUID", "315BC6A3-3A8E-4f78-9946-8A962A659AD2", "Id", "593168075", "Name", "defaultValue"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"GUID", "7D9151B3-98CE-45d5-A1A9-D8D2C4C8DB02", "Created", "Thu Nov 03 18:28:25 CET 2005", "Modified", "Tue Oct 02 07:32:59 CEST 2007", "Id", "-1033063407", "Name", "CalculationLanguage"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum.getELiterals().get(0), source, new String[]{"GUID", "C55BE2B4-5A0E-4a3c-8CF9-B08D35951E20", "Id", "2123357351", "Name", "informal"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum.getELiterals().get(1), source, new String[]{"GUID", "74494EEB-DA96-4e13-8E99-3498E973B329", "Id", "1191303203", "Name", "ARformal"});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"GUID", "FEC9099E-46A5-4a21-A006-353E091C805B", "Created", "Mon May 23 09:17:35 CEST 2005", "Modified", "Mon Aug 07 10:14:56 CEST 2006", "Id", "1116832655", "Name", "ChoiceContainerDef"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"GUID", "461B0CA6-942A-4c36-84DE-D6F335B7876B", "Created", "Thu Apr 07 10:13:20 CEST 2005", "Modified", "Wed Mar 29 15:08:42 CEST 2006", "Id", "-1740936555", "Name", "ContainerDef"});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"GUID", "453EA0CA-995C-4008-835D-70940EEB86E6", "Id", "-359657314", "Name", "postBuildChangeable"});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"GUID", "8419A7C8-F18F-4cba-AE4F-CAF7A24F6B7D", "Created", "Wed Apr 20 11:35:09 CEST 2005", "Modified", "Thu Jul 26 14:04:59 CEST 2007", "Id", "1547115141", "Name", "ParamConfMultiplicity"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"GUID", "DBDBBE9C-2EE9-4480-98B8-CDD2D0BE99EE", "Id", "2143496034", "Name", "lowerMultiplicity"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"GUID", "CDB51E98-D45A-4f8a-94F9-7C74152265D2", "Id", "959445051", "Name", "upperMultiplicity"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"GUID", "83FBCE41-1C08-4054-9DA1-9D3235667B17", "Created", "Wed Apr 20 11:50:02 CEST 2005", "Modified", "Wed Sep 29 15:50:27 CEST 2010", "Id", "2093869368", "Name", "ParamConfContainerDef"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"GUID", "21FA503A-9078-4685-8675-86F7D257F393", "Id", "1157198465", "Name", "multipleConfigurationContainer"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"GUID", "9BD20B72-E764-487f-8794-1FD0249EB7B8", "Created", "Sun Jun 05 11:13:39 CEST 2005", "Modified", "Thu Aug 02 21:02:29 CEST 2007", "Id", "1117962819", "Name", "ConfigReference"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"GUID", "DA17A62A-E6DB-4a62-872A-D72F739DA6FC", "Created", "Thu Feb 16 13:24:12 CET 2006", "Modified", "Thu Aug 02 21:08:23 CEST 2007", "Id", "1665731864", "Name", "CommonConfigurationAttributes"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"GUID", "DAAD699E-359F-410f-BCBD-6B8540F5C289", "Id", "528318704", "Name", "origin"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"GUID", "F7CEE5F2-6E88-4aef-9269-4C7DE5E139A3", "Created", "Tue Aug 08 12:15:30 CEST 2006", "Modified", "Wed Mar 09 08:44:15 CET 2011", "Id", "1155032130", "Name", "ConfigurationClassAffection"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_AffectionKind(), source, new String[]{"GUID", "A00A8A33-0143-40c5-8636-A06302183912", "Id", "1248619630", "Name", "affectionKind"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"GUID", "E896D8A5-A0CC-4fef-8893-218C44AC1C30", "Created", "Thu Nov 03 18:22:43 CET 2005", "Modified", "Thu Aug 10 08:49:45 CEST 2006", "Id", "-961350307", "Name", "ConfigurationAffection"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(0), source, new String[]{"GUID", "20511870-7DB0-472d-BEFA-13CEB1D6EB60", "Id", "-1462260013", "Name", "PCAffectsPB"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(1), source, new String[]{"GUID", "61789B01-D5A1-466c-AB89-B287A3DFF6F5", "Id", "-64573606", "Name", "PCAffectsLT"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(2), source, new String[]{"GUID", "2ACE6968-C552-4e89-AA9D-DC41D8D0A326", "Id", "200694022", "Name", "PCAffectsLTAndPB"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(3), source, new String[]{"GUID", "E2D01225-26A9-4356-8448-31B9E09A99DD", "Id", "298387983", "Name", "NOAffect"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(4), source, new String[]{"GUID", "05728455-4533-4e6a-BE27-03E0EC84BC59", "Id", "1253788952", "Name", "LTAffectsPB"});
        this.addAnnotation((ENamedElement)this.implementationConfigClassEClass, source, new String[]{"GUID", "605BB0E2-421F-4770-BEE6-EAEEEB44F238", "Created", "Tue Aug 28 08:08:32 CEST 2007", "Modified", "Tue Aug 28 08:09:22 CEST 2007", "Id", "-264131626", "Name", "ImplementationConfigClass"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigClass(), source, new String[]{"GUID", "4C152ECC-4E5C-4e52-B1FC-0EF58EA17650", "Id", "-762222437", "Name", "configClass"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigVariant(), source, new String[]{"GUID", "35F0F05E-1898-4b13-ADE9-14C7B76578A1", "Id", "-354290366", "Name", "configVariant"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum, source, new String[]{"GUID", "49B39956-9C11-4617-B875-3D2818293A3D", "Created", "Tue Aug 28 07:41:48 CEST 2007", "Modified", "Tue Aug 28 07:50:52 CEST 2007", "Id", "1188279708", "Name", "ConfigurationVariant"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(0), source, new String[]{"GUID", "CB5968F4-30DD-42b3-80C3-96E2E7EDB2E4", "Id", "-1968536278", "Name", "VariantPreCompile"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(1), source, new String[]{"GUID", "2F6C63A5-324B-48fe-89D8-A89DBCD64D0F", "Id", "-1944247197", "Name", "VariantLinkTime"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(2), source, new String[]{"GUID", "444AE85F-BAD8-4153-8EEA-A6FA51374251", "Id", "965760872", "Name", "VariantPostBuild"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(3), source, new String[]{"GUID", "7BDB8539-27D5-43ca-9516-F70F1DAE57F8", "Id", "1299675897", "Name", "VariantPostBuildLoadable"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(4), source, new String[]{"GUID", "7EEAB25A-3EA9-4905-BE35-707BD8A53D51", "Id", "-1749265466", "Name", "VariantPostBuildSelectable"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"GUID", "EA3930DA-1E1D-42c9-9D6F-E9A336B83EC2", "Created", "Thu Nov 03 18:22:43 CET 2005", "Modified", "Thu Feb 16 13:31:46 CET 2006", "Id", "1480526182", "Name", "ConfigurationClass"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(0), source, new String[]{"GUID", "9CA66FEC-E4FA-4482-B96C-0A5311DEC500", "Id", "479377687", "Name", "PostBuild"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(1), source, new String[]{"GUID", "9A5E0D80-FB5F-46d8-BEA8-C7D18066CA9D", "Id", "640542212", "Name", "PreCompile"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(2), source, new String[]{"GUID", "954B0EB1-B666-497f-A93B-19715E8FB4E8", "Id", "1151400203", "Name", "PublishedInformation"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(3), source, new String[]{"GUID", "6DDE780F-74AA-496f-8421-DE24EB90BA33", "Id", "1605961397", "Name", "Link"});
        this.addAnnotation((ENamedElement)this.choiceReferenceParamDefEClass, source, new String[]{"GUID", "350F4D81-D603-421b-BA18-54400D117BAB", "Created", "Wed May 18 22:09:34 CEST 2005", "Modified", "Tue Jun 26 15:22:01 CEST 2007", "Id", "1116446974", "Name", "ChoiceReferenceParamDef"});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"GUID", "FF8E5E3E-7D33-4af9-8D8D-71EC2E4EEA79", "Created", "Thu Apr 07 13:14:34 CEST 2005", "Modified", "Thu Dec 01 11:11:02 CET 2005", "Id", "675479335", "Name", "DerivedBooleanParamDef"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"GUID", "B2F5CD31-460D-4563-8C09-008DFC0FDFDA", "Created", "Tue Sep 06 15:00:16 CEST 2005", "Modified", "Mon May 21 09:48:14 CEST 2007", "Id", "1291180441", "Name", "DerivedParamType"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationFormula(), source, new String[]{"GUID", "F4E0B5DD-CF75-4756-8CDC-A0F44D7EA851", "Id", "1567450590", "Name", "calculationFormula"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationLanguage(), source, new String[]{"GUID", "3AADC5EC-D778-440a-9D8E-5A10D14F797B", "Id", "1463835655", "Name", "calculationLanguage"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"GUID", "F54CC204-C22E-42d9-BF5F-2D0B6C04BDC7", "Created", "Thu Apr 07 10:16:49 CEST 2005", "Modified", "Thu Dec 01 11:11:02 CET 2005", "Id", "-222844543", "Name", "DerivedEnumerationParamDef"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"GUID", "AB9EC0A5-D391-49ce-A972-6CA069E6BA8A", "Created", "Thu Apr 07 10:16:49 CEST 2005", "Modified", "Wed Apr 12 22:30:28 CEST 2006", "Id", "-655990434", "Name", "EnumerationParamDef"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_DefaultValue(), source, new String[]{"GUID", "303809F8-3735-47f8-8428-41F04CE71F79", "Id", "494506375", "Name", "defaultValue"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"GUID", "1BA8F3AD-6A8F-4880-92C1-B86E13A9C54C", "Created", "Thu Apr 07 10:17:56 CEST 2005", "Modified", "Tue Oct 31 10:41:41 CET 2006", "Id", "1591570291", "Name", "EnumerationLiteralDef"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"GUID", "6B952936-06BE-4186-B9E8-43700FF16D46", "Created", "Thu Apr 07 13:13:06 CEST 2005", "Modified", "Thu Dec 01 11:11:02 CET 2005", "Id", "1576576931", "Name", "DerivedFloatParamDef"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"GUID", "9D679D6B-F304-4b84-A9A7-BA84C0C1119D", "Created", "Thu Apr 07 13:13:06 CEST 2005", "Modified", "Thu Feb 16 13:39:38 CET 2006", "Id", "722539695", "Name", "FloatParamDef"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_DefaultValue(), source, new String[]{"GUID", "0031BFBD-77BF-43cb-9B83-B4FDC2F664C3", "Id", "-470245230", "Name", "defaultValue"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Max(), source, new String[]{"GUID", "A6768834-F829-4ed8-AAD8-31CE46AE351B", "Id", "-546314635", "Name", "max"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Min(), source, new String[]{"GUID", "48B525E6-E5EE-4d52-B4CD-717482C2E89F", "Id", "-346694460", "Name", "min"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"GUID", "5A0D451A-D363-4146-818C-C5624C684957", "Created", "Thu Apr 07 10:16:37 CEST 2005", "Modified", "Wed Jun 07 14:05:46 CEST 2006", "Id", "-284189387", "Name", "DerivedIntegerParamDef"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"GUID", "FBD47315-78A2-4644-B9DC-984451127CAF", "Created", "Thu Apr 07 10:16:37 CEST 2005", "Modified", "Wed Apr 12 11:13:25 CEST 2006", "Id", "1312007264", "Name", "IntegerParamDef"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_DefaultValue(), source, new String[]{"GUID", "58ADCD1E-98B2-421e-9842-C759B8235C72", "Id", "1147203439", "Name", "defaultValue"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Max(), source, new String[]{"GUID", "6A4C6A14-E82B-42d5-BA32-8770DA8D9BFB", "Id", "1317183886", "Name", "max"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Min(), source, new String[]{"GUID", "F595D501-F8EA-4694-9E67-CD59A1F37B01", "Id", "1556227297", "Name", "min"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"GUID", "BE554152-297E-4282-B314-5B3CAA3E7154", "Created", "Thu Apr 07 13:15:06 CEST 2005", "Modified", "Wed Apr 12 10:43:02 CEST 2006", "Id", "-72829659", "Name", "DerivedStringParamDef"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"GUID", "CB52C17C-6E64-4bf6-9735-0F026A8FAB54", "Created", "Thu Apr 07 13:15:06 CEST 2005", "Modified", "Thu Dec 01 11:13:27 CET 2005", "Id", "-605020157", "Name", "StringParamDef"});
        this.addAnnotation((ENamedElement)this.getStringParamDef_DefaultValue(), source, new String[]{"GUID", "21E83053-5B2B-4dd9-8695-C6B42D5DFC15", "Id", "-1749527928", "Name", "defaultValue"});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"GUID", "8310DA41-DCAF-4f2a-88C9-0107FA3117EA", "Created", "Wed Aug 03 09:44:13 CEST 2005", "Modified", "Mon Aug 21 14:28:40 CEST 2006", "Id", "-2106301497", "Name", "EcuParameterDefinition"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"GUID", "A267C9B9-8CB9-4e89-AD8A-6A01C7F82B82", "Created", "Fri Nov 04 08:35:40 CET 2005", "Modified", "Thu May 04 18:14:17 CEST 2006", "Id", "1131089740", "Name", "ModuleDef"});
        this.addAnnotation((ENamedElement)this.getModuleDef_SupportedConfigVariants(), source, new String[]{"GUID", "6E51668C-8F7B-4e36-8C09-52A03718A4E6", "Id", "1188394005", "Name", "supportedConfigVariant"});
        this.addAnnotation((ENamedElement)this.foreignReferenceParamDefEClass, source, new String[]{"GUID", "E07D81DE-6669-41fc-8487-0656AB259A0E", "Created", "Mon Dec 05 13:52:19 CET 2005", "Modified", "Tue Jun 26 15:21:54 CEST 2007", "Id", "1133787139", "Name", "ForeignReferenceParamDef"});
        this.addAnnotation((ENamedElement)this.getForeignReferenceParamDef_DestinationType(), source, new String[]{"GUID", "85CF7FE9-6BBE-4de4-9300-21F75F4743FF", "Id", "-181499415", "Name", "destinationType"});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"GUID", "D9803415-1E50-4ecd-8E8A-7C3D7F3B6563", "Created", "Thu Apr 21 11:13:21 CEST 2005", "Modified", "Tue Dec 13 21:59:20 CET 2005", "Id", "1366922272", "Name", "FunctionNameDef"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"GUID", "95BC451D-7F02-42cb-9FD3-3B07356F7AEF", "Created", "Thu Apr 21 11:13:21 CEST 2005", "Modified", "Thu Aug 10 08:58:25 CEST 2006", "Id", "-781583231", "Name", "LinkerSymbolDef"});
        this.addAnnotation((ENamedElement)this.instanceReferenceParamDefEClass, source, new String[]{"GUID", "DA1FBB63-1D61-4523-ACD2-4481A461AF86", "Created", "Tue Apr 19 17:29:14 CEST 2005", "Modified", "Tue Jun 26 15:21:50 CEST 2007", "Id", "-86338640", "Name", "InstanceReferenceParamDef"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationContext(), source, new String[]{"GUID", "8E24E8D3-4C70-4d1d-8FED-3E118C5492DD", "Id", "1151408706", "Name", "destinationContext"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationType(), source, new String[]{"GUID", "CCE54462-5E2F-4b05-AF67-B4ECF2B4AE2C", "Id", "-182708751", "Name", "destinationType"});
        this.addAnnotation((ENamedElement)this.referenceParamDefEClass, source, new String[]{"GUID", "A9E98718-94D1-4d76-8895-1D5FF0B5663F", "Created", "Fri Apr 08 10:24:17 CEST 2005", "Modified", "Tue Jun 26 15:20:20 CEST 2007", "Id", "-1547773332", "Name", "ReferenceParamDef"});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceParamDefEClass, source, new String[]{"GUID", "7C5A05B7-B05A-452b-9E86-BEBC1843ED34", "Created", "Tue Dec 13 15:49:08 CET 2005", "Modified", "Mon Aug 06 07:55:48 CEST 2007", "Id", "1134485348", "Name", "SymbolicNameReferenceParamDef"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"GUID", "85F8ECDA-408A-4d05-90AA-25102F16E21C", "Created", "Thu Apr 07 10:15:42 CEST 2005", "Modified", "Thu Aug 02 21:02:15 CEST 2007", "Id", "-1077318403", "Name", "ConfigParameter"});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"GUID", "DEBAAD99-3850-4fb4-8C11-2F15AB0CC9B0", "Id", "1784230155", "Name", "symbolicNameValue"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ECUC-PARAMETER-DEF-TEMPLATE", "xml.namePlural", "ECUC-PARAMETER-DEF-TEMPLATES"});
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "BooleanParamDef", "xml.tags", "xml.sequenceOffset=\"0\";mmt.qualifiedName=\"BooleanParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "BOOLEAN-PARAM-DEF", "xml.namePlural", "BOOLEAN-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BooleanParamDef.defaultValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BooleanParamDef.defaultValue", "pureMM.maxOccurs", "1", "xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"mmt.qualifiedName", "CalculationLanguage", "xml.tags", "mmt.qualifiedName=\"CalculationLanguage\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CALCULATION-LANGUAGE", "xml.namePlural", "CALCULATION-LANGUAGES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "CalculationLanguage.informal", "xml.tags", "mmt.qualifiedName=\"CalculationLanguage.informal\"", "xml.name", "INFORMAL", "xml.namePlural", "INFORMALS"});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "CalculationLanguage.ARformal", "xml.tags", "mmt.qualifiedName=\"CalculationLanguage.ARformal\"", "xml.name", "A-RFORMAL", "xml.namePlural", "A-RFORMALS"});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"mmt.qualifiedName", "ChoiceContainerDef", "xml.tags", "mmt.qualifiedName=\"ChoiceContainerDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CHOICE-CONTAINER-DEF", "xml.namePlural", "CHOICE-CONTAINER-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getChoiceContainerDef_Choices(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"choice.ChoiceContainerDef\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "choice.ChoiceContainerDef", "pureMM.maxOccurs", "-1", "xml.name", "CHOICE", "xml.namePlural", "CHOICES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"mmt.qualifiedName", "ContainerDef", "xml.tags", "mmt.qualifiedName=\"ContainerDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONTAINER-DEF", "xml.namePlural", "CONTAINER-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ContainerDef.postBuildChangeable\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ContainerDef.postBuildChangeable", "pureMM.maxOccurs", "1", "xml.name", "POST-BUILD-CHANGEABLE", "xml.namePlural", "POST-BUILD-CHANGEABLES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"mmt.qualifiedName", "ParamConfMultiplicity", "xml.tags", "mmt.qualifiedName=\"ParamConfMultiplicity\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PARAM-CONF-MULTIPLICITY", "xml.namePlural", "PARAM-CONF-MULTIPLICITYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ParamConfMultiplicity.lowerMultiplicity\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ParamConfMultiplicity.lowerMultiplicity", "pureMM.maxOccurs", "1", "xml.name", "LOWER-MULTIPLICITY", "xml.namePlural", "LOWER-MULTIPLICITYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ParamConfMultiplicity.upperMultiplicity\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ParamConfMultiplicity.upperMultiplicity", "pureMM.maxOccurs", "1", "xml.name", "UPPER-MULTIPLICITY", "xml.namePlural", "UPPER-MULTIPLICITYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"mmt.qualifiedName", "ParamConfContainerDef", "xml.tags", "mmt.qualifiedName=\"ParamConfContainerDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PARAM-CONF-CONTAINER-DEF", "xml.namePlural", "PARAM-CONF-CONTAINER-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ParamConfContainerDef.multipleConfigurationContainer\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ParamConfContainerDef.multipleConfigurationContainer", "pureMM.maxOccurs", "1", "xml.name", "MULTIPLE-CONFIGURATION-CONTAINER", "xml.namePlural", "MULTIPLE-CONFIGURATION-CONTAINERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_Parameters(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"parameter.ParamConfContainerDef\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "parameter.ParamConfContainerDef", "pureMM.maxOccurs", "-1", "xml.name", "PARAMETER", "xml.namePlural", "PARAMETERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_References(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"reference.ParamConfContainerDef\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "reference.ParamConfContainerDef", "pureMM.maxOccurs", "-1", "xml.name", "REFERENCE", "xml.namePlural", "REFERENCES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_SubContainers(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"subContainer.ParamConfContainerDef\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "subContainer.ParamConfContainerDef", "pureMM.maxOccurs", "-1", "xml.name", "SUB-CONTAINER", "xml.namePlural", "SUB-CONTAINERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"mmt.qualifiedName", "ConfigReference", "xml.tags", "mmt.qualifiedName=\"ConfigReference\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONFIG-REFERENCE", "xml.namePlural", "CONFIG-REFERENCES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"mmt.qualifiedName", "CommonConfigurationAttributes", "xml.tags", "mmt.qualifiedName=\"CommonConfigurationAttributes\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMMON-CONFIGURATION-ATTRIBUTES", "xml.namePlural", "COMMON-CONFIGURATION-ATTRIBUTESS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ConfigurationClassAffection(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"configurationClassAffection.CommonConfigurationAttributes\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "configurationClassAffection.CommonConfigurationAttributes", "pureMM.maxOccurs", "1", "xml.name", "CONFIGURATION-CLASS-AFFECTION", "xml.namePlural", "CONFIGURATION-CLASS-AFFECTIONS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ImplementationConfigClass(), source, new String[]{"mmt.qualifiedName", "implementationConfigClass.CommonConfigurationAttributes", "xml.tags", "xml.namePlural=\"IMPLEMENTATION-CONFIG-CLASSES\";mmt.qualifiedName=\"implementationConfigClass.CommonConfigurationAttributes\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "xml.namePlural", "IMPLEMENTATION-CONFIG-CLASSES", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "-1", "xml.name", "IMPLEMENTATION-CONFIG-CLASS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"CommonConfigurationAttributes.origin\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "CommonConfigurationAttributes.origin", "pureMM.maxOccurs", "1", "xml.name", "ORIGIN", "xml.namePlural", "ORIGINS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"mmt.qualifiedName", "ConfigurationClassAffection", "xml.tags", "mmt.qualifiedName=\"ConfigurationClassAffection\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONFIGURATION-CLASS-AFFECTION", "xml.namePlural", "CONFIGURATION-CLASS-AFFECTIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_Affecteds(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ConfigurationClassAffection.affected\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ConfigurationClassAffection.affected", "pureMM.maxOccurs", "-1", "xml.name", "AFFECTED-REF", "xml.namePlural", "AFFECTED-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_AffectionKind(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ConfigurationClassAffection.affectionKind\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ConfigurationClassAffection.affectionKind", "pureMM.maxOccurs", "1", "xml.name", "AFFECTION-KIND", "xml.namePlural", "AFFECTION-KINDS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"mmt.qualifiedName", "ConfigurationAffection", "xml.tags", "mmt.qualifiedName=\"ConfigurationAffection\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONFIGURATION-AFFECTION", "xml.namePlural", "CONFIGURATION-AFFECTIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "ConfigurationAffection.PCAffectsPB", "xml.tags", "mmt.qualifiedName=\"ConfigurationAffection.PCAffectsPB\"", "xml.name", "PC-AFFECTS-PB", "xml.namePlural", "PC-AFFECTS-PBS"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "ConfigurationAffection.PCAffectsLT", "xml.tags", "mmt.qualifiedName=\"ConfigurationAffection.PCAffectsLT\"", "xml.name", "PC-AFFECTS-LT", "xml.namePlural", "PC-AFFECTS-LTS"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(2), source, new String[]{"mmt.qualifiedName", "ConfigurationAffection.PCAffectsLTAndPB", "xml.tags", "mmt.qualifiedName=\"ConfigurationAffection.PCAffectsLTAndPB\"", "xml.name", "PC-AFFECTS-LT-AND-PB", "xml.namePlural", "PC-AFFECTS-LT-AND-PBS"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(3), source, new String[]{"mmt.qualifiedName", "ConfigurationAffection.NOAffect", "xml.tags", "mmt.qualifiedName=\"ConfigurationAffection.NOAffect\"", "xml.name", "NO-AFFECT", "xml.namePlural", "NO-AFFECTS"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum.getELiterals().get(4), source, new String[]{"mmt.qualifiedName", "ConfigurationAffection.LTAffectsPB", "xml.tags", "mmt.qualifiedName=\"ConfigurationAffection.LTAffectsPB\"", "xml.name", "LT-AFFECTS-PB", "xml.namePlural", "LT-AFFECTS-PBS"});
        this.addAnnotation((ENamedElement)this.implementationConfigClassEClass, source, new String[]{"mmt.qualifiedName", "ImplementationConfigClass", "xml.tags", "mmt.qualifiedName=\"ImplementationConfigClass\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "IMPLEMENTATION-CONFIG-CLASS", "xml.namePlural", "IMPLEMENTATION-CONFIG-CLASSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigClass(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ImplementationConfigClass.configClass\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ImplementationConfigClass.configClass", "pureMM.maxOccurs", "1", "xml.name", "CONFIG-CLASS", "xml.namePlural", "CONFIG-CLASSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigVariant(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ImplementationConfigClass.configVariant\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ImplementationConfigClass.configVariant", "pureMM.maxOccurs", "1", "xml.name", "CONFIG-VARIANT", "xml.namePlural", "CONFIG-VARIANTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum, source, new String[]{"mmt.qualifiedName", "ConfigurationVariant", "xml.tags", "mmt.qualifiedName=\"ConfigurationVariant\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONFIGURATION-VARIANT", "xml.namePlural", "CONFIGURATION-VARIANTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "ConfigurationVariant.VariantPreCompile", "xml.tags", "mmt.qualifiedName=\"ConfigurationVariant.VariantPreCompile\"", "xml.name", "VARIANT-PRE-COMPILE", "xml.namePlural", "VARIANT-PRE-COMPILES"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "ConfigurationVariant.VariantLinkTime", "xml.tags", "mmt.qualifiedName=\"ConfigurationVariant.VariantLinkTime\"", "xml.name", "VARIANT-LINK-TIME", "xml.namePlural", "VARIANT-LINK-TIMES"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(2), source, new String[]{"mmt.qualifiedName", "ConfigurationVariant.VariantPostBuild", "xml.tags", "mmt.qualifiedName=\"ConfigurationVariant.VariantPostBuild\"", "xml.name", "VARIANT-POST-BUILD", "xml.namePlural", "VARIANT-POST-BUILDS"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(3), source, new String[]{"mmt.qualifiedName", "ConfigurationVariant.VariantPostBuildLoadable", "xml.tags", "mmt.qualifiedName=\"ConfigurationVariant.VariantPostBuildLoadable\"", "xml.name", "VARIANT-POST-BUILD-LOADABLE", "xml.namePlural", "VARIANT-POST-BUILD-LOADABLES"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(4), source, new String[]{"mmt.qualifiedName", "ConfigurationVariant.VariantPostBuildSelectable", "xml.tags", "mmt.qualifiedName=\"ConfigurationVariant.VariantPostBuildSelectable\"", "xml.name", "VARIANT-POST-BUILD-SELECTABLE", "xml.namePlural", "VARIANT-POST-BUILD-SELECTABLES"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"mmt.qualifiedName", "ConfigurationClass", "xml.tags", "mmt.qualifiedName=\"ConfigurationClass\"", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONFIGURATION-CLASS", "xml.namePlural", "CONFIGURATION-CLASSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(0), source, new String[]{"mmt.qualifiedName", "ConfigurationClass.PostBuild", "xml.tags", "mmt.qualifiedName=\"ConfigurationClass.PostBuild\"", "xml.name", "POST-BUILD", "xml.namePlural", "POST-BUILDS"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(1), source, new String[]{"mmt.qualifiedName", "ConfigurationClass.PreCompile", "xml.tags", "mmt.qualifiedName=\"ConfigurationClass.PreCompile\"", "xml.name", "PRE-COMPILE", "xml.namePlural", "PRE-COMPILES"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(2), source, new String[]{"mmt.qualifiedName", "ConfigurationClass.PublishedInformation", "xml.tags", "mmt.qualifiedName=\"ConfigurationClass.PublishedInformation\"", "xml.name", "PUBLISHED-INFORMATION", "xml.namePlural", "PUBLISHED-INFORMATIONS"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(3), source, new String[]{"mmt.qualifiedName", "ConfigurationClass.Link", "xml.tags", "mmt.qualifiedName=\"ConfigurationClass.Link\"", "xml.name", "LINK", "xml.namePlural", "LINKS"});
        this.addAnnotation((ENamedElement)this.choiceReferenceParamDefEClass, source, new String[]{"mmt.qualifiedName", "ChoiceReferenceParamDef", "xml.tags", "mmt.qualifiedName=\"ChoiceReferenceParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CHOICE-REFERENCE-PARAM-DEF", "xml.namePlural", "CHOICE-REFERENCE-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getChoiceReferenceParamDef_Destinations(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ChoiceReferenceParamDef.destination\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ChoiceReferenceParamDef.destination", "pureMM.maxOccurs", "-1", "xml.name", "DESTINATION-REF", "xml.namePlural", "DESTINATION-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"mmt.qualifiedName", "DerivedBooleanParamDef", "xml.tags", "mmt.qualifiedName=\"DerivedBooleanParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DERIVED-BOOLEAN-PARAM-DEF", "xml.namePlural", "DERIVED-BOOLEAN-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"xml.sequenceOffset", "40", "mmt.qualifiedName", "DerivedParamType", "xml.tags", "xml.sequenceOffset=\"40\";mmt.qualifiedName=\"DerivedParamType\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DERIVED-PARAM-TYPE", "xml.namePlural", "DERIVED-PARAM-TYPES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationFormula(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"DerivedParamType.calculationFormula\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "DerivedParamType.calculationFormula", "pureMM.maxOccurs", "1", "xml.name", "CALCULATION-FORMULA", "xml.namePlural", "CALCULATION-FORMULAS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationLanguage(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"DerivedParamType.calculationLanguage\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "DerivedParamType.calculationLanguage", "pureMM.maxOccurs", "1", "xml.name", "CALCULATION-LANGUAGE", "xml.namePlural", "CALCULATION-LANGUAGES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"mmt.qualifiedName", "DerivedEnumerationParamDef", "xml.tags", "mmt.qualifiedName=\"DerivedEnumerationParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DERIVED-ENUMERATION-PARAM-DEF", "xml.namePlural", "DERIVED-ENUMERATION-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "EnumerationParamDef", "xml.tags", "xml.sequenceOffset=\"0\";mmt.qualifiedName=\"EnumerationParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ENUMERATION-PARAM-DEF", "xml.namePlural", "ENUMERATION-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_DefaultValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EnumerationParamDef.defaultValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "EnumerationParamDef.defaultValue", "pureMM.maxOccurs", "1", "xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_Literals(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"literal.EnumerationParamDef\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "literal.EnumerationParamDef", "pureMM.maxOccurs", "-1", "xml.name", "LITERAL", "xml.namePlural", "LITERALS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"mmt.qualifiedName", "EnumerationLiteralDef", "xml.tags", "mmt.qualifiedName=\"EnumerationLiteralDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ENUMERATION-LITERAL-DEF", "xml.namePlural", "ENUMERATION-LITERAL-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"mmt.qualifiedName", "DerivedFloatParamDef", "xml.tags", "mmt.qualifiedName=\"DerivedFloatParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DERIVED-FLOAT-PARAM-DEF", "xml.namePlural", "DERIVED-FLOAT-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "FloatParamDef", "xml.tags", "xml.sequenceOffset=\"0\";mmt.qualifiedName=\"FloatParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "FLOAT-PARAM-DEF", "xml.namePlural", "FLOAT-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_DefaultValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"FloatParamDef.defaultValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "FloatParamDef.defaultValue", "pureMM.maxOccurs", "1", "xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Max(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"FloatParamDef.max\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "FloatParamDef.max", "pureMM.maxOccurs", "1", "xml.name", "MAX", "xml.namePlural", "MAXS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Min(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"FloatParamDef.min\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "FloatParamDef.min", "pureMM.maxOccurs", "1", "xml.name", "MIN", "xml.namePlural", "MINS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"mmt.qualifiedName", "DerivedIntegerParamDef", "xml.tags", "mmt.qualifiedName=\"DerivedIntegerParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DERIVED-INTEGER-PARAM-DEF", "xml.namePlural", "DERIVED-INTEGER-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "IntegerParamDef", "xml.tags", "xml.sequenceOffset=\"0\";mmt.qualifiedName=\"IntegerParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "INTEGER-PARAM-DEF", "xml.namePlural", "INTEGER-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_DefaultValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"IntegerParamDef.defaultValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "IntegerParamDef.defaultValue", "pureMM.maxOccurs", "1", "xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Max(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"IntegerParamDef.max\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "IntegerParamDef.max", "pureMM.maxOccurs", "1", "xml.name", "MAX", "xml.namePlural", "MAXS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Min(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"IntegerParamDef.min\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "IntegerParamDef.min", "pureMM.maxOccurs", "1", "xml.name", "MIN", "xml.namePlural", "MINS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"mmt.qualifiedName", "DerivedStringParamDef", "xml.tags", "mmt.qualifiedName=\"DerivedStringParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DERIVED-STRING-PARAM-DEF", "xml.namePlural", "DERIVED-STRING-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "StringParamDef", "xml.tags", "xml.sequenceOffset=\"0\";mmt.qualifiedName=\"StringParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "STRING-PARAM-DEF", "xml.namePlural", "STRING-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStringParamDef_DefaultValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"StringParamDef.defaultValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "StringParamDef.defaultValue", "pureMM.maxOccurs", "1", "xml.name", "DEFAULT-VALUE", "xml.namePlural", "DEFAULT-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"mmt.qualifiedName", "EcuParameterDefinition", "xml.tags", "mmt.qualifiedName=\"EcuParameterDefinition\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ECU-PARAMETER-DEFINITION", "xml.namePlural", "ECU-PARAMETER-DEFINITIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEcuParameterDefinition_Modules(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EcuParameterDefinition.module\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "EcuParameterDefinition.module", "pureMM.maxOccurs", "-1", "xml.name", "MODULE-REF", "xml.namePlural", "MODULE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"mmt.qualifiedName", "ModuleDef", "xml.tags", "mmt.qualifiedName=\"ModuleDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "MODULE-DEF", "xml.namePlural", "MODULE-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModuleDef_RefinedModuleDef(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModuleDef.refinedModuleDef\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ModuleDef.refinedModuleDef", "pureMM.maxOccurs", "1", "xml.name", "REFINED-MODULE-DEF-REF", "xml.namePlural", "REFINED-MODULE-DEF-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleDef_SupportedConfigVariants(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModuleDef.supportedConfigVariant\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ModuleDef.supportedConfigVariant", "pureMM.maxOccurs", "-1", "xml.name", "SUPPORTED-CONFIG-VARIANT", "xml.namePlural", "SUPPORTED-CONFIG-VARIANTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleDef_Containers(), source, new String[]{"xml.sequenceOffset", "2", "mmt.qualifiedName", "container.ModuleDef", "xml.tags", "xml.sequenceOffset=\"11\";mmt.qualifiedName=\"container.ModuleDef\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "-1", "xml.name", "CONTAINER", "xml.namePlural", "CONTAINERS", "internal-xml-sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.foreignReferenceParamDefEClass, source, new String[]{"mmt.qualifiedName", "ForeignReferenceParamDef", "xml.tags", "mmt.qualifiedName=\"ForeignReferenceParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "FOREIGN-REFERENCE-PARAM-DEF", "xml.namePlural", "FOREIGN-REFERENCE-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getForeignReferenceParamDef_DestinationType(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ForeignReferenceParamDef.destinationType\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ForeignReferenceParamDef.destinationType", "pureMM.maxOccurs", "1", "xml.name", "DESTINATION-TYPE", "xml.namePlural", "DESTINATION-TYPES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"mmt.qualifiedName", "FunctionNameDef", "xml.tags", "mmt.qualifiedName=\"FunctionNameDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "FUNCTION-NAME-DEF", "xml.namePlural", "FUNCTION-NAME-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"mmt.qualifiedName", "LinkerSymbolDef", "xml.tags", "mmt.qualifiedName=\"LinkerSymbolDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "LINKER-SYMBOL-DEF", "xml.namePlural", "LINKER-SYMBOL-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.instanceReferenceParamDefEClass, source, new String[]{"mmt.qualifiedName", "InstanceReferenceParamDef", "xml.tags", "mmt.qualifiedName=\"InstanceReferenceParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "INSTANCE-REFERENCE-PARAM-DEF", "xml.namePlural", "INSTANCE-REFERENCE-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationContext(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"InstanceReferenceParamDef.destinationContext\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "InstanceReferenceParamDef.destinationContext", "pureMM.maxOccurs", "1", "xml.name", "DESTINATION-CONTEXT", "xml.namePlural", "DESTINATION-CONTEXTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationType(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"InstanceReferenceParamDef.destinationType\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "InstanceReferenceParamDef.destinationType", "pureMM.maxOccurs", "1", "xml.name", "DESTINATION-TYPE", "xml.namePlural", "DESTINATION-TYPES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.referenceParamDefEClass, source, new String[]{"mmt.qualifiedName", "ReferenceParamDef", "xml.tags", "mmt.qualifiedName=\"ReferenceParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "REFERENCE-PARAM-DEF", "xml.namePlural", "REFERENCE-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getReferenceParamDef_Destination(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ReferenceParamDef.destination\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ReferenceParamDef.destination", "pureMM.maxOccurs", "1", "xml.name", "DESTINATION-REF", "xml.namePlural", "DESTINATION-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceParamDefEClass, source, new String[]{"mmt.qualifiedName", "SymbolicNameReferenceParamDef", "xml.tags", "mmt.qualifiedName=\"SymbolicNameReferenceParamDef\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SYMBOLIC-NAME-REFERENCE-PARAM-DEF", "xml.namePlural", "SYMBOLIC-NAME-REFERENCE-PARAM-DEFS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"mmt.qualifiedName", "ConfigParameter", "xml.tags", "mmt.qualifiedName=\"ConfigParameter\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONFIG-PARAMETER", "xml.namePlural", "CONFIG-PARAMETERS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ConfigParameter.symbolicNameValue\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ConfigParameter.symbolicNameValue", "pureMM.maxOccurs", "1", "xml.name", "SYMBOLIC-NAME-VALUE", "xml.namePlural", "SYMBOLIC-NAME-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"name", "BOOLEAN-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"name", "CHOICE-CONTAINER-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getChoiceContainerDef_Choices(), source, new String[]{"name", "CHOICES", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"name", "CONTAINER-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"name", "POST-BUILD-CHANGEABLE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"name", "PARAM-CONF-MULTIPLICITY", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"name", "LOWER-MULTIPLICITY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"name", "UPPER-MULTIPLICITY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"name", "PARAM-CONF-CONTAINER-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"name", "MULTIPLE-CONFIGURATION-CONTAINER", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_Parameters(), source, new String[]{"name", "PARAMETERS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_References(), source, new String[]{"name", "REFERENCES", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_SubContainers(), source, new String[]{"name", "SUB-CONTAINERS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"name", "CONFIG-REFERENCE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"name", "COMMON-CONFIGURATION-ATTRIBUTES", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ConfigurationClassAffection(), source, new String[]{"name", "CONFIGURATION-CLASS-AFFECTION", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ImplementationConfigClass(), source, new String[]{"name", "IMPLEMENTATION-CONFIG-CLASSES", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"name", "ORIGIN", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"name", "CONFIGURATION-CLASS-AFFECTION", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_Affecteds(), source, new String[]{"name", "AFFECTED-REFS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_AffectionKind(), source, new String[]{"name", "AFFECTION-KIND", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.implementationConfigClassEClass, source, new String[]{"name", "IMPLEMENTATION-CONFIG-CLASS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigClass(), source, new String[]{"name", "CONFIG-CLASS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigVariant(), source, new String[]{"name", "CONFIG-VARIANT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.choiceReferenceParamDefEClass, source, new String[]{"name", "CHOICE-REFERENCE-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getChoiceReferenceParamDef_Destinations(), source, new String[]{"name", "DESTINATION-REFS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"name", "DERIVED-BOOLEAN-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"name", "DERIVED-PARAM-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationFormula(), source, new String[]{"name", "CALCULATION-FORMULA", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getDerivedParamType_CalculationLanguage(), source, new String[]{"name", "CALCULATION-LANGUAGE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"name", "DERIVED-ENUMERATION-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"name", "ENUMERATION-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getEnumerationParamDef_Literals(), source, new String[]{"name", "LITERALS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"name", "ENUMERATION-LITERAL-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"name", "DERIVED-FLOAT-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"name", "FLOAT-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getFloatParamDef_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"name", "DERIVED-INTEGER-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"name", "INTEGER-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getIntegerParamDef_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"name", "DERIVED-STRING-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"name", "STRING-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getStringParamDef_DefaultValue(), source, new String[]{"name", "DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"name", "ECU-PARAMETER-DEFINITION", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getEcuParameterDefinition_Modules(), source, new String[]{"name", "MODULE-REFS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"name", "MODULE-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModuleDef_RefinedModuleDef(), source, new String[]{"name", "REFINED-MODULE-DEF-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModuleDef_SupportedConfigVariants(), source, new String[]{"name", "SUPPORTED-CONFIG-VARIANT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModuleDef_Containers(), source, new String[]{"name", "CONTAINERS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.foreignReferenceParamDefEClass, source, new String[]{"name", "FOREIGN-REFERENCE-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getForeignReferenceParamDef_DestinationType(), source, new String[]{"name", "DESTINATION-TYPE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"name", "FUNCTION-NAME-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"name", "LINKER-SYMBOL-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.instanceReferenceParamDefEClass, source, new String[]{"name", "INSTANCE-REFERENCE-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationContext(), source, new String[]{"name", "DESTINATION-CONTEXT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationType(), source, new String[]{"name", "DESTINATION-TYPE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.referenceParamDefEClass, source, new String[]{"name", "REFERENCE-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getReferenceParamDef_Destination(), source, new String[]{"name", "DESTINATION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceParamDefEClass, source, new String[]{"name", "SYMBOLIC-NAME-REFERENCE-PARAM-DEF", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"name", "CONFIG-PARAMETER", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"name", "SYMBOLIC-NAME-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"documentation", "Configuration parameter type for Boolean. allowed values are true and false."});
        this.addAnnotation((ENamedElement)this.getBooleanParamDef_DefaultValue(), source, new String[]{"documentation", "Default value of the boolean configuration parameter."});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"documentation", "Definition of the languag used to specify the formula in attribute calculationFormula.\r\nCurrentlfy, only informal and ARformal definitions of the formula are supported."});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum.getELiterals().get(0), source, new String[]{"documentation", "CaluculationFormula given in some descripton with no formal mechanism."});
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum.getELiterals().get(1), source, new String[]{"documentation", "CaluculationFormula given with the ARformal restrictions."});
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"documentation", "Used to define configuration containers that provide a choice between several ParamConfContainerDef. But in the actual ECU Configuration Description only one instance from the choice list will be present (depending on the multiplicites given)."});
        this.addAnnotation((ENamedElement)this.getChoiceContainerDef_Choices(), source, new String[]{"documentation", "The choices available in a ChoiceContainerDef."});
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"documentation", "Base class used to gather common attributes of configuration container definitions."});
        this.addAnnotation((ENamedElement)this.getContainerDef_PostBuildChangeable(), source, new String[]{"documentation", "Specifies if the number of instances of this container may be changed post-build time. This parameter may only be set to true if all of the following conditions hold:\r\n- the container's upperMultiplicity > lowerMultiplicity\r\n- all parameters within the container and subContainers are post-build time changeable.\r\nIf any of the aggregated parameters is either pre-compile time or link time this attribute is ignored and may be omitted."});
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"documentation", "Common class used to express multiplicities in the definition of configuration parameters, references and containers.\r\nIf not stated otherwise the default multiplicity is exactly one mandatory occurrence of the specified element."});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_LowerMultiplicity(), source, new String[]{"documentation", "The lower multiplicity of the specified element.\r\n0: optional\r\n1: at least one occurence\r\nn: at least n occurrences"});
        this.addAnnotation((ENamedElement)this.getParamConfMultiplicity_UpperMultiplicity(), source, new String[]{"documentation", "The upper multiplicity of the specified element.\r\n1: at most one occurrence\r\nm: at most m occurrences\r\n*: arbitrary number of occurrences"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"documentation", "The period between successive calls to Com_MainFunctionRx in seconds. This parameter may be used by the COM generator to transform the values of the reception related timing configuration parameters of the COM module to internal implementation specific counter or tick values. The COM module's internal timing handling is implementation specific. The COM module (generator) may rely on the fact that Com_MainFunctionRx is scheduled according to the value configured here.\r\n"});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_MultipleConfigurationContainer(), source, new String[]{"documentation", "Specifies whether this container is used to define multiple configuration sets. Only one container in the whole ModuleDef shall have this enabled."});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_Parameters(), source, new String[]{"documentation", "The parameters defined within the ParamConfContainerDef."});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_References(), source, new String[]{"documentation", "The references defined within the ParamConfContainerDef."});
        this.addAnnotation((ENamedElement)this.getParamConfContainerDef_SubContainers(), source, new String[]{"documentation", "The containers defined within the ParamConfContainerDef."});
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"documentation", "Common class to gather the attributes for the definition of references."});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"documentation", "Attributes used by Configuration Parameters as well as References."});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ConfigurationClassAffection(), source, new String[]{"documentation", "Specifes whether changes on this parameter have some affection on other parameters. This element is deprecated and will be removed in future versions. \r\n"});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_ImplementationConfigClass(), source, new String[]{"documentation", "Specifies which in which ConfigurationClass this parameter or reference is available for which ConfigurationVariant."});
        this.addAnnotation((ENamedElement)this.getCommonConfigurationAttributes_Origin(), source, new String[]{"documentation", "String specifying if this configuration parameter is an AUTOSAR standardized configuration parameter or if the parameter is hardware- or vendor-specific."});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"documentation", "Specifies in the \"VendorSpecificModuleDefinition\" whether changes on this parameter do affect other parameters in a later configuration step. This element is deprecated and will be removed in future versions. "});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_Affecteds(), source, new String[]{"documentation", "Optional reference to parameters or references which are affected by the ConfigurationClassAffection."});
        this.addAnnotation((ENamedElement)this.getConfigurationClassAffection_AffectionKind(), source, new String[]{"documentation", "Specifies which affect do changes in this parameter have on other parameters. This attribute is deprecated and will be removed in future versions. "});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"documentation", "Possible affections used by the ConfigurationClassAffection."});
        this.addAnnotation((ENamedElement)this.implementationConfigClassEClass, source, new String[]{"documentation", "Specifies which ConfigurationClass this parameter has in the individual ConfigurationVariants."});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigClass(), source, new String[]{"documentation", "Specifies the ConfigurationClass for the given ConfigurationVariant."});
        this.addAnnotation((ENamedElement)this.getImplementationConfigClass_ConfigVariant(), source, new String[]{"documentation", "Specifies the ConfigurationVariant the ConfigurationClass is specified for."});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum, source, new String[]{"documentation", "Specifies the possible Configuration Variants used for AUTOSAR BSW Modules."});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(0), source, new String[]{"documentation", "Specifies that the BSW Module implementation uses only PreCompileTime configuration parameters."});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(1), source, new String[]{"documentation", "Specifies that the BSW Module implementation may use PreCompileTime and LinkTime configuration parameters."});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(2), source, new String[]{"documentation", "Specifies that the BSW Module implementation may use PreCompileTime, LinkTime and PostBuild configuration parameters (supported in the StMD)."});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(3), source, new String[]{"documentation", "Specifies that the BSW Module implementation may use PreCompileTime, LinkTime and PostBuild loadable configuration parameters (supported in the VSMD)."});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum.getELiterals().get(4), source, new String[]{"documentation", "Specifies that the BSW Module implementation may use PreCompileTime, LinkTime and PostBuild selectable configuration parameters (supported in the VSMD)."});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"documentation", "Possible configuration classes for the AUTOSAR configuration parameters."});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(0), source, new String[]{"documentation", "PostBuildTime: the configuration parameter has to be stored at a known memory location."});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(1), source, new String[]{"documentation", "PreCompile Time: after compilation a configuration parameter can not be changed any more."});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(2), source, new String[]{"documentation", "PublishedInformation is used to specify the fact that certain information is fixed even before the pre-compile stage."});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum.getELiterals().get(3), source, new String[]{"documentation", "Link Time: parts of configuration are delivered from another object code file"});
        this.addAnnotation((ENamedElement)this.choiceReferenceParamDefEClass, source, new String[]{"documentation", "Specify alternative references where in the ECU Configuration description only one of the specified references will actually be used."});
        this.addAnnotation((ENamedElement)this.getChoiceReferenceParamDef_Destinations(), source, new String[]{"documentation", "All the possible parameter containers for the reference are specified."});
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"documentation", "Derived value is of type Boolean"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"documentation", "Allows to define configuration items that are calculated based on the value of \r\n* other parameters values\r\n* elements (attributes /classes) defined in other AUTOSAR templates such as System template and SW component template.\r\nA calculation definition is given which defines how Configuration Editors and\r\nGenerators can calculate the value from other values when needed to display/use\r\nthe configuration item.\r\nThe actual value is stored in the \"value\" attribute of the derived parameter.\r\n"});
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
        this.addAnnotation((ENamedElement)this.getModuleDef_RefinedModuleDef(), source, new String[]{"documentation", "Optional reference from the Vendor Specific Module Definition to the Standardized Module Definition it refines. "});
        this.addAnnotation((ENamedElement)this.getModuleDef_SupportedConfigVariants(), source, new String[]{"documentation", "Specifies which ConfigurationVariants are supported by this software module."});
        this.addAnnotation((ENamedElement)this.getModuleDef_Containers(), source, new String[]{"documentation", "Aggregates the top-level container definitions of this specific module definition."});
        this.addAnnotation((ENamedElement)this.foreignReferenceParamDefEClass, source, new String[]{"documentation", "Specify a reference to an XML description of an entity desribed in another AUTOSAR template."});
        this.addAnnotation((ENamedElement)this.getForeignReferenceParamDef_DestinationType(), source, new String[]{"documentation", "The type in the AUTOSAR Metamodel to which' instance this reference is allowed to point to. "});
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"documentation", "Configuration parameter type for Function Names like those used to specify callback functions."});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"documentation", "Configuration parameter type for Linker Symbol Names like those used to specify memory locations of variables and constants."});
        this.addAnnotation((ENamedElement)this.instanceReferenceParamDefEClass, source, new String[]{"documentation", "Specify a reference to an XML description of an entity desribed in another AUTOSAR template using the INSTANCE REFERENCE semantics."});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationContext(), source, new String[]{"documentation", "The context in the AUTOSAR Metamodel to which' this reference is allowed to point to."});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceParamDef_DestinationType(), source, new String[]{"documentation", "The type in the AUTOSAR Metamodel to which' instance this reference is allowed to point to. "});
        this.addAnnotation((ENamedElement)this.referenceParamDefEClass, source, new String[]{"documentation", "Specify references within the ECU Configuration Description between parameter containers."});
        this.addAnnotation((ENamedElement)this.getReferenceParamDef_Destination(), source, new String[]{"documentation", "Exactly one reference  to an parameter container is allowed as destination."});
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceParamDefEClass, source, new String[]{"documentation", "This specialization of a ReferenceParamDef specifies that the implementation of the reference is done using a symbolic name defined by the referenced Container's shortName."});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"documentation", "Abstract class used to define the similarities of all ECU Configuration Parameter types defined as subclasses."});
        this.addAnnotation((ENamedElement)this.getConfigParameter_SymbolicNameValue(), source, new String[]{"documentation", "Specifies that this parameter's value is used, together with the aggregating container, to derive a symbolic name definition. E.g.: #define \"container_shortName\" \"this parameter's value\"."});
    }

    protected void createTaggedValuesOfGeneralization_ConfigParameterAnnotations() {
        String source = "TaggedValuesOfGeneralization_ConfigParameter";
        this.addAnnotation((ENamedElement)this.booleanParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BooleanParamDef->ConfigParameter", "GUID", "706AA564-8A04-487a-8B00-621D5C56B875", "Id", "-678419893", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.enumerationParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "EnumerationParamDef->ConfigParameter", "GUID", "A9C40D52-DB44-46d3-A6B3-1292DF9C0BF4", "Id", "-1903166955", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.floatParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "FloatParamDef->ConfigParameter", "GUID", "49F90E1B-B9A9-4c12-A1C7-AED4D86B3FDA", "Id", "-809119102", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.integerParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "IntegerParamDef->ConfigParameter", "GUID", "EEA318B8-4B77-43df-A8A3-912CEEE958CD", "Id", "1759429760"});
        this.addAnnotation((ENamedElement)this.stringParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "StringParamDef->ConfigParameter", "GUID", "15B49CE7-2B69-43e9-AD91-7D743F3D58A0", "Id", "-228067309", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.calculationLanguageEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.configurationAffectionEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.configurationVariantEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.configurationClassEEnum, source, new String[]{"Stereotype", "enumeration"});
    }

    protected void createTaggedValuesOfGeneralization_ContainerDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_ContainerDef";
        this.addAnnotation((ENamedElement)this.choiceContainerDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ChoiceContainerDef->ContainerDef", "GUID", "41515AF6-A353-416d-A36D-18C0BDCBA107", "Id", "52785237", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.paramConfContainerDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ParamConfContainerDef->ContainerDef", "GUID", "6550EB33-9F6E-4cbd-A043-C0A339753135", "Id", "-1809248627", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ParamConfMultiplicityAnnotations() {
        String source = "TaggedValuesOfGeneralization_ParamConfMultiplicity";
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ContainerDef->ParamConfMultiplicity", "GUID", "E17250D3-DC19-46bf-B453-337D428F577A", "Id", "867404417", "xml.sequenceOffset", "1"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CommonConfigurationAttributes->ParamConfMultiplicity", "GUID", "5E57B09C-81C1-4cec-B23B-47846701E210", "Id", "1077886638", "xml.sequenceOffset", "1"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ModuleDef->ParamConfMultiplicity", "GUID", "9D7286C4-F6C7-406f-9DD4-62D8F84176DC", "Id", "1785605144", "xml.sequenceOffset", "1"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.containerDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ContainerDef->Identifiable", "GUID", "A5FDE72B-BE1C-4dc4-BC57-E51BFFE03FF8", "Id", "-925780227", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.commonConfigurationAttributesEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CommonConfigurationAttributes->Identifiable", "GUID", "1C76E6DE-D1E6-4bab-9171-2BD9EF43F754", "Id", "1894675065", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.enumerationLiteralDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "EnumerationLiteralDef->Identifiable", "GUID", "16AF0E74-5350-49e0-BAB8-D06664FBBF4A", "Id", "2108326933", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.paramConfMultiplicityEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.configurationClassAffectionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.implementationConfigClassEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.derivedParamTypeEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CommonConfigurationAttributesAnnotations() {
        String source = "TaggedValuesOfGeneralization_CommonConfigurationAttributes";
        this.addAnnotation((ENamedElement)this.configReferenceEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ConfigReference->CommonConfigurationAttributes", "GUID", "922778B2-DFE6-4278-9F8E-C581FD665E34", "Id", "-898296462", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.configParameterEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ConfigParameter->CommonConfigurationAttributes", "GUID", "45E80E41-A29C-4524-9AA3-4A4C2588FD80", "Id", "411638485", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ConfigReferenceAnnotations() {
        String source = "TaggedValuesOfGeneralization_ConfigReference";
        this.addAnnotation((ENamedElement)this.choiceReferenceParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ChoiceReferenceParamDef->ConfigReference", "GUID", "0BF85BCA-91DD-49b9-8600-04986841C253", "Id", "1570034772", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.foreignReferenceParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ForeignReferenceParamDef->ConfigReference", "GUID", "8EC5B3C3-4C73-4ee0-8D1A-054028824377", "Id", "-1772776458", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.instanceReferenceParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "InstanceReferenceParamDef->ConfigReference", "GUID", "91E2422F-6537-48f1-9F17-59AC79A18FFB", "Id", "-1701333889", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.referenceParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ReferenceParamDef->ConfigReference", "GUID", "85713DD1-5952-4203-B42D-E54B983E2E78", "Id", "-1695757627", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DerivedParamTypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_DerivedParamType";
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "mmt.qualifiedName", "DerivedBooleanParamDef->DerivedParamType", "GUID", "DB6A2991-65F4-4476-8700-2622C1A2FDAC", "Id", "-1851425891"});
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "mmt.qualifiedName", "DerivedEnumerationParamDef->DerivedParamType", "GUID", "E1E2319B-939F-4767-9342-D5872FF8B9A5", "Id", "155813753"});
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "mmt.qualifiedName", "DerivedFloatParamDef->DerivedParamType", "GUID", "49E01D3D-07B6-4d80-B5B0-0AC14661F3DA", "Id", "27172627"});
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "mmt.qualifiedName", "DerivedIntegerParamDef->DerivedParamType", "GUID", "A966A876-A20C-42d5-A520-D4054C70D6E8", "Id", "-580532070"});
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"xml.sequenceOffset", "1", "Name", "", "mmt.qualifiedName", "DerivedStringParamDef->DerivedParamType", "GUID", "534D176C-9E3C-4323-95A1-0D6023B99DE7", "Id", "1905068120"});
    }

    protected void createTaggedValuesOfGeneralization_BooleanParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_BooleanParamDef";
        this.addAnnotation((ENamedElement)this.derivedBooleanParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "DerivedBooleanParamDef->BooleanParamDef", "GUID", "2992471B-D80B-4ba5-80C1-812F3FE549D4", "Id", "683181602"});
    }

    protected void createTaggedValuesOfGeneralization_EnumerationParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_EnumerationParamDef";
        this.addAnnotation((ENamedElement)this.derivedEnumerationParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "DerivedEnumerationParamDef->EnumerationParamDef", "GUID", "831E9B65-C3F6-4628-8FCA-F11C0DCC2A83", "Id", "552234298"});
    }

    protected void createTaggedValuesOfGeneralization_FloatParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_FloatParamDef";
        this.addAnnotation((ENamedElement)this.derivedFloatParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "DerivedFloatParamDef->FloatParamDef", "GUID", "D951D4D6-90E8-4708-8151-EC1DE7693CAF", "Id", "2091754284"});
    }

    protected void createTaggedValuesOfGeneralization_IntegerParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_IntegerParamDef";
        this.addAnnotation((ENamedElement)this.derivedIntegerParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "DerivedIntegerParamDef->IntegerParamDef", "GUID", "E19802D6-168B-4727-A989-F8E530AAE63B", "Id", "-1412555337"});
    }

    protected void createTaggedValuesOfGeneralization_StringParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_StringParamDef";
        this.addAnnotation((ENamedElement)this.derivedStringParamDefEClass, source, new String[]{"xml.sequenceOffset", "0", "Name", "", "mmt.qualifiedName", "DerivedStringParamDef->StringParamDef", "GUID", "7C565068-3A70-447d-9106-AFFC243B25CE", "Id", "-635488579"});
        this.addAnnotation((ENamedElement)this.linkerSymbolDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "LinkerSymbolDef->StringParamDef", "GUID", "43670618-31AB-4f32-ADA2-703A5CF86761", "Id", "-586016105", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.ecuParameterDefinitionEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "EcuParameterDefinition->ARElement", "GUID", "55AE6A5A-DC47-483e-8D78-AAB6B94E5BE1", "Id", "-682382525", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.moduleDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ModuleDef->ARElement", "GUID", "CEF10269-0A4D-4783-B570-1469EA565327", "Id", "1143050676", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_LinkerSymbolDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_LinkerSymbolDef";
        this.addAnnotation((ENamedElement)this.functionNameDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "FunctionNameDef->LinkerSymbolDef", "GUID", "B33FE748-F029-4081-A5B3-EAC59BEBF6C0", "Id", "-1190774913", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ReferenceParamDefAnnotations() {
        String source = "TaggedValuesOfGeneralization_ReferenceParamDef";
        this.addAnnotation((ENamedElement)this.symbolicNameReferenceParamDefEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SymbolicNameReferenceParamDef->ReferenceParamDef", "GUID", "637CD39B-4BF4-4301-9867-653F3711A820", "Id", "205513778", "xml.sequenceOffset", "0"});
    }
}

