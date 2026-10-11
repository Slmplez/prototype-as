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
package autosar21.ecuresource.peripherals.impl;

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
import autosar21.ecuresource.peripherals.ADC;
import autosar21.ecuresource.peripherals.ADCBehaviourAtLimitEnum;
import autosar21.ecuresource.peripherals.AnalogueIO;
import autosar21.ecuresource.peripherals.AnalogueIOModeEnum;
import autosar21.ecuresource.peripherals.Buffer;
import autosar21.ecuresource.peripherals.BufferTypeEnum;
import autosar21.ecuresource.peripherals.CCU;
import autosar21.ecuresource.peripherals.CCUModeEnum;
import autosar21.ecuresource.peripherals.CommunicationFilter;
import autosar21.ecuresource.peripherals.CommunicationHWPort;
import autosar21.ecuresource.peripherals.CommunicationPeripheral;
import autosar21.ecuresource.peripherals.CommunicationPeripheralArchitectureEnum;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMedium;
import autosar21.ecuresource.peripherals.CommunicationPhysicalMediumPhysicalMediumTypeEnum;
import autosar21.ecuresource.peripherals.CommunicationProtocol;
import autosar21.ecuresource.peripherals.CommunicationSpeed;
import autosar21.ecuresource.peripherals.CommunicationSpeedFixed;
import autosar21.ecuresource.peripherals.CommunicationSpeedList;
import autosar21.ecuresource.peripherals.CommunicationSpeedRange;
import autosar21.ecuresource.peripherals.DAC;
import autosar21.ecuresource.peripherals.DigitalIO;
import autosar21.ecuresource.peripherals.DigitalIOEdgeDetectionEnum;
import autosar21.ecuresource.peripherals.ECUCommunicationPort;
import autosar21.ecuresource.peripherals.GeneralPurposeTimer;
import autosar21.ecuresource.peripherals.PWD;
import autosar21.ecuresource.peripherals.PWDModeEnum;
import autosar21.ecuresource.peripherals.PWM;
import autosar21.ecuresource.peripherals.Peripheral;
import autosar21.ecuresource.peripherals.PeripheralHWPort;
import autosar21.ecuresource.peripherals.PeripheralsFactory;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.peripherals.PulseWidthPeripheral;
import autosar21.ecuresource.peripherals.Timer;
import autosar21.ecuresource.peripherals.TimerCountDirectionEnum;
import autosar21.ecuresource.peripherals.TimerModeEnum;
import autosar21.ecuresource.peripherals.WatchDog;
import autosar21.ecuresource.peripherals.WatchDogModeEnum;
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

public class PeripheralsPackageImpl
extends EPackageImpl
implements PeripheralsPackage {
    private EClass bufferEClass = null;
    private EClass ccuEClass = null;
    private EClass generalPurposeTimerEClass = null;
    private EClass peripheralEClass = null;
    private EClass communicationFilterEClass = null;
    private EClass communicationHWPortEClass = null;
    private EClass peripheralHWPortEClass = null;
    private EClass communicationSpeedEClass = null;
    private EClass communicationPhysicalMediumEClass = null;
    private EClass communicationPeripheralEClass = null;
    private EClass communicationProtocolEClass = null;
    private EClass communicationSpeedFixedEClass = null;
    private EClass communicationSpeedListEClass = null;
    private EClass communicationSpeedRangeEClass = null;
    private EClass timerEClass = null;
    private EClass watchDogEClass = null;
    private EClass adcEClass = null;
    private EClass analogueIOEClass = null;
    private EClass dacEClass = null;
    private EClass digitalIOEClass = null;
    private EClass pwdEClass = null;
    private EClass pulseWidthPeripheralEClass = null;
    private EClass pwmEClass = null;
    private EClass ecuCommunicationPortEClass = null;
    private EEnum bufferTypeEnumEEnum = null;
    private EEnum ccuModeEnumEEnum = null;
    private EEnum communicationPhysicalMediumPhysicalMediumTypeEnumEEnum = null;
    private EEnum communicationPeripheralArchitectureEnumEEnum = null;
    private EEnum timerCountDirectionEnumEEnum = null;
    private EEnum timerModeEnumEEnum = null;
    private EEnum watchDogModeEnumEEnum = null;
    private EEnum analogueIOModeEnumEEnum = null;
    private EEnum adcBehaviourAtLimitEnumEEnum = null;
    private EEnum digitalIOEdgeDetectionEnumEEnum = null;
    private EEnum pwdModeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private PeripheralsPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecur/p", (EFactory)PeripheralsFactory.eINSTANCE);
    }

    public static PeripheralsPackage init() {
        if (isInited) {
            return (PeripheralsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/p");
        }
        PeripheralsPackageImpl thePeripheralsPackage = (PeripheralsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/p") instanceof PeripheralsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/p") : new PeripheralsPackageImpl());
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
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        thePeripheralsPackage.createPackageContents();
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
        theEcucparameterdefPackage.createPackageContents();
        thePeripheralsPackage.initializePackageContents();
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
        theEcucparameterdefPackage.initializePackageContents();
        thePeripheralsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecur/p", (Object)thePeripheralsPackage);
        return thePeripheralsPackage;
    }

    public EClass getBuffer() {
        return this.bufferEClass;
    }

    public EReference getBuffer_PeripheralHWPort() {
        return (EReference)this.bufferEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getBuffer_Number() {
        return (EAttribute)this.bufferEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getBuffer_Size() {
        return (EAttribute)this.bufferEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getBuffer_Type() {
        return (EAttribute)this.bufferEClass.getEStructuralFeatures().get(3);
    }

    public EClass getCCU() {
        return this.ccuEClass;
    }

    public EAttribute getCCU_Mode() {
        return (EAttribute)this.ccuEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGeneralPurposeTimer() {
        return this.generalPurposeTimerEClass;
    }

    public EReference getGeneralPurposeTimer_ClockSource() {
        return (EReference)this.generalPurposeTimerEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getGeneralPurposeTimer_PhaseDetection() {
        return (EAttribute)this.generalPurposeTimerEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getGeneralPurposeTimer_Resolution() {
        return (EAttribute)this.generalPurposeTimerEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getGeneralPurposeTimer_ThresholdValues() {
        return (EAttribute)this.generalPurposeTimerEClass.getEStructuralFeatures().get(3);
    }

    public EClass getPeripheral() {
        return this.peripheralEClass;
    }

    public EAttribute getPeripheral_CanBeDisabled() {
        return (EAttribute)this.peripheralEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCommunicationFilter() {
        return this.communicationFilterEClass;
    }

    public EAttribute getCommunicationFilter_FilterCount() {
        return (EAttribute)this.communicationFilterEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationFilter_FilterWidth() {
        return (EAttribute)this.communicationFilterEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCommunicationFilter_WildCards() {
        return (EAttribute)this.communicationFilterEClass.getEStructuralFeatures().get(2);
    }

    public EClass getCommunicationHWPort() {
        return this.communicationHWPortEClass;
    }

    public EReference getCommunicationHWPort_CommunicationPeripheral() {
        return (EReference)this.communicationHWPortEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCommunicationHWPort_PhysicalLayer() {
        return (EReference)this.communicationHWPortEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCommunicationHWPort_Speed() {
        return (EReference)this.communicationHWPortEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPeripheralHWPort() {
        return this.peripheralHWPortEClass;
    }

    public EReference getPeripheralHWPort_Buffers() {
        return (EReference)this.peripheralHWPortEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getPeripheralHWPort_Inversion() {
        return (EAttribute)this.peripheralHWPortEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getPeripheralHWPort_PowerOnCapability() {
        return (EAttribute)this.peripheralHWPortEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPeripheralHWPort_WakeUpCapability() {
        return (EAttribute)this.peripheralHWPortEClass.getEStructuralFeatures().get(3);
    }

    public EClass getCommunicationSpeed() {
        return this.communicationSpeedEClass;
    }

    public EReference getCommunicationSpeed_CommunicationHWPort() {
        return (EReference)this.communicationSpeedEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationSpeed_Tolerance() {
        return (EAttribute)this.communicationSpeedEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCommunicationPhysicalMedium() {
        return this.communicationPhysicalMediumEClass;
    }

    public EReference getCommunicationPhysicalMedium_CommunicationHWPort() {
        return (EReference)this.communicationPhysicalMediumEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationPhysicalMedium_PhysicalMediumDataLines() {
        return (EAttribute)this.communicationPhysicalMediumEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCommunicationPhysicalMedium_PhysicalMediumStandard() {
        return (EAttribute)this.communicationPhysicalMediumEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getCommunicationPhysicalMedium_PhysicalMediumType() {
        return (EAttribute)this.communicationPhysicalMediumEClass.getEStructuralFeatures().get(3);
    }

    public EClass getCommunicationPeripheral() {
        return this.communicationPeripheralEClass;
    }

    public EReference getCommunicationPeripheral_AcceptanceFilter() {
        return (EReference)this.communicationPeripheralEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationPeripheral_Architecture() {
        return (EAttribute)this.communicationPeripheralEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCommunicationPeripheral_Clock() {
        return (EReference)this.communicationPeripheralEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCommunicationPeripheral_ErrorDetection() {
        return (EReference)this.communicationPeripheralEClass.getEStructuralFeatures().get(3);
    }

    public EReference getCommunicationPeripheral_HwPorts() {
        return (EReference)this.communicationPeripheralEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getCommunicationPeripheral_Monitor() {
        return (EAttribute)this.communicationPeripheralEClass.getEStructuralFeatures().get(5);
    }

    public EReference getCommunicationPeripheral_Protocols() {
        return (EReference)this.communicationPeripheralEClass.getEStructuralFeatures().get(6);
    }

    public EReference getCommunicationPeripheral_RejectionFilter() {
        return (EReference)this.communicationPeripheralEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getCommunicationPeripheral_TimestampAvailable() {
        return (EAttribute)this.communicationPeripheralEClass.getEStructuralFeatures().get(8);
    }

    public EClass getCommunicationProtocol() {
        return this.communicationProtocolEClass;
    }

    public EReference getCommunicationProtocol_CommunicationPeripheral() {
        return (EReference)this.communicationProtocolEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationProtocol_Versions() {
        return (EAttribute)this.communicationProtocolEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCommunicationSpeedFixed() {
        return this.communicationSpeedFixedEClass;
    }

    public EAttribute getCommunicationSpeedFixed_FixSpeed() {
        return (EAttribute)this.communicationSpeedFixedEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCommunicationSpeedList() {
        return this.communicationSpeedListEClass;
    }

    public EAttribute getCommunicationSpeedList_Speeds() {
        return (EAttribute)this.communicationSpeedListEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCommunicationSpeedRange() {
        return this.communicationSpeedRangeEClass;
    }

    public EAttribute getCommunicationSpeedRange_MaxSpeed() {
        return (EAttribute)this.communicationSpeedRangeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationSpeedRange_MinSpeed() {
        return (EAttribute)this.communicationSpeedRangeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getTimer() {
        return this.timerEClass;
    }

    public EAttribute getTimer_CanBeReInit() {
        return (EAttribute)this.timerEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getTimer_CountDirection() {
        return (EAttribute)this.timerEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getTimer_Mode() {
        return (EAttribute)this.timerEClass.getEStructuralFeatures().get(2);
    }

    public EClass getWatchDog() {
        return this.watchDogEClass;
    }

    public EReference getWatchDog_ClockSource() {
        return (EReference)this.watchDogEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getWatchDog_Mode() {
        return (EAttribute)this.watchDogEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getWatchDog_ThresholdValues() {
        return (EAttribute)this.watchDogEClass.getEStructuralFeatures().get(2);
    }

    public EClass getADC() {
        return this.adcEClass;
    }

    public EAttribute getADC_BehaviourAtLimit() {
        return (EAttribute)this.adcEClass.getEStructuralFeatures().get(0);
    }

    public EClass getAnalogueIO() {
        return this.analogueIOEClass;
    }

    public EAttribute getAnalogueIO_Accuracy() {
        return (EAttribute)this.analogueIOEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getAnalogueIO_ConversionTime() {
        return (EAttribute)this.analogueIOEClass.getEStructuralFeatures().get(1);
    }

    public EReference getAnalogueIO_ExternalReferenceVoltage() {
        return (EReference)this.analogueIOEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getAnalogueIO_Mode() {
        return (EAttribute)this.analogueIOEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getAnalogueIO_MultiplexedM() {
        return (EAttribute)this.analogueIOEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getAnalogueIO_MultiplexedN() {
        return (EAttribute)this.analogueIOEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getAnalogueIO_Resolution() {
        return (EAttribute)this.analogueIOEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getAnalogueIO_Width() {
        return (EAttribute)this.analogueIOEClass.getEStructuralFeatures().get(7);
    }

    public EClass getDAC() {
        return this.dacEClass;
    }

    public EClass getDigitalIO() {
        return this.digitalIOEClass;
    }

    public EAttribute getDigitalIO_EdgeDetection() {
        return (EAttribute)this.digitalIOEClass.getEStructuralFeatures().get(0);
    }

    public EClass getPWD() {
        return this.pwdEClass;
    }

    public EAttribute getPWD_Mode() {
        return (EAttribute)this.pwdEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getPWD_PhaseDetection() {
        return (EAttribute)this.pwdEClass.getEStructuralFeatures().get(1);
    }

    public EClass getPulseWidthPeripheral() {
        return this.pulseWidthPeripheralEClass;
    }

    public EAttribute getPulseWidthPeripheral_Resolution() {
        return (EAttribute)this.pulseWidthPeripheralEClass.getEStructuralFeatures().get(0);
    }

    public EClass getPWM() {
        return this.pwmEClass;
    }

    public EClass getECUCommunicationPort() {
        return this.ecuCommunicationPortEClass;
    }

    public EEnum getBufferTypeEnum() {
        return this.bufferTypeEnumEEnum;
    }

    public EEnum getCCUModeEnum() {
        return this.ccuModeEnumEEnum;
    }

    public EEnum getCommunicationPhysicalMediumPhysicalMediumTypeEnum() {
        return this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum;
    }

    public EEnum getCommunicationPeripheralArchitectureEnum() {
        return this.communicationPeripheralArchitectureEnumEEnum;
    }

    public EEnum getTimerCountDirectionEnum() {
        return this.timerCountDirectionEnumEEnum;
    }

    public EEnum getTimerModeEnum() {
        return this.timerModeEnumEEnum;
    }

    public EEnum getWatchDogModeEnum() {
        return this.watchDogModeEnumEEnum;
    }

    public EEnum getAnalogueIOModeEnum() {
        return this.analogueIOModeEnumEEnum;
    }

    public EEnum getADCBehaviourAtLimitEnum() {
        return this.adcBehaviourAtLimitEnumEEnum;
    }

    public EEnum getDigitalIOEdgeDetectionEnum() {
        return this.digitalIOEdgeDetectionEnumEEnum;
    }

    public EEnum getPWDModeEnum() {
        return this.pwdModeEnumEEnum;
    }

    public PeripheralsFactory getPeripheralsFactory() {
        return (PeripheralsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.bufferEClass = this.createEClass(0);
        this.createEReference(this.bufferEClass, 4);
        this.createEAttribute(this.bufferEClass, 5);
        this.createEAttribute(this.bufferEClass, 6);
        this.createEAttribute(this.bufferEClass, 7);
        this.ccuEClass = this.createEClass(1);
        this.createEAttribute(this.ccuEClass, 30);
        this.generalPurposeTimerEClass = this.createEClass(2);
        this.createEReference(this.generalPurposeTimerEClass, 26);
        this.createEAttribute(this.generalPurposeTimerEClass, 27);
        this.createEAttribute(this.generalPurposeTimerEClass, 28);
        this.createEAttribute(this.generalPurposeTimerEClass, 29);
        this.peripheralEClass = this.createEClass(3);
        this.createEAttribute(this.peripheralEClass, 25);
        this.communicationFilterEClass = this.createEClass(4);
        this.createEAttribute(this.communicationFilterEClass, 4);
        this.createEAttribute(this.communicationFilterEClass, 5);
        this.createEAttribute(this.communicationFilterEClass, 6);
        this.communicationHWPortEClass = this.createEClass(5);
        this.createEReference(this.communicationHWPortEClass, 23);
        this.createEReference(this.communicationHWPortEClass, 24);
        this.createEReference(this.communicationHWPortEClass, 25);
        this.peripheralHWPortEClass = this.createEClass(6);
        this.createEReference(this.peripheralHWPortEClass, 19);
        this.createEAttribute(this.peripheralHWPortEClass, 20);
        this.createEAttribute(this.peripheralHWPortEClass, 21);
        this.createEAttribute(this.peripheralHWPortEClass, 22);
        this.communicationSpeedEClass = this.createEClass(7);
        this.createEReference(this.communicationSpeedEClass, 4);
        this.createEAttribute(this.communicationSpeedEClass, 5);
        this.communicationPhysicalMediumEClass = this.createEClass(8);
        this.createEReference(this.communicationPhysicalMediumEClass, 4);
        this.createEAttribute(this.communicationPhysicalMediumEClass, 5);
        this.createEAttribute(this.communicationPhysicalMediumEClass, 6);
        this.createEAttribute(this.communicationPhysicalMediumEClass, 7);
        this.communicationPeripheralEClass = this.createEClass(9);
        this.createEReference(this.communicationPeripheralEClass, 26);
        this.createEAttribute(this.communicationPeripheralEClass, 27);
        this.createEReference(this.communicationPeripheralEClass, 28);
        this.createEReference(this.communicationPeripheralEClass, 29);
        this.createEReference(this.communicationPeripheralEClass, 30);
        this.createEAttribute(this.communicationPeripheralEClass, 31);
        this.createEReference(this.communicationPeripheralEClass, 32);
        this.createEReference(this.communicationPeripheralEClass, 33);
        this.createEAttribute(this.communicationPeripheralEClass, 34);
        this.communicationProtocolEClass = this.createEClass(10);
        this.createEReference(this.communicationProtocolEClass, 16);
        this.createEAttribute(this.communicationProtocolEClass, 17);
        this.communicationSpeedFixedEClass = this.createEClass(11);
        this.createEAttribute(this.communicationSpeedFixedEClass, 6);
        this.communicationSpeedListEClass = this.createEClass(12);
        this.createEAttribute(this.communicationSpeedListEClass, 6);
        this.communicationSpeedRangeEClass = this.createEClass(13);
        this.createEAttribute(this.communicationSpeedRangeEClass, 6);
        this.createEAttribute(this.communicationSpeedRangeEClass, 7);
        this.timerEClass = this.createEClass(14);
        this.createEAttribute(this.timerEClass, 30);
        this.createEAttribute(this.timerEClass, 31);
        this.createEAttribute(this.timerEClass, 32);
        this.watchDogEClass = this.createEClass(15);
        this.createEReference(this.watchDogEClass, 26);
        this.createEAttribute(this.watchDogEClass, 27);
        this.createEAttribute(this.watchDogEClass, 28);
        this.adcEClass = this.createEClass(16);
        this.createEAttribute(this.adcEClass, 34);
        this.analogueIOEClass = this.createEClass(17);
        this.createEAttribute(this.analogueIOEClass, 26);
        this.createEAttribute(this.analogueIOEClass, 27);
        this.createEReference(this.analogueIOEClass, 28);
        this.createEAttribute(this.analogueIOEClass, 29);
        this.createEAttribute(this.analogueIOEClass, 30);
        this.createEAttribute(this.analogueIOEClass, 31);
        this.createEAttribute(this.analogueIOEClass, 32);
        this.createEAttribute(this.analogueIOEClass, 33);
        this.dacEClass = this.createEClass(18);
        this.digitalIOEClass = this.createEClass(19);
        this.createEAttribute(this.digitalIOEClass, 26);
        this.pwdEClass = this.createEClass(20);
        this.createEAttribute(this.pwdEClass, 27);
        this.createEAttribute(this.pwdEClass, 28);
        this.pulseWidthPeripheralEClass = this.createEClass(21);
        this.createEAttribute(this.pulseWidthPeripheralEClass, 26);
        this.pwmEClass = this.createEClass(22);
        this.ecuCommunicationPortEClass = this.createEClass(23);
        this.bufferTypeEnumEEnum = this.createEEnum(24);
        this.ccuModeEnumEEnum = this.createEEnum(25);
        this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum = this.createEEnum(26);
        this.communicationPeripheralArchitectureEnumEEnum = this.createEEnum(27);
        this.timerCountDirectionEnumEEnum = this.createEEnum(28);
        this.timerModeEnumEEnum = this.createEEnum(29);
        this.watchDogModeEnumEEnum = this.createEEnum(30);
        this.analogueIOModeEnumEEnum = this.createEEnum(31);
        this.adcBehaviourAtLimitEnumEEnum = this.createEEnum(32);
        this.digitalIOEdgeDetectionEnumEEnum = this.createEEnum(33);
        this.pwdModeEnumEEnum = this.createEEnum(34);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("peripherals");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecur/p");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        EcuelectronicsPackage theEcuelectronicsPackage = (EcuelectronicsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/ecue");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        BasicelementsPackage theBasicelementsPackage = (BasicelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        this.bufferEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.ccuEClass.getESuperTypes().add((Object)this.getGeneralPurposeTimer());
        this.generalPurposeTimerEClass.getESuperTypes().add((Object)this.getPeripheral());
        this.peripheralEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWElement());
        this.communicationFilterEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.communicationHWPortEClass.getESuperTypes().add((Object)this.getPeripheralHWPort());
        this.peripheralHWPortEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWPort());
        this.communicationSpeedEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.communicationPhysicalMediumEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.communicationPeripheralEClass.getESuperTypes().add((Object)this.getPeripheral());
        this.communicationProtocolEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.communicationSpeedFixedEClass.getESuperTypes().add((Object)this.getCommunicationSpeed());
        this.communicationSpeedListEClass.getESuperTypes().add((Object)this.getCommunicationSpeed());
        this.communicationSpeedRangeEClass.getESuperTypes().add((Object)this.getCommunicationSpeed());
        this.timerEClass.getESuperTypes().add((Object)this.getGeneralPurposeTimer());
        this.watchDogEClass.getESuperTypes().add((Object)this.getPeripheral());
        this.adcEClass.getESuperTypes().add((Object)this.getAnalogueIO());
        this.analogueIOEClass.getESuperTypes().add((Object)this.getPeripheral());
        this.dacEClass.getESuperTypes().add((Object)this.getAnalogueIO());
        this.digitalIOEClass.getESuperTypes().add((Object)this.getPeripheral());
        this.pwdEClass.getESuperTypes().add((Object)this.getPulseWidthPeripheral());
        this.pulseWidthPeripheralEClass.getESuperTypes().add((Object)this.getPeripheral());
        this.pwmEClass.getESuperTypes().add((Object)this.getPulseWidthPeripheral());
        this.ecuCommunicationPortEClass.getESuperTypes().add((Object)this.getCommunicationHWPort());
        this.initEClass(this.bufferEClass, Buffer.class, "Buffer", false, false, true);
        this.initEReference(this.getBuffer_PeripheralHWPort(), (EClassifier)this.getPeripheralHWPort(), this.getPeripheralHWPort_Buffers(), "peripheralHWPort", null, 0, 1, Buffer.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getBuffer_Number(), (EClassifier)thePrimitivetypesPackage.getInteger(), "number", "0", 0, 1, Buffer.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBuffer_Size(), (EClassifier)thePrimitivetypesPackage.getInteger(), "size", "0", 0, 1, Buffer.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBuffer_Type(), (EClassifier)this.getBufferTypeEnum(), "type", "INPUT", 0, 1, Buffer.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.ccuEClass, CCU.class, "CCU", false, false, true);
        this.initEAttribute(this.getCCU_Mode(), (EClassifier)this.getCCUModeEnum(), "mode", "CAPTURE", 0, 1, CCU.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.generalPurposeTimerEClass, GeneralPurposeTimer.class, "GeneralPurposeTimer", true, false, true);
        this.initEReference(this.getGeneralPurposeTimer_ClockSource(), (EClassifier)theEcuelectronicsPackage.getOscillator(), null, "clockSource", null, 0, 1, GeneralPurposeTimer.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getGeneralPurposeTimer_PhaseDetection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "phaseDetection", "false", 0, 1, GeneralPurposeTimer.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getGeneralPurposeTimer_Resolution(), (EClassifier)thePrimitivetypesPackage.getInteger(), "resolution", "0", 0, 1, GeneralPurposeTimer.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getGeneralPurposeTimer_ThresholdValues(), (EClassifier)thePrimitivetypesPackage.getInteger(), "thresholdValues", "0", 0, -1, GeneralPurposeTimer.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.peripheralEClass, Peripheral.class, "Peripheral", false, false, true);
        this.initEAttribute(this.getPeripheral_CanBeDisabled(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canBeDisabled", "false", 0, 1, Peripheral.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationFilterEClass, CommunicationFilter.class, "CommunicationFilter", false, false, true);
        this.initEAttribute(this.getCommunicationFilter_FilterCount(), (EClassifier)thePrimitivetypesPackage.getInteger(), "filterCount", "0", 0, 1, CommunicationFilter.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCommunicationFilter_FilterWidth(), (EClassifier)thePrimitivetypesPackage.getInteger(), "filterWidth", "0", 0, 1, CommunicationFilter.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCommunicationFilter_WildCards(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "wildCards", "false", 0, 1, CommunicationFilter.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationHWPortEClass, CommunicationHWPort.class, "CommunicationHWPort", false, false, true);
        this.initEReference(this.getCommunicationHWPort_CommunicationPeripheral(), (EClassifier)this.getCommunicationPeripheral(), this.getCommunicationPeripheral_HwPorts(), "communicationPeripheral", null, 0, 1, CommunicationHWPort.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getCommunicationHWPort_PhysicalLayer(), (EClassifier)this.getCommunicationPhysicalMedium(), this.getCommunicationPhysicalMedium_CommunicationHWPort(), "physicalLayer", null, 0, 1, CommunicationHWPort.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommunicationHWPort_Speed(), (EClassifier)this.getCommunicationSpeed(), this.getCommunicationSpeed_CommunicationHWPort(), "speed", null, 0, 1, CommunicationHWPort.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.peripheralHWPortEClass, PeripheralHWPort.class, "PeripheralHWPort", false, false, true);
        this.initEReference(this.getPeripheralHWPort_Buffers(), (EClassifier)this.getBuffer(), this.getBuffer_PeripheralHWPort(), "buffers", null, 0, -1, PeripheralHWPort.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPeripheralHWPort_Inversion(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "inversion", "false", 0, 1, PeripheralHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPeripheralHWPort_PowerOnCapability(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "powerOnCapability", "false", 0, 1, PeripheralHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPeripheralHWPort_WakeUpCapability(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "wakeUpCapability", "false", 0, 1, PeripheralHWPort.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationSpeedEClass, CommunicationSpeed.class, "CommunicationSpeed", true, false, true);
        this.initEReference(this.getCommunicationSpeed_CommunicationHWPort(), (EClassifier)this.getCommunicationHWPort(), this.getCommunicationHWPort_Speed(), "communicationHWPort", null, 0, 1, CommunicationSpeed.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationSpeed_Tolerance(), (EClassifier)thePrimitivetypesPackage.getFloat(), "tolerance", "0.0", 0, 1, CommunicationSpeed.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationPhysicalMediumEClass, CommunicationPhysicalMedium.class, "CommunicationPhysicalMedium", false, false, true);
        this.initEReference(this.getCommunicationPhysicalMedium_CommunicationHWPort(), (EClassifier)this.getCommunicationHWPort(), this.getCommunicationHWPort_PhysicalLayer(), "communicationHWPort", null, 0, 1, CommunicationPhysicalMedium.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationPhysicalMedium_PhysicalMediumDataLines(), (EClassifier)thePrimitivetypesPackage.getInteger(), "physicalMediumDataLines", "0", 0, 1, CommunicationPhysicalMedium.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCommunicationPhysicalMedium_PhysicalMediumStandard(), (EClassifier)thePrimitivetypesPackage.getString(), "physicalMediumStandard", "", 0, 1, CommunicationPhysicalMedium.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCommunicationPhysicalMedium_PhysicalMediumType(), (EClassifier)this.getCommunicationPhysicalMediumPhysicalMediumTypeEnum(), "physicalMediumType", "ELECTRICAL", 0, 1, CommunicationPhysicalMedium.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationPeripheralEClass, CommunicationPeripheral.class, "CommunicationPeripheral", false, false, true);
        this.initEReference(this.getCommunicationPeripheral_AcceptanceFilter(), (EClassifier)this.getCommunicationFilter(), null, "acceptanceFilter", null, 0, 1, CommunicationPeripheral.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationPeripheral_Architecture(), (EClassifier)this.getCommunicationPeripheralArchitectureEnum(), "architecture", "MASTER", 0, 1, CommunicationPeripheral.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCommunicationPeripheral_Clock(), (EClassifier)theEcuelectronicsPackage.getClock(), null, "clock", null, 0, 1, CommunicationPeripheral.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getCommunicationPeripheral_ErrorDetection(), (EClassifier)theBasicelementsPackage.getErrorDetectionCorrection(), null, "errorDetection", null, 0, 1, CommunicationPeripheral.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommunicationPeripheral_HwPorts(), (EClassifier)this.getCommunicationHWPort(), this.getCommunicationHWPort_CommunicationPeripheral(), "hwPorts", null, 0, -1, CommunicationPeripheral.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationPeripheral_Monitor(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "monitor", "false", 0, 1, CommunicationPeripheral.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCommunicationPeripheral_Protocols(), (EClassifier)this.getCommunicationProtocol(), this.getCommunicationProtocol_CommunicationPeripheral(), "protocols", null, 0, -1, CommunicationPeripheral.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommunicationPeripheral_RejectionFilter(), (EClassifier)this.getCommunicationFilter(), null, "rejectionFilter", null, 0, 1, CommunicationPeripheral.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationPeripheral_TimestampAvailable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "timestampAvailable", "false", 0, 1, CommunicationPeripheral.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationProtocolEClass, CommunicationProtocol.class, "CommunicationProtocol", false, false, true);
        this.initEReference(this.getCommunicationProtocol_CommunicationPeripheral(), (EClassifier)this.getCommunicationPeripheral(), this.getCommunicationPeripheral_Protocols(), "communicationPeripheral", null, 0, 1, CommunicationProtocol.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationProtocol_Versions(), (EClassifier)thePrimitivetypesPackage.getString(), "versions", "", 0, -1, CommunicationProtocol.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationSpeedFixedEClass, CommunicationSpeedFixed.class, "CommunicationSpeedFixed", false, false, true);
        this.initEAttribute(this.getCommunicationSpeedFixed_FixSpeed(), (EClassifier)thePrimitivetypesPackage.getInteger(), "fixSpeed", "0", 0, 1, CommunicationSpeedFixed.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationSpeedListEClass, CommunicationSpeedList.class, "CommunicationSpeedList", false, false, true);
        this.initEAttribute(this.getCommunicationSpeedList_Speeds(), (EClassifier)thePrimitivetypesPackage.getInteger(), "speeds", "0", 0, -1, CommunicationSpeedList.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationSpeedRangeEClass, CommunicationSpeedRange.class, "CommunicationSpeedRange", false, false, true);
        this.initEAttribute(this.getCommunicationSpeedRange_MaxSpeed(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxSpeed", "0", 0, 1, CommunicationSpeedRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCommunicationSpeedRange_MinSpeed(), (EClassifier)thePrimitivetypesPackage.getInteger(), "minSpeed", "0", 0, 1, CommunicationSpeedRange.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.timerEClass, Timer.class, "Timer", false, false, true);
        this.initEAttribute(this.getTimer_CanBeReInit(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canBeReInit", "false", 0, 1, Timer.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTimer_CountDirection(), (EClassifier)this.getTimerCountDirectionEnum(), "countDirection", "UP", 0, 1, Timer.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTimer_Mode(), (EClassifier)this.getTimerModeEnum(), "mode", "CONTINUOUS", 0, 1, Timer.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.watchDogEClass, WatchDog.class, "WatchDog", false, false, true);
        this.initEReference(this.getWatchDog_ClockSource(), (EClassifier)theEcuelectronicsPackage.getOscillator(), null, "clockSource", null, 0, 1, WatchDog.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getWatchDog_Mode(), (EClassifier)this.getWatchDogModeEnum(), "mode", "NORMAL", 0, 1, WatchDog.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getWatchDog_ThresholdValues(), (EClassifier)thePrimitivetypesPackage.getInteger(), "thresholdValues", "0", 0, -1, WatchDog.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.adcEClass, ADC.class, "ADC", false, false, true);
        this.initEAttribute(this.getADC_BehaviourAtLimit(), (EClassifier)this.getADCBehaviourAtLimitEnum(), "behaviourAtLimit", "CLIPPING", 0, 1, ADC.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.analogueIOEClass, AnalogueIO.class, "AnalogueIO", true, false, true);
        this.initEAttribute(this.getAnalogueIO_Accuracy(), (EClassifier)thePrimitivetypesPackage.getFloat(), "accuracy", "0.0", 0, 1, AnalogueIO.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAnalogueIO_ConversionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "conversionTime", "0.0", 0, 1, AnalogueIO.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getAnalogueIO_ExternalReferenceVoltage(), (EClassifier)theBasicelementsPackage.getElectricalRange(), null, "externalReferenceVoltage", null, 0, 1, AnalogueIO.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getAnalogueIO_Mode(), (EClassifier)this.getAnalogueIOModeEnum(), "mode", "CONTINUOUS", 0, 1, AnalogueIO.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAnalogueIO_MultiplexedM(), (EClassifier)thePrimitivetypesPackage.getInteger(), "multiplexedM", "0", 0, 1, AnalogueIO.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAnalogueIO_MultiplexedN(), (EClassifier)thePrimitivetypesPackage.getInteger(), "multiplexedN", "0", 0, 1, AnalogueIO.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAnalogueIO_Resolution(), (EClassifier)thePrimitivetypesPackage.getInteger(), "resolution", "0", 0, 1, AnalogueIO.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAnalogueIO_Width(), (EClassifier)thePrimitivetypesPackage.getInteger(), "width", "0", 0, 1, AnalogueIO.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.dacEClass, DAC.class, "DAC", false, false, true);
        this.initEClass(this.digitalIOEClass, DigitalIO.class, "DigitalIO", false, false, true);
        this.initEAttribute(this.getDigitalIO_EdgeDetection(), (EClassifier)this.getDigitalIOEdgeDetectionEnum(), "edgeDetection", "RISING", 0, 1, DigitalIO.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.pwdEClass, PWD.class, "PWD", false, false, true);
        this.initEAttribute(this.getPWD_Mode(), (EClassifier)this.getPWDModeEnum(), "mode", "TWO-PHASE-INPUT", 0, 1, PWD.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPWD_PhaseDetection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "phaseDetection", "false", 0, 1, PWD.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.pulseWidthPeripheralEClass, PulseWidthPeripheral.class, "PulseWidthPeripheral", true, false, true);
        this.initEAttribute(this.getPulseWidthPeripheral_Resolution(), (EClassifier)thePrimitivetypesPackage.getInteger(), "resolution", "0", 0, 1, PulseWidthPeripheral.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.pwmEClass, PWM.class, "PWM", false, false, true);
        this.initEClass(this.ecuCommunicationPortEClass, ECUCommunicationPort.class, "ECUCommunicationPort", false, false, true);
        this.initEEnum(this.bufferTypeEnumEEnum, BufferTypeEnum.class, "BufferTypeEnum");
        this.addEEnumLiteral(this.bufferTypeEnumEEnum, BufferTypeEnum.INPUT);
        this.addEEnumLiteral(this.bufferTypeEnumEEnum, BufferTypeEnum.OUTPUT);
        this.addEEnumLiteral(this.bufferTypeEnumEEnum, BufferTypeEnum.INOUT);
        this.initEEnum(this.ccuModeEnumEEnum, CCUModeEnum.class, "CCUModeEnum");
        this.addEEnumLiteral(this.ccuModeEnumEEnum, CCUModeEnum.CAPTURE);
        this.addEEnumLiteral(this.ccuModeEnumEEnum, CCUModeEnum.COMPARE);
        this.initEEnum(this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum, CommunicationPhysicalMediumPhysicalMediumTypeEnum.class, "CommunicationPhysicalMediumPhysicalMediumTypeEnum");
        this.addEEnumLiteral(this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum, CommunicationPhysicalMediumPhysicalMediumTypeEnum.ELECTRICAL);
        this.addEEnumLiteral(this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum, CommunicationPhysicalMediumPhysicalMediumTypeEnum.OPTICAL);
        this.addEEnumLiteral(this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum, CommunicationPhysicalMediumPhysicalMediumTypeEnum.WIRELESS);
        this.initEEnum(this.communicationPeripheralArchitectureEnumEEnum, CommunicationPeripheralArchitectureEnum.class, "CommunicationPeripheralArchitectureEnum");
        this.addEEnumLiteral(this.communicationPeripheralArchitectureEnumEEnum, CommunicationPeripheralArchitectureEnum.MASTER);
        this.addEEnumLiteral(this.communicationPeripheralArchitectureEnumEEnum, CommunicationPeripheralArchitectureEnum.SLAVE);
        this.addEEnumLiteral(this.communicationPeripheralArchitectureEnumEEnum, CommunicationPeripheralArchitectureEnum.MULTI_MASTER);
        this.initEEnum(this.timerCountDirectionEnumEEnum, TimerCountDirectionEnum.class, "TimerCountDirectionEnum");
        this.addEEnumLiteral(this.timerCountDirectionEnumEEnum, TimerCountDirectionEnum.UP);
        this.addEEnumLiteral(this.timerCountDirectionEnumEEnum, TimerCountDirectionEnum.DOWN);
        this.addEEnumLiteral(this.timerCountDirectionEnumEEnum, TimerCountDirectionEnum.SELECTABLE);
        this.initEEnum(this.timerModeEnumEEnum, TimerModeEnum.class, "TimerModeEnum");
        this.addEEnumLiteral(this.timerModeEnumEEnum, TimerModeEnum.CONTINUOUS);
        this.addEEnumLiteral(this.timerModeEnumEEnum, TimerModeEnum.SINGLE);
        this.addEEnumLiteral(this.timerModeEnumEEnum, TimerModeEnum.FREE);
        this.initEEnum(this.watchDogModeEnumEEnum, WatchDogModeEnum.class, "WatchDogModeEnum");
        this.addEEnumLiteral(this.watchDogModeEnumEEnum, WatchDogModeEnum.NORMAL);
        this.addEEnumLiteral(this.watchDogModeEnumEEnum, WatchDogModeEnum.WINDOWED);
        this.addEEnumLiteral(this.watchDogModeEnumEEnum, WatchDogModeEnum.DEBUG);
        this.initEEnum(this.analogueIOModeEnumEEnum, AnalogueIOModeEnum.class, "AnalogueIOModeEnum");
        this.addEEnumLiteral(this.analogueIOModeEnumEEnum, AnalogueIOModeEnum.CONTINUOUS);
        this.addEEnumLiteral(this.analogueIOModeEnumEEnum, AnalogueIOModeEnum.SINGLE);
        this.addEEnumLiteral(this.analogueIOModeEnumEEnum, AnalogueIOModeEnum.SEQUENTIAL);
        this.initEEnum(this.adcBehaviourAtLimitEnumEEnum, ADCBehaviourAtLimitEnum.class, "ADCBehaviourAtLimitEnum");
        this.addEEnumLiteral(this.adcBehaviourAtLimitEnumEEnum, ADCBehaviourAtLimitEnum.CLIPPING);
        this.addEEnumLiteral(this.adcBehaviourAtLimitEnumEEnum, ADCBehaviourAtLimitEnum.DEFAULT);
        this.addEEnumLiteral(this.adcBehaviourAtLimitEnumEEnum, ADCBehaviourAtLimitEnum.UNDEFINED);
        this.addEEnumLiteral(this.adcBehaviourAtLimitEnumEEnum, ADCBehaviourAtLimitEnum.OTHER);
        this.initEEnum(this.digitalIOEdgeDetectionEnumEEnum, DigitalIOEdgeDetectionEnum.class, "DigitalIOEdgeDetectionEnum");
        this.addEEnumLiteral(this.digitalIOEdgeDetectionEnumEEnum, DigitalIOEdgeDetectionEnum.RISING);
        this.addEEnumLiteral(this.digitalIOEdgeDetectionEnumEEnum, DigitalIOEdgeDetectionEnum.FALLING);
        this.addEEnumLiteral(this.digitalIOEdgeDetectionEnumEEnum, DigitalIOEdgeDetectionEnum.RISING_FALLING);
        this.initEEnum(this.pwdModeEnumEEnum, PWDModeEnum.class, "PWDModeEnum");
        this.addEEnumLiteral(this.pwdModeEnumEEnum, PWDModeEnum.TWO_PHASE_INPUT);
        this.addEEnumLiteral(this.pwdModeEnumEEnum, PWDModeEnum.THREE_PHASE_INPUT);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_GeneralPurposeTimerAnnotations();
        this.createTaggedValuesOfGeneralization_PeripheralAnnotations();
        this.createTaggedValuesOfGeneralization_HWElementAnnotations();
        this.createTaggedValuesOfGeneralization_PeripheralHWPortAnnotations();
        this.createTaggedValuesOfGeneralization_HWPortAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_CommunicationSpeedAnnotations();
        this.createTaggedValuesOfGeneralization_AnalogueIOAnnotations();
        this.createTaggedValuesOfGeneralization_PulseWidthPeripheralAnnotations();
        this.createTaggedValuesOfGeneralization_CommunicationHWPortAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Peripherals", "GUID", "{FFC6BF58-D6F8-40f4-BDA0-701D0BC8B387}", "Id", "942366494"});
        this.addAnnotation((ENamedElement)this.bufferEClass, source, new String[]{"Name", "Buffer", "Modified", "Sun Mar 20 21:04:05 CET 2005", "Created", "Fri Jul 09 11:03:41 CEST 2004", "GUID", "{F14BD8C9-79A0-4cbc-BB90-32792580550B}", "Id", "-2003522489"});
        this.addAnnotation((ENamedElement)this.getBuffer_Number(), source, new String[]{"Name", "number", "GUID", "{4F16DF0C-0A7D-42cd-A857-EA8AB99688AD}", "Id", "-1633798113"});
        this.addAnnotation((ENamedElement)this.getBuffer_Size(), source, new String[]{"Name", "size", "GUID", "{C30C2EF8-B999-4142-B21E-4628DE2EAC26}", "Id", "612411341"});
        this.addAnnotation((ENamedElement)this.getBuffer_Type(), source, new String[]{"Name", "type", "GUID", "{E2BE50B3-33ED-46bf-A131-25EA0F8E3F7B}", "Id", "-2086006148"});
        this.addAnnotation((ENamedElement)this.ccuEClass, source, new String[]{"Name", "CCU", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Fri Jul 09 11:30:14 CEST 2004", "GUID", "{1FB03D7F-D1FB-49ba-BD63-DC6455272911}", "Id", "-1202149987"});
        this.addAnnotation((ENamedElement)this.getCCU_Mode(), source, new String[]{"Name", "mode", "GUID", "{16682A29-577B-4e1c-8FC8-F2DE974814AD}", "Id", "-820269284"});
        this.addAnnotation((ENamedElement)this.generalPurposeTimerEClass, source, new String[]{"Name", "GeneralPurposeTimer", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Tue Mar 22 20:09:21 CET 2005", "GUID", "{E40ACAB1-70C7-4bb7-A5B9-5CF76CB23570}", "Id", "1111518561"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_PhaseDetection(), source, new String[]{"Name", "phaseDetection", "GUID", "{52E347D9-5F36-4a8b-88F1-DEFAA3406EF8}", "Id", "1628156915"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_Resolution(), source, new String[]{"Name", "resolution", "GUID", "{92A167A1-9139-4647-810F-EB74732D420D}", "Id", "1899371770"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_ThresholdValues(), source, new String[]{"Name", "thresholdValue", "GUID", "{290DAE13-C044-43a4-BDAE-9B8A83F052A3}", "Id", "276493240"});
        this.addAnnotation((ENamedElement)this.peripheralEClass, source, new String[]{"Name", "Peripheral", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Fri Jul 09 11:11:38 CEST 2004", "GUID", "{5EBFAD1A-C749-45c5-B4A2-0C413664037F}", "Id", "-2070738628"});
        this.addAnnotation((ENamedElement)this.getPeripheral_CanBeDisabled(), source, new String[]{"Name", "canBeDisabled", "GUID", "{EF948130-4997-4b9a-AA8C-D50ECC8EDF62}", "Id", "695501258"});
        this.addAnnotation((ENamedElement)this.communicationFilterEClass, source, new String[]{"Name", "CommunicationFilter", "Modified", "Thu Apr 14 08:30:47 CEST 2005", "Created", "Fri Jul 09 14:55:49 CEST 2004", "GUID", "{D714859A-DCFF-4b81-B143-02E44A9C4095}", "Id", "-1506372048"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterCount(), source, new String[]{"Name", "filterCount", "GUID", "{7FEEBD8D-C96E-4cf6-BBB2-4FBFFBD89895}", "Id", "-561543567"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterWidth(), source, new String[]{"Name", "filterWidth", "GUID", "{F8D1D0FF-FD19-48bb-B8C1-9D2C65BF5F9F}", "Id", "131868638"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_WildCards(), source, new String[]{"Name", "wildCards", "GUID", "{5AFD844E-0015-4c1f-B4C9-761DC9EFDD95}", "Id", "1325692423"});
        this.addAnnotation((ENamedElement)this.communicationHWPortEClass, source, new String[]{"Name", "CommunicationHWPort", "Modified", "Thu Apr 14 08:35:45 CEST 2005", "Created", "Fri Jul 23 08:34:06 CEST 2004", "GUID", "{CCECA972-D5CD-42be-AD1A-6475B287E5D8}", "Id", "1090564446"});
        this.addAnnotation((ENamedElement)this.peripheralHWPortEClass, source, new String[]{"Name", "PeripheralHWPort", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Fri Jul 09 10:57:26 CEST 2004", "GUID", "{E1DB260B-7188-4529-9AD3-0DF68C7B640C}", "Id", "442023994"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_Inversion(), source, new String[]{"Name", "inversion", "GUID", "{6B1DA7F5-546F-4904-B42A-AA8873AC8D36}", "Id", "-892475853"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_PowerOnCapability(), source, new String[]{"Name", "powerOnCapability", "GUID", "{28C18874-AB88-4976-8767-1EC1293B8F0C}", "Id", "-988729341"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_WakeUpCapability(), source, new String[]{"Name", "wakeUpCapability", "GUID", "{C7CA39E1-5CFB-41e3-95CA-5E3494F48D91}", "Id", "-1411210343"});
        this.addAnnotation((ENamedElement)this.communicationSpeedEClass, source, new String[]{"Name", "CommunicationSpeed", "Modified", "Thu Feb 10 16:08:50 CET 2005", "Created", "Fri Jul 09 14:47:47 CEST 2004", "GUID", "{7A490E0E-2DCA-43cf-BAEE-9B36FF7D547A}", "Id", "-1600767400"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeed_Tolerance(), source, new String[]{"Name", "tolerance", "GUID", "{34AC980B-434B-49a2-BFDC-64ED78C58E71}", "Id", "282284409"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumEClass, source, new String[]{"Name", "CommunicationPhysicalMedium", "Modified", "Thu Feb 10 16:08:50 CET 2005", "Created", "Fri Jul 23 08:44:30 CEST 2004", "GUID", "{A13D23CE-1F28-4c8e-B912-6F1F39C756DA}", "Id", "-2866711"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumDataLines(), source, new String[]{"Name", "physicalMediumDataLines", "GUID", "{7A85EB9C-D6ED-42e0-930F-2D8435DF6327}", "Id", "1553443461"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumStandard(), source, new String[]{"Name", "physicalMediumStandard", "GUID", "{6A18BC16-2158-4185-BDF3-A84F710A4A3D}", "Id", "2030095124"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumType(), source, new String[]{"Name", "physicalMediumType", "GUID", "{ECADFDF0-E7D5-4b0e-8468-93F29D2EB333}", "Id", "41319999"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralEClass, source, new String[]{"Name", "CommunicationPeripheral", "Modified", "Thu Apr 14 08:35:45 CEST 2005", "Created", "Wed Apr 28 10:46:53 CEST 2004", "GUID", "{43353F6A-670D-4726-B87E-04A337360902}", "Id", "1853004712"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Architecture(), source, new String[]{"Name", "architecture", "GUID", "{F74F4EEF-4D7A-4d75-B979-383CCE5E58B0}", "Id", "66997385"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Monitor(), source, new String[]{"Name", "monitor", "GUID", "{239F57CD-5C32-4db1-91EA-ADBC16D397C0}", "Id", "1639352854"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_TimestampAvailable(), source, new String[]{"Name", "timestampAvailable", "GUID", "{E7C67F11-94CD-4a07-AEDF-FF62E34FA8D0}", "Id", "-995751457"});
        this.addAnnotation((ENamedElement)this.communicationProtocolEClass, source, new String[]{"Name", "CommunicationProtocol", "Modified", "Thu Apr 14 08:35:45 CEST 2005", "Created", "Fri Jul 09 14:45:32 CEST 2004", "GUID", "{7DFE7556-8A53-4d61-9A59-AE8211252AE8}", "Id", "-2076134807"});
        this.addAnnotation((ENamedElement)this.getCommunicationProtocol_Versions(), source, new String[]{"Name", "version", "GUID", "{6BD2DA86-8E2D-47e8-A7AC-6741AD59510A}", "Id", "-1393970570"});
        this.addAnnotation((ENamedElement)this.communicationSpeedFixedEClass, source, new String[]{"Name", "CommunicationSpeedFixed", "Modified", "Tue Mar 22 20:54:28 CET 2005", "Created", "Fri Jul 09 14:48:31 CEST 2004", "GUID", "{23B304A9-CADC-485d-BAD4-7FF03CD79EC9}", "Id", "-219332758"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedFixed_FixSpeed(), source, new String[]{"Name", "fixSpeed", "GUID", "{573F73CD-B45F-4301-9461-88A0BFA3F86F}", "Id", "590176675"});
        this.addAnnotation((ENamedElement)this.communicationSpeedListEClass, source, new String[]{"Name", "CommunicationSpeedList", "Modified", "Tue Mar 22 20:54:28 CET 2005", "Created", "Fri Jul 09 14:49:29 CEST 2004", "GUID", "{1F6850AA-44D9-4826-AEE3-055884D88274}", "Id", "928852375"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedList_Speeds(), source, new String[]{"Name", "speed", "GUID", "{2249C259-A3A3-4785-A036-307D61DA3EE5}", "Id", "561904012"});
        this.addAnnotation((ENamedElement)this.communicationSpeedRangeEClass, source, new String[]{"Name", "CommunicationSpeedRange", "Modified", "Tue Mar 22 20:54:28 CET 2005", "Created", "Fri Jul 09 14:48:57 CEST 2004", "GUID", "{A6393310-CBC0-4b7f-8DC4-7AD18490BAC0}", "Id", "1948630161"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MaxSpeed(), source, new String[]{"Name", "maxSpeed", "GUID", "{30DF9BE2-5E55-417a-8D18-487A55E7DEB3}", "Id", "-1400760025"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MinSpeed(), source, new String[]{"Name", "minSpeed", "GUID", "{1A66AD1F-BEF1-439d-9998-B6CC42C4697A}", "Id", "1632398206"});
        this.addAnnotation((ENamedElement)this.timerEClass, source, new String[]{"Name", "Timer", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Wed Apr 28 09:59:44 CEST 2004", "GUID", "{D51F0A29-A5B0-41b8-B935-6D0315FF6219}", "Id", "-1852307386"});
        this.addAnnotation((ENamedElement)this.getTimer_CanBeReInit(), source, new String[]{"Name", "canBeReInit", "GUID", "{D2327DA8-5142-4097-AAA1-98FE8F3CA7D9}", "Id", "1022258147"});
        this.addAnnotation((ENamedElement)this.getTimer_CountDirection(), source, new String[]{"Name", "countDirection", "GUID", "{58D4EF4F-36C4-43ee-ADD4-9570B778A5E9}", "Id", "496194325"});
        this.addAnnotation((ENamedElement)this.getTimer_Mode(), source, new String[]{"Name", "mode", "GUID", "{9715CEC4-4CFC-46d7-895D-4946CCB7202C}", "Id", "1593982823"});
        this.addAnnotation((ENamedElement)this.watchDogEClass, source, new String[]{"Name", "WatchDog", "Modified", "Thu Mar 24 10:17:36 CET 2005", "Created", "Wed Apr 28 09:59:25 CEST 2004", "GUID", "{53AE87CB-D26E-47d0-A708-F1C1BA24C809}", "Id", "1146714402"});
        this.addAnnotation((ENamedElement)this.getWatchDog_Mode(), source, new String[]{"Name", "mode", "GUID", "{DC1DB738-4CB3-4a65-82BB-47E999D03317}", "Id", "-593629280"});
        this.addAnnotation((ENamedElement)this.getWatchDog_ThresholdValues(), source, new String[]{"Name", "thresholdValue", "GUID", "{A722EFC7-E4DE-4735-87E7-8DBA2178F202}", "Id", "-2062625029"});
        this.addAnnotation((ENamedElement)this.adcEClass, source, new String[]{"Name", "ADC", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Sun Apr 04 19:17:35 CEST 2004", "GUID", "{33B2C46B-3A80-445b-BAC2-B4AB0F3C4F68}", "Id", "958341537"});
        this.addAnnotation((ENamedElement)this.getADC_BehaviourAtLimit(), source, new String[]{"Name", "behaviourAtLimit", "GUID", "{7098A06D-3FFE-4ba0-8C16-2FC71FE2523D}", "Id", "99585870"});
        this.addAnnotation((ENamedElement)this.analogueIOEClass, source, new String[]{"Name", "AnalogueIO", "Modified", "Thu Mar 24 10:17:36 CET 2005", "Created", "Sun Apr 04 19:07:01 CEST 2004", "GUID", "{D0F4B9E2-12FD-4ad0-972B-0FD6CD330D2C}", "Id", "-1281381110"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Accuracy(), source, new String[]{"Name", "accuracy", "GUID", "{56616F68-8A62-42aa-B47C-92282C1EEE4B}", "Id", "-1802681784"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_ConversionTime(), source, new String[]{"Name", "conversionTime", "GUID", "{2EB44A05-4E00-44f7-8D0C-7E474FB51CDC}", "Id", "1342540613"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Mode(), source, new String[]{"Name", "mode", "GUID", "{9242FEC3-E81F-482f-B74F-8538836481FE}", "Id", "305664438"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedM(), source, new String[]{"Name", "multiplexedM", "GUID", "{C584C369-1BE4-4fd5-AA82-B346F6F9D46E}", "Id", "-194438486"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedN(), source, new String[]{"Name", "multiplexedN", "GUID", "{B91A1BC1-77D3-4396-8B63-2798493300F0}", "Id", "-2110722067"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Resolution(), source, new String[]{"Name", "resolution", "GUID", "{0707166D-E7B9-491e-8593-82CA38C7E1CC}", "Id", "-1727502653"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Width(), source, new String[]{"Name", "width", "GUID", "{70B4FDBB-8C1C-4c29-A3DB-51B5EE4E261D}", "Id", "-260741420"});
        this.addAnnotation((ENamedElement)this.dacEClass, source, new String[]{"Name", "DAC", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Sun Apr 04 19:13:05 CEST 2004", "GUID", "{A11A6893-290A-4e0a-8B8C-67FD5B790566}", "Id", "-753551939"});
        this.addAnnotation((ENamedElement)this.digitalIOEClass, source, new String[]{"Name", "DigitalIO", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Sun Apr 04 19:04:15 CEST 2004", "GUID", "{DF539D5F-1034-4595-9144-E0B856020B3A}", "Id", "-157922173"});
        this.addAnnotation((ENamedElement)this.getDigitalIO_EdgeDetection(), source, new String[]{"Name", "edgeDetection", "GUID", "{223142EC-2D44-423b-A7D9-4B63E63C9DF9}", "Id", "1963777825"});
        this.addAnnotation((ENamedElement)this.pwdEClass, source, new String[]{"Name", "PWD", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Sun Apr 04 19:20:41 CEST 2004", "GUID", "{410C10A6-877D-4d20-A3DC-73F8CD5745AC}", "Id", "-572608128"});
        this.addAnnotation((ENamedElement)this.getPWD_Mode(), source, new String[]{"Name", "mode", "GUID", "{9E9A0DC1-2F01-4b9e-88A5-E5CD47241EEC}", "Id", "246502078"});
        this.addAnnotation((ENamedElement)this.getPWD_PhaseDetection(), source, new String[]{"Name", "phaseDetection", "GUID", "{FF1E81B1-1893-43d0-8179-D5DD586E9DBA}", "Id", "-207735935"});
        this.addAnnotation((ENamedElement)this.pulseWidthPeripheralEClass, source, new String[]{"Name", "PulseWidthPeripheral", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Sun Apr 04 19:19:56 CEST 2004", "GUID", "{501AD4E9-150D-4177-A8B3-19FE3DE7D5AE}", "Id", "2131900390"});
        this.addAnnotation((ENamedElement)this.getPulseWidthPeripheral_Resolution(), source, new String[]{"Name", "resolution", "GUID", "{6C8B05E3-A532-4da4-B1CA-2CC2F0698267}", "Id", "-1343457425"});
        this.addAnnotation((ENamedElement)this.pwmEClass, source, new String[]{"Name", "PWM", "Modified", "Thu Apr 14 08:48:38 CEST 2005", "Created", "Sun Apr 04 19:20:34 CEST 2004", "GUID", "{56304EA0-E28D-40a1-AD92-89991A0CD9A8}", "Id", "1419993005"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortEClass, source, new String[]{"Name", "ECUCommunicationPort", "Modified", "Fri Apr 01 11:04:26 CEST 2005", "Created", "Thu Apr 08 15:24:10 CEST 2004", "GUID", "{1C0558ED-399D-4d81-96CB-6F68B87B84E6}", "Id", "-63474212"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "PERIPHERALS", "xml.namePlural", "PERIPHERALSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.bufferEClass, source, new String[]{"xml.name", "BUFFER", "xml.namePlural", "BUFFERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBuffer_Number(), source, new String[]{"xml.name", "NUMBER", "xml.namePlural", "NUMBERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBuffer_Size(), source, new String[]{"xml.name", "SIZE", "xml.namePlural", "SIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBuffer_Type(), source, new String[]{"xml.name", "TYPE", "xml.namePlural", "TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.bufferTypeEnumEEnum, source, new String[]{"xml.name", "BUFFER-TYPE-ENUM", "xml.namePlural", "BUFFER-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.bufferTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "INPUT", "xml.namePlural", "INPUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.bufferTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "OUTPUT", "xml.namePlural", "OUTPUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.bufferTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "INOUT", "xml.namePlural", "INOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ccuEClass, source, new String[]{"xml.name", "CCU", "xml.namePlural", "CCUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCCU_Mode(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "MODE", "xml.namePlural", "MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.generalPurposeTimerEClass, source, new String[]{"xml.name", "GENERAL-PURPOSE-TIMER", "xml.namePlural", "GENERAL-PURPOSE-TIMERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_ClockSource(), source, new String[]{"xml.name", "CLOCK-SOURCE-REF", "xml.namePlural", "CLOCK-SOURCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_PhaseDetection(), source, new String[]{"xml.name", "PHASE-DETECTION", "xml.namePlural", "PHASE-DETECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_Resolution(), source, new String[]{"xml.name", "RESOLUTION", "xml.namePlural", "RESOLUTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_ThresholdValues(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "THRESHOLD-VALUE", "xml.namePlural", "THRESHOLD-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.peripheralEClass, source, new String[]{"xml.name", "PERIPHERAL", "xml.namePlural", "PERIPHERALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPeripheral_CanBeDisabled(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "CAN-BE-DISABLED", "xml.namePlural", "CAN-BE-DISABLEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationFilterEClass, source, new String[]{"xml.name", "COMMUNICATION-FILTER", "xml.namePlural", "COMMUNICATION-FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterCount(), source, new String[]{"xml.name", "FILTER-COUNT", "xml.namePlural", "FILTER-COUNTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterWidth(), source, new String[]{"xml.name", "FILTER-WIDTH", "xml.namePlural", "FILTER-WIDTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_WildCards(), source, new String[]{"xml.name", "WILD-CARDS", "xml.namePlural", "WILD-CARDSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ccuModeEnumEEnum, source, new String[]{"xml.name", "CCU-MODE-ENUM", "xml.namePlural", "CCU-MODE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ccuModeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "CAPTURE", "xml.namePlural", "CAPTURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ccuModeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "COMPARE", "xml.namePlural", "COMPARES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationHWPortEClass, source, new String[]{"xml.name", "COMMUNICATION-HW-PORT", "xml.namePlural", "COMMUNICATION-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationHWPort_PhysicalLayer(), source, new String[]{"xml.name", "PHYSICAL-LAYER", "xml.namePlural", "PHYSICAL-LAYERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationHWPort_Speed(), source, new String[]{"xml.name", "SPEED", "xml.namePlural", "SPEEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.peripheralHWPortEClass, source, new String[]{"xml.name", "PERIPHERAL-HW-PORT", "xml.namePlural", "PERIPHERAL-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_Buffers(), source, new String[]{"xml.name", "BUFFER", "xml.namePlural", "BUFFERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_Inversion(), source, new String[]{"xml.name", "INVERSION", "xml.namePlural", "INVERSIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_PowerOnCapability(), source, new String[]{"xml.name", "POWER-ON-CAPABILITY", "xml.namePlural", "POWER-ON-CAPABILITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_WakeUpCapability(), source, new String[]{"xml.name", "WAKE-UP-CAPABILITY", "xml.namePlural", "WAKE-UP-CAPABILITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationSpeedEClass, source, new String[]{"xml.name", "COMMUNICATION-SPEED", "xml.namePlural", "COMMUNICATION-SPEEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeed_Tolerance(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "TOLERANCE", "xml.namePlural", "TOLERANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumEClass, source, new String[]{"xml.name", "COMMUNICATION-PHYSICAL-MEDIUM", "xml.namePlural", "COMMUNICATION-PHYSICAL-MEDIUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumDataLines(), source, new String[]{"xml.name", "PHYSICAL-MEDIUM-DATA-LINES", "xml.namePlural", "PHYSICAL-MEDIUM-DATA-LINESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumStandard(), source, new String[]{"xml.name", "PHYSICAL-MEDIUM-STANDARD", "xml.namePlural", "PHYSICAL-MEDIUM-STANDARDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumType(), source, new String[]{"xml.name", "PHYSICAL-MEDIUM-TYPE", "xml.namePlural", "PHYSICAL-MEDIUM-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum, source, new String[]{"xml.name", "COMMUNICATION-PHYSICAL-MEDIUM-PHYSICAL-MEDIUM-TYPE-ENUM", "xml.namePlural", "COMMUNICATION-PHYSICAL-MEDIUM-PHYSICAL-MEDIUM-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "ELECTRICAL", "xml.namePlural", "ELECTRICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "OPTICAL", "xml.namePlural", "OPTICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumPhysicalMediumTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "WIRELESS", "xml.namePlural", "WIRELESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralEClass, source, new String[]{"xml.name", "COMMUNICATION-PERIPHERAL", "xml.namePlural", "COMMUNICATION-PERIPHERALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_AcceptanceFilter(), source, new String[]{"xml.name", "ACCEPTANCE-FILTER", "xml.namePlural", "ACCEPTANCE-FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Architecture(), source, new String[]{"xml.name", "ARCHITECTURE", "xml.namePlural", "ARCHITECTURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Clock(), source, new String[]{"xml.name", "CLOCK-REF", "xml.namePlural", "CLOCK-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_ErrorDetection(), source, new String[]{"xml.name", "ERROR-DETECTION", "xml.namePlural", "ERROR-DETECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_HwPorts(), source, new String[]{"xml.name", "HW-PORT", "xml.namePlural", "HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Monitor(), source, new String[]{"xml.name", "MONITOR", "xml.namePlural", "MONITORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Protocols(), source, new String[]{"xml.name", "PROTOCOL", "xml.namePlural", "PROTOCOLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_RejectionFilter(), source, new String[]{"xml.name", "REJECTION-FILTER", "xml.namePlural", "REJECTION-FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_TimestampAvailable(), source, new String[]{"xml.name", "TIMESTAMP-AVAILABLE", "xml.namePlural", "TIMESTAMP-AVAILABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralArchitectureEnumEEnum, source, new String[]{"xml.name", "COMMUNICATION-PERIPHERAL-ARCHITECTURE-ENUM", "xml.namePlural", "COMMUNICATION-PERIPHERAL-ARCHITECTURE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralArchitectureEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "MASTER", "xml.namePlural", "MASTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralArchitectureEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "SLAVE", "xml.namePlural", "SLAVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralArchitectureEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "MULTI-MASTER", "xml.namePlural", "MULTI-MASTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationProtocolEClass, source, new String[]{"xml.name", "COMMUNICATION-PROTOCOL", "xml.namePlural", "COMMUNICATION-PROTOCOLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationProtocol_Versions(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "VERSION", "xml.namePlural", "VERSIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.communicationSpeedFixedEClass, source, new String[]{"xml.name", "COMMUNICATION-SPEED-FIXED", "xml.namePlural", "COMMUNICATION-SPEED-FIXEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedFixed_FixSpeed(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "FIX-SPEED", "xml.namePlural", "FIX-SPEEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationSpeedListEClass, source, new String[]{"xml.name", "COMMUNICATION-SPEED-LIST", "xml.namePlural", "COMMUNICATION-SPEED-LISTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedList_Speeds(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "SPEED", "xml.namePlural", "SPEEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.communicationSpeedRangeEClass, source, new String[]{"xml.name", "COMMUNICATION-SPEED-RANGE", "xml.namePlural", "COMMUNICATION-SPEED-RANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MaxSpeed(), source, new String[]{"xml.name", "MAX-SPEED", "xml.namePlural", "MAX-SPEEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MinSpeed(), source, new String[]{"xml.name", "MIN-SPEED", "xml.namePlural", "MIN-SPEEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.timerEClass, source, new String[]{"xml.name", "TIMER", "xml.namePlural", "TIMERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTimer_CanBeReInit(), source, new String[]{"xml.name", "CAN-BE-RE-INIT", "xml.namePlural", "CAN-BE-RE-INITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTimer_CountDirection(), source, new String[]{"xml.name", "COUNT-DIRECTION", "xml.namePlural", "COUNT-DIRECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTimer_Mode(), source, new String[]{"xml.name", "MODE", "xml.namePlural", "MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.timerCountDirectionEnumEEnum, source, new String[]{"xml.name", "TIMER-COUNT-DIRECTION-ENUM", "xml.namePlural", "TIMER-COUNT-DIRECTION-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timerCountDirectionEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "UP", "xml.namePlural", "UPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timerCountDirectionEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "DOWN", "xml.namePlural", "DOWNS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timerCountDirectionEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "SELECTABLE", "xml.namePlural", "SELECTABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timerModeEnumEEnum, source, new String[]{"xml.name", "TIMER-MODE-ENUM", "xml.namePlural", "TIMER-MODE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timerModeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "CONTINUOUS", "xml.namePlural", "CONTINUOUSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timerModeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "SINGLE", "xml.namePlural", "SINGLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timerModeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "FREE", "xml.namePlural", "FREES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.watchDogEClass, source, new String[]{"xml.name", "WATCH-DOG", "xml.namePlural", "WATCH-DOGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getWatchDog_ClockSource(), source, new String[]{"xml.name", "CLOCK-SOURCE-REF", "xml.namePlural", "CLOCK-SOURCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getWatchDog_Mode(), source, new String[]{"xml.name", "MODE", "xml.namePlural", "MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getWatchDog_ThresholdValues(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "THRESHOLD-VALUE", "xml.namePlural", "THRESHOLD-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.watchDogModeEnumEEnum, source, new String[]{"xml.name", "WATCH-DOG-MODE-ENUM", "xml.namePlural", "WATCH-DOG-MODE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.watchDogModeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "NORMAL", "xml.namePlural", "NORMALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.watchDogModeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "WINDOWED", "xml.namePlural", "WINDOWEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.watchDogModeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "DEBUG", "xml.namePlural", "DEBUGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.adcEClass, source, new String[]{"xml.name", "ADC", "xml.namePlural", "ADCS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getADC_BehaviourAtLimit(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "BEHAVIOUR-AT-LIMIT", "xml.namePlural", "BEHAVIOUR-AT-LIMITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.analogueIOEClass, source, new String[]{"xml.name", "ANALOGUE-IO", "xml.namePlural", "ANALOGUE-IOS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Accuracy(), source, new String[]{"xml.name", "ACCURACY", "xml.namePlural", "ACCURACYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_ConversionTime(), source, new String[]{"xml.name", "CONVERSION-TIME", "xml.namePlural", "CONVERSION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_ExternalReferenceVoltage(), source, new String[]{"xml.name", "EXTERNAL-REFERENCE-VOLTAGE", "xml.namePlural", "EXTERNAL-REFERENCE-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Mode(), source, new String[]{"xml.name", "MODE", "xml.namePlural", "MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedM(), source, new String[]{"xml.name", "MULTIPLEXED-M", "xml.namePlural", "MULTIPLEXED-MS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedN(), source, new String[]{"xml.name", "MULTIPLEXED-N", "xml.namePlural", "MULTIPLEXED-NS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Resolution(), source, new String[]{"xml.name", "RESOLUTION", "xml.namePlural", "RESOLUTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Width(), source, new String[]{"xml.name", "WIDTH", "xml.namePlural", "WIDTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.analogueIOModeEnumEEnum, source, new String[]{"xml.name", "ANALOGUE-IO-MODE-ENUM", "xml.namePlural", "ANALOGUE-IO-MODE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.analogueIOModeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "CONTINUOUS", "xml.namePlural", "CONTINUOUSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.analogueIOModeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "SINGLE", "xml.namePlural", "SINGLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.analogueIOModeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "SEQUENTIAL", "xml.namePlural", "SEQUENTIALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.adcBehaviourAtLimitEnumEEnum, source, new String[]{"xml.name", "ADC-BEHAVIOUR-AT-LIMIT-ENUM", "xml.namePlural", "ADC-BEHAVIOUR-AT-LIMIT-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.adcBehaviourAtLimitEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "CLIPPING", "xml.namePlural", "CLIPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.adcBehaviourAtLimitEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "DEFAULT", "xml.namePlural", "DEFAULTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.adcBehaviourAtLimitEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "UNDEFINED", "xml.namePlural", "UNDEFINEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.adcBehaviourAtLimitEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "OTHER", "xml.namePlural", "OTHERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.dacEClass, source, new String[]{"xml.name", "DAC", "xml.namePlural", "DACS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.digitalIOEClass, source, new String[]{"xml.name", "DIGITAL-IO", "xml.namePlural", "DIGITAL-IOS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDigitalIO_EdgeDetection(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "EDGE-DETECTION", "xml.namePlural", "EDGE-DETECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.digitalIOEdgeDetectionEnumEEnum, source, new String[]{"xml.name", "DIGITAL-IO-EDGE-DETECTION-ENUM", "xml.namePlural", "DIGITAL-IO-EDGE-DETECTION-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.digitalIOEdgeDetectionEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "RISING", "xml.namePlural", "RISINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.digitalIOEdgeDetectionEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "FALLING", "xml.namePlural", "FALLINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.digitalIOEdgeDetectionEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "RISING-FALLING", "xml.namePlural", "RISING-FALLINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pwdEClass, source, new String[]{"xml.name", "PWD", "xml.namePlural", "PWDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPWD_Mode(), source, new String[]{"xml.name", "MODE", "xml.namePlural", "MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPWD_PhaseDetection(), source, new String[]{"xml.name", "PHASE-DETECTION", "xml.namePlural", "PHASE-DETECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pulseWidthPeripheralEClass, source, new String[]{"xml.name", "PULSE-WIDTH-PERIPHERAL", "xml.namePlural", "PULSE-WIDTH-PERIPHERALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPulseWidthPeripheral_Resolution(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "RESOLUTION", "xml.namePlural", "RESOLUTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pwdModeEnumEEnum, source, new String[]{"xml.name", "PWD-MODE-ENUM", "xml.namePlural", "PWD-MODE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pwdModeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "TWO-PHASE-INPUT", "xml.namePlural", "TWO-PHASE-INPUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pwdModeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "THREE-PHASE-INPUT", "xml.namePlural", "THREE-PHASE-INPUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pwmEClass, source, new String[]{"xml.name", "PWM", "xml.namePlural", "PWMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortEClass, source, new String[]{"xml.name", "ECU-COMMUNICATION-PORT", "xml.namePlural", "ECU-COMMUNICATION-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.bufferEClass, source, new String[]{"name", "BUFFER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBuffer_Number(), source, new String[]{"name", "NUMBER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBuffer_Size(), source, new String[]{"name", "SIZE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBuffer_Type(), source, new String[]{"name", "TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ccuEClass, source, new String[]{"name", "CCU", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCCU_Mode(), source, new String[]{"name", "MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.generalPurposeTimerEClass, source, new String[]{"name", "GENERAL-PURPOSE-TIMER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_ClockSource(), source, new String[]{"name", "CLOCK-SOURCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_PhaseDetection(), source, new String[]{"name", "PHASE-DETECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_Resolution(), source, new String[]{"name", "RESOLUTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_ThresholdValues(), source, new String[]{"name", "THRESHOLD-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.peripheralEClass, source, new String[]{"name", "PERIPHERAL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPeripheral_CanBeDisabled(), source, new String[]{"name", "CAN-BE-DISABLED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationFilterEClass, source, new String[]{"name", "COMMUNICATION-FILTER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterCount(), source, new String[]{"name", "FILTER-COUNT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterWidth(), source, new String[]{"name", "FILTER-WIDTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_WildCards(), source, new String[]{"name", "WILD-CARDS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationHWPortEClass, source, new String[]{"name", "COMMUNICATION-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationHWPort_PhysicalLayer(), source, new String[]{"name", "PHYSICAL-LAYER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationHWPort_Speed(), source, new String[]{"name", "SPEED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.peripheralHWPortEClass, source, new String[]{"name", "PERIPHERAL-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_Buffers(), source, new String[]{"name", "BUFFERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_Inversion(), source, new String[]{"name", "INVERSION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_PowerOnCapability(), source, new String[]{"name", "POWER-ON-CAPABILITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_WakeUpCapability(), source, new String[]{"name", "WAKE-UP-CAPABILITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationSpeedEClass, source, new String[]{"name", "COMMUNICATION-SPEED", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeed_Tolerance(), source, new String[]{"name", "TOLERANCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumEClass, source, new String[]{"name", "COMMUNICATION-PHYSICAL-MEDIUM", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumDataLines(), source, new String[]{"name", "PHYSICAL-MEDIUM-DATA-LINES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumStandard(), source, new String[]{"name", "PHYSICAL-MEDIUM-STANDARD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumType(), source, new String[]{"name", "PHYSICAL-MEDIUM-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralEClass, source, new String[]{"name", "COMMUNICATION-PERIPHERAL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_AcceptanceFilter(), source, new String[]{"name", "ACCEPTANCE-FILTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Architecture(), source, new String[]{"name", "ARCHITECTURE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Clock(), source, new String[]{"name", "CLOCK-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_ErrorDetection(), source, new String[]{"name", "ERROR-DETECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_HwPorts(), source, new String[]{"name", "HW-PORTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Monitor(), source, new String[]{"name", "MONITOR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Protocols(), source, new String[]{"name", "PROTOCOLS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_RejectionFilter(), source, new String[]{"name", "REJECTION-FILTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_TimestampAvailable(), source, new String[]{"name", "TIMESTAMP-AVAILABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationProtocolEClass, source, new String[]{"name", "COMMUNICATION-PROTOCOL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationProtocol_Versions(), source, new String[]{"name", "VERSION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationSpeedFixedEClass, source, new String[]{"name", "COMMUNICATION-SPEED-FIXED", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedFixed_FixSpeed(), source, new String[]{"name", "FIX-SPEED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationSpeedListEClass, source, new String[]{"name", "COMMUNICATION-SPEED-LIST", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedList_Speeds(), source, new String[]{"name", "SPEED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationSpeedRangeEClass, source, new String[]{"name", "COMMUNICATION-SPEED-RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MaxSpeed(), source, new String[]{"name", "MAX-SPEED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MinSpeed(), source, new String[]{"name", "MIN-SPEED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.timerEClass, source, new String[]{"name", "TIMER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTimer_CanBeReInit(), source, new String[]{"name", "CAN-BE-RE-INIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTimer_CountDirection(), source, new String[]{"name", "COUNT-DIRECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTimer_Mode(), source, new String[]{"name", "MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.watchDogEClass, source, new String[]{"name", "WATCH-DOG", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getWatchDog_ClockSource(), source, new String[]{"name", "CLOCK-SOURCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getWatchDog_Mode(), source, new String[]{"name", "MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getWatchDog_ThresholdValues(), source, new String[]{"name", "THRESHOLD-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.adcEClass, source, new String[]{"name", "ADC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getADC_BehaviourAtLimit(), source, new String[]{"name", "BEHAVIOUR-AT-LIMIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.analogueIOEClass, source, new String[]{"name", "ANALOGUE-IO", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Accuracy(), source, new String[]{"name", "ACCURACY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_ConversionTime(), source, new String[]{"name", "CONVERSION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_ExternalReferenceVoltage(), source, new String[]{"name", "EXTERNAL-REFERENCE-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Mode(), source, new String[]{"name", "MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedM(), source, new String[]{"name", "MULTIPLEXED-M", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedN(), source, new String[]{"name", "MULTIPLEXED-N", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Resolution(), source, new String[]{"name", "RESOLUTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Width(), source, new String[]{"name", "WIDTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.dacEClass, source, new String[]{"name", "DAC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.digitalIOEClass, source, new String[]{"name", "DIGITAL-IO", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDigitalIO_EdgeDetection(), source, new String[]{"name", "EDGE-DETECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.pwdEClass, source, new String[]{"name", "PWD", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPWD_Mode(), source, new String[]{"name", "MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPWD_PhaseDetection(), source, new String[]{"name", "PHASE-DETECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.pulseWidthPeripheralEClass, source, new String[]{"name", "PULSE-WIDTH-PERIPHERAL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPulseWidthPeripheral_Resolution(), source, new String[]{"name", "RESOLUTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.pwmEClass, source, new String[]{"name", "PWM", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortEClass, source, new String[]{"name", "ECU-COMMUNICATION-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.bufferEClass, source, new String[]{"documentation", "Description of a  buffer. It is used to describe input and output buffers.\r\nBuffers can also be configurable direction."});
        this.addAnnotation((ENamedElement)this.getBuffer_Number(), source, new String[]{"documentation", "The amount of buffers with the attributes size and type."});
        this.addAnnotation((ENamedElement)this.getBuffer_Size(), source, new String[]{"documentation", "The size of the Buffer.\r\nUnit: Byte"});
        this.addAnnotation((ENamedElement)this.getBuffer_Type(), source, new String[]{"documentation", "Either input, output or configurable buffer."});
        this.addAnnotation((ENamedElement)this.ccuEClass, source, new String[]{"documentation", "The CCU is a special kind of a timer, which has the capability of counting and comparing external signals. The timer is equipped with some extra registers and comparators in order to measure time or frequency."});
        this.addAnnotation((ENamedElement)this.getCCU_Mode(), source, new String[]{"documentation", "A Capture and Compare peripheral can be configured to operate either in capture or compare mode."});
        this.addAnnotation((ENamedElement)this.generalPurposeTimerEClass, source, new String[]{"documentation", "Common attributes shared by all timer peripherals"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_ClockSource(), source, new String[]{"documentation", "The clock input to a timer can have different sources like the internal system clock or an external clock. If the clock is pre-scaled this information should be entered in the table."});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_PhaseDetection(), source, new String[]{"documentation", "Some timers have the possibility to detect signals from a quadrature rotating switch. There are two outputs signal from such a switch; the signals are 90 degrees phase shifted from each other. The rotation of the switch can then automatically be detected by a special function in a timer."});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_Resolution(), source, new String[]{"documentation", "For a timer the resolution defines the data width of the counter.\r\nUnit: Bits"});
        this.addAnnotation((ENamedElement)this.getGeneralPurposeTimer_ThresholdValues(), source, new String[]{"documentation", "The threshold is the definition of a counter value. When the counter has reached this value some action is performed, e.g. an interrupt can be generated."});
        this.addAnnotation((ENamedElement)this.peripheralEClass, source, new String[]{"documentation", "General Element for all peripherals."});
        this.addAnnotation((ENamedElement)this.getPeripheral_CanBeDisabled(), source, new String[]{"documentation", "Defines if the peripheral can be logically enabled or disabled."});
        this.addAnnotation((ENamedElement)this.communicationFilterEClass, source, new String[]{"documentation", "Describes the amount and the size of the communication filters. These can be used as acceptance or rejection filters."});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterCount(), source, new String[]{"documentation", "How many acceptance filters are availabe."});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_FilterWidth(), source, new String[]{"documentation", "Which bit-size do the filters have."});
        this.addAnnotation((ENamedElement)this.getCommunicationFilter_WildCards(), source, new String[]{"documentation", "Is it possible to provide wildcard identifires allowing to specify ranges for filtering."});
        this.addAnnotation((ENamedElement)this.getCommunicationHWPort_PhysicalLayer(), source, new String[]{"documentation", "Describes the physical medium the bus is working on. In most cases it is not relevant for the SW to know about it."});
        this.addAnnotation((ENamedElement)this.getCommunicationHWPort_Speed(), source, new String[]{"documentation", "The Communication speed can be provided either as a fixed value if it can not be changed by software. Or there can be a range in which software can configure the communication speed. Also a list of possible speed values can be provided from which the software can choose.\r\nIf the communication speed is not fixed with one value the System Constraint Description has the freedom to choose from the given range or list of communication speed. In the end only HW Ports with the same communication speed can be connected to a bus system."});
        this.addAnnotation((ENamedElement)this.peripheralHWPortEClass, source, new String[]{"documentation", "This port is directed from the peripheral to the ecu electronics and communication."});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_Buffers(), source, new String[]{"documentation", "Defines the number of elements that can be stored in an input or output buffer. A capture timer can for example have several registers to store the timer value when an external event has occurred."});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_Inversion(), source, new String[]{"documentation", "An input or output can sometimes be programmed to invert the level of a signal."});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_PowerOnCapability(), source, new String[]{"documentation", "The peripheral device has the feature to issue a Power On event to the ECU.\r\nExample: Some CAN bus transceivers have a dedicated low power voltage regulator and a feature, which allows to turn on the main voltage regulator of the ECU by detecting a bus activity.\r\nExample: A wired-or connection of a termination KL30 and KL15 can fulfil this requirement."});
        this.addAnnotation((ENamedElement)this.getPeripheralHWPort_WakeUpCapability(), source, new String[]{"documentation", "The peripheral device has the feature to issue a wake-up event to the processing unit.\r\nExample: HW Port with Key-Wake-Up on a PU is still active while the PU is in stop mode and only partially supplied with power. The Key-Wake-Up reacts on any changes at the input of the HW Port with the activation of the power supply, the activation of the clock system and later the resuming of the software, which has to process the input of the HW Port."});
        this.addAnnotation((ENamedElement)this.communicationSpeedEClass, source, new String[]{"documentation", "Abstract element to describe communication speed. This can be either a fixed value, a range or a list of allowed communication speed."});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeed_Tolerance(), source, new String[]{"documentation", "The element defines the tolerance allowed for the interface. (E.g. K-Line or LIN +/- 2 % at 9.6 Kbd)"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumEClass, source, new String[]{"documentation", "Describes the physical medium the bus is working on. In most cases it is not relevant for the SW to know about it, only for compatibility checking."});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumDataLines(), source, new String[]{"documentation", "Specifies how many data lines (ground not included) are used for the physical layer. Some bus systems can be implemented with e.g. 1, 2 or 4 data lines."});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumStandard(), source, new String[]{"documentation", "The element protocol name defines the exact standardised protocol name.\r\nExamples are:\r\n- ISO 11519 for low-speed CAN\r\n- IEEE 802.11g for W-LAN (54 Mbit/s at 2,5 GHz)\r\n- IEEE-1394a for Firewire-400\r\n"});
        this.addAnnotation((ENamedElement)this.getCommunicationPhysicalMedium_PhysicalMediumType(), source, new String[]{"documentation", "Describes the actual medium used for transmission. Can be either electrical, optical or wireless."});
        this.addAnnotation((ENamedElement)this.communicationPeripheralEClass, source, new String[]{"documentation", "Peripheral representing communication devices."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_AcceptanceFilter(), source, new String[]{"documentation", "If the Communication Peripheral supports filtering of frames here the amount and quality of filters is described."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Architecture(), source, new String[]{"documentation", "Distinguish between different implementations.\r\n- Master: Defines the position within the ECU, as the main controlling unit. The master defines the schedules and controls the telegram traffic.\r\n- Slave: Reacts only on request from the master\r\n- Multi Master: The PU has to share the external Interface with other PU. No specific master is defined by hardware."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Clock(), source, new String[]{"documentation", "Reference to the clock description. This is used to calculate possible transmission rates."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_ErrorDetection(), source, new String[]{"documentation", "Under certain conditions that are likely to appear in automotive applications, the transmission of information between communication endpoints might be unsafe because of particular sources of interference . It is possible to detect the presence of interference by means of error-detection codes (EDC) and at least partly overcome the problem by means of error-correction codes (ECC). \r\nError detection is a method that allows some communication errors to be detected. For this purpose the introduction of redundancy is required such that the information transmitted consists of more bits than the source of information. The extra bits are required for EDC and ECC."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_HwPorts(), source, new String[]{"documentation", "Describes the actual ommunication HW Port of this peripheral."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Monitor(), source, new String[]{"documentation", "The Element Monitor specifies if the device supports listen only. In this mode the device is passive on the bus and no acknowledgement or other responds are transmitted."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_Protocols(), source, new String[]{"documentation", "Describes which protocols are supported by this hardware."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_RejectionFilter(), source, new String[]{"documentation", "If the Communication Peripheral supports filtering of frames here the amount and quality of filters is described."});
        this.addAnnotation((ENamedElement)this.getCommunicationPeripheral_TimestampAvailable(), source, new String[]{"documentation", "Is a timestamp for received frames available."});
        this.addAnnotation((ENamedElement)this.communicationProtocolEClass, source, new String[]{"documentation", "The name and version of the communication protocol."});
        this.addAnnotation((ENamedElement)this.getCommunicationProtocol_Versions(), source, new String[]{"documentation", "This is the version number of the implementation of the protocol layer, e.g. \r\n- 2.0a, 2.0b  for CAN.\r\n- 1.3, 2.0 for LIN.\r\n- 2.0   for USB."});
        this.addAnnotation((ENamedElement)this.communicationSpeedFixedEClass, source, new String[]{"documentation", "Fixed value for the communication speed."});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedFixed_FixSpeed(), source, new String[]{"documentation", "Unit: bits per second"});
        this.addAnnotation((ENamedElement)this.communicationSpeedListEClass, source, new String[]{"documentation", "List of possible communication speed."});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedList_Speeds(), source, new String[]{"documentation", "Unit: bits per second"});
        this.addAnnotation((ENamedElement)this.communicationSpeedRangeEClass, source, new String[]{"documentation", "Range of communication speed."});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MaxSpeed(), source, new String[]{"documentation", "Unit: bits per second"});
        this.addAnnotation((ENamedElement)this.getCommunicationSpeedRange_MinSpeed(), source, new String[]{"documentation", "Unit: bits per second"});
        this.addAnnotation((ENamedElement)this.timerEClass, source, new String[]{"documentation", "The simplest form is an array of directly coupled D-flip flops, which build up a shift register, with separate output from each stage, thus forming a time-register. A clock signal at the input increments the value of the register. Some cases uses some logic in combination of the shift register in order to form a special adopted representation of the information or to fulfil special requirements."});
        this.addAnnotation((ENamedElement)this.getTimer_CanBeReInit(), source, new String[]{"documentation", "Defines if the peripheral can automatically be reset during operation."});
        this.addAnnotation((ENamedElement)this.getTimer_CountDirection(), source, new String[]{"documentation", "The direction defines if the counter of a timer counts up, down or if it can be selected."});
        this.addAnnotation((ENamedElement)this.getTimer_Mode(), source, new String[]{"documentation", "single: The timer is counted from a defined start value to a defined end value and then stopped. \r\ncontinuous: The timer is counted from a defined start value to a defined end value and then restarted with the start value.\r\nfree: The timer is counted always to the available maximum value of the timer structure, then a wrap around occurs and the timer starts again from the HW defined startpoint; e.g. a 16 bit Timer counts from 0(hex)....0FFFF(hex), then after the overflow again from 0(hex)....0FFFF(hex)."});
        this.addAnnotation((ENamedElement)this.watchDogEClass, source, new String[]{"documentation", "A form of interval timer, which is used to detect a possible malfunction of the processing unit. The timer is started as a countdown and has to be triggered within a specific time. Either the trigger only has to occur before the count-down runs out, or the trigger has to occur within a specific window before the timeout, therefore a trigger too early will also set off the watchdog. If the trigger is not correctly performed the watchdog will set off and will initiate an interrupt or perform a reset of the whole processing unit or ECU.\r\nThe watchdog can be implemented in software or hardware and if the implementation is in hardware it can be integrated into the processing unit or connected externally.\r\nDepending on the complexity of the watchdog the interfacing is either a serial communication or some discrete I/O lines. Also the trigger itself can be just some digital peak or can be some calculated request-response mechanism. The actual handling of the watchdog has to be covered by some specific driver software.\r\nThe watchdog will use at least an interrupt of the processing unit and also some peripheral connections for the control and set-up.\r\nTo enable different operating modes of the processing unit and the ECU it is important to specify if the watchdog can be disabled (e.g. during flash programming)."});
        this.addAnnotation((ENamedElement)this.getWatchDog_ClockSource(), source, new String[]{"documentation", "The clock input to a timer can have different sources like the internal system clock or an external clock. If the clock is pre-scaled this information should be entered in the table."});
        this.addAnnotation((ENamedElement)this.getWatchDog_Mode(), source, new String[]{"documentation", "A Watchdog can be running in different modes. In normal mode must the watchdog be kicked within a certain maximum time. In the windowed mode there is also a lower limit of the time when the watchdog has to be kicked. In debug mode is the watchdog disabled. Sometimes it's also required that the watchdog can be disabled and enabled during software download. To ensure that this mode is not entered in normal operation there is often some kind of security procedure to enter the mode."});
        this.addAnnotation((ENamedElement)this.getWatchDog_ThresholdValues(), source, new String[]{"documentation", "The threshold is the definition of a counter value. When the counter has reached this value some action is performed, e.g. an interrupt can be generated."});
        this.addAnnotation((ENamedElement)this.adcEClass, source, new String[]{"documentation", "An ADC converts an analogue signal at an input pin to a digital value. The analogue signal are quantified to a maximum number of different levels defined by the resolution of the ADC. The Accuracy of the ADC is important for the overall functionality."});
        this.addAnnotation((ENamedElement)this.getADC_BehaviourAtLimit(), source, new String[]{"documentation", "Defines the action that is going to be performed when a limit is reached.\r\n- Clipping: Logical value is limited to minimal or maximal range of the value range. E.g. The max. resolution of an ADC is at 5V represented 0xFF; in case off clipping a voltage of 6V is also represented as 0xFF;\r\n- Undefined: Exceeding the resolution results in an undefined representation of the logical value. \r\n- Default: Exceeding the resolution results in a predefined default value. The default value might be a value, which report the status to the application e.g. as an error condition. \r\n- Other: A predefined function occur in order to prevent a undefined logical value. A typical application is a \"Soft-Clipping\" in a logarithmic form at the limit of the resolutions in audio applications.  The according methods have to be specified in the signal description."});
        this.addAnnotation((ENamedElement)this.analogueIOEClass, source, new String[]{"documentation", "These are the common attributes for both, the ADC and the DAC."});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Accuracy(), source, new String[]{"documentation", "There is a number of different conversion error in an ADC or DAC like non-linearity and absolute error. The accuracy is defined as the total error and it can be expressed as a deviation from its nominal value by e.g. 0.5, 1.0, 1.5 or 2.0 LSB."});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_ConversionTime(), source, new String[]{"documentation", "ADC: The conversion time is the definition how long it takes for an ADC to convert an analogue signal to a digital value.\r\nDAC: The conversion time is the definition how long it takes for a DAC to convert a digital value to an analogue signal."});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_ExternalReferenceVoltage(), source, new String[]{"documentation", "The analogue comparator of an ADC must be connected to a voltage reference. An external voltage is usually connected to one low and one high voltage reference input pin.\r\nFor an internal DAC it is normally only one voltage reference input. The low voltage reference input is internally connected to the analogue ground."});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Mode(), source, new String[]{"documentation", "An ADC or DAC can operate in continuous, single  or sequential mode. In the continuous mode the conversion is automatically repeated after a completion. In single shot only one conversion is performed. For the sequential mode can a predefined number of different analogue channels be converted."});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedM(), source, new String[]{"documentation", "Defines the design of a simple multiplexer used by an ADC. Example A 2:8-multiplexer has 2 input channels and 8 registers. M is the second value."});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_MultiplexedN(), source, new String[]{"documentation", "Defines the design of a simple multiplexer used by an ADC. Example A 2:8-multiplexer has 2 input channels and 8 registers. N is the first value."});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Resolution(), source, new String[]{"documentation", "For an Analogue to Digital Converter the resolution defines the number of different voltage levels, which are converted to a digital value. For example, an ADC with 10-bits resolution have the ability to convert an analogue value into 1024 different digital  values.\r\nUnit: Bits"});
        this.addAnnotation((ENamedElement)this.getAnalogueIO_Width(), source, new String[]{"documentation", "The number of Bits used to store the digital value."});
        this.addAnnotation((ENamedElement)this.dacEClass, source, new String[]{"documentation", "The processing unit writes a digital value to a register of the DAC and the value is converted to an analogue value at a given pin."});
        this.addAnnotation((ENamedElement)this.digitalIOEClass, source, new String[]{"documentation", "Digital Input/Output peripherals provide the capability to send/receive data in a digital manner. Each digital input has an electrical range. When the voltage is less than a specified level, the input is represents logical low '0'. On the opposite when the voltage is higher than a specified value the input represents logical high '1'. A digital I/O can usually be programmed to be either an input or output. It can also be programmed to logically invert the input or output. The maximum frequency of a digital input or output is related to how fast the PU can read or write to the digital I/O register. It's very common for a digital I/O to have different functionality. One example is when a timer has an external clock signal associated with a digital I/O. In this case the maximum frequency is defined by the performance of the timer counter and can be found in the electrical characteristic of the peripheral datasheet."});
        this.addAnnotation((ENamedElement)this.getDigitalIO_EdgeDetection(), source, new String[]{"documentation", "A general digital input can be enabled to trigger an interrupt on a falling, rising or both edges of an input signal. A clock, compare or count input on a timer can be programmed to increase, decrease or store the timer value if a change on the input pin has occurred. The condition for this change can be programmed to trigger an event  in the same manner as for a digital input."});
        this.addAnnotation((ENamedElement)this.pwdEClass, source, new String[]{"documentation", "Pulse Width Demodulation is the inverse method of PWM. Here the processing unit is trying to gather information about a signal. A PWD can detect rising and falling edges and call the software in order to calculate the pulse width. When a PWD have more than one input signal the frequency and phase between the signals can be obtained."});
        this.addAnnotation((ENamedElement)this.getPWD_Mode(), source, new String[]{"documentation", "A Pulse Width Demodulation peripheral can be configured to decode a two phase or a three phase input signals."});
        this.addAnnotation((ENamedElement)this.getPWD_PhaseDetection(), source, new String[]{"documentation", "Some timers have the possibility to detect signals from a quadrature rotating switch. There are two outputs signal from such a switch; the signals are 90 degrees phase shifted from each other. The rotation of the switch can then automatically be detected by a special function in a timer."});
        this.addAnnotation((ENamedElement)this.pulseWidthPeripheralEClass, source, new String[]{"documentation", "Common elements for PWM, PWD and CCU."});
        this.addAnnotation((ENamedElement)this.getPulseWidthPeripheral_Resolution(), source, new String[]{"documentation", "Defines the data width of the counter.\r\nUnit: Bits"});
        this.addAnnotation((ENamedElement)this.pwmEClass, source, new String[]{"documentation", "Pulse Width Modulation refers to a method of carrying information on a train of pulses, the information being encoded in the width of the pulses. The frequency is normally not changed. It's only relationship between the high and low level of the signal which are changed. A PWM interface is usually a part of a processing unit. It provides the capability to communicate with another system with an easy protocol."});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortEClass, source, new String[]{"documentation", "A specialization of a Communication HW Port that is availabe for the inter ECU communication."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.bufferEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.ccuEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.generalPurposeTimerEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.peripheralEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.communicationFilterEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.communicationHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.peripheralHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.communicationSpeedEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.communicationProtocolEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.communicationSpeedFixedEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.communicationSpeedListEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.communicationSpeedRangeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.timerEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.watchDogEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.adcEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.analogueIOEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.dacEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.digitalIOEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.pwdEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.pulseWidthPeripheralEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.pwmEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.bufferEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationFilterEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationSpeedEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationPhysicalMediumEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_GeneralPurposeTimerAnnotations() {
        String source = "TaggedValuesOfGeneralization_GeneralPurposeTimer";
        this.addAnnotation((ENamedElement)this.ccuEClass, source, new String[]{"Name", "", "GUID", "{98A65B1F-033A-43e9-936F-BA979212F50E}", "Id", "729890173", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.timerEClass, source, new String[]{"Name", "", "GUID", "{13DE5018-2EAF-434e-930E-5941C0684F5C}", "Id", "397720812", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_PeripheralAnnotations() {
        String source = "TaggedValuesOfGeneralization_Peripheral";
        this.addAnnotation((ENamedElement)this.generalPurposeTimerEClass, source, new String[]{"Name", "", "GUID", "{8CFBCBA4-7FCF-4989-B8FF-A7764E9B9134}", "Id", "2077587063", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationPeripheralEClass, source, new String[]{"Name", "", "GUID", "{EB91E1F1-2AC0-4913-96BA-085CE1C2D135}", "Id", "-223235525", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.watchDogEClass, source, new String[]{"Name", "", "GUID", "{2A9EFADA-3E41-4aea-B1E0-40915FABBDEE}", "Id", "-727519548", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.analogueIOEClass, source, new String[]{"Name", "", "GUID", "{EC1D1B56-1E26-4dbb-96B2-E40E79C59CF6}", "Id", "1849757630", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.digitalIOEClass, source, new String[]{"Name", "", "GUID", "{09FCD710-5E51-442d-AD44-AA182B7A998A}", "Id", "-179702454", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.pulseWidthPeripheralEClass, source, new String[]{"Name", "", "GUID", "{1374BA94-ED99-4884-9127-805A1F294220}", "Id", "-480913191", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_HWElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWElement";
        this.addAnnotation((ENamedElement)this.peripheralEClass, source, new String[]{"Name", "", "GUID", "{4354343A-02EB-4b98-A17E-D567F9556A59}", "Id", "327530738", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_PeripheralHWPortAnnotations() {
        String source = "TaggedValuesOfGeneralization_PeripheralHWPort";
        this.addAnnotation((ENamedElement)this.communicationHWPortEClass, source, new String[]{"Name", "", "GUID", "{464F8BD0-ED13-4a14-B6FF-8760FC61240D}", "Id", "231744468", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_HWPortAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWPort";
        this.addAnnotation((ENamedElement)this.peripheralHWPortEClass, source, new String[]{"Name", "", "GUID", "{010C4D5B-E0FA-4fd1-B8B1-2B65A9BF2560}", "Id", "151739470", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.communicationProtocolEClass, source, new String[]{"Name", "", "GUID", "{6A85F107-3EAF-475b-AFAC-2D4D23286BEE}", "Id", "-493512462", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CommunicationSpeedAnnotations() {
        String source = "TaggedValuesOfGeneralization_CommunicationSpeed";
        this.addAnnotation((ENamedElement)this.communicationSpeedFixedEClass, source, new String[]{"Name", "", "GUID", "{77BD18A5-C3F4-432f-952B-AC965260368D}", "Id", "-334781554", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationSpeedListEClass, source, new String[]{"Name", "", "GUID", "{F81A3987-E445-4ab8-8756-87F606F6B7A3}", "Id", "996182079", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationSpeedRangeEClass, source, new String[]{"Name", "", "GUID", "{2F65E402-282E-4ad6-9774-7BD5991AC8B1}", "Id", "1782033516", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_AnalogueIOAnnotations() {
        String source = "TaggedValuesOfGeneralization_AnalogueIO";
        this.addAnnotation((ENamedElement)this.adcEClass, source, new String[]{"Name", "", "GUID", "{56F18D3C-FB4B-4c08-AE05-811071080584}", "Id", "-169430256", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.dacEClass, source, new String[]{"Name", "", "GUID", "{951BE307-6F43-4817-A8CB-A234580BBAA8}", "Id", "-95182933", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_PulseWidthPeripheralAnnotations() {
        String source = "TaggedValuesOfGeneralization_PulseWidthPeripheral";
        this.addAnnotation((ENamedElement)this.pwdEClass, source, new String[]{"Name", "", "GUID", "{16D1E3F8-0EE0-4e40-8933-641ECFE0A1CE}", "Id", "-1324885192", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.pwmEClass, source, new String[]{"Name", "", "GUID", "{87D0B4C8-4343-454e-8A59-101C917E0789}", "Id", "-1430218630", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CommunicationHWPortAnnotations() {
        String source = "TaggedValuesOfGeneralization_CommunicationHWPort";
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortEClass, source, new String[]{"Name", "", "GUID", "{7161754F-9A69-48c8-8860-53B7FD51D673}", "Id", "1536136460", "xml.sequenceOffset", "0"});
    }
}

