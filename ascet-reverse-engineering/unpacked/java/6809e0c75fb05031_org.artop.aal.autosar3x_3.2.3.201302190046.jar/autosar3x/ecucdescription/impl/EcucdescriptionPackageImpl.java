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
package autosar3x.ecucdescription.impl;

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
import autosar3x.ecucdescription.BooleanValue;
import autosar3x.ecucdescription.ConfigReferenceValue;
import autosar3x.ecucdescription.Container;
import autosar3x.ecucdescription.EcuConfiguration;
import autosar3x.ecucdescription.EcucdescriptionFactory;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.EnumerationValue;
import autosar3x.ecucdescription.FloatValue;
import autosar3x.ecucdescription.FunctionNameValue;
import autosar3x.ecucdescription.InstanceReferenceValue;
import autosar3x.ecucdescription.IntegerValue;
import autosar3x.ecucdescription.LinkerSymbolValue;
import autosar3x.ecucdescription.ModuleConfiguration;
import autosar3x.ecucdescription.ParameterValue;
import autosar3x.ecucdescription.ReferenceValue;
import autosar3x.ecucdescription.StringValue;
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
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class EcucdescriptionPackageImpl
extends EPackageImpl
implements EcucdescriptionPackage {
    private EClass booleanValueEClass = null;
    private EClass parameterValueEClass = null;
    private EClass configReferenceValueEClass = null;
    private EClass containerEClass = null;
    private EClass ecuConfigurationEClass = null;
    private EClass enumerationValueEClass = null;
    private EClass floatValueEClass = null;
    private EClass functionNameValueEClass = null;
    private EClass linkerSymbolValueEClass = null;
    private EClass stringValueEClass = null;
    private EClass instanceReferenceValueEClass = null;
    private EClass integerValueEClass = null;
    private EClass referenceValueEClass = null;
    private EClass moduleConfigurationEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private EcucdescriptionPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/ecucd", (EFactory)EcucdescriptionFactory.eINSTANCE);
    }

    public static EcucdescriptionPackage init() {
        if (isInited) {
            return (EcucdescriptionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd");
        }
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/ecucd") : new EcucdescriptionPackageImpl());
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
        theEcucdescriptionPackage.createPackageContents();
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
        theEcucdescriptionPackage.initializePackageContents();
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
        theEcucdescriptionPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/ecucd", (Object)theEcucdescriptionPackage);
        return theEcucdescriptionPackage;
    }

    public EClass getBooleanValue() {
        return this.booleanValueEClass;
    }

    public EAttribute getBooleanValue_Value() {
        return (EAttribute)this.booleanValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getParameterValue() {
        return this.parameterValueEClass;
    }

    public EReference getParameterValue_Container() {
        return (EReference)this.parameterValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getParameterValue_Definition() {
        return (EReference)this.parameterValueEClass.getEStructuralFeatures().get(1);
    }

    public EClass getConfigReferenceValue() {
        return this.configReferenceValueEClass;
    }

    public EReference getConfigReferenceValue_Container() {
        return (EReference)this.configReferenceValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getConfigReferenceValue_Definition() {
        return (EReference)this.configReferenceValueEClass.getEStructuralFeatures().get(1);
    }

    public EClass getContainer() {
        return this.containerEClass;
    }

    public EReference getContainer_Definition() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(0);
    }

    public EReference getContainer_ParameterValues() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(1);
    }

    public EReference getContainer_ReferenceValues() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(2);
    }

    public EReference getContainer_SubContainers() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(3);
    }

    public EClass getEcuConfiguration() {
        return this.ecuConfigurationEClass;
    }

    public EReference getEcuConfiguration_EcuExtract() {
        return (EReference)this.ecuConfigurationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEcuConfiguration_EcuSwComposition() {
        return (EReference)this.ecuConfigurationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getEcuConfiguration_Modules() {
        return (EReference)this.ecuConfigurationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getEnumerationValue() {
        return this.enumerationValueEClass;
    }

    public EAttribute getEnumerationValue_Value() {
        return (EAttribute)this.enumerationValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFloatValue() {
        return this.floatValueEClass;
    }

    public EAttribute getFloatValue_Value() {
        return (EAttribute)this.floatValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFunctionNameValue() {
        return this.functionNameValueEClass;
    }

    public EClass getLinkerSymbolValue() {
        return this.linkerSymbolValueEClass;
    }

    public EClass getStringValue() {
        return this.stringValueEClass;
    }

    public EAttribute getStringValue_Value() {
        return (EAttribute)this.stringValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getInstanceReferenceValue() {
        return this.instanceReferenceValueEClass;
    }

    public EReference getInstanceReferenceValue_Value() {
        return (EReference)this.instanceReferenceValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getIntegerValue() {
        return this.integerValueEClass;
    }

    public EAttribute getIntegerValue_Value() {
        return (EAttribute)this.integerValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getReferenceValue() {
        return this.referenceValueEClass;
    }

    public EReference getReferenceValue_Value() {
        return (EReference)this.referenceValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getModuleConfiguration() {
        return this.moduleConfigurationEClass;
    }

    public EReference getModuleConfiguration_Definition() {
        return (EReference)this.moduleConfigurationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getModuleConfiguration_ImplementationConfigVariant() {
        return (EAttribute)this.moduleConfigurationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getModuleConfiguration_ModuleDescription() {
        return (EReference)this.moduleConfigurationEClass.getEStructuralFeatures().get(2);
    }

    public EReference getModuleConfiguration_Containers() {
        return (EReference)this.moduleConfigurationEClass.getEStructuralFeatures().get(3);
    }

    public EcucdescriptionFactory getEcucdescriptionFactory() {
        return (EcucdescriptionFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.booleanValueEClass = this.createEClass(0);
        this.createEAttribute(this.booleanValueEClass, 7);
        this.parameterValueEClass = this.createEClass(1);
        this.createEReference(this.parameterValueEClass, 4);
        this.createEReference(this.parameterValueEClass, 5);
        this.configReferenceValueEClass = this.createEClass(2);
        this.createEReference(this.configReferenceValueEClass, 4);
        this.createEReference(this.configReferenceValueEClass, 5);
        this.containerEClass = this.createEClass(3);
        this.createEReference(this.containerEClass, 17);
        this.createEReference(this.containerEClass, 18);
        this.createEReference(this.containerEClass, 19);
        this.createEReference(this.containerEClass, 20);
        this.ecuConfigurationEClass = this.createEClass(4);
        this.createEReference(this.ecuConfigurationEClass, 19);
        this.createEReference(this.ecuConfigurationEClass, 20);
        this.createEReference(this.ecuConfigurationEClass, 21);
        this.enumerationValueEClass = this.createEClass(5);
        this.createEAttribute(this.enumerationValueEClass, 7);
        this.floatValueEClass = this.createEClass(6);
        this.createEAttribute(this.floatValueEClass, 7);
        this.functionNameValueEClass = this.createEClass(7);
        this.linkerSymbolValueEClass = this.createEClass(8);
        this.stringValueEClass = this.createEClass(9);
        this.createEAttribute(this.stringValueEClass, 7);
        this.instanceReferenceValueEClass = this.createEClass(10);
        this.createEReference(this.instanceReferenceValueEClass, 6);
        this.integerValueEClass = this.createEClass(11);
        this.createEAttribute(this.integerValueEClass, 7);
        this.referenceValueEClass = this.createEClass(12);
        this.createEReference(this.referenceValueEClass, 6);
        this.moduleConfigurationEClass = this.createEClass(13);
        this.createEReference(this.moduleConfigurationEClass, 19);
        this.createEAttribute(this.moduleConfigurationEClass, 20);
        this.createEReference(this.moduleConfigurationEClass, 21);
        this.createEReference(this.moduleConfigurationEClass, 22);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ecucdescription");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/ecucd");
        autosar3x.ecucdescription.instanceref.InstancerefPackage theInstancerefPackage_9 = (autosar3x.ecucdescription.instanceref.InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd/r");
        GecucdescriptionPackage theGecucdescriptionPackage = (GecucdescriptionPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/ed");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        EcucparameterdefPackage theEcucparameterdefPackage = (EcucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucpd");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i");
        SystemPackage theSystemPackage = (SystemPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s");
        ServicesPackage theServicesPackage = (ServicesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/s");
        BswimplementationPackage theBswimplementationPackage = (BswimplementationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bimplementation");
        this.getESubpackages().add((Object)theInstancerefPackage_9);
        this.booleanValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.booleanValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGBooleanValue());
        this.parameterValueEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.parameterValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGParameterValue());
        this.configReferenceValueEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.configReferenceValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGConfigReferenceValue());
        this.containerEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.containerEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGContainer());
        this.ecuConfigurationEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.enumerationValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.enumerationValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGEnumerationValue());
        this.floatValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.floatValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGFloatValue());
        this.functionNameValueEClass.getESuperTypes().add((Object)this.getLinkerSymbolValue());
        this.functionNameValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGFunctionNameValue());
        this.linkerSymbolValueEClass.getESuperTypes().add((Object)this.getStringValue());
        this.linkerSymbolValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGLinkerSymbolValue());
        this.stringValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.stringValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGStringValue());
        this.instanceReferenceValueEClass.getESuperTypes().add((Object)this.getConfigReferenceValue());
        this.instanceReferenceValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGInstanceReferenceValue());
        this.integerValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.integerValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGIntegerValue());
        this.referenceValueEClass.getESuperTypes().add((Object)this.getConfigReferenceValue());
        this.referenceValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGReferenceValue());
        this.moduleConfigurationEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.moduleConfigurationEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGModuleConfiguration());
        this.initEClass(this.booleanValueEClass, BooleanValue.class, "BooleanValue", false, false, true);
        this.initEAttribute(this.getBooleanValue_Value(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "value", "false", 0, 1, BooleanValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.parameterValueEClass, ParameterValue.class, "ParameterValue", true, false, true);
        this.initEReference(this.getParameterValue_Container(), (EClassifier)this.getContainer(), this.getContainer_ParameterValues(), "container", null, 0, 1, ParameterValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getParameterValue_Definition(), (EClassifier)theEcucparameterdefPackage.getConfigParameter(), null, "definition", null, 0, 1, ParameterValue.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.configReferenceValueEClass, ConfigReferenceValue.class, "ConfigReferenceValue", true, false, true);
        this.initEReference(this.getConfigReferenceValue_Container(), (EClassifier)this.getContainer(), this.getContainer_ReferenceValues(), "container", null, 0, 1, ConfigReferenceValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getConfigReferenceValue_Definition(), (EClassifier)theEcucparameterdefPackage.getConfigReference(), null, "definition", null, 0, 1, ConfigReferenceValue.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.containerEClass, Container.class, "Container", false, false, true);
        this.initEReference(this.getContainer_Definition(), (EClassifier)theEcucparameterdefPackage.getContainerDef(), null, "definition", null, 0, 1, Container.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getContainer_ParameterValues(), (EClassifier)this.getParameterValue(), this.getParameterValue_Container(), "parameterValues", null, 0, -1, Container.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getContainer_ReferenceValues(), (EClassifier)this.getConfigReferenceValue(), this.getConfigReferenceValue_Container(), "referenceValues", null, 0, -1, Container.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getContainer_SubContainers(), (EClassifier)this.getContainer(), null, "subContainers", null, 0, -1, Container.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.ecuConfigurationEClass, EcuConfiguration.class, "EcuConfiguration", false, false, true);
        this.initEReference(this.getEcuConfiguration_EcuExtract(), (EClassifier)theSystemPackage.getSystem(), null, "ecuExtract", null, 0, 1, EcuConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getEcuConfiguration_EcuSwComposition(), (EClassifier)theServicesPackage.getEcuSwComposition(), null, "ecuSwComposition", null, 0, 1, EcuConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getEcuConfiguration_Modules(), (EClassifier)this.getModuleConfiguration(), null, "modules", null, 0, -1, EcuConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.enumerationValueEClass, EnumerationValue.class, "EnumerationValue", false, false, true);
        this.initEAttribute(this.getEnumerationValue_Value(), (EClassifier)thePrimitivetypesPackage.getString(), "value", "", 0, 1, EnumerationValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.floatValueEClass, FloatValue.class, "FloatValue", false, false, true);
        this.initEAttribute(this.getFloatValue_Value(), (EClassifier)thePrimitivetypesPackage.getFloat(), "value", "0.0", 0, 1, FloatValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.functionNameValueEClass, FunctionNameValue.class, "FunctionNameValue", false, false, true);
        this.initEClass(this.linkerSymbolValueEClass, LinkerSymbolValue.class, "LinkerSymbolValue", false, false, true);
        this.initEClass(this.stringValueEClass, StringValue.class, "StringValue", false, false, true);
        this.initEAttribute(this.getStringValue_Value(), (EClassifier)thePrimitivetypesPackage.getString(), "value", "", 0, 1, StringValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.instanceReferenceValueEClass, InstanceReferenceValue.class, "InstanceReferenceValue", false, false, true);
        this.initEReference(this.getInstanceReferenceValue_Value(), (EClassifier)theInstancerefPackage_9.getInstanceReferenceValueValue(), theInstancerefPackage_9.getInstanceReferenceValueValue_InstanceReferenceValue(), "value", null, 0, 1, InstanceReferenceValue.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.integerValueEClass, IntegerValue.class, "IntegerValue", false, false, true);
        this.initEAttribute(this.getIntegerValue_Value(), (EClassifier)thePrimitivetypesPackage.getUnlimitedInteger(), "value", "0", 0, 1, IntegerValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.referenceValueEClass, ReferenceValue.class, "ReferenceValue", false, false, true);
        this.initEReference(this.getReferenceValue_Value(), (EClassifier)theIdentifiablePackage.getIdentifiable(), null, "value", null, 0, 1, ReferenceValue.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.moduleConfigurationEClass, ModuleConfiguration.class, "ModuleConfiguration", false, false, true);
        this.initEReference(this.getModuleConfiguration_Definition(), (EClassifier)theEcucparameterdefPackage.getModuleDef(), null, "definition", null, 0, 1, ModuleConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getModuleConfiguration_ImplementationConfigVariant(), (EClassifier)theEcucparameterdefPackage.getConfigurationVariant(), "implementationConfigVariant", "VARIANT-PRE-COMPILE", 0, 1, ModuleConfiguration.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getModuleConfiguration_ModuleDescription(), (EClassifier)theBswimplementationPackage.getBswImplementation(), null, "moduleDescription", null, 0, 1, ModuleConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getModuleConfiguration_Containers(), (EClassifier)this.getContainer(), null, "containers", null, 0, -1, ModuleConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.createResource("http://autosar.org/3.2.1/autosar3x/ecucd");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ParameterValueAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_LinkerSymbolValueAnnotations();
        this.createTaggedValuesOfGeneralization_StringValueAnnotations();
        this.createTaggedValuesOfGeneralization_ConfigReferenceValueAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "9EE87A32-4FE7-4cd4-9E77-35F12CFB5B2E", "Created", "Wed Apr 20 18:29:46 CEST 2005", "Modified", "Thu Aug 25 17:38:52 CEST 2005", "Id", "-1100080070", "Name", "ECUCDescriptionTemplate"});
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"GUID", "675C1621-8A23-479b-98FF-E116FD98C6C8", "Created", "Wed Apr 20 19:39:06 CEST 2005", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Id", "-891725214", "Name", "BooleanValue"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"GUID", "5D090B91-6710-4bd6-9B9C-081ECB53E612", "Id", "2015359969", "Name", "value"});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"GUID", "E13D4458-AAFB-4af3-B576-FA65897344D0", "Created", "Thu Apr 07 10:47:31 CEST 2005", "Modified", "Thu Feb 16 13:35:10 CET 2006", "Id", "1709039292", "Name", "ParameterValue"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"GUID", "85D2B484-BFA3-4738-B039-558B3FC6AC5F", "Created", "Mon Dec 05 13:56:24 CET 2005", "Modified", "Fri Dec 09 11:54:55 CET 2005", "Id", "-752509086", "Name", "ConfigReferenceValue"});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"GUID", "A5E5B521-FF5F-4b09-9E42-FE5F1F44C0A6", "Created", "Thu Apr 07 10:52:20 CEST 2005", "Modified", "Thu Feb 16 13:35:10 CET 2006", "Id", "1066185193", "Name", "Container"});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"GUID", "AEE5EB74-A1CD-480c-ADF3-1F0BC75327F7", "Created", "Wed Aug 03 09:40:59 CEST 2005", "Modified", "Thu Mar 30 09:23:45 CEST 2006", "Id", "1123054859", "Name", "EcuConfiguration"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"GUID", "DFE25F7F-1977-4aab-81B7-E019FBB248BF", "Created", "Tue Jun 21 08:25:43 CEST 2005", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Id", "1119335143", "Name", "EnumerationValue"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"GUID", "0837F140-ED32-4346-9917-A6D9FE4656AA", "Id", "2109837165", "Name", "value"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"GUID", "3892CC3A-4146-45cc-A3D0-8DE2A2AEC04C", "Created", "Wed Apr 20 19:38:39 CEST 2005", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Id", "1196072694", "Name", "FloatValue"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"GUID", "57BAC788-4E87-4cbe-B1CD-F801673B5159", "Id", "1922545172", "Name", "value"});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"GUID", "3BDE35B9-C188-4b63-81A2-A9E7B36ACC3F", "Created", "Wed Jun 22 13:39:23 CEST 2005", "Modified", "Thu Aug 10 08:59:48 CEST 2006", "Id", "1119440363", "Name", "FunctionNameValue"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"GUID", "7883D532-2E89-4acb-B546-AE3CE6CCC413", "Created", "Wed Jun 22 13:39:23 CEST 2005", "Modified", "Thu Aug 10 09:00:16 CEST 2006", "Id", "800784029", "Name", "LinkerSymbolValue"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"GUID", "B358108A-9B24-45be-A59C-21EBAB3C3F87", "Created", "Wed Apr 20 19:39:29 CEST 2005", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Id", "713711863", "Name", "StringValue"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"GUID", "47B716A5-E999-41bd-9510-52A408C22149", "Id", "-2107700870", "Name", "value"});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"GUID", "4A4DA7D2-C47F-4769-8116-851BAF7011EF", "Created", "Mon Dec 05 13:57:41 CET 2005", "Modified", "Tue Jul 31 10:58:48 CEST 2007", "Id", "190250209", "Name", "InstanceReferenceValue"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"GUID", "E1663DB1-FD90-43f7-AEF7-4154DDB790B0", "Created", "Thu Apr 07 10:48:38 CEST 2005", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Id", "1092423437", "Name", "IntegerValue"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"GUID", "C22DA128-D86A-48e2-B768-6C2BB705C59A", "Id", "-807316662", "Name", "value"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"GUID", "01A0E8C5-EB68-4788-991B-7ABF14342D0C", "Created", "Thu Apr 21 10:27:37 CEST 2005", "Modified", "Thu Jul 26 23:11:04 CEST 2007", "Id", "-1703616660", "Name", "ReferenceValue"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"GUID", "961469FE-847E-4168-806D-992C874593D5", "Created", "Thu Nov 03 18:13:33 CET 2005", "Modified", "Thu Aug 02 21:02:03 CEST 2007", "Id", "1131038013", "Name", "ModuleConfiguration"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ImplementationConfigVariant(), source, new String[]{"GUID", "D534258E-63FC-421f-ADBC-560E98B7A77D", "Id", "1188391781", "Name", "implementationConfigVariant"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ECUC-DESCRIPTION-TEMPLATE", "xml.namePlural", "ECUC-DESCRIPTION-TEMPLATES"});
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"mmt.qualifiedName", "BooleanValue", "xml.tags", "mmt.qualifiedName=\"BooleanValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "BOOLEAN-VALUE", "xml.namePlural", "BOOLEAN-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BooleanValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "BooleanValue.value", "pureMM.maxOccurs", "1", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"mmt.qualifiedName", "ParameterValue", "xml.tags", "mmt.qualifiedName=\"ParameterValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PARAMETER-VALUE", "xml.namePlural", "PARAMETER-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getParameterValue_Definition(), source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "ParameterValue.definition", "xml.tags", "xml.sequenceOffset=\"-10\";mmt.qualifiedName=\"ParameterValue.definition\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "internal-xml-sequenceOffset", "-10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"mmt.qualifiedName", "ConfigReferenceValue", "xml.tags", "mmt.qualifiedName=\"ConfigReferenceValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONFIG-REFERENCE-VALUE", "xml.namePlural", "CONFIG-REFERENCE-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getConfigReferenceValue_Definition(), source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "ConfigReferenceValue.definition", "xml.tags", "xml.sequenceOffset=\"-10\";mmt.qualifiedName=\"ConfigReferenceValue.definition\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "internal-xml-sequenceOffset", "-10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"mmt.qualifiedName", "Container", "xml.tags", "mmt.qualifiedName=\"Container\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "CONTAINER", "xml.namePlural", "CONTAINERS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_Definition(), source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "Container.definition", "xml.tags", "xml.sequenceOffset=\"-10\";mmt.qualifiedName=\"Container.definition\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "internal-xml-sequenceOffset", "-10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_ParameterValues(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"parameterValue.Container\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "parameterValue.Container", "pureMM.maxOccurs", "-1", "xml.name", "PARAMETER-VALUE", "xml.namePlural", "PARAMETER-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_ReferenceValues(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"referenceValue.Container\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "referenceValue.Container", "pureMM.maxOccurs", "-1", "xml.name", "REFERENCE-VALUE", "xml.namePlural", "REFERENCE-VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_SubContainers(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"subContainer.Container\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "subContainer.Container", "pureMM.maxOccurs", "-1", "xml.name", "SUB-CONTAINER", "xml.namePlural", "SUB-CONTAINERS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"mmt.qualifiedName", "EcuConfiguration", "xml.tags", "mmt.qualifiedName=\"EcuConfiguration\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ECU-CONFIGURATION", "xml.namePlural", "ECU-CONFIGURATIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuExtract(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EcuConfiguration.ecuExtract\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "EcuConfiguration.ecuExtract", "pureMM.maxOccurs", "1", "xml.name", "ECU-EXTRACT-REF", "xml.namePlural", "ECU-EXTRACT-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuSwComposition(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EcuConfiguration.ecuSwComposition\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "EcuConfiguration.ecuSwComposition", "pureMM.maxOccurs", "1", "xml.name", "ECU-SW-COMPOSITION-REF", "xml.namePlural", "ECU-SW-COMPOSITION-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_Modules(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EcuConfiguration.module\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "EcuConfiguration.module", "pureMM.maxOccurs", "-1", "xml.name", "MODULE-REF", "xml.namePlural", "MODULE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"mmt.qualifiedName", "EnumerationValue", "xml.tags", "mmt.qualifiedName=\"EnumerationValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ENUMERATION-VALUE", "xml.namePlural", "ENUMERATION-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"EnumerationValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "EnumerationValue.value", "pureMM.maxOccurs", "1", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"mmt.qualifiedName", "FloatValue", "xml.tags", "mmt.qualifiedName=\"FloatValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "FLOAT-VALUE", "xml.namePlural", "FLOAT-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"FloatValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "FloatValue.value", "pureMM.maxOccurs", "1", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"mmt.qualifiedName", "FunctionNameValue", "xml.tags", "mmt.qualifiedName=\"FunctionNameValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "FUNCTION-NAME-VALUE", "xml.namePlural", "FUNCTION-NAME-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"mmt.qualifiedName", "LinkerSymbolValue", "xml.tags", "mmt.qualifiedName=\"LinkerSymbolValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "LINKER-SYMBOL-VALUE", "xml.namePlural", "LINKER-SYMBOL-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"mmt.qualifiedName", "StringValue", "xml.tags", "mmt.qualifiedName=\"StringValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "STRING-VALUE", "xml.namePlural", "STRING-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"StringValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "StringValue.value", "pureMM.maxOccurs", "1", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"mmt.qualifiedName", "InstanceReferenceValue", "xml.tags", "mmt.qualifiedName=\"InstanceReferenceValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "INSTANCE-REFERENCE-VALUE", "xml.namePlural", "INSTANCE-REFERENCE-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceValue_Value(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"value.InstanceReferenceValue\";instanceRef.target=\"Identifiable\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "value.InstanceReferenceValue", "instanceRef.target", "Identifiable", "pureMM.maxOccurs", "1", "xml.name", "VALUE-IREF", "xml.namePlural", "VALUE-IREFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"mmt.qualifiedName", "IntegerValue", "xml.tags", "mmt.qualifiedName=\"IntegerValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "INTEGER-VALUE", "xml.namePlural", "INTEGER-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"IntegerValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "IntegerValue.value", "pureMM.maxOccurs", "1", "xml.name", "VALUE", "xml.namePlural", "VALUES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"mmt.qualifiedName", "ReferenceValue", "xml.tags", "mmt.qualifiedName=\"ReferenceValue\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "REFERENCE-VALUE", "xml.namePlural", "REFERENCE-VALUES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getReferenceValue_Value(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ReferenceValue.value\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ReferenceValue.value", "pureMM.maxOccurs", "1", "xml.name", "VALUE-REF", "xml.namePlural", "VALUE-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"mmt.qualifiedName", "ModuleConfiguration", "xml.tags", "mmt.qualifiedName=\"ModuleConfiguration\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "MODULE-CONFIGURATION", "xml.namePlural", "MODULE-CONFIGURATIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Definition(), source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "ModuleConfiguration.definition", "xml.tags", "xml.sequenceOffset=\"-10\";mmt.qualifiedName=\"ModuleConfiguration.definition\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "internal-xml-sequenceOffset", "-10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ImplementationConfigVariant(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModuleConfiguration.implementationConfigVariant\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ModuleConfiguration.implementationConfigVariant", "pureMM.maxOccurs", "1", "xml.name", "IMPLEMENTATION-CONFIG-VARIANT", "xml.namePlural", "IMPLEMENTATION-CONFIG-VARIANTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ModuleDescription(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ModuleConfiguration.moduleDescription\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ModuleConfiguration.moduleDescription", "pureMM.maxOccurs", "1", "xml.name", "MODULE-DESCRIPTION-REF", "xml.namePlural", "MODULE-DESCRIPTION-REFS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Containers(), source, new String[]{"xml.sequenceOffset", "3", "mmt.qualifiedName", "container.ModuleConfiguration", "xml.tags", "xml.sequenceOffset=\"10\";mmt.qualifiedName=\"container.ModuleConfiguration\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "-1", "xml.name", "CONTAINER", "xml.namePlural", "CONTAINERS", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"name", "BOOLEAN-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"name", "PARAMETER-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getParameterValue_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"name", "CONFIG-REFERENCE-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getConfigReferenceValue_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"name", "CONTAINER", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getContainer_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getContainer_ParameterValues(), source, new String[]{"name", "PARAMETER-VALUES", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getContainer_ReferenceValues(), source, new String[]{"name", "REFERENCE-VALUES", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getContainer_SubContainers(), source, new String[]{"name", "SUB-CONTAINERS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"name", "ECU-CONFIGURATION", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuExtract(), source, new String[]{"name", "ECU-EXTRACT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuSwComposition(), source, new String[]{"name", "ECU-SW-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_Modules(), source, new String[]{"name", "MODULE-REFS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"name", "ENUMERATION-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"name", "FLOAT-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"name", "FUNCTION-NAME-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"name", "LINKER-SYMBOL-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"name", "STRING-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"name", "INSTANCE-REFERENCE-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceValue_Value(), source, new String[]{"name", "VALUE-IREF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"name", "INTEGER-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"name", "REFERENCE-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getReferenceValue_Value(), source, new String[]{"name", "VALUE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"name", "MODULE-CONFIGURATION", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ImplementationConfigVariant(), source, new String[]{"name", "IMPLEMENTATION-CONFIG-VARIANT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ModuleDescription(), source, new String[]{"name", "MODULE-DESCRIPTION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Containers(), source, new String[]{"name", "CONTAINERS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type BooleanParamDef"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"documentation", "Stores the value of the Boolean parameter."});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"documentation", "Common class to all types of configuration values"});
        this.addAnnotation((ENamedElement)this.getParameterValue_Definition(), source, new String[]{"documentation", "Reference to the definition of this ParameterValue subclasses in the ECU Configuration Parameter Definition."});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"documentation", "Abstract class to be used as common parent for all reference values in the ECU Configuration Description."});
        this.addAnnotation((ENamedElement)this.getConfigReferenceValue_Definition(), source, new String[]{"documentation", "Reference to the definition of this ConfigReferenceValue subclasses in the ECU Configuration Parameter Definition."});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"documentation", "Represents a Container definition in the ECU Configuration Description."});
        this.addAnnotation((ENamedElement)this.getContainer_Definition(), source, new String[]{"documentation", "Reference to the definition of this Container in the ECU Configuration Parameter Definition."});
        this.addAnnotation((ENamedElement)this.getContainer_ParameterValues(), source, new String[]{"documentation", "Aggregates all ECU Configuration Values within this Container."});
        this.addAnnotation((ENamedElement)this.getContainer_ReferenceValues(), source, new String[]{"documentation", "Aggregates all References with this container."});
        this.addAnnotation((ENamedElement)this.getContainer_SubContainers(), source, new String[]{"documentation", "Aggregates all sub-containers within this container."});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"documentation", "This represents the anchor point of the ECU configuration description."});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuExtract(), source, new String[]{"documentation", "Represents the extract of the System Configuration that is relevant for the ECU configured with that ECU Configuration Description."});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuSwComposition(), source, new String[]{"documentation", "Reference to the EcuSwComposition which holds the AUTOSAR Service Software Components."});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_Modules(), source, new String[]{"documentation", "References to the configuration of individual software modules that are present on this ECU."});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type EnumerationParamDef"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"documentation", "Stores the chosen literal."});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type FloatParamDef"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"documentation", "Stores the value of the Float parameter."});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type FunctionNameDef"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type LinkerSymbolDef"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type StringParamDef"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"documentation", "Stores the value of the String parameter."});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"documentation", "InstanceReference representation in the ECU Configuration."});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceValue_Value(), source, new String[]{"documentation", "InstanceReference representation in the ECU Configuration."});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type IntegerParamDef"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"documentation", "Stores the value of the Integer parameter."});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"documentation", "Used to represent a configuration value that has a parameter definition of type ConfigReference (used for all of its specializations excluding InstanceReferenceParamDef)."});
        this.addAnnotation((ENamedElement)this.getReferenceValue_Value(), source, new String[]{"documentation", "Specifes the destination of the reference."});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"documentation", "Head of the configuration of one Module. A Module can be a BSW module as well as the RTE and ECU Infrastructure.\r\n\r\nAs part of tthe BSW module description, the ModuleConfiguration has two different roles:\r\n\r\nThe recommendedConfiguration contains parameter values recommended by the BSW module vendor. \r\n\r\nThe preconfiguredConfiguration contains values for those parameters which are fixed by the implementation and cannot be changed.\r\n\r\nThese two ModuleConfigurations are used when the base ModuleConfiguration (as part of the base ECU configuration) is created to fill parameters with initial values."});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Definition(), source, new String[]{"documentation", "Reference to the definition of this ModuleConfiguration.\r\nTypically, this is a vendor specific module configuration."});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ImplementationConfigVariant(), source, new String[]{"documentation", "Specifies the ConfigurationVariant used for this ModuleConfiguration."});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ModuleDescription(), source, new String[]{"documentation", "Referencing the BSW module description, which this ModuleConfiguration is configuring. This is optional because the ModuleConfiguration is also used to configure the ECU infrastructure (memory map) or Application SW-Cs."});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Containers(), source, new String[]{"documentation", "Aggregates all containers that belong to this module configuration."});
    }

    protected void createTaggedValuesOfGeneralization_ParameterValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_ParameterValue";
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "BooleanValue->ParameterValue", "GUID", "5F3DB16F-F123-462d-A3BA-E21ACB701EFA", "Id", "637142158", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "EnumerationValue->ParameterValue", "GUID", "D970E64A-4036-47bd-9A55-0439769F73BB", "Id", "2082612266", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "FloatValue->ParameterValue", "GUID", "238D2F88-8406-4a8f-B299-7E2B1B4E5152", "Id", "-1824458363", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "StringValue->ParameterValue", "GUID", "F8F26717-196D-47e8-A1E5-7B5606DEE28F", "Id", "-910670221", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "IntegerValue->ParameterValue", "GUID", "662B40D1-06E9-437d-84BF-46303D4337A2", "Id", "-353915560", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "Container->Identifiable", "GUID", "D16B3AC0-84F7-4b9c-A2FB-AC4491B395CA", "Id", "-821092084", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.getContainer_Definition(), source, new String[]{"Stereotype", "splitable"});
        this.addAnnotation((ENamedElement)this.getContainer_ParameterValues(), source, new String[]{"Stereotype", "splitable"});
        this.addAnnotation((ENamedElement)this.getContainer_ReferenceValues(), source, new String[]{"Stereotype", "splitable"});
        this.addAnnotation((ENamedElement)this.getContainer_SubContainers(), source, new String[]{"Stereotype", "splitable"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Containers(), source, new String[]{"Stereotype", "splitable"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "EcuConfiguration->ARElement", "GUID", "41E003BE-F044-4499-9450-4245F1907CA6", "Id", "-950842168", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ModuleConfiguration->ARElement", "GUID", "B96BED8C-F39C-42e6-A513-D61E8F1DD55C", "Id", "-646412904", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_LinkerSymbolValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_LinkerSymbolValue";
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "FunctionNameValue->LinkerSymbolValue", "GUID", "F75C6DD6-7218-4485-9A26-8B918EA92453", "Id", "-1250151919", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_StringValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_StringValue";
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "LinkerSymbolValue->StringValue", "GUID", "7B33BCA9-ADA1-42d6-8370-94259A043A74", "Id", "1381751315", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ConfigReferenceValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_ConfigReferenceValue";
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "InstanceReferenceValue->ConfigReferenceValue", "GUID", "48FF0EF7-8993-4793-83CD-67F6FACB7C2C", "Id", "426349164", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "ReferenceValue->ConfigReferenceValue", "GUID", "5B200526-05ED-475a-9447-32434FD95DCB", "Id", "-1447888299", "xml.sequenceOffset", "0"});
    }
}

