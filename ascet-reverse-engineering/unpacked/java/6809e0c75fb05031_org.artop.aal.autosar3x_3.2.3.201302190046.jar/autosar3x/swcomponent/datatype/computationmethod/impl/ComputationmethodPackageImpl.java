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
package autosar3x.swcomponent.datatype.computationmethod.impl;

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
import autosar3x.swcomponent.datatype.computationmethod.Compu;
import autosar3x.swcomponent.datatype.computationmethod.CompuConst;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuContent;
import autosar3x.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar3x.swcomponent.datatype.computationmethod.CompuMethod;
import autosar3x.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar3x.swcomponent.datatype.computationmethod.CompuProgCode;
import autosar3x.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar3x.swcomponent.datatype.computationmethod.CompuScale;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleGenericMath;
import autosar3x.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar3x.swcomponent.datatype.computationmethod.CompuScales;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodFactory;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.computationmethod.ProgCode;
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
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class ComputationmethodPackageImpl
extends EPackageImpl
implements ComputationmethodPackage {
    private EClass compuEClass = null;
    private EClass compuConstEClass = null;
    private EClass compuConstContentEClass = null;
    private EClass compuContentEClass = null;
    private EClass compuConstFormulaContentEClass = null;
    private EClass compuConstNumericContentEClass = null;
    private EClass compuConstTextContentEClass = null;
    private EClass compuMethodEClass = null;
    private EClass compuNominatorDenominatorEClass = null;
    private EClass compuProgCodeEClass = null;
    private EClass progCodeEClass = null;
    private EClass compuRationalCoeffsEClass = null;
    private EClass compuScaleEClass = null;
    private EClass compuScaleContentsEClass = null;
    private EClass compuScaleConstantContentsEClass = null;
    private EClass compuScaleGenericMathEClass = null;
    private EClass compuScaleRationalFormulaEClass = null;
    private EClass compuScalesEClass = null;
    private EClass compuGenericMathEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ComputationmethodPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/swc/d/cm", (EFactory)ComputationmethodFactory.eINSTANCE);
    }

    public static ComputationmethodPackage init() {
        if (isInited) {
            return (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm");
        }
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/d/cm") : new ComputationmethodPackageImpl());
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
        theComputationmethodPackage.createPackageContents();
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
        theComputationmethodPackage.initializePackageContents();
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
        theComputationmethodPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/swc/d/cm", (Object)theComputationmethodPackage);
        return theComputationmethodPackage;
    }

    public EClass getCompu() {
        return this.compuEClass;
    }

    public EReference getCompu_CompuContentType() {
        return (EReference)this.compuEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompu_CompuDefaultValue() {
        return (EReference)this.compuEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCompuConst() {
        return this.compuConstEClass;
    }

    public EReference getCompuConst_CompuConstContentType() {
        return (EReference)this.compuConstEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstContent() {
        return this.compuConstContentEClass;
    }

    public EReference getCompuConstContent_CompuConst() {
        return (EReference)this.compuConstContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuContent() {
        return this.compuContentEClass;
    }

    public EReference getCompuContent_Compu() {
        return (EReference)this.compuContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstFormulaContent() {
        return this.compuConstFormulaContentEClass;
    }

    public EReference getCompuConstFormulaContent_Vf() {
        return (EReference)this.compuConstFormulaContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstNumericContent() {
        return this.compuConstNumericContentEClass;
    }

    public EAttribute getCompuConstNumericContent_V() {
        return (EAttribute)this.compuConstNumericContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstTextContent() {
        return this.compuConstTextContentEClass;
    }

    public EReference getCompuConstTextContent_Vt() {
        return (EReference)this.compuConstTextContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuMethod() {
        return this.compuMethodEClass;
    }

    public EAttribute getCompuMethod_DisplayFormat() {
        return (EAttribute)this.compuMethodEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompuMethod_Unit() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCompuMethod_CompuInternalToPhys() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCompuMethod_CompuPhysToInternal() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(3);
    }

    public EClass getCompuNominatorDenominator() {
        return this.compuNominatorDenominatorEClass;
    }

    public EReference getCompuNominatorDenominator_Vfs() {
        return (EReference)this.compuNominatorDenominatorEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCompuNominatorDenominator_Vs() {
        return (EAttribute)this.compuNominatorDenominatorEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCompuProgCode() {
        return this.compuProgCodeEClass;
    }

    public EReference getCompuProgCode_ProgCode() {
        return (EReference)this.compuProgCodeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getProgCode() {
        return this.progCodeEClass;
    }

    public EReference getProgCode_CompuProgCode() {
        return (EReference)this.progCodeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuRationalCoeffs() {
        return this.compuRationalCoeffsEClass;
    }

    public EReference getCompuRationalCoeffs_CompuScaleRationalFormula() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompuRationalCoeffs_CompuNumerator() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCompuRationalCoeffs_CompuDenominator() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getCompuScale() {
        return this.compuScaleEClass;
    }

    public EReference getCompuScale_CompuScales() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCompuScale_ShortLabel() {
        return (EAttribute)this.compuScaleEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCompuScale_Symbol() {
        return (EAttribute)this.compuScaleEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCompuScale_Desc() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(3);
    }

    public EReference getCompuScale_LowerLimit() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(4);
    }

    public EReference getCompuScale_UpperLimit() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(5);
    }

    public EReference getCompuScale_CompuScaleContentsType() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(6);
    }

    public EClass getCompuScaleContents() {
        return this.compuScaleContentsEClass;
    }

    public EReference getCompuScaleContents_CompuScale() {
        return (EReference)this.compuScaleContentsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScaleConstantContents() {
        return this.compuScaleConstantContentsEClass;
    }

    public EReference getCompuScaleConstantContents_CompuConst() {
        return (EReference)this.compuScaleConstantContentsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScaleGenericMath() {
        return this.compuScaleGenericMathEClass;
    }

    public EClass getCompuScaleRationalFormula() {
        return this.compuScaleRationalFormulaEClass;
    }

    public EReference getCompuScaleRationalFormula_CompuRationalCoeffs() {
        return (EReference)this.compuScaleRationalFormulaEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScales() {
        return this.compuScalesEClass;
    }

    public EReference getCompuScales_CompuScales() {
        return (EReference)this.compuScalesEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuGenericMath() {
        return this.compuGenericMathEClass;
    }

    public EReference getCompuGenericMath_SwDataDependency() {
        return (EReference)this.compuGenericMathEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCompuGenericMath_Level() {
        return (EAttribute)this.compuGenericMathEClass.getEStructuralFeatures().get(1);
    }

    public ComputationmethodFactory getComputationmethodFactory() {
        return (ComputationmethodFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.compuEClass = this.createEClass(0);
        this.createEReference(this.compuEClass, 5);
        this.createEReference(this.compuEClass, 6);
        this.compuConstEClass = this.createEClass(1);
        this.createEReference(this.compuConstEClass, 5);
        this.compuConstContentEClass = this.createEClass(2);
        this.createEReference(this.compuConstContentEClass, 4);
        this.compuContentEClass = this.createEClass(3);
        this.createEReference(this.compuContentEClass, 4);
        this.compuConstFormulaContentEClass = this.createEClass(4);
        this.createEReference(this.compuConstFormulaContentEClass, 5);
        this.compuConstNumericContentEClass = this.createEClass(5);
        this.createEAttribute(this.compuConstNumericContentEClass, 6);
        this.compuConstTextContentEClass = this.createEClass(6);
        this.createEReference(this.compuConstTextContentEClass, 6);
        this.compuMethodEClass = this.createEClass(7);
        this.createEAttribute(this.compuMethodEClass, 22);
        this.createEReference(this.compuMethodEClass, 23);
        this.createEReference(this.compuMethodEClass, 24);
        this.createEReference(this.compuMethodEClass, 25);
        this.compuNominatorDenominatorEClass = this.createEClass(8);
        this.createEReference(this.compuNominatorDenominatorEClass, 4);
        this.createEAttribute(this.compuNominatorDenominatorEClass, 5);
        this.compuProgCodeEClass = this.createEClass(9);
        this.createEReference(this.compuProgCodeEClass, 5);
        this.progCodeEClass = this.createEClass(10);
        this.createEReference(this.progCodeEClass, 4);
        this.compuRationalCoeffsEClass = this.createEClass(11);
        this.createEReference(this.compuRationalCoeffsEClass, 6);
        this.createEReference(this.compuRationalCoeffsEClass, 7);
        this.createEReference(this.compuRationalCoeffsEClass, 8);
        this.compuScaleEClass = this.createEClass(12);
        this.createEReference(this.compuScaleEClass, 8);
        this.createEAttribute(this.compuScaleEClass, 9);
        this.createEAttribute(this.compuScaleEClass, 10);
        this.createEReference(this.compuScaleEClass, 11);
        this.createEReference(this.compuScaleEClass, 12);
        this.createEReference(this.compuScaleEClass, 13);
        this.createEReference(this.compuScaleEClass, 14);
        this.compuScaleContentsEClass = this.createEClass(13);
        this.createEReference(this.compuScaleContentsEClass, 4);
        this.compuScaleConstantContentsEClass = this.createEClass(14);
        this.createEReference(this.compuScaleConstantContentsEClass, 6);
        this.compuScaleGenericMathEClass = this.createEClass(15);
        this.compuScaleRationalFormulaEClass = this.createEClass(16);
        this.createEReference(this.compuScaleRationalFormulaEClass, 6);
        this.compuScalesEClass = this.createEClass(17);
        this.createEReference(this.compuScalesEClass, 6);
        this.compuGenericMathEClass = this.createEClass(18);
        this.createEReference(this.compuGenericMathEClass, 5);
        this.createEAttribute(this.compuGenericMathEClass, 6);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("computationmethod");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/swc/d/cm");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        GcomputationmethodPackage theGcomputationmethodPackage = (GcomputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/cm");
        ValuemodelPackage theValuemodelPackage = (ValuemodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i");
        DatadefpropertiesPackage theDatadefpropertiesPackage = (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ddp");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u");
        MultilanguagedataPackage theMultilanguagedataPackage = (MultilanguagedataPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/md");
        LocalconstraintsPackage theLocalconstraintsPackage = (LocalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc");
        this.compuEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompu());
        this.compuConstEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuConstEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConst());
        this.compuConstContentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuConstContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstContent());
        this.compuContentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuContent());
        this.compuConstFormulaContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstFormulaContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstFormulaContent());
        this.compuConstNumericContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstNumericContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstNumericContent());
        this.compuConstTextContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstTextContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstTextContent());
        this.compuMethodEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.compuMethodEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuMethod());
        this.compuNominatorDenominatorEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuNominatorDenominatorEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuNominatorDenominator());
        this.compuProgCodeEClass.getESuperTypes().add((Object)this.getCompuContent());
        this.progCodeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuRationalCoeffsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuRationalCoeffsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuRationalCoeffs());
        this.compuScaleEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuScaleEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScale());
        this.compuScaleContentsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuScaleContentsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleContents());
        this.compuScaleConstantContentsEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleConstantContentsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleConstantContents());
        this.compuScaleGenericMathEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleRationalFormulaEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleRationalFormulaEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleRationalFormula());
        this.compuScalesEClass.getESuperTypes().add((Object)this.getCompuContent());
        this.compuScalesEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScales());
        this.compuGenericMathEClass.getESuperTypes().add((Object)theValuemodelPackage.getValueByFormula());
        this.initEClass(this.compuEClass, Compu.class, "Compu", false, false, true);
        this.initEReference(this.getCompu_CompuContentType(), (EClassifier)this.getCompuContent(), this.getCompuContent_Compu(), "compuContentType", null, 0, 1, Compu.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompu_CompuDefaultValue(), (EClassifier)this.getCompuConst(), null, "compuDefaultValue", null, 0, 1, Compu.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstEClass, CompuConst.class, "CompuConst", false, false, true);
        this.initEReference(this.getCompuConst_CompuConstContentType(), (EClassifier)this.getCompuConstContent(), this.getCompuConstContent_CompuConst(), "compuConstContentType", null, 0, 1, CompuConst.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstContentEClass, CompuConstContent.class, "CompuConstContent", true, false, true);
        this.initEReference(this.getCompuConstContent_CompuConst(), (EClassifier)this.getCompuConst(), this.getCompuConst_CompuConstContentType(), "compuConst", null, 0, 1, CompuConstContent.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuContentEClass, CompuContent.class, "CompuContent", true, false, true);
        this.initEReference(this.getCompuContent_Compu(), (EClassifier)this.getCompu(), this.getCompu_CompuContentType(), "compu", null, 0, 1, CompuContent.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuConstFormulaContentEClass, CompuConstFormulaContent.class, "CompuConstFormulaContent", false, false, true);
        this.initEReference(this.getCompuConstFormulaContent_Vf(), (EClassifier)theValuemodelPackage.getVf(), null, "vf", null, 0, 1, CompuConstFormulaContent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstNumericContentEClass, CompuConstNumericContent.class, "CompuConstNumericContent", false, false, true);
        this.initEAttribute(this.getCompuConstNumericContent_V(), (EClassifier)thePrimitivetypesPackage.getString(), "v", "", 0, 1, CompuConstNumericContent.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.compuConstTextContentEClass, CompuConstTextContent.class, "CompuConstTextContent", false, false, true);
        this.initEReference(this.getCompuConstTextContent_Vt(), (EClassifier)theValuemodelPackage.getVt(), theValuemodelPackage.getVt_CompuConstTextContent(), "vt", null, 0, 1, CompuConstTextContent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuMethodEClass, CompuMethod.class, "CompuMethod", false, false, true);
        this.initEAttribute(this.getCompuMethod_DisplayFormat(), (EClassifier)theDatadefpropertiesPackage.getDisplayFormatString(), "displayFormat", "", 0, 1, CompuMethod.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCompuMethod_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, CompuMethod.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getCompuMethod_CompuInternalToPhys(), (EClassifier)this.getCompu(), null, "compuInternalToPhys", null, 0, 1, CompuMethod.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuMethod_CompuPhysToInternal(), (EClassifier)this.getCompu(), null, "compuPhysToInternal", null, 0, 1, CompuMethod.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuNominatorDenominatorEClass, CompuNominatorDenominator.class, "CompuNominatorDenominator", false, false, true);
        this.initEReference(this.getCompuNominatorDenominator_Vfs(), (EClassifier)theValuemodelPackage.getVf(), null, "vfs", null, 0, -1, CompuNominatorDenominator.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCompuNominatorDenominator_Vs(), (EClassifier)thePrimitivetypesPackage.getString(), "vs", "", 0, -1, CompuNominatorDenominator.class, false, false, true, true, false, false, false, true);
        this.initEClass(this.compuProgCodeEClass, CompuProgCode.class, "CompuProgCode", false, false, true);
        this.initEReference(this.getCompuProgCode_ProgCode(), (EClassifier)this.getProgCode(), this.getProgCode_CompuProgCode(), "progCode", null, 0, 1, CompuProgCode.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.progCodeEClass, ProgCode.class, "ProgCode", false, false, true);
        this.initEReference(this.getProgCode_CompuProgCode(), (EClassifier)this.getCompuProgCode(), this.getCompuProgCode_ProgCode(), "compuProgCode", null, 0, 1, ProgCode.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuRationalCoeffsEClass, CompuRationalCoeffs.class, "CompuRationalCoeffs", false, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuScaleRationalFormula(), (EClassifier)this.getCompuScaleRationalFormula(), this.getCompuScaleRationalFormula_CompuRationalCoeffs(), "compuScaleRationalFormula", null, 0, 1, CompuRationalCoeffs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuNumerator(), (EClassifier)this.getCompuNominatorDenominator(), null, "compuNumerator", null, 0, 1, CompuRationalCoeffs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuDenominator(), (EClassifier)this.getCompuNominatorDenominator(), null, "compuDenominator", null, 0, 1, CompuRationalCoeffs.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleEClass, CompuScale.class, "CompuScale", false, false, true);
        this.initEReference(this.getCompuScale_CompuScales(), (EClassifier)this.getCompuScales(), this.getCompuScales_CompuScales(), "compuScales", null, 0, 1, CompuScale.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getCompuScale_ShortLabel(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "shortLabel", "", 0, 1, CompuScale.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCompuScale_Symbol(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "symbol", "", 0, 1, CompuScale.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCompuScale_Desc(), (EClassifier)theMultilanguagedataPackage.getMlData2(), null, "desc", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_LowerLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "lowerLimit", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_UpperLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "upperLimit", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_CompuScaleContentsType(), (EClassifier)this.getCompuScaleContents(), this.getCompuScaleContents_CompuScale(), "compuScaleContentsType", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleContentsEClass, CompuScaleContents.class, "CompuScaleContents", true, false, true);
        this.initEReference(this.getCompuScaleContents_CompuScale(), (EClassifier)this.getCompuScale(), this.getCompuScale_CompuScaleContentsType(), "compuScale", null, 0, 1, CompuScaleContents.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuScaleConstantContentsEClass, CompuScaleConstantContents.class, "CompuScaleConstantContents", false, false, true);
        this.initEReference(this.getCompuScaleConstantContents_CompuConst(), (EClassifier)this.getCompuConst(), null, "compuConst", null, 0, 1, CompuScaleConstantContents.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleGenericMathEClass, CompuScaleGenericMath.class, "CompuScaleGenericMath", false, false, true);
        this.initEClass(this.compuScaleRationalFormulaEClass, CompuScaleRationalFormula.class, "CompuScaleRationalFormula", false, false, true);
        this.initEReference(this.getCompuScaleRationalFormula_CompuRationalCoeffs(), (EClassifier)this.getCompuRationalCoeffs(), this.getCompuRationalCoeffs_CompuScaleRationalFormula(), "compuRationalCoeffs", null, 0, 1, CompuScaleRationalFormula.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScalesEClass, CompuScales.class, "CompuScales", false, false, true);
        this.initEReference(this.getCompuScales_CompuScales(), (EClassifier)this.getCompuScale(), this.getCompuScale_CompuScales(), "compuScales", null, 0, -1, CompuScales.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuGenericMathEClass, CompuGenericMath.class, "CompuGenericMath", false, false, true);
        this.initEReference(this.getCompuGenericMath_SwDataDependency(), (EClassifier)theDatadefpropertiesPackage.getSwDataDependency(), theDatadefpropertiesPackage.getSwDataDependency_SwDataDependencyFormula(), "swDataDependency", null, 0, 1, CompuGenericMath.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getCompuGenericMath_Level(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "level", "", 0, 1, CompuGenericMath.class, false, false, true, true, false, true, false, true);
        this.createResource("http://autosar.org/3.2.1/autosar3x/swc/d/cm");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_CompuConstContentAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_CompuContentAnnotations();
        this.createTaggedValuesOfGeneralization_CompuScaleContentsAnnotations();
        this.createTaggedValuesOfGeneralization_ValueByFormulaAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "9178CA75-33C0-41d5-8201-C941C58C1121", "Created", "Wed Mar 15 11:15:13 CET 2006", "Modified", "Wed Mar 15 11:15:13 CET 2006", "Id", "1530439991", "Name", "ComputationMethod"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"GUID", "BC8CB1BB-3377-40fc-8191-E3666FD19131", "Created", "Fri Nov 25 19:53:28 CET 2005", "Modified", "Fri Sep 01 13:28:42 CEST 2006", "Id", "-1346570927", "Name", "Compu"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"GUID", "391A1FD1-1EC8-4668-AB3C-BB805D74B938", "Created", "Fri Nov 25 19:53:28 CET 2005", "Modified", "Fri Sep 01 13:28:41 CEST 2006", "Id", "-410633509", "Name", "CompuConst"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"GUID", "4BD8D9D2-D06C-4e67-88AF-F102D4C638F9", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Id", "954973008", "Name", "CompuConstContent"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"GUID", "7D98FBEF-AA0F-4c67-A600-CFA86444B884", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Id", "-1111433203", "Name", "CompuContent"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"GUID", "9BBA7F16-7F84-46a4-AA34-F0FFF3652B63", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Id", "114411055", "Name", "CompuConstFormulaContent"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"GUID", "7C1EAFD8-8E91-4b7f-A029-03830C3A01C4", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Id", "2012684235", "Name", "CompuConstNumericContent"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"GUID", "C94CE836-C033-4ea4-B05E-666AE76BC4C0", "Id", "1489041584", "Name", "v"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"GUID", "81055824-DEE2-47c2-9A93-5BD910F4CE4A", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Id", "-1145128538", "Name", "CompuConstTextContent"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"GUID", "35B3FBBD-0E8D-4a3e-9FC6-820F43A6E26A", "Created", "Fri Nov 25 19:52:50 CET 2005", "Modified", "Fri Sep 01 13:27:31 CEST 2006", "Id", "197042282", "Name", "CompuMethod"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"GUID", "BF369C96-BFE4-420c-A2B4-54A6B462B4F9", "Id", "-438750460", "Name", "displayFormat"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"GUID", "7D7963D9-F358-409e-B707-378144C109A9", "Created", "Fri Nov 25 19:53:28 CET 2005", "Modified", "Fri Sep 01 13:28:42 CEST 2006", "Id", "-1927507012", "Name", "CompuNominatorDenominator"});
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"GUID", "B950C832-16A8-446b-A90B-1737BE7958AE", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Id", "-991811338", "Name", "CompuProgCode"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"GUID", "598C66E6-F5EC-49f0-9A12-59D316C3C9DB", "Created", "Fri Nov 25 19:53:00 CET 2005", "Modified", "Fri Sep 01 13:27:52 CEST 2006", "Id", "-1013386612", "Name", "ProgCode"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"GUID", "30AF5895-83DA-4c90-AB3F-D8A7BBDACC5E", "Created", "Fri Nov 25 19:52:51 CET 2005", "Modified", "Fri Sep 01 13:27:31 CEST 2006", "Id", "-598743891", "Name", "CompuRationalCoeffs"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"GUID", "0A255A38-15AB-452a-9B17-55883DD70C04", "Created", "Fri Nov 25 19:52:51 CET 2005", "Modified", "Mon Feb 28 08:38:44 CET 2011", "Id", "-1267547696", "Name", "CompuScale"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"GUID", "4D6E0F54-55B1-4df1-A5E0-3C6622ABAA04", "Id", "1807558828", "Name", "shortLabel"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"GUID", "D0D5568D-9E05-4432-A97D-C5625A302215", "Id", "1298878756", "Name", "symbol"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"GUID", "D87177B7-35E4-47b6-AB9E-FA4F5C4B1ADE", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Id", "668853566", "Name", "CompuScaleContents"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"GUID", "53919658-4DCF-47cc-84FB-EC3BF92B7859", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Id", "-1588549993", "Name", "CompuScaleConstantContents"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"GUID", "514B2D8E-46DA-4d4e-B913-24BB06E32196", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Id", "263834897", "Name", "CompuScaleGenericMath"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"GUID", "768B65FA-855A-43ff-A26E-B02BFD34E3ED", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Id", "-1647437554", "Name", "CompuScaleRationalFormula"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"GUID", "D8D3E313-B184-40b5-9BD7-D5979B4D0238", "Created", "Fri Nov 25 19:53:36 CET 2005", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Id", "-143196185", "Name", "CompuScales"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"GUID", "9D69D804-0286-4dbb-A71F-6567FFC1F2BA", "Created", "Mon Mar 20 20:15:50 CET 2006", "Modified", "Fri Aug 24 16:02:59 CEST 2007", "Id", "645075018", "Name", "CompuGenericMath"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"GUID", "1CCEDA31-230D-4c3c-8BD7-E841874D9CEE", "Id", "1130125571", "Name", "level"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPUTATION-METHOD", "xml.namePlural", "COMPUTATION-METHODS"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"mmt.qualifiedName", "Compu", "xml.tags", "msr.id=\"type__COMPU_TYPE\";mmt.qualifiedName=\"Compu\"", "msr.id", "type__COMPU_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU", "xml.namePlural", "COMPUS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuContentType(), source, new String[]{"mmt.qualifiedName", "Compu.compuContentType", "xml.tags", "xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.typeElement=\"false\";xml.roleElement=\"false\";msr.id=\"COMPU_TYPE__COMPU_content_TYPE\";mmt.qualifiedName=\"Compu.compuContentType\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "pureMM.minOccurs", "1", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "msr.id", "COMPU_TYPE__COMPU_content_TYPE", "xml.name", "COMPU-CONTENT-TYPE", "xml.namePlural", "COMPU-CONTENT-TYPES", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"mmt.qualifiedName", "Compu.compuDefaultValue", "msr.id", "COMPU_TYPE__COMPU-DEFAULT-VALUE", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"70\";msr.id=\"COMPU_TYPE__COMPU-DEFAULT-VALUE\";mmt.qualifiedName=\"Compu.compuDefaultValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-DEFAULT-VALUE", "xml.namePlural", "COMPU-DEFAULT-VALUES", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"mmt.qualifiedName", "CompuConst", "xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-CONST\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-CONST_TYPE\";mmt.qualifiedName=\"CompuConst\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-CONST", "msr.id", "type__COMPU-CONST_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-CONST", "xml.namePlural", "COMPU-CONSTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"mmt.qualifiedName", "CompuConst.compuConstContentType", "xml.tags", "xml.sequenceOffset=\"10\";xml.roleWrapperElement=\"false\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleElement=\"false\";msr.id=\"COMPU-CONST_TYPE__COMPU-CONST_content_TYPE\";mmt.qualifiedName=\"CompuConst.compuConstContentType\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "pureMM.minOccurs", "1", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "msr.id", "COMPU-CONST_TYPE__COMPU-CONST_content_TYPE", "xml.name", "COMPU-CONST-CONTENT-TYPE", "xml.namePlural", "COMPU-CONST-CONTENT-TYPES", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"mmt.qualifiedName", "CompuConstContent", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_content_TYPE\";msr.isOrgroup=\"true\";mmt.qualifiedName=\"CompuConstContent\"", "asam.useCase", "MDX", "msr.isOrgroup", "true", "msr.id", "special__COMPU-CONST_content_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-CONST-CONTENT", "xml.namePlural", "COMPU-CONST-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"mmt.qualifiedName", "CompuContent", "msr.id", "special__COMPU_content_TYPE", "msr.isOrgroup", "true", "xml.tags", "msr.id=\"special__COMPU_content_TYPE\";msr.isOrgroup=\"true\";mmt.qualifiedName=\"CompuContent\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-CONTENT", "xml.namePlural", "COMPU-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"mmt.qualifiedName", "CompuConstFormulaContent", "msr.id", "special__COMPU-CONST_formulaContent_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_formulaContent_TYPE\";mmt.qualifiedName=\"CompuConstFormulaContent\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-CONST-FORMULA-CONTENT", "xml.namePlural", "COMPU-CONST-FORMULA-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"mmt.qualifiedName", "CompuConstFormulaContent.vf", "msr.id", "COMPU-CONST_formulaContent_TYPE__VF", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-CONST_formulaContent_TYPE__VF\";mmt.qualifiedName=\"CompuConstFormulaContent.vf\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "VF", "xml.namePlural", "VFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"mmt.qualifiedName", "CompuConstNumericContent", "msr.id", "special__COMPU-CONST_numericContent_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_numericContent_TYPE\";mmt.qualifiedName=\"CompuConstNumericContent\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-CONST-NUMERIC-CONTENT", "xml.namePlural", "COMPU-CONST-NUMERIC-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"mmt.qualifiedName", "CompuConstNumericContent.v", "xml.tags", "msr.id=\"COMPU-CONST_numericContent_TYPE__V\";msr.tbdString=\"true\";xml.sequenceOffset=\"50\";mmt.qualifiedName=\"CompuConstNumericContent.v\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "msr.id", "COMPU-CONST_numericContent_TYPE__V", "xml.name", "V", "xml.namePlural", "VS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"mmt.qualifiedName", "CompuConstTextContent", "msr.id", "special__COMPU-CONST_textContent_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_textContent_TYPE\";mmt.qualifiedName=\"CompuConstTextContent\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-CONST-TEXT-CONTENT", "xml.namePlural", "COMPU-CONST-TEXT-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"mmt.qualifiedName", "CompuConstTextContent.vt", "msr.id", "COMPU-CONST_textContent_TYPE__VT", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"70\";msr.id=\"COMPU-CONST_textContent_TYPE__VT\";mmt.qualifiedName=\"CompuConstTextContent.vt\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "VT", "xml.namePlural", "VTS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"mmt.qualifiedName", "CompuMethod", "xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-METHOD\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-METHOD_TYPE\";mmt.qualifiedName=\"CompuMethod\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-METHOD", "msr.id", "type__COMPU-METHOD_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-METHOD", "xml.namePlural", "COMPU-METHODS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"mmt.qualifiedName", "CompuMethod.displayFormat", "xml.tags", "msr.id=\"COMPU-METHOD_TYPE__DISPLAY-FORMAT\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"CompuMethod.displayFormat\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-METHOD_TYPE__DISPLAY-FORMAT", "xml.name", "DISPLAY-FORMAT", "xml.namePlural", "DISPLAY-FORMATS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"mmt.qualifiedName", "CompuMethod.unit", "msr.id", "COMPU-METHOD_TYPE__UNIT-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-METHOD_TYPE__UNIT-REF\";mmt.qualifiedName=\"CompuMethod.unit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"mmt.qualifiedName", "CompuMethod.compuInternalToPhys", "msr.id", "COMPU-METHOD_TYPE__COMPU-INTERNAL-TO-PHYS", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "2", "xml.tags", "xml.sequenceOffset=\"80\";msr.id=\"COMPU-METHOD_TYPE__COMPU-INTERNAL-TO-PHYS\";mmt.qualifiedName=\"CompuMethod.compuInternalToPhys\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-INTERNAL-TO-PHYS", "xml.namePlural", "COMPU-INTERNAL-TO-PHYSS", "internal-xml-sequenceOffset", "80", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"mmt.qualifiedName", "CompuMethod.compuPhysToInternal", "msr.id", "COMPU-METHOD_TYPE__COMPU-PHYS-TO-INTERNAL", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "3", "xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"COMPU-METHOD_TYPE__COMPU-PHYS-TO-INTERNAL\";mmt.qualifiedName=\"CompuMethod.compuPhysToInternal\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-PHYS-TO-INTERNAL", "xml.namePlural", "COMPU-PHYS-TO-INTERNALS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"mmt.qualifiedName", "CompuNominatorDenominator", "msr.id", "type__COMPU-NOMINATOR_DENOMINATOR_TYPE", "msr.isGroupOnly", "true", "xml.tags", "msr.id=\"type__COMPU-NOMINATOR_DENOMINATOR_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"CompuNominatorDenominator\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-NOMINATOR-DENOMINATOR", "xml.namePlural", "COMPU-NOMINATOR-DENOMINATORS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vfs(), source, new String[]{"mmt.qualifiedName", "CompuNominatorDenominator.vf", "msr.id", "COMPU-NOMINATOR_DENOMINATOR_TYPE__VF", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"COMPU-NOMINATOR_DENOMINATOR_TYPE__VF\";mmt.qualifiedName=\"CompuNominatorDenominator.vf\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "VF", "xml.namePlural", "VFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"mmt.qualifiedName", "CompuNominatorDenominator.v", "msr.id", "COMPU-NOMINATOR_DENOMINATOR_TYPE__V", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-NOMINATOR_DENOMINATOR_TYPE__V\";mmt.qualifiedName=\"CompuNominatorDenominator.v\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "V", "xml.namePlural", "VS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"mmt.qualifiedName", "CompuProgCode", "xml.tags", "msr.id=\"special__COMPU_prog-code_TYPE\";mmt.qualifiedName=\"CompuProgCode\"", "msr.id", "special__COMPU_prog-code_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-PROG-CODE", "xml.namePlural", "COMPU-PROG-CODES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuProgCode_ProgCode(), source, new String[]{"mmt.qualifiedName", "CompuProgCode.progCode", "msr.id", "COMPU_prog-code_TYPE__PROG-CODE", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"60\";msr.id=\"COMPU_prog-code_TYPE__PROG-CODE\";mmt.qualifiedName=\"CompuProgCode.progCode\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "PROG-CODE", "xml.namePlural", "PROG-CODES", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"mmt.qualifiedName", "ProgCode", "msr.id", "type__PROG-CODE_TYPE", "asam.harmonizedObject", "ASAM-PROG-CODE", "xml.tags", "asam.harmonizedObject=\"ASAM-PROG-CODE\";msr.id=\"type__PROG-CODE_TYPE\";mmt.qualifiedName=\"ProgCode\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PROG-CODE", "xml.namePlural", "PROG-CODES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"mmt.qualifiedName", "CompuRationalCoeffs", "xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-RATIONAL-COEFFS\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-RATIONAL-COEFFS_TYPE\";mmt.qualifiedName=\"CompuRationalCoeffs\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-RATIONAL-COEFFS", "msr.id", "type__COMPU-RATIONAL-COEFFS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-RATIONAL-COEFFS", "xml.namePlural", "COMPU-RATIONAL-COEFFSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"mmt.qualifiedName", "CompuRationalCoeffs.compuNumerator", "msr.id", "COMPU-RATIONAL-COEFFS_TYPE__COMPU-NUMERATOR", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"COMPU-RATIONAL-COEFFS_TYPE__COMPU-NUMERATOR\";mmt.qualifiedName=\"CompuRationalCoeffs.compuNumerator\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-NUMERATOR", "xml.namePlural", "COMPU-NUMERATORS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"mmt.qualifiedName", "CompuRationalCoeffs.compuDenominator", "msr.id", "COMPU-RATIONAL-COEFFS_TYPE__COMPU-DENOMINATOR", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-RATIONAL-COEFFS_TYPE__COMPU-DENOMINATOR\";mmt.qualifiedName=\"CompuRationalCoeffs.compuDenominator\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-DENOMINATOR", "xml.namePlural", "COMPU-DENOMINATORS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"mmt.qualifiedName", "CompuScale", "xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-SCALE\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-SCALE_TYPE\";mmt.qualifiedName=\"CompuScale\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-SCALE", "msr.id", "type__COMPU-SCALE_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-SCALE", "xml.namePlural", "COMPU-SCALES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"mmt.qualifiedName", "CompuScale.shortLabel", "xml.tags", "msr.id=\"COMPU-SCALE_TYPE__SHORT-LABEL\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"CompuScale.shortLabel\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "COMPU-SCALE_TYPE__SHORT-LABEL", "xml.name", "SHORT-LABEL", "xml.namePlural", "SHORT-LABELS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"xml.sequenceOffset", "1", "mmt.qualifiedName", "CompuScale.symbol", "xml.tags", "xml.sequenceOffset=\"25\";mmt.qualifiedName=\"CompuScale.symbol\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.name", "SYMBOL", "xml.namePlural", "SYMBOLS", "internal-xml-sequenceOffset", "25", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"mmt.qualifiedName", "CompuScale.desc", "msr.id", "COMPU-SCALE_TYPE__DESC", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "2", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-SCALE_TYPE__DESC\";mmt.qualifiedName=\"CompuScale.desc\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "DESC", "xml.namePlural", "DESCS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"mmt.qualifiedName", "CompuScale.lowerLimit", "msr.id", "COMPU-SCALE_TYPE__LOWER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "3", "xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"COMPU-SCALE_TYPE__LOWER-LIMIT\";mmt.qualifiedName=\"CompuScale.lowerLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"mmt.qualifiedName", "CompuScale.upperLimit", "msr.id", "COMPU-SCALE_TYPE__UPPER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "4", "xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"COMPU-SCALE_TYPE__UPPER-LIMIT\";mmt.qualifiedName=\"CompuScale.upperLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContentsType(), source, new String[]{"mmt.qualifiedName", "CompuScale.compuScaleContentsType", "xml.tags", "xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.typeWrapperElement=\"false\";xml.sequenceOffset=\"70\";xml.typeElement=\"false\";msr.id=\"COMPU-SCALE_TYPE__COMPU-SCALE_contents_TYPE\";mmt.qualifiedName=\"CompuScale.compuScaleContentsType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "pureMM.minOccurs", "0", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "5", "msr.id", "COMPU-SCALE_TYPE__COMPU-SCALE_contents_TYPE", "xml.name", "COMPU-SCALE-CONTENTS-TYPE", "xml.namePlural", "COMPU-SCALE-CONTENTS-TYPES", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"mmt.qualifiedName", "CompuScaleContents", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_contents_TYPE\";msr.isOrgroup=\"true\";mmt.qualifiedName=\"CompuScaleContents\"", "asam.useCase", "MDX", "msr.isOrgroup", "true", "msr.id", "special__COMPU-SCALE_contents_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-SCALE-CONTENTS", "xml.namePlural", "COMPU-SCALE-CONTENTSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"mmt.qualifiedName", "CompuScaleConstantContents", "msr.id", "special__COMPU-SCALE_constantContents_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_constantContents_TYPE\";mmt.qualifiedName=\"CompuScaleConstantContents\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-SCALE-CONSTANT-CONTENTS", "xml.namePlural", "COMPU-SCALE-CONSTANT-CONTENTSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"mmt.qualifiedName", "CompuScaleConstantContents.compuConst", "msr.id", "COMPU-SCALE_constantContents_TYPE__COMPU-CONST", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"COMPU-SCALE_constantContents_TYPE__COMPU-CONST\";mmt.qualifiedName=\"CompuScaleConstantContents.compuConst\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-CONST", "xml.namePlural", "COMPU-CONSTS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"mmt.qualifiedName", "CompuScaleGenericMath", "msr.id", "special__COMPU-SCALE_genericMath_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_genericMath_TYPE\";mmt.qualifiedName=\"CompuScaleGenericMath\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-SCALE-GENERIC-MATH", "xml.namePlural", "COMPU-SCALE-GENERIC-MATHS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"mmt.qualifiedName", "CompuScaleRationalFormula", "msr.id", "special__COMPU-SCALE_rationalFormula_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_rationalFormula_TYPE\";mmt.qualifiedName=\"CompuScaleRationalFormula\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-SCALE-RATIONAL-FORMULA", "xml.namePlural", "COMPU-SCALE-RATIONAL-FORMULAS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"mmt.qualifiedName", "CompuScaleRationalFormula.compuRationalCoeffs", "msr.id", "COMPU-SCALE_rationalFormula_TYPE__COMPU-RATIONAL-COEFFS", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"110\";msr.id=\"COMPU-SCALE_rationalFormula_TYPE__COMPU-RATIONAL-COEFFS\";mmt.qualifiedName=\"CompuScaleRationalFormula.compuRationalCoeffs\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "COMPU-RATIONAL-COEFFS", "xml.namePlural", "COMPU-RATIONAL-COEFFSS", "internal-xml-sequenceOffset", "110", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"mmt.qualifiedName", "CompuScales", "xml.tags", "msr.id=\"special__COMPU_scales_TYPE\";mmt.qualifiedName=\"CompuScales\"", "msr.id", "special__COMPU_scales_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-SCALES", "xml.namePlural", "COMPU-SCALESS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"mmt.qualifiedName", "CompuScales.compuScale", "xml.tags", "xml.roleWrapperElement=\"true\";xml.sequenceOffset=\"40\";xml.roleElement=\"true\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";msr.id=\"COMPU_scales_TYPE__COMPU-SCALES\";mmt.qualifiedName=\"CompuScales.compuScale\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "pureMM.minOccurs", "0", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "0", "msr.id", "COMPU_scales_TYPE__COMPU-SCALES", "xml.name", "COMPU-SCALE", "xml.namePlural", "COMPU-SCALES", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"mmt.qualifiedName", "CompuGenericMath", "xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-GENERIC-MATH\";msr.id=\"type__COMPU-GENERIC-MATH_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"CompuGenericMath\"", "asam.harmonizedObject", "ASAM-COMPU-GENERIC-MATH", "msr.isGroupOnly", "true", "msr.id", "type__COMPU-GENERIC-MATH_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "COMPU-GENERIC-MATH", "xml.namePlural", "COMPU-GENERIC-MATHS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"xml.attribute", "true", "mmt.qualifiedName", "CompuGenericMath.level", "msr.id", "COMPU-GENERIC-MATH_TYPE__COMPU-GENERIC-MATH_TYPE__LEVEL", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.tags", "msr.id=\"COMPU-GENERIC-MATH_TYPE__COMPU-GENERIC-MATH_TYPE__LEVEL\";xml.attribute=\"true\";mmt.qualifiedName=\"CompuGenericMath.level\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "LEVEL", "xml.namePlural", "LEVELS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"name", "COMPU", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuContentType(), source, new String[]{"name", "COMPU-CONTENT-TYPE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"name", "COMPU-DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"name", "COMPU-CONST", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"name", "COMPU-CONST-CONTENT-TYPE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"name", "COMPU-CONST-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"name", "COMPU-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"name", "COMPU-CONST-FORMULA-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"name", "COMPU-CONST-NUMERIC-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"name", "COMPU-CONST-TEXT-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"name", "VT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"name", "COMPU-METHOD", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"name", "DISPLAY-FORMAT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"name", "COMPU-INTERNAL-TO-PHYS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"name", "COMPU-PHYS-TO-INTERNAL", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"name", "COMPU-NOMINATOR-DENOMINATOR", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vfs(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"name", "COMPU-PROG-CODE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuProgCode_ProgCode(), source, new String[]{"name", "PROG-CODE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"name", "PROG-CODE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"name", "COMPU-RATIONAL-COEFFS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"name", "COMPU-NUMERATOR", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"name", "COMPU-DENOMINATOR", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"name", "COMPU-SCALE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"name", "SHORT-LABEL", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"name", "SYMBOL", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"name", "DESC", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContentsType(), source, new String[]{"name", "COMPU-SCALE-CONTENTS-TYPE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"name", "COMPU-SCALE-CONTENTS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"name", "COMPU-SCALE-CONSTANT-CONTENTS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"name", "COMPU-CONST", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"name", "COMPU-SCALE-GENERIC-MATH", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"name", "COMPU-SCALE-RATIONAL-FORMULA", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"name", "COMPU-RATIONAL-COEFFS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"name", "COMPU-SCALES", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"name", "COMPU-SCALES", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"name", "COMPU-GENERIC-MATH", "kind", "mixed", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_SwDataDependency(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"name", "LEVEL", "kind", "attribute"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.getCompu_CompuContentType(), source, new String[]{"documentation", "This specifies the details of the computation."});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"documentation", "This property can be used to specify an output value for a conversion formula, if the value to be converted lies outside the plausibility limit. Although this is possible for all conversion formulae, it is especially valid for variables with tabular conversion formulae."});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"documentation", "This is the actual content of the constant compu method scale."});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"documentation", "<vt> represents one particular textual value of the calibration item."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_DisplayFormat(), source, new String[]{"documentation", "This property specifies, how the physical value shall be displayed e.g. in documents or measurement and calibration tools."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"documentation", "This is the physical unit of the Physical values for which the CompuMethod applies."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"documentation", "This speifies the computation from internal values to physical values."});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"documentation", "This represents the computation from physical values to the internal values."});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vfs(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"documentation", "This is the enumerator of the rational expression."});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"documentation", "This is the denominator of the expression."});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"documentation", "This element specifies a short name for the particular scale. The name can for example be used to derive a programming language identifier."});
        this.addAnnotation((ENamedElement)this.getCompuScale_Symbol(), source, new String[]{"documentation", "The symbol, if provided, is used by code generators to get a C identifier for the CompuScale. The name will be used as is for the code generation, therefore it needs to be unique within the generation context."});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"documentation", "<desc> represents a general but brief description of the object in question."});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContentsType(), source, new String[]{"documentation", "This represents the computation details of the scale."});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"documentation", "This represnts the fact that the scale is a constant. The use case is mainly a non interplolated scale. It is a simplification of the fact that a constant scale can also be expressed as Rational Function of oder 0."});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"documentation", "This specifies the coefficients of the rational fomula."});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"documentation", "This represents one scale within the compu method."});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"documentation", "This class represents a calculation formula as a simple arithmetical expression.\r\n\r\nstring f(x): function to calculate the physical value from the binary, control unit internal value. The interpretation proceeds from left to right for operations of the same operation preferences. Operator preferences, such as power before product/quotient before sum/difference before shift left before shift right before logical AND before logical OR are taken into account. Brackets are allowed and should be used in order to exclude interpretation doubt. \r\n\r\nFor more details refer to ASAM Harmonized Data Objects v1.1 Chapter 9.3.11.\r\n\r\nNote that this element is a mixed string since a future variant mechanism  might use placeholdes to represent references to other objects of the metamodel.\r\n\r\nAs of August 2007 within ASAM there are slightly different syntaxes. One from ASAM-HDO (GenericMath) and the one from SwDataDependency: The difference is mainly between available functions and operators. Nevertheless we use the same class for now.\r\n\r\nnumeric_expression ::= ( \"-\"expression ) | ( expression ( \"+\" | \"-\" | \"*\" | \"/\" | \"^\") expression )\r\n                expression ::= ( number | variable | numeric_expression | ( \"(\" expression \")\" ) | sinus_statement | cosinus_statement | sqrt_statement ) | expression {white-space}\r\n                sinus_statement ::= \"sin\" \"(\" expression \")\"\r\n                cosinus_statement ::= \"cos\" \"(\" expression \")\"\r\n                sqrt_statement ::= \"sqrt\" \"(\" expression \")\"\r\n                number ::= integer_literal | float_literal\r\n                variable ::= Any valid Object in question\r\n                integer_literal ::= ( \"1..9\" { \"0..9\" } ) | ( \"0\" \"x\" \"0..9a..f\" { \"0..9a..f\" } )\r\n                float_literal ::= ( decimal_digits \".\"  decimal_digits   exponent_part  ) | ( \".\" decimal_digits  exponent_part  ) | ( decimal_digits  exponent_part  )\r\n                decimal_digits ::= \"0..9\" { \"0..9\" }\r\n                exponent_part ::= \"e\"  \"+\" | \"-\"  decimal_digits\r\n                white-space ::= tabulator | blank | newline | carriage_return | {tabulator | blank | newline | carriage_return }\r\n                tabulator ::= \\t\r\n                blank ::= \" \"\r\n                newline ::= \\n\r\n                carriage_return ::= \\c"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Level(), source, new String[]{"documentation", "Placeholder to describe an indicator of a language level for the mathematics e.g. INFORMAL, ASAMHDO.\r\nMay be refined by particular usecases."});
    }

    protected void createTaggedValuesOfGeneralization_CompuConstContentAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuConstContent";
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuConstFormulaContent->compuConstContentType", "GUID", "30897B5B-87AD-40e5-85C7-6866ED496247", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_formulaContent_TYPE", "Id", "877179162", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuConstNumericContent->compuConstContentType", "GUID", "C8242A13-E380-43fd-9299-30F4AE1949D9", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_numericContent_TYPE", "Id", "-831352274", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuConstTextContent->compuConstContentType", "GUID", "731D0F8E-C55A-4485-8686-C1A226FEFBB8", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_textContent_TYPE", "Id", "-1073824756", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuMethod->arelement", "GUID", "6F553836-C4A6-4f4b-8622-ABB4BAC20008", "msr.id", "COMPU-METHOD_TYPE_ARElement", "Id", "-722054992", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Stereotype", "atpMixedString"});
    }

    protected void createTaggedValuesOfGeneralization_CompuContentAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuContent";
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuProgCode->compuContentType", "GUID", "EBA1340F-4B61-4c99-8CE9-925F4CA78802", "msr.id", "COMPU_content_TYPE__COMPU_prog-code_TYPE", "Id", "55907152", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuScales->compuContentType", "GUID", "0427C8F8-F43C-44e3-A27C-9332113907AD", "msr.id", "COMPU_content_TYPE__COMPU_scales_TYPE", "Id", "-1185114020", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CompuScaleContentsAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuScaleContents";
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuScaleConstantContents->compuScaleContentsType", "GUID", "5EFEC25D-9062-49d3-9891-2D5849C7F2F2", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_constantContents_TYPE", "Id", "680265908", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuScaleGenericMath->compuScaleContentsType", "GUID", "95747DD3-9417-4ae9-AD77-E2667E0AD0FA", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_genericMath_TYPE", "Id", "1752484864", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuScaleRationalFormula->compuScaleContentsType", "GUID", "049E2516-DFC5-4845-AED9-DE4A20290DDF", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_rationalFormula_TYPE", "Id", "1992484392", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ValueByFormulaAnnotations() {
        String source = "TaggedValuesOfGeneralization_ValueByFormula";
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "CompuGenericMath->valueByFormulaType", "GUID", "85BE9194-CDA2-4f0b-AB3F-FC0749B9C16A", "msr.id", "COMPU-GENERIC-MATH_TYPE__VALUE-BY-FORMULA_TYPE", "Id", "-1574490400", "xml.sequenceOffset", "0"});
    }
}

