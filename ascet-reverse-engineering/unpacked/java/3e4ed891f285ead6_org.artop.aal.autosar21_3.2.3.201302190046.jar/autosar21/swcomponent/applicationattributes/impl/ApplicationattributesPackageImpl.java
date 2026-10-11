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
package autosar21.swcomponent.applicationattributes.impl;

import autosar21.bswmodule.BswmodulePackage;
import autosar21.bswmodule.impl.BswmodulePackageImpl;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.impl.EcucdescriptionPackageImpl;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.impl.EcucparameterdefPackageImpl;
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
import autosar21.swcomponent.applicationattributes.ApplicationattributesFactory;
import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.applicationattributes.CalibrationPortAnnotation;
import autosar21.swcomponent.applicationattributes.ComMUserNeeds;
import autosar21.swcomponent.applicationattributes.ExtAnnotation;
import autosar21.swcomponent.applicationattributes.FailureMonitoring;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotation;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationFilteringDebouncingEnum;
import autosar21.swcomponent.applicationattributes.IoHwAbstractionServerAnnotationPulseTestEnum;
import autosar21.swcomponent.applicationattributes.MaxCommMode;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeeds;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsReliabilityEnum;
import autosar21.swcomponent.applicationattributes.NVRAMBlockNeedsWritingPriorityEnum;
import autosar21.swcomponent.applicationattributes.PortAnnotation;
import autosar21.swcomponent.applicationattributes.ReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.ReportFeature;
import autosar21.swcomponent.applicationattributes.SenderAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationLimitTypeEnum;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationProcessingTypeEnum;
import autosar21.swcomponent.applicationattributes.ServiceNeeds;
import autosar21.swcomponent.applicationattributes.SupervisedEntityNeeds;
import autosar21.swcomponent.applicationattributes.WakeUp;
import autosar21.swcomponent.applicationattributes.util.ApplicationattributesValidator;
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
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class ApplicationattributesPackageImpl
extends EPackageImpl
implements ApplicationattributesPackage {
    private EClass calibrationPortAnnotationEClass = null;
    private EClass comMUserNeedsEClass = null;
    private EClass serviceNeedsEClass = null;
    private EClass extAnnotationEClass = null;
    private EClass failureMonitoringEClass = null;
    private EClass ioHwAbstractionServerAnnotationEClass = null;
    private EClass reportFeatureEClass = null;
    private EClass wakeUpEClass = null;
    private EClass nvramBlockNeedsEClass = null;
    private EClass receiverAnnotationEClass = null;
    private EClass senderReceiverAnnotationEClass = null;
    private EClass senderAnnotationEClass = null;
    private EClass supervisedEntityNeedsEClass = null;
    private EClass portAnnotationEClass = null;
    private EEnum maxCommModeEEnum = null;
    private EEnum ioHwAbstractionServerAnnotationPulseTestEnumEEnum = null;
    private EEnum ioHwAbstractionServerAnnotationFilteringDebouncingEnumEEnum = null;
    private EEnum nvramBlockNeedsReliabilityEnumEEnum = null;
    private EEnum nvramBlockNeedsWritingPriorityEnumEEnum = null;
    private EEnum senderReceiverAnnotationLimitTypeEnumEEnum = null;
    private EEnum senderReceiverAnnotationProcessingTypeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ApplicationattributesPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/aa", (EFactory)ApplicationattributesFactory.eINSTANCE);
    }

    public static ApplicationattributesPackage init() {
        if (isInited) {
            return (ApplicationattributesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa");
        }
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/aa") : new ApplicationattributesPackageImpl());
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
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        theApplicationattributesPackage.createPackageContents();
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
        theEcucparameterdefPackage.createPackageContents();
        theApplicationattributesPackage.initializePackageContents();
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
        theEcucparameterdefPackage.initializePackageContents();
        EValidator.Registry.INSTANCE.put((Object)theApplicationattributesPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return ApplicationattributesValidator.INSTANCE;
            }
        });
        theApplicationattributesPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/aa", (Object)theApplicationattributesPackage);
        return theApplicationattributesPackage;
    }

    public EClass getCalibrationPortAnnotation() {
        return this.calibrationPortAnnotationEClass;
    }

    public EReference getCalibrationPortAnnotation_CalprmElement() {
        return (EReference)this.calibrationPortAnnotationEClass.getEStructuralFeatures().get(0);
    }

    public EClass getComMUserNeeds() {
        return this.comMUserNeedsEClass;
    }

    public EAttribute getComMUserNeeds_MaxCommMode() {
        return (EAttribute)this.comMUserNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getServiceNeeds() {
        return this.serviceNeedsEClass;
    }

    public EClass getExtAnnotation() {
        return this.extAnnotationEClass;
    }

    public EReference getExtAnnotation_PortAnnotation() {
        return (EReference)this.extAnnotationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getExtAnnotation_Name() {
        return (EAttribute)this.extAnnotationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getExtAnnotation_Value() {
        return (EAttribute)this.extAnnotationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getFailureMonitoring() {
        return this.failureMonitoringEClass;
    }

    public EReference getFailureMonitoring_IoHwAbstractionServerAnnotation() {
        return (EReference)this.failureMonitoringEClass.getEStructuralFeatures().get(0);
    }

    public EReference getFailureMonitoring_MonitorsFailure() {
        return (EReference)this.failureMonitoringEClass.getEStructuralFeatures().get(1);
    }

    public EClass getIoHwAbstractionServerAnnotation() {
        return this.ioHwAbstractionServerAnnotationEClass;
    }

    public EAttribute getIoHwAbstractionServerAnnotation_Age() {
        return (EAttribute)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getIoHwAbstractionServerAnnotation_ArgumentPrototype() {
        return (EReference)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getIoHwAbstractionServerAnnotation_BswRangeMax() {
        return (EAttribute)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getIoHwAbstractionServerAnnotation_BswRangeMin() {
        return (EAttribute)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getIoHwAbstractionServerAnnotation_BswResolution() {
        return (EAttribute)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(4);
    }

    public EReference getIoHwAbstractionServerAnnotation_DataElementPrototype() {
        return (EReference)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(5);
    }

    public EReference getIoHwAbstractionServerAnnotation_FailureMonitoring() {
        return (EReference)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getIoHwAbstractionServerAnnotation_FilteringDebouncing() {
        return (EAttribute)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getIoHwAbstractionServerAnnotation_PulseTest() {
        return (EAttribute)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(8);
    }

    public EReference getIoHwAbstractionServerAnnotation_ReportFeature() {
        return (EReference)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getIoHwAbstractionServerAnnotation_Unit() {
        return (EAttribute)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(10);
    }

    public EReference getIoHwAbstractionServerAnnotation_WakeUp() {
        return (EReference)this.ioHwAbstractionServerAnnotationEClass.getEStructuralFeatures().get(11);
    }

    public EClass getReportFeature() {
        return this.reportFeatureEClass;
    }

    public EReference getReportFeature_IoHwAbstractionServerAnnotation() {
        return (EReference)this.reportFeatureEClass.getEStructuralFeatures().get(0);
    }

    public EClass getWakeUp() {
        return this.wakeUpEClass;
    }

    public EReference getWakeUp_IoHwAbstractionServerAnnotation() {
        return (EReference)this.wakeUpEClass.getEStructuralFeatures().get(0);
    }

    public EClass getNVRAMBlockNeeds() {
        return this.nvramBlockNeedsEClass;
    }

    public EAttribute getNVRAMBlockNeeds_NDataSets() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getNVRAMBlockNeeds_Readonly() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getNVRAMBlockNeeds_Reliability() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getNVRAMBlockNeeds_ResistantToChangedSw() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getNVRAMBlockNeeds_RestoreAtStart() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getNVRAMBlockNeeds_TransactionSafe() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getNVRAMBlockNeeds_WriteOnlyOnce() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getNVRAMBlockNeeds_WritingFrequency() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getNVRAMBlockNeeds_WritingPriority() {
        return (EAttribute)this.nvramBlockNeedsEClass.getEStructuralFeatures().get(8);
    }

    public EClass getReceiverAnnotation() {
        return this.receiverAnnotationEClass;
    }

    public EAttribute getReceiverAnnotation_SignalAge() {
        return (EAttribute)this.receiverAnnotationEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSenderReceiverAnnotation() {
        return this.senderReceiverAnnotationEClass;
    }

    public EAttribute getSenderReceiverAnnotation_Computed() {
        return (EAttribute)this.senderReceiverAnnotationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSenderReceiverAnnotation_LimitType() {
        return (EAttribute)this.senderReceiverAnnotationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSenderReceiverAnnotation_ProcessingType() {
        return (EAttribute)this.senderReceiverAnnotationEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSenderReceiverAnnotation_SenderReceiverAnnotation_dataElement() {
        return (EReference)this.senderReceiverAnnotationEClass.getEStructuralFeatures().get(3);
    }

    public EClass getSenderAnnotation() {
        return this.senderAnnotationEClass;
    }

    public EClass getSupervisedEntityNeeds() {
        return this.supervisedEntityNeedsEClass;
    }

    public EAttribute getSupervisedEntityNeeds_ActivateAtStart() {
        return (EAttribute)this.supervisedEntityNeedsEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSupervisedEntityNeeds_EnableDeactivation() {
        return (EAttribute)this.supervisedEntityNeedsEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSupervisedEntityNeeds_ExpectedAliveCycle() {
        return (EAttribute)this.supervisedEntityNeedsEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getSupervisedEntityNeeds_MaxAliveCycle() {
        return (EAttribute)this.supervisedEntityNeedsEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getSupervisedEntityNeeds_MinAliveCycle() {
        return (EAttribute)this.supervisedEntityNeedsEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getSupervisedEntityNeeds_ToleratedFailedCycles() {
        return (EAttribute)this.supervisedEntityNeedsEClass.getEStructuralFeatures().get(5);
    }

    public EClass getPortAnnotation() {
        return this.portAnnotationEClass;
    }

    public EReference getPortAnnotation_PortPrototype() {
        return (EReference)this.portAnnotationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPortAnnotation_ExtAnnotations() {
        return (EReference)this.portAnnotationEClass.getEStructuralFeatures().get(1);
    }

    public EEnum getMaxCommMode() {
        return this.maxCommModeEEnum;
    }

    public EEnum getIoHwAbstractionServerAnnotationPulseTestEnum() {
        return this.ioHwAbstractionServerAnnotationPulseTestEnumEEnum;
    }

    public EEnum getIoHwAbstractionServerAnnotationFilteringDebouncingEnum() {
        return this.ioHwAbstractionServerAnnotationFilteringDebouncingEnumEEnum;
    }

    public EEnum getNVRAMBlockNeedsReliabilityEnum() {
        return this.nvramBlockNeedsReliabilityEnumEEnum;
    }

    public EEnum getNVRAMBlockNeedsWritingPriorityEnum() {
        return this.nvramBlockNeedsWritingPriorityEnumEEnum;
    }

    public EEnum getSenderReceiverAnnotationLimitTypeEnum() {
        return this.senderReceiverAnnotationLimitTypeEnumEEnum;
    }

    public EEnum getSenderReceiverAnnotationProcessingTypeEnum() {
        return this.senderReceiverAnnotationProcessingTypeEnumEEnum;
    }

    public ApplicationattributesFactory getApplicationattributesFactory() {
        return (ApplicationattributesFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.calibrationPortAnnotationEClass = this.createEClass(0);
        this.createEReference(this.calibrationPortAnnotationEClass, 6);
        this.comMUserNeedsEClass = this.createEClass(1);
        this.createEAttribute(this.comMUserNeedsEClass, 6);
        this.serviceNeedsEClass = this.createEClass(2);
        this.extAnnotationEClass = this.createEClass(3);
        this.createEReference(this.extAnnotationEClass, 4);
        this.createEAttribute(this.extAnnotationEClass, 5);
        this.createEAttribute(this.extAnnotationEClass, 6);
        this.failureMonitoringEClass = this.createEClass(4);
        this.createEReference(this.failureMonitoringEClass, 4);
        this.createEReference(this.failureMonitoringEClass, 5);
        this.ioHwAbstractionServerAnnotationEClass = this.createEClass(5);
        this.createEAttribute(this.ioHwAbstractionServerAnnotationEClass, 6);
        this.createEReference(this.ioHwAbstractionServerAnnotationEClass, 7);
        this.createEAttribute(this.ioHwAbstractionServerAnnotationEClass, 8);
        this.createEAttribute(this.ioHwAbstractionServerAnnotationEClass, 9);
        this.createEAttribute(this.ioHwAbstractionServerAnnotationEClass, 10);
        this.createEReference(this.ioHwAbstractionServerAnnotationEClass, 11);
        this.createEReference(this.ioHwAbstractionServerAnnotationEClass, 12);
        this.createEAttribute(this.ioHwAbstractionServerAnnotationEClass, 13);
        this.createEAttribute(this.ioHwAbstractionServerAnnotationEClass, 14);
        this.createEReference(this.ioHwAbstractionServerAnnotationEClass, 15);
        this.createEAttribute(this.ioHwAbstractionServerAnnotationEClass, 16);
        this.createEReference(this.ioHwAbstractionServerAnnotationEClass, 17);
        this.reportFeatureEClass = this.createEClass(6);
        this.createEReference(this.reportFeatureEClass, 4);
        this.wakeUpEClass = this.createEClass(7);
        this.createEReference(this.wakeUpEClass, 4);
        this.nvramBlockNeedsEClass = this.createEClass(8);
        this.createEAttribute(this.nvramBlockNeedsEClass, 6);
        this.createEAttribute(this.nvramBlockNeedsEClass, 7);
        this.createEAttribute(this.nvramBlockNeedsEClass, 8);
        this.createEAttribute(this.nvramBlockNeedsEClass, 9);
        this.createEAttribute(this.nvramBlockNeedsEClass, 10);
        this.createEAttribute(this.nvramBlockNeedsEClass, 11);
        this.createEAttribute(this.nvramBlockNeedsEClass, 12);
        this.createEAttribute(this.nvramBlockNeedsEClass, 13);
        this.createEAttribute(this.nvramBlockNeedsEClass, 14);
        this.receiverAnnotationEClass = this.createEClass(9);
        this.createEAttribute(this.receiverAnnotationEClass, 10);
        this.senderReceiverAnnotationEClass = this.createEClass(10);
        this.createEAttribute(this.senderReceiverAnnotationEClass, 6);
        this.createEAttribute(this.senderReceiverAnnotationEClass, 7);
        this.createEAttribute(this.senderReceiverAnnotationEClass, 8);
        this.createEReference(this.senderReceiverAnnotationEClass, 9);
        this.senderAnnotationEClass = this.createEClass(11);
        this.supervisedEntityNeedsEClass = this.createEClass(12);
        this.createEAttribute(this.supervisedEntityNeedsEClass, 6);
        this.createEAttribute(this.supervisedEntityNeedsEClass, 7);
        this.createEAttribute(this.supervisedEntityNeedsEClass, 8);
        this.createEAttribute(this.supervisedEntityNeedsEClass, 9);
        this.createEAttribute(this.supervisedEntityNeedsEClass, 10);
        this.createEAttribute(this.supervisedEntityNeedsEClass, 11);
        this.portAnnotationEClass = this.createEClass(13);
        this.createEReference(this.portAnnotationEClass, 4);
        this.createEReference(this.portAnnotationEClass, 5);
        this.maxCommModeEEnum = this.createEEnum(14);
        this.ioHwAbstractionServerAnnotationPulseTestEnumEEnum = this.createEEnum(15);
        this.ioHwAbstractionServerAnnotationFilteringDebouncingEnumEEnum = this.createEEnum(16);
        this.nvramBlockNeedsReliabilityEnumEEnum = this.createEEnum(17);
        this.nvramBlockNeedsWritingPriorityEnumEEnum = this.createEEnum(18);
        this.senderReceiverAnnotationLimitTypeEnumEEnum = this.createEEnum(19);
        this.senderReceiverAnnotationProcessingTypeEnumEEnum = this.createEEnum(20);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("applicationattributes");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/aa");
        autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage theInstancerefPackage_3 = (autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa/r");
        CharacteristicPackage theCharacteristicPackage = (CharacteristicPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        PortinterfacePackage thePortinterfacePackage = (PortinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/pi");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components");
        this.getESubpackages().add((Object)theInstancerefPackage_3);
        this.calibrationPortAnnotationEClass.getESuperTypes().add((Object)this.getPortAnnotation());
        this.comMUserNeedsEClass.getESuperTypes().add((Object)this.getServiceNeeds());
        this.serviceNeedsEClass.getESuperTypes().add((Object)this.getPortAnnotation());
        this.extAnnotationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.failureMonitoringEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.ioHwAbstractionServerAnnotationEClass.getESuperTypes().add((Object)this.getPortAnnotation());
        this.reportFeatureEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.wakeUpEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.nvramBlockNeedsEClass.getESuperTypes().add((Object)this.getServiceNeeds());
        this.receiverAnnotationEClass.getESuperTypes().add((Object)this.getSenderReceiverAnnotation());
        this.senderReceiverAnnotationEClass.getESuperTypes().add((Object)this.getPortAnnotation());
        this.senderAnnotationEClass.getESuperTypes().add((Object)this.getSenderReceiverAnnotation());
        this.supervisedEntityNeedsEClass.getESuperTypes().add((Object)this.getServiceNeeds());
        this.portAnnotationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.calibrationPortAnnotationEClass, CalibrationPortAnnotation.class, "CalibrationPortAnnotation", false, false, true);
        this.initEReference(this.getCalibrationPortAnnotation_CalprmElement(), (EClassifier)theCharacteristicPackage.getCalprmElementPrototype(), null, "calprmElement", null, 0, 1, CalibrationPortAnnotation.class, false, false, true, false, true, false, true, false, true);
        EOperation op = this.addEOperation(this.calibrationPortAnnotationEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_ThecorrespondingportinterfacemustbeaCalprmInterface", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        EGenericType g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.comMUserNeedsEClass, ComMUserNeeds.class, "ComMUserNeeds", false, false, true);
        this.initEAttribute(this.getComMUserNeeds_MaxCommMode(), (EClassifier)this.getMaxCommMode(), "maxCommMode", "NONE", 0, 1, ComMUserNeeds.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.serviceNeedsEClass, ServiceNeeds.class, "ServiceNeeds", false, false, true);
        op = this.addEOperation(this.serviceNeedsEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_ThecorrespondingportinterfacemusthavesetIsServicetrue", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.extAnnotationEClass, ExtAnnotation.class, "ExtAnnotation", false, false, true);
        this.initEReference(this.getExtAnnotation_PortAnnotation(), (EClassifier)this.getPortAnnotation(), this.getPortAnnotation_ExtAnnotations(), "portAnnotation", null, 0, 1, ExtAnnotation.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getExtAnnotation_Name(), (EClassifier)thePrimitivetypesPackage.getString(), "name", "", 0, 1, ExtAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getExtAnnotation_Value(), (EClassifier)thePrimitivetypesPackage.getString(), "value", "", 0, 1, ExtAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.failureMonitoringEClass, FailureMonitoring.class, "FailureMonitoring", false, false, true);
        this.initEReference(this.getFailureMonitoring_IoHwAbstractionServerAnnotation(), (EClassifier)this.getIoHwAbstractionServerAnnotation(), this.getIoHwAbstractionServerAnnotation_FailureMonitoring(), "ioHwAbstractionServerAnnotation", null, 0, 1, FailureMonitoring.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getFailureMonitoring_MonitorsFailure(), (EClassifier)theInstancerefPackage_3.getFailureMonitoringMonitorsFailure(), theInstancerefPackage_3.getFailureMonitoringMonitorsFailure_FailureMonitoring(), "monitorsFailure", null, 0, 1, FailureMonitoring.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.ioHwAbstractionServerAnnotationEClass, IoHwAbstractionServerAnnotation.class, "IoHwAbstractionServerAnnotation", false, false, true);
        this.initEAttribute(this.getIoHwAbstractionServerAnnotation_Age(), (EClassifier)thePrimitivetypesPackage.getInteger(), "Age", "0", 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getIoHwAbstractionServerAnnotation_ArgumentPrototype(), (EClassifier)thePortinterfacePackage.getArgumentPrototype(), null, "argumentPrototype", null, 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getIoHwAbstractionServerAnnotation_BswRangeMax(), (EClassifier)thePrimitivetypesPackage.getInteger(), "BswRangeMax", "0", 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getIoHwAbstractionServerAnnotation_BswRangeMin(), (EClassifier)thePrimitivetypesPackage.getInteger(), "BswRangeMin", "0", 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getIoHwAbstractionServerAnnotation_BswResolution(), (EClassifier)thePrimitivetypesPackage.getFloat(), "BswResolution", "0.0", 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getIoHwAbstractionServerAnnotation_DataElementPrototype(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElementPrototype", null, 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getIoHwAbstractionServerAnnotation_FailureMonitoring(), (EClassifier)this.getFailureMonitoring(), this.getFailureMonitoring_IoHwAbstractionServerAnnotation(), "failureMonitoring", null, 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getIoHwAbstractionServerAnnotation_FilteringDebouncing(), (EClassifier)this.getIoHwAbstractionServerAnnotationFilteringDebouncingEnum(), "FilteringDebouncing", "", 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getIoHwAbstractionServerAnnotation_PulseTest(), (EClassifier)this.getIoHwAbstractionServerAnnotationPulseTestEnum(), "PulseTest", "", 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getIoHwAbstractionServerAnnotation_ReportFeature(), (EClassifier)this.getReportFeature(), this.getReportFeature_IoHwAbstractionServerAnnotation(), "reportFeature", null, 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getIoHwAbstractionServerAnnotation_Unit(), (EClassifier)thePrimitivetypesPackage.getString(), "Unit", "", 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getIoHwAbstractionServerAnnotation_WakeUp(), (EClassifier)this.getWakeUp(), this.getWakeUp_IoHwAbstractionServerAnnotation(), "wakeUp", null, 0, 1, IoHwAbstractionServerAnnotation.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.ioHwAbstractionServerAnnotationEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_portsinterfaceisaclientserverinterfaceusingtheoperationsGETandSET", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.reportFeatureEClass, ReportFeature.class, "ReportFeature", false, false, true);
        this.initEReference(this.getReportFeature_IoHwAbstractionServerAnnotation(), (EClassifier)this.getIoHwAbstractionServerAnnotation(), this.getIoHwAbstractionServerAnnotation_ReportFeature(), "ioHwAbstractionServerAnnotation", null, 0, 1, ReportFeature.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.wakeUpEClass, WakeUp.class, "WakeUp", false, false, true);
        this.initEReference(this.getWakeUp_IoHwAbstractionServerAnnotation(), (EClassifier)this.getIoHwAbstractionServerAnnotation(), this.getIoHwAbstractionServerAnnotation_WakeUp(), "ioHwAbstractionServerAnnotation", null, 0, 1, WakeUp.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.nvramBlockNeedsEClass, NVRAMBlockNeeds.class, "NVRAMBlockNeeds", false, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_NDataSets(), (EClassifier)thePrimitivetypesPackage.getInteger(), "nDataSets", "0", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_Readonly(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "readonly", "false", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_Reliability(), (EClassifier)this.getNVRAMBlockNeedsReliabilityEnum(), "reliability", "LOW", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_ResistantToChangedSw(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "resistantToChangedSw", "false", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_RestoreAtStart(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "restoreAtStart", "false", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_TransactionSafe(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "transactionSafe", "false", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_WriteOnlyOnce(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "writeOnlyOnce", "false", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_WritingFrequency(), (EClassifier)thePrimitivetypesPackage.getInteger(), "writingFrequency", "0", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNVRAMBlockNeeds_WritingPriority(), (EClassifier)this.getNVRAMBlockNeedsWritingPriorityEnum(), "writingPriority", "LOW", 0, 1, NVRAMBlockNeeds.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.receiverAnnotationEClass, ReceiverAnnotation.class, "ReceiverAnnotation", false, false, true);
        this.initEAttribute(this.getReceiverAnnotation_SignalAge(), (EClassifier)thePrimitivetypesPackage.getFloat(), "signalAge", "0.0", 0, 1, ReceiverAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.senderReceiverAnnotationEClass, SenderReceiverAnnotation.class, "SenderReceiverAnnotation", true, false, true);
        this.initEAttribute(this.getSenderReceiverAnnotation_Computed(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "computed", "false", 0, 1, SenderReceiverAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSenderReceiverAnnotation_LimitType(), (EClassifier)this.getSenderReceiverAnnotationLimitTypeEnum(), "limitType", "NONE", 0, 1, SenderReceiverAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSenderReceiverAnnotation_ProcessingType(), (EClassifier)this.getSenderReceiverAnnotationProcessingTypeEnum(), "processingType", "NONE", 0, 1, SenderReceiverAnnotation.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverAnnotation_SenderReceiverAnnotation_dataElement(), (EClassifier)theInstancerefPackage_3.getSenderReceiverAnnotationDataElement(), theInstancerefPackage_3.getSenderReceiverAnnotationDataElement_SenderReceiverAnnotation(), "senderReceiverAnnotation_dataElement", null, 0, 1, SenderReceiverAnnotation.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.senderReceiverAnnotationEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_portsinterfaceisaSenderReceiverInterface", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.senderAnnotationEClass, SenderAnnotation.class, "SenderAnnotation", false, false, true);
        this.initEClass(this.supervisedEntityNeedsEClass, SupervisedEntityNeeds.class, "SupervisedEntityNeeds", false, false, true);
        this.initEAttribute(this.getSupervisedEntityNeeds_ActivateAtStart(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "activateAtStart", "false", 0, 1, SupervisedEntityNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSupervisedEntityNeeds_EnableDeactivation(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "enableDeactivation", "false", 0, 1, SupervisedEntityNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSupervisedEntityNeeds_ExpectedAliveCycle(), (EClassifier)thePrimitivetypesPackage.getFloat(), "expectedAliveCycle", "0.0", 0, 1, SupervisedEntityNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSupervisedEntityNeeds_MaxAliveCycle(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxAliveCycle", "0.0", 0, 1, SupervisedEntityNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSupervisedEntityNeeds_MinAliveCycle(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minAliveCycle", "0.0", 0, 1, SupervisedEntityNeeds.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSupervisedEntityNeeds_ToleratedFailedCycles(), (EClassifier)thePrimitivetypesPackage.getInteger(), "toleratedFailedCycles", "0", 0, 1, SupervisedEntityNeeds.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.portAnnotationEClass, PortAnnotation.class, "PortAnnotation", true, false, true);
        this.initEReference(this.getPortAnnotation_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), theComponentsPackage.getPortPrototype_Annotations(), "portPrototype", null, 0, 1, PortAnnotation.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPortAnnotation_ExtAnnotations(), (EClassifier)this.getExtAnnotation(), this.getExtAnnotation_PortAnnotation(), "extAnnotations", null, 0, -1, PortAnnotation.class, false, false, true, true, false, false, true, false, true);
        this.initEEnum(this.maxCommModeEEnum, MaxCommMode.class, "MaxCommMode");
        this.addEEnumLiteral(this.maxCommModeEEnum, MaxCommMode.NONE);
        this.addEEnumLiteral(this.maxCommModeEEnum, MaxCommMode.SILENT);
        this.addEEnumLiteral(this.maxCommModeEEnum, MaxCommMode.FULL);
        this.initEEnum(this.ioHwAbstractionServerAnnotationPulseTestEnumEEnum, IoHwAbstractionServerAnnotationPulseTestEnum.class, "IoHwAbstractionServerAnnotationPulseTestEnum");
        this.initEEnum(this.ioHwAbstractionServerAnnotationFilteringDebouncingEnumEEnum, IoHwAbstractionServerAnnotationFilteringDebouncingEnum.class, "IoHwAbstractionServerAnnotationFilteringDebouncingEnum");
        this.initEEnum(this.nvramBlockNeedsReliabilityEnumEEnum, NVRAMBlockNeedsReliabilityEnum.class, "NVRAMBlockNeedsReliabilityEnum");
        this.addEEnumLiteral(this.nvramBlockNeedsReliabilityEnumEEnum, NVRAMBlockNeedsReliabilityEnum.LOW);
        this.addEEnumLiteral(this.nvramBlockNeedsReliabilityEnumEEnum, NVRAMBlockNeedsReliabilityEnum.MEDIUM);
        this.addEEnumLiteral(this.nvramBlockNeedsReliabilityEnumEEnum, NVRAMBlockNeedsReliabilityEnum.HIGH);
        this.initEEnum(this.nvramBlockNeedsWritingPriorityEnumEEnum, NVRAMBlockNeedsWritingPriorityEnum.class, "NVRAMBlockNeedsWritingPriorityEnum");
        this.addEEnumLiteral(this.nvramBlockNeedsWritingPriorityEnumEEnum, NVRAMBlockNeedsWritingPriorityEnum.LOW);
        this.addEEnumLiteral(this.nvramBlockNeedsWritingPriorityEnumEEnum, NVRAMBlockNeedsWritingPriorityEnum.MEDIUM);
        this.addEEnumLiteral(this.nvramBlockNeedsWritingPriorityEnumEEnum, NVRAMBlockNeedsWritingPriorityEnum.HIGH);
        this.initEEnum(this.senderReceiverAnnotationLimitTypeEnumEEnum, SenderReceiverAnnotationLimitTypeEnum.class, "SenderReceiverAnnotationLimitTypeEnum");
        this.addEEnumLiteral(this.senderReceiverAnnotationLimitTypeEnumEEnum, SenderReceiverAnnotationLimitTypeEnum.NONE);
        this.addEEnumLiteral(this.senderReceiverAnnotationLimitTypeEnumEEnum, SenderReceiverAnnotationLimitTypeEnum.MIN);
        this.addEEnumLiteral(this.senderReceiverAnnotationLimitTypeEnumEEnum, SenderReceiverAnnotationLimitTypeEnum.MAX);
        this.initEEnum(this.senderReceiverAnnotationProcessingTypeEnumEEnum, SenderReceiverAnnotationProcessingTypeEnum.class, "SenderReceiverAnnotationProcessingTypeEnum");
        this.addEEnumLiteral(this.senderReceiverAnnotationProcessingTypeEnumEEnum, SenderReceiverAnnotationProcessingTypeEnum.NONE);
        this.addEEnumLiteral(this.senderReceiverAnnotationProcessingTypeEnumEEnum, SenderReceiverAnnotationProcessingTypeEnum.RAW);
        this.addEEnumLiteral(this.senderReceiverAnnotationProcessingTypeEnumEEnum, SenderReceiverAnnotationProcessingTypeEnum.FILTERED);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/aa");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_PortAnnotationAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ServiceNeedsAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_SenderReceiverAnnotationAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ApplicationAttributes", "GUID", "{EF06FFAD-D7FB-4f3b-B187-22C05CC8941E}", "Id", "1092037458"});
        this.addAnnotation((ENamedElement)this.calibrationPortAnnotationEClass, source, new String[]{"Name", "CalibrationPortAnnotation", "Modified", "Wed Sep 20 16:46:47 CEST 2006", "Created", "Mon Sep 18 18:13:50 CEST 2006", "GUID", "{C2B74D12-132C-4823-BF7B-5C1F618A4435}", "Id", "-2028557886"});
        this.addAnnotation((ENamedElement)this.comMUserNeedsEClass, source, new String[]{"Name", "ComMUserNeeds", "Modified", "Wed Dec 13 13:36:39 CET 2006", "Created", "Mon Sep 18 20:59:07 CEST 2006", "GUID", "{DC83B41B-A696-4c6b-85D6-13A0976927B8}", "Id", "-849587833"});
        this.addAnnotation((ENamedElement)this.getComMUserNeeds_MaxCommMode(), source, new String[]{"Name", "maxCommMode", "GUID", "{38ACD0ED-21F2-4d89-9CBD-F1FAD8FBBEDA}", "Id", "1699144929"});
        this.addAnnotation((ENamedElement)this.serviceNeedsEClass, source, new String[]{"Name", "ServiceNeeds", "Modified", "Wed Sep 20 16:45:18 CEST 2006", "Created", "Mon Sep 18 18:13:50 CEST 2006", "GUID", "{00CB625B-5D94-42b6-B415-09540AAFDA72}", "Id", "-925234401"});
        this.addAnnotation((ENamedElement)this.maxCommModeEEnum, source, new String[]{"Name", "MaxCommMode", "Modified", "Wed Dec 13 11:54:58 CET 2006", "Created", "Wed Dec 13 11:40:12 CET 2006", "GUID", "{7B57D14B-9749-4456-AA31-088F8E29784B}", "Id", "1451026274"});
        this.addAnnotation((ENamedElement)this.extAnnotationEClass, source, new String[]{"Name", "ExtAnnotation", "Modified", "Thu Jul 14 13:47:13 CEST 2005", "Created", "Mon Aug 09 10:19:49 CEST 2004", "GUID", "{70FF9449-4D43-47ed-8AFD-82EC4A2CE82B}", "Id", "1021775481"});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Name(), source, new String[]{"Name", "name", "GUID", "{739780E0-94C7-46fc-B724-87CAA62B6B30}", "Id", "-350002972"});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Value(), source, new String[]{"Name", "value", "GUID", "{02762A2A-05A0-48a7-9284-4538D0D885D7}", "Id", "-482025451"});
        this.addAnnotation((ENamedElement)this.failureMonitoringEClass, source, new String[]{"Name", "FailureMonitoring", "Modified", "Mon Feb 20 19:45:10 CET 2006", "Created", "Wed Feb 15 11:46:39 CET 2006", "GUID", "{1FD98A5E-6741-419f-89DF-E841128BD76C}", "Id", "923420116"});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationEClass, source, new String[]{"Name", "IoHwAbstractionServerAnnotation", "Modified", "Mon Sep 18 18:33:02 CEST 2006", "Created", "Wed Feb 15 11:01:42 CET 2006", "GUID", "{6B972045-C0DA-4cd9-A2BD-26EE189C0332}", "Id", "21783233"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Age(), source, new String[]{"Name", "Age", "GUID", "{24B32640-1BC1-4218-92C0-0515C35A6E7A}", "Id", "-2099674737"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMax(), source, new String[]{"Name", "BswRangeMax", "GUID", "{990ABB0B-096C-4413-BAC9-FB6F7A8C7E7F}", "Id", "-953720693"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMin(), source, new String[]{"Name", "BswRangeMin", "GUID", "{57E07A99-9FB1-47b9-86A3-9836EBFF1F18}", "Id", "-560648621"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswResolution(), source, new String[]{"Name", "BswResolution", "GUID", "{818EE52A-1AF0-4dc1-947D-0E7746153BCF}", "Id", "1874307257"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_FilteringDebouncing(), source, new String[]{"Name", "FilteringDebouncing", "GUID", "{80C454F6-6C9C-4d31-9AB6-A988176CB67B}", "Id", "1130512420"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_PulseTest(), source, new String[]{"Name", "PulseTest", "GUID", "{10C3BB68-835B-4d8f-BC59-ACE864A9C4DD}", "Id", "241752688"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Unit(), source, new String[]{"Name", "Unit", "GUID", "{1D59461D-BDBB-4ae8-8B8E-9C4DCCEB648F}", "Id", "1570223768"});
        this.addAnnotation((ENamedElement)this.reportFeatureEClass, source, new String[]{"Name", "ReportFeature", "Modified", "Mon Feb 20 19:45:10 CET 2006", "Created", "Wed Feb 15 11:42:45 CET 2006", "GUID", "{F77D78F3-CA4D-4314-8B34-BDD3C9140CC1}", "Id", "488703518"});
        this.addAnnotation((ENamedElement)this.wakeUpEClass, source, new String[]{"Name", "WakeUp", "Modified", "Mon Feb 20 19:45:10 CET 2006", "Created", "Wed Feb 15 11:44:30 CET 2006", "GUID", "{02E4F80F-3E82-4109-BC9E-190D2247B74B}", "Id", "2004646605"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsEClass, source, new String[]{"Name", "NVRAMBlockNeeds", "Modified", "Tue Sep 19 17:38:13 CEST 2006", "Created", "Mon Sep 18 20:59:07 CEST 2006", "GUID", "{C6159ABF-0244-41bb-9656-A70454387002}", "Id", "718426153"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_NDataSets(), source, new String[]{"Name", "nDataSets", "GUID", "{786186CC-409B-4c7f-A42A-7B755E3D1026}", "Id", "1599734061"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Readonly(), source, new String[]{"Name", "readonly", "GUID", "{09F870AA-0E48-436e-A2AA-DC4B2D098ED2}", "Id", "-903830806"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Reliability(), source, new String[]{"Name", "reliability", "GUID", "{9A956696-20D4-45d5-8640-8CD54199533B}", "Id", "-159958960"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_ResistantToChangedSw(), source, new String[]{"Name", "resistantToChangedSw", "GUID", "{5D7D9F76-D8A0-45ad-9E02-8C1DC2477C5A}", "Id", "-2103779549"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_RestoreAtStart(), source, new String[]{"Name", "restoreAtStart", "GUID", "{E844E560-7E1F-4d26-94B5-D051936363CA}", "Id", "1936894760"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_TransactionSafe(), source, new String[]{"Name", "transactionSafe", "GUID", "{767E4C53-404F-44af-B052-43B5957B5963}", "Id", "955389694"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WriteOnlyOnce(), source, new String[]{"Name", "writeOnlyOnce", "GUID", "{6A9E436D-7895-42a0-8E2E-A57A5645F47C}", "Id", "1391330825"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingFrequency(), source, new String[]{"Name", "writingFrequency", "GUID", "{9C5FC9CE-375D-4a04-A920-A1E18DA2FBF8}", "Id", "1595084124"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingPriority(), source, new String[]{"Name", "writingPriority", "GUID", "{F32A324A-0769-4d72-83C5-DA857A09B3EC}", "Id", "-860471641"});
        this.addAnnotation((ENamedElement)this.receiverAnnotationEClass, source, new String[]{"Name", "ReceiverAnnotation", "Modified", "Thu Jul 14 13:47:13 CEST 2005", "Created", "Mon Aug 09 10:02:49 CEST 2004", "GUID", "{6D5B20FE-A3E7-4e34-87AA-D9946F9CC6A5}", "Id", "-1839886697"});
        this.addAnnotation((ENamedElement)this.getReceiverAnnotation_SignalAge(), source, new String[]{"Name", "signalAge", "GUID", "{22195325-B97A-4e13-B361-63EAEC69FDBE}", "Id", "-1355486171"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationEClass, source, new String[]{"Name", "SenderReceiverAnnotation", "Modified", "Wed Feb 15 11:52:08 CET 2006", "Created", "Mon Aug 09 09:52:54 CEST 2004", "GUID", "{CE7C35DF-95C5-4955-9BA9-8CA4982656E2}", "Id", "310040227"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_Computed(), source, new String[]{"Name", "computed", "GUID", "{5AC1C667-99CF-4027-B3B5-E55D6A968590}", "Id", "-335279272"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_LimitType(), source, new String[]{"Name", "limitType", "GUID", "{240BDE8B-ECCE-4081-B0C7-34E05DECAFB1}", "Id", "-1463580880"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_ProcessingType(), source, new String[]{"Name", "processingType", "GUID", "{5EDC86CC-111E-412a-90E9-E45BC9BFF062}", "Id", "-899772909"});
        this.addAnnotation((ENamedElement)this.senderAnnotationEClass, source, new String[]{"Name", "SenderAnnotation", "Modified", "Thu Jul 14 13:47:13 CEST 2005", "Created", "Mon Aug 09 10:01:47 CEST 2004", "GUID", "{FEFFF4E7-1A28-47b5-83C7-40603F7161F6}", "Id", "1756807298"});
        this.addAnnotation((ENamedElement)this.supervisedEntityNeedsEClass, source, new String[]{"Name", "SupervisedEntityNeeds", "Modified", "Tue Sep 19 00:01:52 CEST 2006", "Created", "Mon Sep 18 20:59:07 CEST 2006", "GUID", "{44363907-201D-417c-B9B2-A3C10EA6C45A}", "Id", "-1621870977"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ActivateAtStart(), source, new String[]{"Name", "activateAtStart", "GUID", "{CE12218C-472E-4f02-ADF4-99C513EE3554}", "Id", "811529062"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_EnableDeactivation(), source, new String[]{"Name", "enableDeactivation", "GUID", "{2D9B34DC-B226-45e9-AB28-D84CD3461763}", "Id", "719219951"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ExpectedAliveCycle(), source, new String[]{"Name", "expectedAliveCycle", "GUID", "{6E4603C2-562F-45c3-8A32-8EDC82C848E0}", "Id", "800579588"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MaxAliveCycle(), source, new String[]{"Name", "maxAliveCycle", "GUID", "{EC383E0A-2911-495d-BE57-475F4EEB20BC}", "Id", "1125078482"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MinAliveCycle(), source, new String[]{"Name", "minAliveCycle", "GUID", "{1F3A79D4-0F32-4388-9312-680C02289EE1}", "Id", "-2087323467"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ToleratedFailedCycles(), source, new String[]{"Name", "toleratedFailedCycles", "GUID", "{DD863B62-60F0-498d-91B7-238A997CDD76}", "Id", "1800192491"});
        this.addAnnotation((ENamedElement)this.portAnnotationEClass, source, new String[]{"Name", "PortAnnotation", "Modified", "Mon Feb 20 19:45:10 CET 2006", "Created", "Mon Aug 09 09:46:13 CEST 2004", "GUID", "{BEEC0F99-A7A0-4059-9FFD-2DFE674F5D63}", "Id", "-732891428"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "APPLICATION-ATTRIBUTES", "xml.namePlural", "APPLICATION-ATTRIBUTESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.calibrationPortAnnotationEClass, source, new String[]{"xml.name", "CALIBRATION-PORT-ANNOTATION", "xml.namePlural", "CALIBRATION-PORT-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCalibrationPortAnnotation_CalprmElement(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "CALPRM-ELEMENT-REF", "xml.namePlural", "CALPRM-ELEMENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.comMUserNeedsEClass, source, new String[]{"xml.name", "COM-M-USER-NEEDS", "xml.namePlural", "COM-M-USER-NEEDSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getComMUserNeeds_MaxCommMode(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "MAX-COMM-MODE", "xml.namePlural", "MAX-COMM-MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.serviceNeedsEClass, source, new String[]{"xml.name", "SERVICE-NEEDS", "xml.namePlural", "SERVICE-NEEDSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.maxCommModeEEnum, source, new String[]{"xml.name", "MAX-COMM-MODE", "xml.namePlural", "MAX-COMM-MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.maxCommModeEEnum.getELiterals().get(0), source, new String[]{"xml.name", "NONE", "xml.namePlural", "NONES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.maxCommModeEEnum.getELiterals().get(1), source, new String[]{"xml.name", "SILENT", "xml.namePlural", "SILENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.maxCommModeEEnum.getELiterals().get(2), source, new String[]{"xml.name", "FULL", "xml.namePlural", "FULLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.extAnnotationEClass, source, new String[]{"xml.name", "EXT-ANNOTATION", "xml.namePlural", "EXT-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Name(), source, new String[]{"xml.name", "NAME", "xml.namePlural", "NAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Value(), source, new String[]{"xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.failureMonitoringEClass, source, new String[]{"xml.name", "FAILURE-MONITORING", "xml.namePlural", "FAILURE-MONITORINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFailureMonitoring_MonitorsFailure(), source, new String[]{"xml.name", "MONITORS-FAILURE-IREF", "xml.namePlural", "MONITORS-FAILURE-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationEClass, source, new String[]{"xml.name", "IO-HW-ABSTRACTION-SERVER-ANNOTATION", "xml.namePlural", "IO-HW-ABSTRACTION-SERVER-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Age(), source, new String[]{"xml.name", "AGE", "xml.namePlural", "AGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_ArgumentPrototype(), source, new String[]{"xml.name", "ARGUMENT-PROTOTYPE-REF", "xml.namePlural", "ARGUMENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMax(), source, new String[]{"xml.name", "BSW-RANGE-MAX", "xml.namePlural", "BSW-RANGE-MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMin(), source, new String[]{"xml.name", "BSW-RANGE-MIN", "xml.namePlural", "BSW-RANGE-MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswResolution(), source, new String[]{"xml.name", "BSW-RESOLUTION", "xml.namePlural", "BSW-RESOLUTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_DataElementPrototype(), source, new String[]{"xml.name", "DATA-ELEMENT-PROTOTYPE-REF", "xml.namePlural", "DATA-ELEMENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_FailureMonitoring(), source, new String[]{"xml.name", "FAILURE-MONITORING", "xml.namePlural", "FAILURE-MONITORINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_FilteringDebouncing(), source, new String[]{"xml.name", "FILTERING-DEBOUNCING", "xml.namePlural", "FILTERING-DEBOUNCINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_PulseTest(), source, new String[]{"xml.name", "PULSE-TEST", "xml.namePlural", "PULSE-TESTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_ReportFeature(), source, new String[]{"xml.name", "REPORT-FEATURE", "xml.namePlural", "REPORT-FEATURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Unit(), source, new String[]{"xml.name", "UNIT", "xml.namePlural", "UNITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_WakeUp(), source, new String[]{"xml.name", "WAKE-UP", "xml.namePlural", "WAKE-UPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationPulseTestEnumEEnum, source, new String[]{"xml.name", "IO-HW-ABSTRACTION-SERVER-ANNOTATION-PULSE-TEST-ENUM", "xml.namePlural", "IO-HW-ABSTRACTION-SERVER-ANNOTATION-PULSE-TEST-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationFilteringDebouncingEnumEEnum, source, new String[]{"xml.name", "IO-HW-ABSTRACTION-SERVER-ANNOTATION-FILTERING-DEBOUNCING-ENUM", "xml.namePlural", "IO-HW-ABSTRACTION-SERVER-ANNOTATION-FILTERING-DEBOUNCING-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.reportFeatureEClass, source, new String[]{"xml.name", "REPORT-FEATURE", "xml.namePlural", "REPORT-FEATURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.wakeUpEClass, source, new String[]{"xml.name", "WAKE-UP", "xml.namePlural", "WAKE-UPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsEClass, source, new String[]{"xml.name", "NVRAM-BLOCK-NEEDS", "xml.namePlural", "NVRAM-BLOCK-NEEDSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_NDataSets(), source, new String[]{"xml.name", "N-DATA-SETS", "xml.namePlural", "N-DATA-SETSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Readonly(), source, new String[]{"xml.name", "READONLY", "xml.namePlural", "READONLYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Reliability(), source, new String[]{"xml.name", "RELIABILITY", "xml.namePlural", "RELIABILITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_ResistantToChangedSw(), source, new String[]{"xml.name", "RESISTANT-TO-CHANGED-SW", "xml.namePlural", "RESISTANT-TO-CHANGED-SWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_RestoreAtStart(), source, new String[]{"xml.name", "RESTORE-AT-START", "xml.namePlural", "RESTORE-AT-STARTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_TransactionSafe(), source, new String[]{"xml.name", "TRANSACTION-SAFE", "xml.namePlural", "TRANSACTION-SAFES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WriteOnlyOnce(), source, new String[]{"xml.name", "WRITE-ONLY-ONCE", "xml.namePlural", "WRITE-ONLY-ONCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingFrequency(), source, new String[]{"xml.name", "WRITING-FREQUENCY", "xml.namePlural", "WRITING-FREQUENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingPriority(), source, new String[]{"xml.name", "WRITING-PRIORITY", "xml.namePlural", "WRITING-PRIORITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsReliabilityEnumEEnum, source, new String[]{"xml.name", "NVRAM-BLOCK-NEEDS-RELIABILITY-ENUM", "xml.namePlural", "NVRAM-BLOCK-NEEDS-RELIABILITY-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsReliabilityEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "LOW", "xml.namePlural", "LOWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsReliabilityEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "MEDIUM", "xml.namePlural", "MEDIUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsReliabilityEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "HIGH", "xml.namePlural", "HIGHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsWritingPriorityEnumEEnum, source, new String[]{"xml.name", "NVRAM-BLOCK-NEEDS-WRITING-PRIORITY-ENUM", "xml.namePlural", "NVRAM-BLOCK-NEEDS-WRITING-PRIORITY-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsWritingPriorityEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "LOW", "xml.namePlural", "LOWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsWritingPriorityEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "MEDIUM", "xml.namePlural", "MEDIUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsWritingPriorityEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "HIGH", "xml.namePlural", "HIGHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.receiverAnnotationEClass, source, new String[]{"xml.name", "RECEIVER-ANNOTATION", "xml.namePlural", "RECEIVER-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getReceiverAnnotation_SignalAge(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SIGNAL-AGE", "xml.namePlural", "SIGNAL-AGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationEClass, source, new String[]{"xml.name", "SENDER-RECEIVER-ANNOTATION", "xml.namePlural", "SENDER-RECEIVER-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_Computed(), source, new String[]{"xml.name", "COMPUTED", "xml.namePlural", "COMPUTEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_LimitType(), source, new String[]{"xml.name", "LIMIT-TYPE", "xml.namePlural", "LIMIT-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_ProcessingType(), source, new String[]{"xml.name", "PROCESSING-TYPE", "xml.namePlural", "PROCESSING-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_SenderReceiverAnnotation_dataElement(), source, new String[]{"xml.name", "SENDER-RECEIVER-ANNOTATION-DATA-ELEMENT-IREF", "xml.namePlural", "SENDER-RECEIVER-ANNOTATION-DATA-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "3", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationLimitTypeEnumEEnum, source, new String[]{"xml.name", "SENDER-RECEIVER-ANNOTATION-LIMIT-TYPE-ENUM", "xml.namePlural", "SENDER-RECEIVER-ANNOTATION-LIMIT-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationLimitTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "NONE", "xml.namePlural", "NONES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationLimitTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "MIN", "xml.namePlural", "MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationLimitTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "MAX", "xml.namePlural", "MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationProcessingTypeEnumEEnum, source, new String[]{"xml.name", "SENDER-RECEIVER-ANNOTATION-PROCESSING-TYPE-ENUM", "xml.namePlural", "SENDER-RECEIVER-ANNOTATION-PROCESSING-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationProcessingTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "NONE", "xml.namePlural", "NONES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationProcessingTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "RAW", "xml.namePlural", "RAWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationProcessingTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "FILTERED", "xml.namePlural", "FILTEREDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.senderAnnotationEClass, source, new String[]{"xml.name", "SENDER-ANNOTATION", "xml.namePlural", "SENDER-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.supervisedEntityNeedsEClass, source, new String[]{"xml.name", "SUPERVISED-ENTITY-NEEDS", "xml.namePlural", "SUPERVISED-ENTITY-NEEDSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ActivateAtStart(), source, new String[]{"xml.name", "ACTIVATE-AT-START", "xml.namePlural", "ACTIVATE-AT-STARTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_EnableDeactivation(), source, new String[]{"xml.name", "ENABLE-DEACTIVATION", "xml.namePlural", "ENABLE-DEACTIVATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ExpectedAliveCycle(), source, new String[]{"xml.name", "EXPECTED-ALIVE-CYCLE", "xml.namePlural", "EXPECTED-ALIVE-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MaxAliveCycle(), source, new String[]{"xml.name", "MAX-ALIVE-CYCLE", "xml.namePlural", "MAX-ALIVE-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MinAliveCycle(), source, new String[]{"xml.name", "MIN-ALIVE-CYCLE", "xml.namePlural", "MIN-ALIVE-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ToleratedFailedCycles(), source, new String[]{"xml.name", "TOLERATED-FAILED-CYCLES", "xml.namePlural", "TOLERATED-FAILED-CYCLESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.portAnnotationEClass, source, new String[]{"xml.name", "PORT-ANNOTATION", "xml.namePlural", "PORT-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPortAnnotation_ExtAnnotations(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "EXT-ANNOTATION", "xml.namePlural", "EXT-ANNOTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.calibrationPortAnnotationEClass, source, new String[]{"name", "CALIBRATION-PORT-ANNOTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCalibrationPortAnnotation_CalprmElement(), source, new String[]{"name", "CALPRM-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.comMUserNeedsEClass, source, new String[]{"name", "COM-M-USER-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getComMUserNeeds_MaxCommMode(), source, new String[]{"name", "MAX-COMM-MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.serviceNeedsEClass, source, new String[]{"name", "SERVICE-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.extAnnotationEClass, source, new String[]{"name", "EXT-ANNOTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Name(), source, new String[]{"name", "NAME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.failureMonitoringEClass, source, new String[]{"name", "FAILURE-MONITORING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFailureMonitoring_MonitorsFailure(), source, new String[]{"name", "MONITORS-FAILURE-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationEClass, source, new String[]{"name", "IO-HW-ABSTRACTION-SERVER-ANNOTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Age(), source, new String[]{"name", "AGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_ArgumentPrototype(), source, new String[]{"name", "ARGUMENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMax(), source, new String[]{"name", "BSW-RANGE-MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMin(), source, new String[]{"name", "BSW-RANGE-MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswResolution(), source, new String[]{"name", "BSW-RESOLUTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_DataElementPrototype(), source, new String[]{"name", "DATA-ELEMENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_FailureMonitoring(), source, new String[]{"name", "FAILURE-MONITORING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_FilteringDebouncing(), source, new String[]{"name", "FILTERING-DEBOUNCING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_PulseTest(), source, new String[]{"name", "PULSE-TEST", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_ReportFeature(), source, new String[]{"name", "REPORT-FEATURE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Unit(), source, new String[]{"name", "UNIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_WakeUp(), source, new String[]{"name", "WAKE-UP", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.reportFeatureEClass, source, new String[]{"name", "REPORT-FEATURE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.wakeUpEClass, source, new String[]{"name", "WAKE-UP", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsEClass, source, new String[]{"name", "NVRAM-BLOCK-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_NDataSets(), source, new String[]{"name", "N-DATA-SETS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Readonly(), source, new String[]{"name", "READONLY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Reliability(), source, new String[]{"name", "RELIABILITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_ResistantToChangedSw(), source, new String[]{"name", "RESISTANT-TO-CHANGED-SW", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_RestoreAtStart(), source, new String[]{"name", "RESTORE-AT-START", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_TransactionSafe(), source, new String[]{"name", "TRANSACTION-SAFE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WriteOnlyOnce(), source, new String[]{"name", "WRITE-ONLY-ONCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingFrequency(), source, new String[]{"name", "WRITING-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingPriority(), source, new String[]{"name", "WRITING-PRIORITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.receiverAnnotationEClass, source, new String[]{"name", "RECEIVER-ANNOTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getReceiverAnnotation_SignalAge(), source, new String[]{"name", "SIGNAL-AGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationEClass, source, new String[]{"name", "SENDER-RECEIVER-ANNOTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_Computed(), source, new String[]{"name", "COMPUTED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_LimitType(), source, new String[]{"name", "LIMIT-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_ProcessingType(), source, new String[]{"name", "PROCESSING-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_SenderReceiverAnnotation_dataElement(), source, new String[]{"name", "SENDER-RECEIVER-ANNOTATION-DATA-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderAnnotationEClass, source, new String[]{"name", "SENDER-ANNOTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.supervisedEntityNeedsEClass, source, new String[]{"name", "SUPERVISED-ENTITY-NEEDS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ActivateAtStart(), source, new String[]{"name", "ACTIVATE-AT-START", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_EnableDeactivation(), source, new String[]{"name", "ENABLE-DEACTIVATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ExpectedAliveCycle(), source, new String[]{"name", "EXPECTED-ALIVE-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MaxAliveCycle(), source, new String[]{"name", "MAX-ALIVE-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MinAliveCycle(), source, new String[]{"name", "MIN-ALIVE-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ToleratedFailedCycles(), source, new String[]{"name", "TOLERATED-FAILED-CYCLES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.portAnnotationEClass, source, new String[]{"name", "PORT-ANNOTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPortAnnotation_ExtAnnotations(), source, new String[]{"name", "EXT-ANNOTATIONS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.calibrationPortAnnotationEClass, source, new String[]{"documentation", "Annotation to a port used for calibration regarding a certain CalprmElement"});
        this.addAnnotation((ENamedElement)this.getCalibrationPortAnnotation_CalprmElement(), source, new String[]{"documentation", "The instance of calprm element annotated."});
        this.addAnnotation((ENamedElement)this.comMUserNeedsEClass, source, new String[]{"documentation", "Specifies the SWCs needs on the configuration of the Communication Manager for the \"user\" associated with this specific Service Port."});
        this.addAnnotation((ENamedElement)this.getComMUserNeeds_MaxCommMode(), source, new String[]{"documentation", "maximum communication mode requested by the ComM user associated with this Service Port"});
        this.addAnnotation((ENamedElement)this.serviceNeedsEClass, source, new String[]{"documentation", "Annotation to a service port of an atomic SWC. It expresses the needs the SWC has on the configuration of the infrastructure (AUTOSAR Service, ECU abstraction or Complex Driver) to which it will be connected via this port."});
        this.addAnnotation((ENamedElement)this.maxCommModeEEnum, source, new String[]{"documentation", "maximum bus communication mode required by a user of the COMM Service"});
        this.addAnnotation((ENamedElement)this.extAnnotationEClass, source, new String[]{"documentation", "Allows the specification of port annotations not yet part of the software component template."});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Name(), source, new String[]{"documentation", "Name of the annotation."});
        this.addAnnotation((ENamedElement)this.getExtAnnotation_Value(), source, new String[]{"documentation", "Value of the annotation."});
        this.addAnnotation((ENamedElement)this.failureMonitoringEClass, source, new String[]{"documentation", "This attribute is only applicaple in SET operations. If it is enabled, the IoHwAbstraction layer will monitor the result of the opeation and issue an diagnostic signal. This means especially, that an additional client-server port has to be created. Tools can use this information to cross-check whether for each data-element in a SET operation with FailureMonitoring enabled an additional port is created"});
        this.addAnnotation((ENamedElement)this.getFailureMonitoring_MonitorsFailure(), source, new String[]{"documentation", "The referenced port monitors a failure in the data-element to be monitored of the IoHwAbstraction layer. The referenced port has to be an Actuator Component."});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationEClass, source, new String[]{"documentation", "The ClientServer Port Annotation will only be used from a sensor- or an actuator component while interacting with the IoHwAbstraction layer\r\n"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Age(), source, new String[]{"documentation", "In case of a SET operation, the age will be interpreted as Delay while in a GET operation (input) it specifies the Lifetime of the signal within the IoHwAbstraction Layer\r\n"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMax(), source, new String[]{"documentation", "Specifies the maximum value of the Range the ECU-Signal is supposed to have"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswRangeMin(), source, new String[]{"documentation", "Specifies the maximum value of the Range the ECU-Signal is supposed to have."});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_BswResolution(), source, new String[]{"documentation", "This value is determined by an appropriate combination of the range, the unit as well as the data-elements type, i.e. (BswRangeMax-BswRangeMin) / (2^datatypelength - 1)"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_FilteringDebouncing(), source, new String[]{"documentation", "This attribute is used to indicate what kind of filtering/debouncing has been put to the signal in the IoHwAbstraction layer. \r\n\r\nRAW_DATA means that no modification of the signal has been applied.This is the default value\r\nDEBOUNCE_DATA means that the signal is a mean value\r\nWAIT_TIME_DATE means that the signal is delivered by a GET operation after a certain amount of time\r\n"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_PulseTest(), source, new String[]{"documentation", "This attribute indicates to the connected Actuator Software component whether the data-element can be used to generate pulse test sequences using the IoHwAbstration layer"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_Unit(), source, new String[]{"documentation", "These are either electrical units like Volts (V) or time units like milliseconds (ms). The unit is set according to the ECU Input signal class which is either analogue or modulation"});
        this.addAnnotation((ENamedElement)this.reportFeatureEClass, source, new String[]{"documentation", "This feature is used for input signals only. Each time the level of the associated data-element changes a dedicated  GET operation has to be invoked by the sensor software component, i.e. an appropriate runnable has to be started. "});
        this.addAnnotation((ENamedElement)this.wakeUpEClass, source, new String[]{"documentation", "This attribut indicates wheter the software component reading this value provides dedicated runnables to handle a wake-up call by the IoHwAbstraction layer."});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsEClass, source, new String[]{"documentation", "Specifies the SWCs needs on the configuration of an NVRAM block associated with this specific Service Port.\r\n\r\nNote that the block size is not specified here because\r\n- it can be derived from the associated PerInstanceMemory size (implementatiion specific) in case of implicit storage/restauration of the block\r\n- if can be derived from the array size passed via the correponding operations of the Service Interface in case of explicit storage/restauration of the block\r\n\r\nThe needs for configuring callbacks can also be derived from the existence of additional ports required for that.\r\n\r\nThe optional association of a RAM mirror block and/or a ROM default block with this NVRAM block is modeled by references from the corresponding elements of the InternalBehavior to this port annotation. "});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_NDataSets(), source, new String[]{"documentation", "number of data sets to be provided by the NVRAM manager for this block"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Readonly(), source, new String[]{"documentation", "true: data of this block are write protected for normal operation (but protection can be disabled)\r\nfalse: no restriction"});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_Reliability(), source, new String[]{"documentation", "Reliability against data loss on the non-volatile medium.\r\nlow: Data loss is uncritical\r\nmedium: Data loss should be avoided\r\nhigh: Data loss is critical \r\nThese requirements give only a relative indication, for example on the required degree of redundancy for storage. They do however not specify by which means (e.g. software or hardware) the reliability is actually achieved."});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_ResistantToChangedSw(), source, new String[]{"documentation", "Defines whether a NVRAM block shall be treated resistant to configuration changes (true) or not (false). For details how to handle initialization in the latter case, refer to the NVRAM specification."});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_RestoreAtStart(), source, new String[]{"documentation", "Defines whether the associated RAM mirror block shall be implictly restored during startup by the basic SW or not. Only relevant if a RAM mirror block (PerInstanceMemory) is associated with this port."});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_TransactionSafe(), source, new String[]{"documentation", "true: If the current write access fails, the last data of this block is still available and stored on the non volatile medium. \r\nfalse: If the current write access fails, the current and/or last data of this block may be lost."});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WriteOnlyOnce(), source, new String[]{"documentation", "Defines write protection after first write:\r\ntrue: This block is prevented from being changed/erased or being replaced with the default ROM data after first initialization by the SWC.\r\nfalse: No such restriction."});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingFrequency(), source, new String[]{"documentation", "Provides the amount of updates to this block from the application point of view. It has to be provided in \"number of write access per year\"."});
        this.addAnnotation((ENamedElement)this.getNVRAMBlockNeeds_WritingPriority(), source, new String[]{"documentation", "Requires the priority of writing this block in case of concurrent requests to write other blocks."});
        this.addAnnotation((ENamedElement)this.receiverAnnotationEClass, source, new String[]{"documentation", "Annotation of a receiver port, specifying properties of data elements that don't affect communication or generation of the RTE. The given attributes are requirements on the required data."});
        this.addAnnotation((ENamedElement)this.getReceiverAnnotation_SignalAge(), source, new String[]{"documentation", "The maximum allowed age of the signal since it was originally read by a sensor. This is a requirement specified on the receiver side."});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationEClass, source, new String[]{"documentation", "Annotation of the data elements in a port that realizes a sender/receiver interface."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_Computed(), source, new String[]{"documentation", "Flag whether this data element was not measured directly but instead was calculated from possibly several other measured or calculated values."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_LimitType(), source, new String[]{"documentation", "Indicates whether the data element carries a minimum or maximum value, thereby limiting the current range of another value.\r\nThis min or max has not to be mismatched with the min- and max for data-value in a compu-method. For example, this annotation\r\nshows when the result of the calculation performed in a softwar component's runnable is transmitted to another software component whose runnable will use this value as a limit, e.g. the max.power which can be used by that component, or the current min. slip."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverAnnotation_ProcessingType(), source, new String[]{"documentation", "Kind of processing applied to the data element. \"raw\" specifies that a signal is taken directly from the basic software modules, i.e. from the ECU abstraction layer. It indicates to a developer that the control algorithm in the software has to provide filters. \"filtered\" indicates that a raw signal has been manipulated by some application software components by using filters. \"none\" is specified if none of the previous two options apply."});
        this.addAnnotation((ENamedElement)this.senderAnnotationEClass, source, new String[]{"documentation", "Annotation of a sender port, specifying properties of data elements that don't affect communication or generation of the RTE. The given attributes are assertions on the provided data."});
        this.addAnnotation((ENamedElement)this.supervisedEntityNeedsEClass, source, new String[]{"documentation", "Specifies the SWCs needs on the configuration of the Watchdog Manager for the Supervised Entity (SE) associated with this specific Service Port."});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ActivateAtStart(), source, new String[]{"documentation", "true/false: supervision activation status of SE shall be enabled/disabled at start"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_EnableDeactivation(), source, new String[]{"documentation", "true: SWC shall be allowed to deactivate supervision of this SE\r\nfalse: not"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ExpectedAliveCycle(), source, new String[]{"documentation", "Expected cycle time of alive trigger of this SE (in seconds)"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MaxAliveCycle(), source, new String[]{"documentation", "Maximum cycle time of alive trigger of this SE (in seconds)"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_MinAliveCycle(), source, new String[]{"documentation", "Minimum cycle time of alive trigger of this SE (in seconds)"});
        this.addAnnotation((ENamedElement)this.getSupervisedEntityNeeds_ToleratedFailedCycles(), source, new String[]{"documentation", "Number of consecutive failed alive cycles for this SE which shall be tolerated until the supervision status of the SE is set to EXPIRED (see WdgM documentation for details). Note that this has to be recalculated w.r.t. the WdgMs own cycle time for ECU configuration."});
        this.addAnnotation((ENamedElement)this.portAnnotationEClass, source, new String[]{"documentation", "Base class for annotations of ports. Annotations are attributes that formally specify features and requirements of ports that have currently no influence on the generation of the RTE or the communication in general."});
        this.addAnnotation((ENamedElement)this.getPortAnnotation_ExtAnnotations(), source, new String[]{"documentation", "Additional annotations types that are not yet part of the software component template and can be specified on a pure text basis."});
    }

    protected void createTaggedValuesOfGeneralization_PortAnnotationAnnotations() {
        String source = "TaggedValuesOfGeneralization_PortAnnotation";
        this.addAnnotation((ENamedElement)this.calibrationPortAnnotationEClass, source, new String[]{"Name", "", "GUID", "{25829C87-395A-4fdf-B1E1-4D86B36F31E1}", "Id", "835062254", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.serviceNeedsEClass, source, new String[]{"Name", "", "GUID", "{E918D016-5819-428a-B413-6062FFEEB1BD}", "Id", "-1466072475", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationEClass, source, new String[]{"Name", "", "GUID", "{B8AADE07-A815-49d4-BF06-11E0B956FF5A}", "Id", "1204546263", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationEClass, source, new String[]{"Name", "", "GUID", "{1BB14915-7F39-4594-8B16-157AC54FC9B3}", "Id", "1358988054", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.calibrationPortAnnotationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.getCalibrationPortAnnotation_CalprmElement(), source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.comMUserNeedsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.serviceNeedsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.maxCommModeEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.extAnnotationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.failureMonitoringEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.ioHwAbstractionServerAnnotationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_ArgumentPrototype(), source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getIoHwAbstractionServerAnnotation_DataElementPrototype(), source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.reportFeatureEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.wakeUpEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.receiverAnnotationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderReceiverAnnotationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderAnnotationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.supervisedEntityNeedsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.portAnnotationEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ServiceNeedsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ServiceNeeds";
        this.addAnnotation((ENamedElement)this.comMUserNeedsEClass, source, new String[]{"Name", "", "GUID", "{16B18754-AA05-4e5d-A5CD-F4143623D08D}", "Id", "-2103497153", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.nvramBlockNeedsEClass, source, new String[]{"Name", "", "GUID", "{67A2A73E-B653-48dd-9E71-82016D70B8C4}", "Id", "2017258806", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.supervisedEntityNeedsEClass, source, new String[]{"Name", "", "GUID", "{9E6F1DF8-C934-4cc5-8257-19851CCBA7CB}", "Id", "1349436539", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.extAnnotationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.failureMonitoringEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.reportFeatureEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.wakeUpEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.portAnnotationEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SenderReceiverAnnotationAnnotations() {
        String source = "TaggedValuesOfGeneralization_SenderReceiverAnnotation";
        this.addAnnotation((ENamedElement)this.receiverAnnotationEClass, source, new String[]{"Name", "", "GUID", "{A3190870-1C95-41a0-9A8C-11067655B595}", "Id", "-1657678950", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderAnnotationEClass, source, new String[]{"Name", "", "GUID", "{99E7EB21-96AE-4841-B3CB-9ED95BDB8BAA}", "Id", "-1014297426", "xml.sequenceOffset", "0"});
    }
}

