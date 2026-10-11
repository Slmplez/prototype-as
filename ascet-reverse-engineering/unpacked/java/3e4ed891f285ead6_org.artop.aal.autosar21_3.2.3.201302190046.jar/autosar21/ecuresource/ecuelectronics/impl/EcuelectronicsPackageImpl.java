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
package autosar21.ecuresource.ecuelectronics.impl;

import autosar21.bswmodule.BswmodulePackage;
import autosar21.bswmodule.impl.BswmodulePackageImpl;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.impl.EcucdescriptionPackageImpl;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.impl.EcucparameterdefPackageImpl;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.impl.BasicelementsPackageImpl;
import autosar21.ecuresource.ecuelectronics.BusTermination;
import autosar21.ecuresource.ecuelectronics.Clock;
import autosar21.ecuresource.ecuelectronics.ClockTypeEnum;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiver;
import autosar21.ecuresource.ecuelectronics.CommunicationTransceiverArchitectureEnum;
import autosar21.ecuresource.ecuelectronics.DiscreteECUElectronics;
import autosar21.ecuresource.ecuelectronics.ECUElectronics;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsFactory;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.ecuelectronics.Oscillator;
import autosar21.ecuresource.ecuelectronics.OscillatorOscillatorModeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElement;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementDefaultResetBehaviuorEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementPowerDriverTypeEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerDriverHWPort;
import autosar21.ecuresource.ecuelectronics.PowerDriverNotification;
import autosar21.ecuresource.ecuelectronics.PowerDriverProtection;
import autosar21.ecuresource.ecuelectronics.PowerSupplyCurrentNotification;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElement;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWElementResetOnFaultBehaviourEnum;
import autosar21.ecuresource.ecuelectronics.PowerSupplyHWPort;
import autosar21.ecuresource.ecuelectronics.PowerSupplyVoltageNotification;
import autosar21.ecuresource.ecuelectronics.util.EcuelectronicsValidator;
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
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class EcuelectronicsPackageImpl
extends EPackageImpl
implements EcuelectronicsPackage {
    private EClass busTerminationEClass = null;
    private EClass clockEClass = null;
    private EClass ecuElectronicsEClass = null;
    private EClass communicationTransceiverEClass = null;
    private EClass discreteECUElectronicsEClass = null;
    private EClass powerDriverHWElementEClass = null;
    private EClass powerDriverProtectionEClass = null;
    private EClass powerDriverNotificationEClass = null;
    private EClass powerDriverHWPortEClass = null;
    private EClass powerSupplyCurrentNotificationEClass = null;
    private EClass powerSupplyHWElementEClass = null;
    private EClass powerSupplyVoltageNotificationEClass = null;
    private EClass powerSupplyHWPortEClass = null;
    private EClass oscillatorEClass = null;
    private EEnum clockTypeEnumEEnum = null;
    private EEnum communicationTransceiverArchitectureEnumEEnum = null;
    private EEnum powerDriverHWElementResetOnFaultBehaviourEnumEEnum = null;
    private EEnum powerDriverHWElementDefaultResetBehaviuorEnumEEnum = null;
    private EEnum powerDriverHWElementPowerDriverTypeEnumEEnum = null;
    private EEnum powerSupplyHWElementResetOnFaultBehaviourEnumEEnum = null;
    private EEnum oscillatorOscillatorModeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private EcuelectronicsPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecur/ecue", (EFactory)EcuelectronicsFactory.eINSTANCE);
    }

    public static EcuelectronicsPackage init() {
        if (isInited) {
            return (EcuelectronicsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/ecue");
        }
        EcuelectronicsPackageImpl theEcuelectronicsPackage = (EcuelectronicsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/ecue") instanceof EcuelectronicsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/ecue") : new EcuelectronicsPackageImpl());
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
        theEcuelectronicsPackage.createPackageContents();
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
        theEcuelectronicsPackage.initializePackageContents();
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
        EValidator.Registry.INSTANCE.put((Object)theEcuelectronicsPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return EcuelectronicsValidator.INSTANCE;
            }
        });
        theEcuelectronicsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecur/ecue", (Object)theEcuelectronicsPackage);
        return theEcuelectronicsPackage;
    }

    public EClass getBusTermination() {
        return this.busTerminationEClass;
    }

    public EReference getBusTermination_CommunicationTransceiver() {
        return (EReference)this.busTerminationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getBusTermination_ActiveSwitchable() {
        return (EAttribute)this.busTerminationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getBusTermination_Choke() {
        return (EAttribute)this.busTerminationEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getBusTermination_EmcFilter() {
        return (EAttribute)this.busTerminationEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getBusTermination_Split() {
        return (EAttribute)this.busTerminationEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getBusTermination_Value() {
        return (EAttribute)this.busTerminationEClass.getEStructuralFeatures().get(5);
    }

    public EClass getClock() {
        return this.clockEClass;
    }

    public EReference getClock_ProcessingUnit() {
        return (EReference)this.clockEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getClock_Adjustable() {
        return (EAttribute)this.clockEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getClock_ClockJitter() {
        return (EAttribute)this.clockEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getClock_ClockStartupTime() {
        return (EAttribute)this.clockEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getClock_ClockTolerance() {
        return (EAttribute)this.clockEClass.getEStructuralFeatures().get(4);
    }

    public EReference getClock_Frequency() {
        return (EReference)this.clockEClass.getEStructuralFeatures().get(5);
    }

    public EReference getClock_Oscillators() {
        return (EReference)this.clockEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getClock_Type() {
        return (EAttribute)this.clockEClass.getEStructuralFeatures().get(7);
    }

    public EClass getECUElectronics() {
        return this.ecuElectronicsEClass;
    }

    public EAttribute getECUElectronics_CanBeDisabled() {
        return (EAttribute)this.ecuElectronicsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCommunicationTransceiver() {
        return this.communicationTransceiverEClass;
    }

    public EReference getCommunicationTransceiver_AcceptanceFilter() {
        return (EReference)this.communicationTransceiverEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationTransceiver_Architecture() {
        return (EAttribute)this.communicationTransceiverEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCommunicationTransceiver_RejectionFilter() {
        return (EReference)this.communicationTransceiverEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCommunicationTransceiver_Termination() {
        return (EReference)this.communicationTransceiverEClass.getEStructuralFeatures().get(3);
    }

    public EClass getDiscreteECUElectronics() {
        return this.discreteECUElectronicsEClass;
    }

    public EClass getPowerDriverHWElement() {
        return this.powerDriverHWElementEClass;
    }

    public EAttribute getPowerDriverHWElement_CurrentLimitation() {
        return (EAttribute)this.powerDriverHWElementEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getPowerDriverHWElement_DefaultResetBehaviuor() {
        return (EAttribute)this.powerDriverHWElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPowerDriverHWElement_Notification() {
        return (EReference)this.powerDriverHWElementEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPowerDriverHWElement_OnStateResistance() {
        return (EAttribute)this.powerDriverHWElementEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getPowerDriverHWElement_PowerDriverType() {
        return (EAttribute)this.powerDriverHWElementEClass.getEStructuralFeatures().get(4);
    }

    public EReference getPowerDriverHWElement_Protection() {
        return (EReference)this.powerDriverHWElementEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getPowerDriverHWElement_ResetOnFaultBehaviour() {
        return (EAttribute)this.powerDriverHWElementEClass.getEStructuralFeatures().get(6);
    }

    public EClass getPowerDriverProtection() {
        return this.powerDriverProtectionEClass;
    }

    public EReference getPowerDriverProtection_PowerDriverHWElement() {
        return (EReference)this.powerDriverProtectionEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getPowerDriverProtection_LossOfGroundProtection() {
        return (EAttribute)this.powerDriverProtectionEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getPowerDriverProtection_MaxCurrentProtection() {
        return (EAttribute)this.powerDriverProtectionEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPowerDriverProtection_MaxVoltageProtection() {
        return (EAttribute)this.powerDriverProtectionEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getPowerDriverProtection_MinCurrentProtection() {
        return (EAttribute)this.powerDriverProtectionEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getPowerDriverProtection_MinVoltageProtection() {
        return (EAttribute)this.powerDriverProtectionEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getPowerDriverProtection_OverTemperatureProtection() {
        return (EAttribute)this.powerDriverProtectionEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getPowerDriverProtection_ReverseBatteryProtection() {
        return (EAttribute)this.powerDriverProtectionEClass.getEStructuralFeatures().get(7);
    }

    public EClass getPowerDriverNotification() {
        return this.powerDriverNotificationEClass;
    }

    public EReference getPowerDriverNotification_PowerDriverHWElement() {
        return (EReference)this.powerDriverNotificationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPowerDriverNotification_IssuedInterruptSource() {
        return (EReference)this.powerDriverNotificationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getPowerDriverNotification_LossOfGround() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPowerDriverNotification_MaxCurrent() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getPowerDriverNotification_MaxVoltage() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getPowerDriverNotification_MinCurrent() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getPowerDriverNotification_MinVoltage() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getPowerDriverNotification_OpenLoad() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getPowerDriverNotification_OverTemperature() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getPowerDriverNotification_ShortLoad() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getPowerDriverNotification_ShortToBatt() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(10);
    }

    public EAttribute getPowerDriverNotification_ShortToGround() {
        return (EAttribute)this.powerDriverNotificationEClass.getEStructuralFeatures().get(11);
    }

    public EClass getPowerDriverHWPort() {
        return this.powerDriverHWPortEClass;
    }

    public EAttribute getPowerDriverHWPort_PwmMaxFrequency() {
        return (EAttribute)this.powerDriverHWPortEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getPowerDriverHWPort_PwmMinOffTime() {
        return (EAttribute)this.powerDriverHWPortEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getPowerDriverHWPort_PwmMinOnTime() {
        return (EAttribute)this.powerDriverHWPortEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPowerSupplyCurrentNotification() {
        return this.powerSupplyCurrentNotificationEClass;
    }

    public EReference getPowerSupplyCurrentNotification_PowerSupplyHWElement() {
        return (EReference)this.powerSupplyCurrentNotificationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getPowerSupplyCurrentNotification_Hysteresis() {
        return (EAttribute)this.powerSupplyCurrentNotificationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPowerSupplyCurrentNotification_Interrupts() {
        return (EReference)this.powerSupplyCurrentNotificationEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPowerSupplyCurrentNotification_Level() {
        return (EAttribute)this.powerSupplyCurrentNotificationEClass.getEStructuralFeatures().get(3);
    }

    public EClass getPowerSupplyHWElement() {
        return this.powerSupplyHWElementEClass;
    }

    public EAttribute getPowerSupplyHWElement_BackupCapacity() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getPowerSupplyHWElement_DefaultVoltageOnReset() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getPowerSupplyHWElement_MaxVoltage() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPowerSupplyHWElement_MinVoltage() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getPowerSupplyHWElement_NotificationOverTemperature() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getPowerSupplyHWElement_NotificationReset() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(5);
    }

    public EReference getPowerSupplyHWElement_OverCurrentNotification() {
        return (EReference)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(6);
    }

    public EReference getPowerSupplyHWElement_OverVoltageNotification() {
        return (EReference)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getPowerSupplyHWElement_ResetDelay() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getPowerSupplyHWElement_ResetOnFaultBehaviour() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(9);
    }

    public EReference getPowerSupplyHWElement_UnderVoltageNotification() {
        return (EReference)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(10);
    }

    public EAttribute getPowerSupplyHWElement_WakeupCapability() {
        return (EAttribute)this.powerSupplyHWElementEClass.getEStructuralFeatures().get(11);
    }

    public EClass getPowerSupplyVoltageNotification() {
        return this.powerSupplyVoltageNotificationEClass;
    }

    public EAttribute getPowerSupplyVoltageNotification_Hystereses() {
        return (EAttribute)this.powerSupplyVoltageNotificationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPowerSupplyVoltageNotification_Interrupts() {
        return (EReference)this.powerSupplyVoltageNotificationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getPowerSupplyVoltageNotification_Level() {
        return (EAttribute)this.powerSupplyVoltageNotificationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPowerSupplyHWPort() {
        return this.powerSupplyHWPortEClass;
    }

    public EAttribute getPowerSupplyHWPort_CanBeSwitchedOff() {
        return (EAttribute)this.powerSupplyHWPortEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPowerSupplyHWPort_Supplied() {
        return (EReference)this.powerSupplyHWPortEClass.getEStructuralFeatures().get(1);
    }

    public EClass getOscillator() {
        return this.oscillatorEClass;
    }

    public EReference getOscillator_Oscillator() {
        return (EReference)this.oscillatorEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getOscillator_Adjustible() {
        return (EAttribute)this.oscillatorEClass.getEStructuralFeatures().get(1);
    }

    public EReference getOscillator_BackupOscillator() {
        return (EReference)this.oscillatorEClass.getEStructuralFeatures().get(2);
    }

    public EReference getOscillator_OscillatorFrequencyRange() {
        return (EReference)this.oscillatorEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getOscillator_OscillatorJitter() {
        return (EAttribute)this.oscillatorEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getOscillator_OscillatorMode() {
        return (EAttribute)this.oscillatorEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getOscillator_OscillatorStartupTime() {
        return (EAttribute)this.oscillatorEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getOscillator_OscillatorTolerance() {
        return (EAttribute)this.oscillatorEClass.getEStructuralFeatures().get(7);
    }

    public EEnum getClockTypeEnum() {
        return this.clockTypeEnumEEnum;
    }

    public EEnum getCommunicationTransceiverArchitectureEnum() {
        return this.communicationTransceiverArchitectureEnumEEnum;
    }

    public EEnum getPowerDriverHWElementResetOnFaultBehaviourEnum() {
        return this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum;
    }

    public EEnum getPowerDriverHWElementDefaultResetBehaviuorEnum() {
        return this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum;
    }

    public EEnum getPowerDriverHWElementPowerDriverTypeEnum() {
        return this.powerDriverHWElementPowerDriverTypeEnumEEnum;
    }

    public EEnum getPowerSupplyHWElementResetOnFaultBehaviourEnum() {
        return this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum;
    }

    public EEnum getOscillatorOscillatorModeEnum() {
        return this.oscillatorOscillatorModeEnumEEnum;
    }

    public EcuelectronicsFactory getEcuelectronicsFactory() {
        return (EcuelectronicsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.busTerminationEClass = this.createEClass(0);
        this.createEReference(this.busTerminationEClass, 4);
        this.createEAttribute(this.busTerminationEClass, 5);
        this.createEAttribute(this.busTerminationEClass, 6);
        this.createEAttribute(this.busTerminationEClass, 7);
        this.createEAttribute(this.busTerminationEClass, 8);
        this.createEAttribute(this.busTerminationEClass, 9);
        this.clockEClass = this.createEClass(1);
        this.createEReference(this.clockEClass, 26);
        this.createEAttribute(this.clockEClass, 27);
        this.createEAttribute(this.clockEClass, 28);
        this.createEAttribute(this.clockEClass, 29);
        this.createEAttribute(this.clockEClass, 30);
        this.createEReference(this.clockEClass, 31);
        this.createEReference(this.clockEClass, 32);
        this.createEAttribute(this.clockEClass, 33);
        this.ecuElectronicsEClass = this.createEClass(2);
        this.createEAttribute(this.ecuElectronicsEClass, 25);
        this.communicationTransceiverEClass = this.createEClass(3);
        this.createEReference(this.communicationTransceiverEClass, 26);
        this.createEAttribute(this.communicationTransceiverEClass, 27);
        this.createEReference(this.communicationTransceiverEClass, 28);
        this.createEReference(this.communicationTransceiverEClass, 29);
        this.discreteECUElectronicsEClass = this.createEClass(4);
        this.powerDriverHWElementEClass = this.createEClass(5);
        this.createEAttribute(this.powerDriverHWElementEClass, 26);
        this.createEAttribute(this.powerDriverHWElementEClass, 27);
        this.createEReference(this.powerDriverHWElementEClass, 28);
        this.createEAttribute(this.powerDriverHWElementEClass, 29);
        this.createEAttribute(this.powerDriverHWElementEClass, 30);
        this.createEReference(this.powerDriverHWElementEClass, 31);
        this.createEAttribute(this.powerDriverHWElementEClass, 32);
        this.powerDriverProtectionEClass = this.createEClass(6);
        this.createEReference(this.powerDriverProtectionEClass, 4);
        this.createEAttribute(this.powerDriverProtectionEClass, 5);
        this.createEAttribute(this.powerDriverProtectionEClass, 6);
        this.createEAttribute(this.powerDriverProtectionEClass, 7);
        this.createEAttribute(this.powerDriverProtectionEClass, 8);
        this.createEAttribute(this.powerDriverProtectionEClass, 9);
        this.createEAttribute(this.powerDriverProtectionEClass, 10);
        this.createEAttribute(this.powerDriverProtectionEClass, 11);
        this.powerDriverNotificationEClass = this.createEClass(7);
        this.createEReference(this.powerDriverNotificationEClass, 4);
        this.createEReference(this.powerDriverNotificationEClass, 5);
        this.createEAttribute(this.powerDriverNotificationEClass, 6);
        this.createEAttribute(this.powerDriverNotificationEClass, 7);
        this.createEAttribute(this.powerDriverNotificationEClass, 8);
        this.createEAttribute(this.powerDriverNotificationEClass, 9);
        this.createEAttribute(this.powerDriverNotificationEClass, 10);
        this.createEAttribute(this.powerDriverNotificationEClass, 11);
        this.createEAttribute(this.powerDriverNotificationEClass, 12);
        this.createEAttribute(this.powerDriverNotificationEClass, 13);
        this.createEAttribute(this.powerDriverNotificationEClass, 14);
        this.createEAttribute(this.powerDriverNotificationEClass, 15);
        this.powerDriverHWPortEClass = this.createEClass(8);
        this.createEAttribute(this.powerDriverHWPortEClass, 19);
        this.createEAttribute(this.powerDriverHWPortEClass, 20);
        this.createEAttribute(this.powerDriverHWPortEClass, 21);
        this.powerSupplyCurrentNotificationEClass = this.createEClass(9);
        this.createEReference(this.powerSupplyCurrentNotificationEClass, 4);
        this.createEAttribute(this.powerSupplyCurrentNotificationEClass, 5);
        this.createEReference(this.powerSupplyCurrentNotificationEClass, 6);
        this.createEAttribute(this.powerSupplyCurrentNotificationEClass, 7);
        this.powerSupplyHWElementEClass = this.createEClass(10);
        this.createEAttribute(this.powerSupplyHWElementEClass, 26);
        this.createEAttribute(this.powerSupplyHWElementEClass, 27);
        this.createEAttribute(this.powerSupplyHWElementEClass, 28);
        this.createEAttribute(this.powerSupplyHWElementEClass, 29);
        this.createEAttribute(this.powerSupplyHWElementEClass, 30);
        this.createEAttribute(this.powerSupplyHWElementEClass, 31);
        this.createEReference(this.powerSupplyHWElementEClass, 32);
        this.createEReference(this.powerSupplyHWElementEClass, 33);
        this.createEAttribute(this.powerSupplyHWElementEClass, 34);
        this.createEAttribute(this.powerSupplyHWElementEClass, 35);
        this.createEReference(this.powerSupplyHWElementEClass, 36);
        this.createEAttribute(this.powerSupplyHWElementEClass, 37);
        this.powerSupplyVoltageNotificationEClass = this.createEClass(11);
        this.createEAttribute(this.powerSupplyVoltageNotificationEClass, 4);
        this.createEReference(this.powerSupplyVoltageNotificationEClass, 5);
        this.createEAttribute(this.powerSupplyVoltageNotificationEClass, 6);
        this.powerSupplyHWPortEClass = this.createEClass(12);
        this.createEAttribute(this.powerSupplyHWPortEClass, 19);
        this.createEReference(this.powerSupplyHWPortEClass, 20);
        this.oscillatorEClass = this.createEClass(13);
        this.createEReference(this.oscillatorEClass, 26);
        this.createEAttribute(this.oscillatorEClass, 27);
        this.createEReference(this.oscillatorEClass, 28);
        this.createEReference(this.oscillatorEClass, 29);
        this.createEAttribute(this.oscillatorEClass, 30);
        this.createEAttribute(this.oscillatorEClass, 31);
        this.createEAttribute(this.oscillatorEClass, 32);
        this.createEAttribute(this.oscillatorEClass, 33);
        this.clockTypeEnumEEnum = this.createEEnum(14);
        this.communicationTransceiverArchitectureEnumEEnum = this.createEEnum(15);
        this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum = this.createEEnum(16);
        this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum = this.createEEnum(17);
        this.powerDriverHWElementPowerDriverTypeEnumEEnum = this.createEEnum(18);
        this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum = this.createEEnum(19);
        this.oscillatorOscillatorModeEnumEEnum = this.createEEnum(20);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ecuelectronics");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecur/ecue");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        ProcessingunitPackage theProcessingunitPackage = (ProcessingunitPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/pu");
        BasicelementsPackage theBasicelementsPackage = (BasicelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        PeripheralsPackage thePeripheralsPackage = (PeripheralsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/p");
        this.busTerminationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clockEClass.getESuperTypes().add((Object)this.getECUElectronics());
        this.ecuElectronicsEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWElement());
        this.communicationTransceiverEClass.getESuperTypes().add((Object)this.getECUElectronics());
        this.discreteECUElectronicsEClass.getESuperTypes().add((Object)this.getECUElectronics());
        this.powerDriverHWElementEClass.getESuperTypes().add((Object)this.getECUElectronics());
        this.powerDriverProtectionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.powerDriverNotificationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.powerDriverHWPortEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWPort());
        this.powerSupplyCurrentNotificationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.powerSupplyHWElementEClass.getESuperTypes().add((Object)this.getECUElectronics());
        this.powerSupplyVoltageNotificationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.powerSupplyHWPortEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWPort());
        this.oscillatorEClass.getESuperTypes().add((Object)this.getECUElectronics());
        this.initEClass(this.busTerminationEClass, BusTermination.class, "BusTermination", false, false, true);
        this.initEReference(this.getBusTermination_CommunicationTransceiver(), (EClassifier)this.getCommunicationTransceiver(), this.getCommunicationTransceiver_Termination(), "communicationTransceiver", null, 0, 1, BusTermination.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getBusTermination_ActiveSwitchable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "activeSwitchable", "false", 0, 1, BusTermination.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBusTermination_Choke(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "choke", "false", 0, 1, BusTermination.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBusTermination_EmcFilter(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "emcFilter", "false", 0, 1, BusTermination.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBusTermination_Split(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "split", "false", 0, 1, BusTermination.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBusTermination_Value(), (EClassifier)thePrimitivetypesPackage.getInteger(), "value", "0", 0, 1, BusTermination.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.clockEClass, Clock.class, "Clock", false, false, true);
        this.initEReference(this.getClock_ProcessingUnit(), (EClassifier)theProcessingunitPackage.getProcessingUnit(), theProcessingunitPackage.getProcessingUnit_PuClock(), "processingUnit", null, 0, 1, Clock.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getClock_Adjustable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "adjustable", "false", 0, 1, Clock.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getClock_ClockJitter(), (EClassifier)thePrimitivetypesPackage.getFloat(), "clockJitter", "0.0", 0, 1, Clock.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getClock_ClockStartupTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "clockStartupTime", "0.0", 0, 1, Clock.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getClock_ClockTolerance(), (EClassifier)thePrimitivetypesPackage.getFloat(), "clockTolerance", "0.0", 0, 1, Clock.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getClock_Frequency(), (EClassifier)theBasicelementsPackage.getFrequencyRange(), null, "frequency", null, 0, 1, Clock.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClock_Oscillators(), (EClassifier)this.getOscillator(), null, "oscillators", null, 0, -1, Clock.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getClock_Type(), (EClassifier)this.getClockTypeEnum(), "type", "PLL", 0, 1, Clock.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.ecuElectronicsEClass, ECUElectronics.class, "ECUElectronics", true, false, true);
        this.initEAttribute(this.getECUElectronics_CanBeDisabled(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canBeDisabled", "false", 0, 1, ECUElectronics.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationTransceiverEClass, CommunicationTransceiver.class, "CommunicationTransceiver", false, false, true);
        this.initEReference(this.getCommunicationTransceiver_AcceptanceFilter(), (EClassifier)thePeripheralsPackage.getCommunicationFilter(), null, "acceptanceFilter", null, 0, 1, CommunicationTransceiver.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationTransceiver_Architecture(), (EClassifier)this.getCommunicationTransceiverArchitectureEnum(), "architecture", "MASTER", 0, 1, CommunicationTransceiver.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCommunicationTransceiver_RejectionFilter(), (EClassifier)thePeripheralsPackage.getCommunicationFilter(), null, "rejectionFilter", null, 0, 1, CommunicationTransceiver.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommunicationTransceiver_Termination(), (EClassifier)this.getBusTermination(), this.getBusTermination_CommunicationTransceiver(), "termination", null, 0, 1, CommunicationTransceiver.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.discreteECUElectronicsEClass, DiscreteECUElectronics.class, "DiscreteECUElectronics", false, false, true);
        this.initEClass(this.powerDriverHWElementEClass, PowerDriverHWElement.class, "PowerDriverHWElement", false, false, true);
        this.initEAttribute(this.getPowerDriverHWElement_CurrentLimitation(), (EClassifier)thePrimitivetypesPackage.getFloat(), "currentLimitation", "0.0", 0, 1, PowerDriverHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverHWElement_DefaultResetBehaviuor(), (EClassifier)this.getPowerDriverHWElementDefaultResetBehaviuorEnum(), "defaultResetBehaviuor", "PASSIVE", 0, 1, PowerDriverHWElement.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPowerDriverHWElement_Notification(), (EClassifier)this.getPowerDriverNotification(), this.getPowerDriverNotification_PowerDriverHWElement(), "notification", null, 0, 1, PowerDriverHWElement.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPowerDriverHWElement_OnStateResistance(), (EClassifier)thePrimitivetypesPackage.getFloat(), "onStateResistance", "0.0", 0, 1, PowerDriverHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverHWElement_PowerDriverType(), (EClassifier)this.getPowerDriverHWElementPowerDriverTypeEnum(), "powerDriverType", "HS", 0, 1, PowerDriverHWElement.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPowerDriverHWElement_Protection(), (EClassifier)this.getPowerDriverProtection(), this.getPowerDriverProtection_PowerDriverHWElement(), "protection", null, 0, 1, PowerDriverHWElement.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPowerDriverHWElement_ResetOnFaultBehaviour(), (EClassifier)this.getPowerDriverHWElementResetOnFaultBehaviourEnum(), "resetOnFaultBehaviour", "AUTO", 0, 1, PowerDriverHWElement.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.powerDriverProtectionEClass, PowerDriverProtection.class, "PowerDriverProtection", false, false, true);
        this.initEReference(this.getPowerDriverProtection_PowerDriverHWElement(), (EClassifier)this.getPowerDriverHWElement(), this.getPowerDriverHWElement_Protection(), "powerDriverHWElement", null, 0, 1, PowerDriverProtection.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getPowerDriverProtection_LossOfGroundProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "lossOfGroundProtection", "false", 0, 1, PowerDriverProtection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverProtection_MaxCurrentProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "maxCurrentProtection", "false", 0, 1, PowerDriverProtection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverProtection_MaxVoltageProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "maxVoltageProtection", "false", 0, 1, PowerDriverProtection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverProtection_MinCurrentProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "minCurrentProtection", "false", 0, 1, PowerDriverProtection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverProtection_MinVoltageProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "minVoltageProtection", "false", 0, 1, PowerDriverProtection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverProtection_OverTemperatureProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "overTemperatureProtection", "false", 0, 1, PowerDriverProtection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverProtection_ReverseBatteryProtection(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "reverseBatteryProtection", "false", 0, 1, PowerDriverProtection.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.powerDriverNotificationEClass, PowerDriverNotification.class, "PowerDriverNotification", false, false, true);
        this.initEReference(this.getPowerDriverNotification_PowerDriverHWElement(), (EClassifier)this.getPowerDriverHWElement(), this.getPowerDriverHWElement_Notification(), "powerDriverHWElement", null, 0, 1, PowerDriverNotification.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPowerDriverNotification_IssuedInterruptSource(), (EClassifier)theProcessingunitPackage.getInterruptProduceHWPort(), null, "issuedInterruptSource", null, 0, 1, PowerDriverNotification.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_LossOfGround(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "lossOfGround", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_MaxCurrent(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "maxCurrent", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_MaxVoltage(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "maxVoltage", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_MinCurrent(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "minCurrent", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_MinVoltage(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "minVoltage", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_OpenLoad(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "openLoad", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_OverTemperature(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "overTemperature", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_ShortLoad(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "shortLoad", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_ShortToBatt(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "shortToBatt", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverNotification_ShortToGround(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "shortToGround", "false", 0, 1, PowerDriverNotification.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.powerDriverHWPortEClass, PowerDriverHWPort.class, "PowerDriverHWPort", false, false, true);
        this.initEAttribute(this.getPowerDriverHWPort_PwmMaxFrequency(), (EClassifier)thePrimitivetypesPackage.getFloat(), "pwmMaxFrequency", "0.0", 0, 1, PowerDriverHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverHWPort_PwmMinOffTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "pwmMinOffTime", "0.0", 0, 1, PowerDriverHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerDriverHWPort_PwmMinOnTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "pwmMinOnTime", "0.0", 0, 1, PowerDriverHWPort.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.powerSupplyCurrentNotificationEClass, PowerSupplyCurrentNotification.class, "PowerSupplyCurrentNotification", false, false, true);
        this.initEReference(this.getPowerSupplyCurrentNotification_PowerSupplyHWElement(), (EClassifier)this.getPowerSupplyHWElement(), this.getPowerSupplyHWElement_OverCurrentNotification(), "powerSupplyHWElement", null, 0, 1, PowerSupplyCurrentNotification.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyCurrentNotification_Hysteresis(), (EClassifier)thePrimitivetypesPackage.getFloat(), "hysteresis", "0.0", 0, 1, PowerSupplyCurrentNotification.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPowerSupplyCurrentNotification_Interrupts(), (EClassifier)theProcessingunitPackage.getInterruptProduceHWPort(), null, "interrupts", null, 0, -1, PowerSupplyCurrentNotification.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyCurrentNotification_Level(), (EClassifier)thePrimitivetypesPackage.getFloat(), "level", "0.0", 0, 1, PowerSupplyCurrentNotification.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.powerSupplyHWElementEClass, PowerSupplyHWElement.class, "PowerSupplyHWElement", false, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_BackupCapacity(), (EClassifier)thePrimitivetypesPackage.getFloat(), "backupCapacity", "0.0", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_DefaultVoltageOnReset(), (EClassifier)thePrimitivetypesPackage.getFloat(), "defaultVoltageOnReset", "0.0", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_MaxVoltage(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxVoltage", "0.0", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_MinVoltage(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minVoltage", "0.0", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_NotificationOverTemperature(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "notificationOverTemperature", "false", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_NotificationReset(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "notificationReset", "false", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPowerSupplyHWElement_OverCurrentNotification(), (EClassifier)this.getPowerSupplyCurrentNotification(), this.getPowerSupplyCurrentNotification_PowerSupplyHWElement(), "overCurrentNotification", null, 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPowerSupplyHWElement_OverVoltageNotification(), (EClassifier)this.getPowerSupplyVoltageNotification(), null, "overVoltageNotification", null, 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_ResetDelay(), (EClassifier)thePrimitivetypesPackage.getFloat(), "resetDelay", "0.0", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_ResetOnFaultBehaviour(), (EClassifier)this.getPowerSupplyHWElementResetOnFaultBehaviourEnum(), "resetOnFaultBehaviour", "AUTO", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPowerSupplyHWElement_UnderVoltageNotification(), (EClassifier)this.getPowerSupplyVoltageNotification(), null, "underVoltageNotification", null, 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyHWElement_WakeupCapability(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "wakeupCapability", "false", 0, 1, PowerSupplyHWElement.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.powerSupplyVoltageNotificationEClass, PowerSupplyVoltageNotification.class, "PowerSupplyVoltageNotification", false, false, true);
        this.initEAttribute(this.getPowerSupplyVoltageNotification_Hystereses(), (EClassifier)thePrimitivetypesPackage.getFloat(), "hystereses", "0.0", 0, 1, PowerSupplyVoltageNotification.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPowerSupplyVoltageNotification_Interrupts(), (EClassifier)theProcessingunitPackage.getInterruptProduceHWPort(), null, "interrupts", null, 0, -1, PowerSupplyVoltageNotification.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getPowerSupplyVoltageNotification_Level(), (EClassifier)thePrimitivetypesPackage.getFloat(), "level", "0.0", 0, 1, PowerSupplyVoltageNotification.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.powerSupplyHWPortEClass, PowerSupplyHWPort.class, "PowerSupplyHWPort", false, false, true);
        this.initEAttribute(this.getPowerSupplyHWPort_CanBeSwitchedOff(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canBeSwitchedOff", "false", 0, 1, PowerSupplyHWPort.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPowerSupplyHWPort_Supplied(), (EClassifier)theBasicelementsPackage.getElectricalRange(), null, "supplied", null, 0, 1, PowerSupplyHWPort.class, false, false, true, true, false, false, true, false, true);
        EOperation op = this.addEOperation(this.powerSupplyHWPortEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_directioninordirectionout", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        EGenericType g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.oscillatorEClass, Oscillator.class, "Oscillator", false, false, true);
        this.initEReference(this.getOscillator_Oscillator(), (EClassifier)this.getOscillator(), this.getOscillator_BackupOscillator(), "oscillator", null, 0, 1, Oscillator.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getOscillator_Adjustible(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "adjustible", "false", 0, 1, Oscillator.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getOscillator_BackupOscillator(), (EClassifier)this.getOscillator(), this.getOscillator_Oscillator(), "backupOscillator", null, 0, 1, Oscillator.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getOscillator_OscillatorFrequencyRange(), (EClassifier)theBasicelementsPackage.getFrequencyRange(), null, "oscillatorFrequencyRange", null, 0, 1, Oscillator.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getOscillator_OscillatorJitter(), (EClassifier)thePrimitivetypesPackage.getFloat(), "oscillatorJitter", "0.0", 0, 1, Oscillator.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOscillator_OscillatorMode(), (EClassifier)this.getOscillatorOscillatorModeEnum(), "oscillatorMode", "FUNDAMENTAL", 0, 1, Oscillator.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOscillator_OscillatorStartupTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "oscillatorStartupTime", "0.0", 0, 1, Oscillator.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOscillator_OscillatorTolerance(), (EClassifier)thePrimitivetypesPackage.getFloat(), "oscillatorTolerance", "0.0", 0, 1, Oscillator.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.clockTypeEnumEEnum, ClockTypeEnum.class, "ClockTypeEnum");
        this.addEEnumLiteral(this.clockTypeEnumEEnum, ClockTypeEnum.PLL);
        this.addEEnumLiteral(this.clockTypeEnumEEnum, ClockTypeEnum.DIVIDER);
        this.initEEnum(this.communicationTransceiverArchitectureEnumEEnum, CommunicationTransceiverArchitectureEnum.class, "CommunicationTransceiverArchitectureEnum");
        this.addEEnumLiteral(this.communicationTransceiverArchitectureEnumEEnum, CommunicationTransceiverArchitectureEnum.MASTER);
        this.addEEnumLiteral(this.communicationTransceiverArchitectureEnumEEnum, CommunicationTransceiverArchitectureEnum.SLAVE);
        this.addEEnumLiteral(this.communicationTransceiverArchitectureEnumEEnum, CommunicationTransceiverArchitectureEnum.MULTI_MASTER);
        this.initEEnum(this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum, PowerDriverHWElementResetOnFaultBehaviourEnum.class, "PowerDriverHWElementResetOnFaultBehaviourEnum");
        this.addEEnumLiteral(this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum, PowerDriverHWElementResetOnFaultBehaviourEnum.AUTO);
        this.addEEnumLiteral(this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum, PowerDriverHWElementResetOnFaultBehaviourEnum.RE_TRIGGER);
        this.addEEnumLiteral(this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum, PowerDriverHWElementResetOnFaultBehaviourEnum.FOLD_BACK);
        this.initEEnum(this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum, PowerDriverHWElementDefaultResetBehaviuorEnum.class, "PowerDriverHWElementDefaultResetBehaviuorEnum");
        this.addEEnumLiteral(this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum, PowerDriverHWElementDefaultResetBehaviuorEnum.PASSIVE);
        this.addEEnumLiteral(this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum, PowerDriverHWElementDefaultResetBehaviuorEnum.ON);
        this.addEEnumLiteral(this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum, PowerDriverHWElementDefaultResetBehaviuorEnum.OFF);
        this.addEEnumLiteral(this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum, PowerDriverHWElementDefaultResetBehaviuorEnum.OTHER);
        this.initEEnum(this.powerDriverHWElementPowerDriverTypeEnumEEnum, PowerDriverHWElementPowerDriverTypeEnum.class, "PowerDriverHWElementPowerDriverTypeEnum");
        this.addEEnumLiteral(this.powerDriverHWElementPowerDriverTypeEnumEEnum, PowerDriverHWElementPowerDriverTypeEnum.HS);
        this.addEEnumLiteral(this.powerDriverHWElementPowerDriverTypeEnumEEnum, PowerDriverHWElementPowerDriverTypeEnum.LS);
        this.addEEnumLiteral(this.powerDriverHWElementPowerDriverTypeEnumEEnum, PowerDriverHWElementPowerDriverTypeEnum.HB);
        this.addEEnumLiteral(this.powerDriverHWElementPowerDriverTypeEnumEEnum, PowerDriverHWElementPowerDriverTypeEnum.FB);
        this.addEEnumLiteral(this.powerDriverHWElementPowerDriverTypeEnumEEnum, PowerDriverHWElementPowerDriverTypeEnum.OTHER);
        this.initEEnum(this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum, PowerSupplyHWElementResetOnFaultBehaviourEnum.class, "PowerSupplyHWElementResetOnFaultBehaviourEnum");
        this.addEEnumLiteral(this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum, PowerSupplyHWElementResetOnFaultBehaviourEnum.AUTO);
        this.addEEnumLiteral(this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum, PowerSupplyHWElementResetOnFaultBehaviourEnum.RE_TRIGGER);
        this.addEEnumLiteral(this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum, PowerSupplyHWElementResetOnFaultBehaviourEnum.FOLD_BACK);
        this.initEEnum(this.oscillatorOscillatorModeEnumEEnum, OscillatorOscillatorModeEnum.class, "OscillatorOscillatorModeEnum");
        this.addEEnumLiteral(this.oscillatorOscillatorModeEnumEEnum, OscillatorOscillatorModeEnum.FUNDAMENTAL);
        this.addEEnumLiteral(this.oscillatorOscillatorModeEnumEEnum, OscillatorOscillatorModeEnum.OVERTONE);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_ECUElectronicsAnnotations();
        this.createTaggedValuesOfGeneralization_HWElementAnnotations();
        this.createTaggedValuesOfGeneralization_HWPortAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ECU Electronics", "GUID", "{A25F1DF0-D5B1-4177-BDB7-BE8EA01EFC94}", "Id", "2123746857"});
        this.addAnnotation((ENamedElement)this.busTerminationEClass, source, new String[]{"Name", "BusTermination", "Modified", "Thu Feb 10 16:08:50 CET 2005", "Created", "Fri Jul 09 15:28:42 CEST 2004", "GUID", "{7344AE71-A2F5-4b09-A5F0-894E710B8346}", "Id", "-1901299003"});
        this.addAnnotation((ENamedElement)this.getBusTermination_ActiveSwitchable(), source, new String[]{"Name", "activeSwitchable", "GUID", "{23559F9D-A662-4e3f-95CD-BC580998A333}", "Id", "-347995744"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Choke(), source, new String[]{"Name", "choke", "GUID", "{F0D25237-67C7-4dd4-9006-75D1B8C80E5B}", "Id", "1320528492"});
        this.addAnnotation((ENamedElement)this.getBusTermination_EmcFilter(), source, new String[]{"Name", "emcFilter", "GUID", "{23A49D85-49C7-4d00-9FE8-41A712374488}", "Id", "-1945371395"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Split(), source, new String[]{"Name", "split", "GUID", "{7BA9B558-C23E-4487-BB6E-C69F1BBB8ADC}", "Id", "-1755491717"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Value(), source, new String[]{"Name", "value", "GUID", "{96F2DD64-65FD-48f3-B096-627B4918D921}", "Id", "-1562471774"});
        this.addAnnotation((ENamedElement)this.clockEClass, source, new String[]{"Name", "Clock", "Modified", "Thu Apr 14 08:35:45 CEST 2005", "Created", "Fri Jul 09 10:31:53 CEST 2004", "GUID", "{2664D53C-012F-4d08-AC5B-D1DD6F07DD0D}", "Id", "-666607635"});
        this.addAnnotation((ENamedElement)this.getClock_Adjustable(), source, new String[]{"Name", "adjustable", "GUID", "{C8802DFF-F003-4e08-945F-67758B3A8099}", "Id", "442877405"});
        this.addAnnotation((ENamedElement)this.getClock_ClockJitter(), source, new String[]{"Name", "clockJitter", "GUID", "{2550B3C2-DBF6-4953-B024-FA80BDAEC593}", "Id", "1601762131"});
        this.addAnnotation((ENamedElement)this.getClock_ClockStartupTime(), source, new String[]{"Name", "clockStartupTime", "GUID", "{560D45A8-29C0-4554-A9AA-9818DEE2AD2D}", "Id", "-102214182"});
        this.addAnnotation((ENamedElement)this.getClock_ClockTolerance(), source, new String[]{"Name", "clockTolerance", "GUID", "{98A1B4C6-B77F-424d-B06E-2994ACD03B51}", "Id", "-392210536"});
        this.addAnnotation((ENamedElement)this.getClock_Type(), source, new String[]{"Name", "type", "GUID", "{F93ACF45-99EE-43fb-AB92-F101DF189FEA}", "Id", "-1938568534"});
        this.addAnnotation((ENamedElement)this.ecuElectronicsEClass, source, new String[]{"Name", "ECUElectronics", "Modified", "Fri Apr 29 08:43:35 CEST 2005", "Created", "Fri Jul 09 15:12:29 CEST 2004", "GUID", "{EE0128F4-3251-4293-9FEB-E27E1E8B55C9}", "Id", "-1001522407"});
        this.addAnnotation((ENamedElement)this.getECUElectronics_CanBeDisabled(), source, new String[]{"Name", "canBeDisabled", "GUID", "{166ECE14-0472-4990-A3E5-36B91F8F4375}", "Id", "-903755037"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverEClass, source, new String[]{"Name", "CommunicationTransceiver", "Modified", "Fri Apr 29 08:30:27 CEST 2005", "Created", "Fri Jul 09 15:15:35 CEST 2004", "GUID", "{A56E5654-7817-4369-B40B-92958DB2B101}", "Id", "-267384543"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_Architecture(), source, new String[]{"Name", "architecture", "GUID", "{8F6FB6CF-4462-4a39-981C-D7F6E87B31BF}", "Id", "1906755194"});
        this.addAnnotation((ENamedElement)this.discreteECUElectronicsEClass, source, new String[]{"Name", "DiscreteECUElectronics", "Modified", "Fri Apr 29 10:06:11 CEST 2005", "Created", "Wed Jul 14 13:38:18 CEST 2004", "GUID", "{29DE2569-7048-4d39-979B-C23F2E122350}", "Id", "185465136"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementEClass, source, new String[]{"Name", "PowerDriverHWElement", "Modified", "Fri Apr 29 08:45:14 CEST 2005", "Created", "Fri Jul 09 15:57:35 CEST 2004", "GUID", "{7BC09282-9A2D-407b-B4CE-EFE9C5C50D4E}", "Id", "1422791478"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_CurrentLimitation(), source, new String[]{"Name", "currentLimitation", "GUID", "{31DFB29E-DC62-45cc-94F5-79D71581F412}", "Id", "-1537297020"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_DefaultResetBehaviuor(), source, new String[]{"Name", "defaultResetBehaviuor", "GUID", "{9CED5BD5-C676-4a52-8055-E5229603B7BC}", "Id", "-389757551"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_OnStateResistance(), source, new String[]{"Name", "onStateResistance", "GUID", "{6C185732-0306-4468-85DB-703AE897EAFD}", "Id", "1291576447"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_PowerDriverType(), source, new String[]{"Name", "powerDriverType", "GUID", "{8FF8DEC3-C726-4edf-BD3E-83E298F60A51}", "Id", "-274757521"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_ResetOnFaultBehaviour(), source, new String[]{"Name", "resetOnFaultBehaviour", "GUID", "{7FAAD419-D42E-4b50-890B-CCA2344EBB01}", "Id", "-1134402096"});
        this.addAnnotation((ENamedElement)this.powerDriverProtectionEClass, source, new String[]{"Name", "PowerDriverProtection", "Modified", "Fri Apr 29 08:52:42 CEST 2005", "Created", "Fri Jul 09 16:15:49 CEST 2004", "GUID", "{22AD962F-375F-4909-AB12-4C6641A1E499}", "Id", "-1746569161"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_LossOfGroundProtection(), source, new String[]{"Name", "lossOfGroundProtection", "GUID", "{B3DEF0BD-4FA8-4def-B83A-3D64C37A7737}", "Id", "-1674041518"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxCurrentProtection(), source, new String[]{"Name", "maxCurrentProtection", "GUID", "{C325FAC7-59E9-44bd-9C3F-7F2852902F8A}", "Id", "1467517370"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxVoltageProtection(), source, new String[]{"Name", "maxVoltageProtection", "GUID", "{C79A16CB-8CFB-48a1-8645-BA4FB7107226}", "Id", "274607736"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinCurrentProtection(), source, new String[]{"Name", "minCurrentProtection", "GUID", "{93646D6E-ECBC-47f8-BA63-4B4C12A3D31F}", "Id", "-224389827"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinVoltageProtection(), source, new String[]{"Name", "minVoltageProtection", "GUID", "{374907A2-BD71-4426-AA8E-1B8AC13F484C}", "Id", "-127053389"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_OverTemperatureProtection(), source, new String[]{"Name", "overTemperatureProtection", "GUID", "{9A09DB0F-FD94-4a76-B1D7-09EAFC02C351}", "Id", "404196268"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_ReverseBatteryProtection(), source, new String[]{"Name", "reverseBatteryProtection", "GUID", "{C4AC009D-4127-4a46-BEDE-C53DF55CB304}", "Id", "-1548577429"});
        this.addAnnotation((ENamedElement)this.powerDriverNotificationEClass, source, new String[]{"Name", "PowerDriverNotification", "Modified", "Fri Apr 29 08:52:42 CEST 2005", "Created", "Fri Jul 09 16:11:09 CEST 2004", "GUID", "{31D4D6CC-F354-4af9-B071-DCD52CA0143D}", "Id", "1136187061"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_LossOfGround(), source, new String[]{"Name", "lossOfGround", "GUID", "{DF7592E2-DDAD-4e03-880D-08F6F459BA97}", "Id", "-927301579"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxCurrent(), source, new String[]{"Name", "maxCurrent", "GUID", "{DF478E90-EE4D-416a-B9A3-7DC988D724F2}", "Id", "-1687441840"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxVoltage(), source, new String[]{"Name", "maxVoltage", "GUID", "{02F4E9CB-9F68-4ca3-B7CC-B3794D72CB7C}", "Id", "-1743553282"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinCurrent(), source, new String[]{"Name", "minCurrent", "GUID", "{37D6C20E-5D02-4d8c-911E-530C9ED4F13B}", "Id", "-840773653"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinVoltage(), source, new String[]{"Name", "minVoltage", "GUID", "{202B42E4-F4F7-4ff8-B611-9AE504BFC927}", "Id", "344556561"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OpenLoad(), source, new String[]{"Name", "openLoad", "GUID", "{082F7049-1BE2-4035-92D5-2C40FE18FD68}", "Id", "121187495"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OverTemperature(), source, new String[]{"Name", "overTemperature", "GUID", "{2D16B209-ABB7-4865-9DD9-060CF651B1A8}", "Id", "-593208366"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortLoad(), source, new String[]{"Name", "shortLoad", "GUID", "{6254D908-A1AD-4111-BBB7-BE200803D24B}", "Id", "-532208465"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToBatt(), source, new String[]{"Name", "shortToBatt", "GUID", "{7C153157-3E37-4b7b-9BCB-06D61F039C66}", "Id", "-72393463"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToGround(), source, new String[]{"Name", "shortToGround", "GUID", "{0F9AFEE6-63E8-442e-97A4-5E593C133E86}", "Id", "1095679528"});
        this.addAnnotation((ENamedElement)this.powerDriverHWPortEClass, source, new String[]{"Name", "PowerDriverHWPort", "Modified", "Fri Apr 29 08:52:42 CEST 2005", "Created", "Wed Jul 14 13:32:10 CEST 2004", "GUID", "{BE7D8372-CADE-42b1-B353-99E282DB21A0}", "Id", "35959524"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMaxFrequency(), source, new String[]{"Name", "pwmMaxFrequency", "GUID", "{7CF2F5D8-0AE5-4841-B3EC-04B9806FDB58}", "Id", "1576538844"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOffTime(), source, new String[]{"Name", "pwmMinOffTime", "GUID", "{FEE114AC-74DA-42f9-87AE-29CB029B6381}", "Id", "-629988246"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOnTime(), source, new String[]{"Name", "pwmMinOnTime", "GUID", "{94B382CC-7C15-459b-998F-540AA7D39AD1}", "Id", "-796067667"});
        this.addAnnotation((ENamedElement)this.powerSupplyCurrentNotificationEClass, source, new String[]{"Name", "PowerSupplyCurrentNotification", "Modified", "Fri Apr 29 08:56:52 CEST 2005", "Created", "Mon Sep 20 13:57:22 CEST 2004", "GUID", "{3BE89413-5E8B-42de-A79A-2B16C2E7132F}", "Id", "-1138785799"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Hysteresis(), source, new String[]{"Name", "hysteresis", "GUID", "{86CFECD6-56D5-448c-8C14-856C679D8ABB}", "Id", "2020085707"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Level(), source, new String[]{"Name", "level", "GUID", "{6ACAA3AB-F6C4-4ca5-AAC9-8732D4E8450A}", "Id", "1744529202"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementEClass, source, new String[]{"Name", "PowerSupplyHWElement", "Modified", "Fri Apr 29 08:56:52 CEST 2005", "Created", "Fri Jul 23 11:40:34 CEST 2004", "GUID", "{7EB087E2-922A-4028-B93B-64CEEC01213F}", "Id", "181914264"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_BackupCapacity(), source, new String[]{"Name", "backupCapacity", "GUID", "{9BF0CF0A-4326-438b-98D9-5BC0550A9AEB}", "Id", "176508826"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_DefaultVoltageOnReset(), source, new String[]{"Name", "defaultVoltageOnReset", "GUID", "{E8651029-EFED-4572-AC0F-2946037A5BDF}", "Id", "454449189"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MaxVoltage(), source, new String[]{"Name", "maxVoltage", "GUID", "{C6B9E19A-8C4B-4604-8A5D-53506A28EBE4}", "Id", "1606636340"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MinVoltage(), source, new String[]{"Name", "minVoltage", "GUID", "{2DC9FD19-0524-4268-83CB-2031490D6A8D}", "Id", "2129353439"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationOverTemperature(), source, new String[]{"Name", "notificationOverTemperature", "GUID", "{425A27F9-45E9-42d3-BAFE-7D0701877F39}", "Id", "249986717"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationReset(), source, new String[]{"Name", "notificationReset", "GUID", "{9E7C1ACD-74CC-4c8b-9981-AD4D6F9AE1FC}", "Id", "-564298623"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetDelay(), source, new String[]{"Name", "resetDelay", "GUID", "{9E5B0E7C-0CF4-47d7-965F-2917A47B400A}", "Id", "-139646418"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetOnFaultBehaviour(), source, new String[]{"Name", "resetOnFaultBehaviour", "GUID", "{3FDB6F0D-9887-47ea-8E68-6C25EBCB9C8F}", "Id", "1777139294"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_WakeupCapability(), source, new String[]{"Name", "wakeupCapability", "GUID", "{43A8D1B8-8157-49fa-89FD-8617F34B7D84}", "Id", "917865986"});
        this.addAnnotation((ENamedElement)this.powerSupplyVoltageNotificationEClass, source, new String[]{"Name", "PowerSupplyVoltageNotification", "Modified", "Fri Apr 29 08:56:52 CEST 2005", "Created", "Mon Sep 20 13:54:56 CEST 2004", "GUID", "{727DB0E9-8CFF-4664-97DA-8CE20B4B8413}", "Id", "1121304087"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Hystereses(), source, new String[]{"Name", "hystereses", "GUID", "{B8D51A8A-7FA9-42a5-A0AF-20EE509213A9}", "Id", "589089050"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Level(), source, new String[]{"Name", "level", "GUID", "{F9EE17DA-DAA6-4321-8704-2C97515BCEC7}", "Id", "-557494755"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWPortEClass, source, new String[]{"Name", "PowerSupplyHWPort", "Modified", "Fri Apr 29 08:56:52 CEST 2005", "Created", "Fri Jul 23 11:37:39 CEST 2004", "GUID", "{FD267C30-6E2A-4cee-8C2A-FB14658DABEA}", "Id", "-1074569445"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWPort_CanBeSwitchedOff(), source, new String[]{"Name", "canBeSwitchedOff", "GUID", "{61E4E2AA-1CB0-4861-AFA7-40066D31E29C}", "Id", "-322320191"});
        this.addAnnotation((ENamedElement)this.oscillatorEClass, source, new String[]{"Name", "Oscillator", "Modified", "Fri Apr 29 08:43:35 CEST 2005", "Created", "Fri Jul 09 10:34:32 CEST 2004", "GUID", "{179A32DE-EEDA-4110-A5A1-E6406B3CCBC2}", "Id", "-1701996186"});
        this.addAnnotation((ENamedElement)this.getOscillator_Adjustible(), source, new String[]{"Name", "adjustible", "GUID", "{3E0955FB-5131-4c3f-AC9B-E30B123DA2F4}", "Id", "1642715424"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorJitter(), source, new String[]{"Name", "oscillatorJitter", "GUID", "{128D0D3B-AEE5-498c-9787-638AFB18E77C}", "Id", "-148970418"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorMode(), source, new String[]{"Name", "oscillatorMode", "GUID", "{77BD4922-E4DC-4463-8A26-40710831E0E8}", "Id", "1191382977"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorStartupTime(), source, new String[]{"Name", "oscillatorStartupTime", "GUID", "{724A488A-CBFF-48be-8CDF-86913ADCA1BD}", "Id", "-1533625662"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorTolerance(), source, new String[]{"Name", "oscillatorTolerance", "GUID", "{95E844A9-D22A-434a-8D3C-7489818A3A9C}", "Id", "-147985759"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "ECU-ELECTRONICS", "xml.namePlural", "ECU-ELECTRONICSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.busTerminationEClass, source, new String[]{"xml.name", "BUS-TERMINATION", "xml.namePlural", "BUS-TERMINATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBusTermination_ActiveSwitchable(), source, new String[]{"xml.name", "ACTIVE-SWITCHABLE", "xml.namePlural", "ACTIVE-SWITCHABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Choke(), source, new String[]{"xml.name", "CHOKE", "xml.namePlural", "CHOKES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBusTermination_EmcFilter(), source, new String[]{"xml.name", "EMC-FILTER", "xml.namePlural", "EMC-FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Split(), source, new String[]{"xml.name", "SPLIT", "xml.namePlural", "SPLITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Value(), source, new String[]{"xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clockEClass, source, new String[]{"xml.name", "CLOCK", "xml.namePlural", "CLOCKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClock_Adjustable(), source, new String[]{"xml.name", "ADJUSTABLE", "xml.namePlural", "ADJUSTABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClock_ClockJitter(), source, new String[]{"xml.name", "CLOCK-JITTER", "xml.namePlural", "CLOCK-JITTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClock_ClockStartupTime(), source, new String[]{"xml.name", "CLOCK-STARTUP-TIME", "xml.namePlural", "CLOCK-STARTUP-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClock_ClockTolerance(), source, new String[]{"xml.name", "CLOCK-TOLERANCE", "xml.namePlural", "CLOCK-TOLERANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClock_Frequency(), source, new String[]{"xml.name", "FREQUENCY", "xml.namePlural", "FREQUENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClock_Oscillators(), source, new String[]{"xml.name", "OSCILLATOR-REF", "xml.namePlural", "OSCILLATOR-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClock_Type(), source, new String[]{"xml.name", "TYPE", "xml.namePlural", "TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecuElectronicsEClass, source, new String[]{"xml.name", "ECU-ELECTRONICS", "xml.namePlural", "ECU-ELECTRONICSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getECUElectronics_CanBeDisabled(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "CAN-BE-DISABLED", "xml.namePlural", "CAN-BE-DISABLEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clockTypeEnumEEnum, source, new String[]{"xml.name", "CLOCK-TYPE-ENUM", "xml.namePlural", "CLOCK-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.clockTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "PLL", "xml.namePlural", "PLLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.clockTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "DIVIDER", "xml.namePlural", "DIVIDERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverEClass, source, new String[]{"xml.name", "COMMUNICATION-TRANSCEIVER", "xml.namePlural", "COMMUNICATION-TRANSCEIVERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_AcceptanceFilter(), source, new String[]{"xml.name", "ACCEPTANCE-FILTER", "xml.namePlural", "ACCEPTANCE-FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_Architecture(), source, new String[]{"xml.name", "ARCHITECTURE", "xml.namePlural", "ARCHITECTURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_RejectionFilter(), source, new String[]{"xml.name", "REJECTION-FILTER", "xml.namePlural", "REJECTION-FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_Termination(), source, new String[]{"xml.name", "TERMINATION", "xml.namePlural", "TERMINATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverArchitectureEnumEEnum, source, new String[]{"xml.name", "COMMUNICATION-TRANSCEIVER-ARCHITECTURE-ENUM", "xml.namePlural", "COMMUNICATION-TRANSCEIVER-ARCHITECTURE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverArchitectureEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "MASTER", "xml.namePlural", "MASTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverArchitectureEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "SLAVE", "xml.namePlural", "SLAVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverArchitectureEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "MULTI-MASTER", "xml.namePlural", "MULTI-MASTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.discreteECUElectronicsEClass, source, new String[]{"xml.name", "DISCRETE-ECU-ELECTRONICS", "xml.namePlural", "DISCRETE-ECU-ELECTRONICSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementEClass, source, new String[]{"xml.name", "POWER-DRIVER-HW-ELEMENT", "xml.namePlural", "POWER-DRIVER-HW-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_CurrentLimitation(), source, new String[]{"xml.name", "CURRENT-LIMITATION", "xml.namePlural", "CURRENT-LIMITATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_DefaultResetBehaviuor(), source, new String[]{"xml.name", "DEFAULT-RESET-BEHAVIUOR", "xml.namePlural", "DEFAULT-RESET-BEHAVIUORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_Notification(), source, new String[]{"xml.name", "NOTIFICATION", "xml.namePlural", "NOTIFICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_OnStateResistance(), source, new String[]{"xml.name", "ON-STATE-RESISTANCE", "xml.namePlural", "ON-STATE-RESISTANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_PowerDriverType(), source, new String[]{"xml.name", "POWER-DRIVER-TYPE", "xml.namePlural", "POWER-DRIVER-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_Protection(), source, new String[]{"xml.name", "PROTECTION", "xml.namePlural", "PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_ResetOnFaultBehaviour(), source, new String[]{"xml.name", "RESET-ON-FAULT-BEHAVIOUR", "xml.namePlural", "RESET-ON-FAULT-BEHAVIOURS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum, source, new String[]{"xml.name", "POWER-DRIVER-HW-ELEMENT-RESET-ON-FAULT-BEHAVIOUR-ENUM", "xml.namePlural", "POWER-DRIVER-HW-ELEMENT-RESET-ON-FAULT-BEHAVIOUR-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "AUTO", "xml.namePlural", "AUTOS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "RE-TRIGGER", "xml.namePlural", "RE-TRIGGERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementResetOnFaultBehaviourEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "FOLD-BACK", "xml.namePlural", "FOLD-BACKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum, source, new String[]{"xml.name", "POWER-DRIVER-HW-ELEMENT-DEFAULT-RESET-BEHAVIUOR-ENUM", "xml.namePlural", "POWER-DRIVER-HW-ELEMENT-DEFAULT-RESET-BEHAVIUOR-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "PASSIVE", "xml.namePlural", "PASSIVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "ON", "xml.namePlural", "ONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "OFF", "xml.namePlural", "OFFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementDefaultResetBehaviuorEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "OTHER", "xml.namePlural", "OTHERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementPowerDriverTypeEnumEEnum, source, new String[]{"xml.name", "POWER-DRIVER-HW-ELEMENT-POWER-DRIVER-TYPE-ENUM", "xml.namePlural", "POWER-DRIVER-HW-ELEMENT-POWER-DRIVER-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementPowerDriverTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "HS", "xml.namePlural", "HSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementPowerDriverTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "LS", "xml.namePlural", "LSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementPowerDriverTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "HB", "xml.namePlural", "HBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementPowerDriverTypeEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "FB", "xml.namePlural", "FBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementPowerDriverTypeEnumEEnum.getELiterals().get(4), source, new String[]{"xml.name", "OTHER", "xml.namePlural", "OTHERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerDriverProtectionEClass, source, new String[]{"xml.name", "POWER-DRIVER-PROTECTION", "xml.namePlural", "POWER-DRIVER-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_LossOfGroundProtection(), source, new String[]{"xml.name", "LOSS-OF-GROUND-PROTECTION", "xml.namePlural", "LOSS-OF-GROUND-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxCurrentProtection(), source, new String[]{"xml.name", "MAX-CURRENT-PROTECTION", "xml.namePlural", "MAX-CURRENT-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxVoltageProtection(), source, new String[]{"xml.name", "MAX-VOLTAGE-PROTECTION", "xml.namePlural", "MAX-VOLTAGE-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinCurrentProtection(), source, new String[]{"xml.name", "MIN-CURRENT-PROTECTION", "xml.namePlural", "MIN-CURRENT-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinVoltageProtection(), source, new String[]{"xml.name", "MIN-VOLTAGE-PROTECTION", "xml.namePlural", "MIN-VOLTAGE-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_OverTemperatureProtection(), source, new String[]{"xml.name", "OVER-TEMPERATURE-PROTECTION", "xml.namePlural", "OVER-TEMPERATURE-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_ReverseBatteryProtection(), source, new String[]{"xml.name", "REVERSE-BATTERY-PROTECTION", "xml.namePlural", "REVERSE-BATTERY-PROTECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.powerDriverNotificationEClass, source, new String[]{"xml.name", "POWER-DRIVER-NOTIFICATION", "xml.namePlural", "POWER-DRIVER-NOTIFICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_IssuedInterruptSource(), source, new String[]{"xml.name", "ISSUED-INTERRUPT-SOURCE-REF", "xml.namePlural", "ISSUED-INTERRUPT-SOURCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_LossOfGround(), source, new String[]{"xml.name", "LOSS-OF-GROUND", "xml.namePlural", "LOSS-OF-GROUNDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxCurrent(), source, new String[]{"xml.name", "MAX-CURRENT", "xml.namePlural", "MAX-CURRENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxVoltage(), source, new String[]{"xml.name", "MAX-VOLTAGE", "xml.namePlural", "MAX-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinCurrent(), source, new String[]{"xml.name", "MIN-CURRENT", "xml.namePlural", "MIN-CURRENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinVoltage(), source, new String[]{"xml.name", "MIN-VOLTAGE", "xml.namePlural", "MIN-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OpenLoad(), source, new String[]{"xml.name", "OPEN-LOAD", "xml.namePlural", "OPEN-LOADS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OverTemperature(), source, new String[]{"xml.name", "OVER-TEMPERATURE", "xml.namePlural", "OVER-TEMPERATURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortLoad(), source, new String[]{"xml.name", "SHORT-LOAD", "xml.namePlural", "SHORT-LOADS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToBatt(), source, new String[]{"xml.name", "SHORT-TO-BATT", "xml.namePlural", "SHORT-TO-BATTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToGround(), source, new String[]{"xml.name", "SHORT-TO-GROUND", "xml.namePlural", "SHORT-TO-GROUNDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.powerDriverHWPortEClass, source, new String[]{"xml.name", "POWER-DRIVER-HW-PORT", "xml.namePlural", "POWER-DRIVER-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMaxFrequency(), source, new String[]{"xml.name", "PWM-MAX-FREQUENCY", "xml.namePlural", "PWM-MAX-FREQUENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOffTime(), source, new String[]{"xml.name", "PWM-MIN-OFF-TIME", "xml.namePlural", "PWM-MIN-OFF-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOnTime(), source, new String[]{"xml.name", "PWM-MIN-ON-TIME", "xml.namePlural", "PWM-MIN-ON-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.powerSupplyCurrentNotificationEClass, source, new String[]{"xml.name", "POWER-SUPPLY-CURRENT-NOTIFICATION", "xml.namePlural", "POWER-SUPPLY-CURRENT-NOTIFICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Hysteresis(), source, new String[]{"xml.name", "HYSTERESIS", "xml.namePlural", "HYSTERESISS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Interrupts(), source, new String[]{"xml.name", "INTERRUPT-REF", "xml.namePlural", "INTERRUPT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Level(), source, new String[]{"xml.name", "LEVEL", "xml.namePlural", "LEVELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementEClass, source, new String[]{"xml.name", "POWER-SUPPLY-HW-ELEMENT", "xml.namePlural", "POWER-SUPPLY-HW-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_BackupCapacity(), source, new String[]{"xml.name", "BACKUP-CAPACITY", "xml.namePlural", "BACKUP-CAPACITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_DefaultVoltageOnReset(), source, new String[]{"xml.name", "DEFAULT-VOLTAGE-ON-RESET", "xml.namePlural", "DEFAULT-VOLTAGE-ON-RESETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MaxVoltage(), source, new String[]{"xml.name", "MAX-VOLTAGE", "xml.namePlural", "MAX-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MinVoltage(), source, new String[]{"xml.name", "MIN-VOLTAGE", "xml.namePlural", "MIN-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationOverTemperature(), source, new String[]{"xml.name", "NOTIFICATION-OVER-TEMPERATURE", "xml.namePlural", "NOTIFICATION-OVER-TEMPERATURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationReset(), source, new String[]{"xml.name", "NOTIFICATION-RESET", "xml.namePlural", "NOTIFICATION-RESETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_OverCurrentNotification(), source, new String[]{"xml.name", "OVER-CURRENT-NOTIFICATION", "xml.namePlural", "OVER-CURRENT-NOTIFICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_OverVoltageNotification(), source, new String[]{"xml.name", "OVER-VOLTAGE-NOTIFICATION", "xml.namePlural", "OVER-VOLTAGE-NOTIFICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetDelay(), source, new String[]{"xml.name", "RESET-DELAY", "xml.namePlural", "RESET-DELAYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetOnFaultBehaviour(), source, new String[]{"xml.name", "RESET-ON-FAULT-BEHAVIOUR", "xml.namePlural", "RESET-ON-FAULT-BEHAVIOURS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_UnderVoltageNotification(), source, new String[]{"xml.name", "UNDER-VOLTAGE-NOTIFICATION", "xml.namePlural", "UNDER-VOLTAGE-NOTIFICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_WakeupCapability(), source, new String[]{"xml.name", "WAKEUP-CAPABILITY", "xml.namePlural", "WAKEUP-CAPABILITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum, source, new String[]{"xml.name", "POWER-SUPPLY-HW-ELEMENT-RESET-ON-FAULT-BEHAVIOUR-ENUM", "xml.namePlural", "POWER-SUPPLY-HW-ELEMENT-RESET-ON-FAULT-BEHAVIOUR-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "AUTO", "xml.namePlural", "AUTOS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "RE-TRIGGER", "xml.namePlural", "RE-TRIGGERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementResetOnFaultBehaviourEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "FOLD-BACK", "xml.namePlural", "FOLD-BACKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.powerSupplyVoltageNotificationEClass, source, new String[]{"xml.name", "POWER-SUPPLY-VOLTAGE-NOTIFICATION", "xml.namePlural", "POWER-SUPPLY-VOLTAGE-NOTIFICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Hystereses(), source, new String[]{"xml.name", "HYSTERESES", "xml.namePlural", "HYSTERESESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Interrupts(), source, new String[]{"xml.name", "INTERRUPT-REF", "xml.namePlural", "INTERRUPT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Level(), source, new String[]{"xml.name", "LEVEL", "xml.namePlural", "LEVELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWPortEClass, source, new String[]{"xml.name", "POWER-SUPPLY-HW-PORT", "xml.namePlural", "POWER-SUPPLY-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWPort_CanBeSwitchedOff(), source, new String[]{"xml.name", "CAN-BE-SWITCHED-OFF", "xml.namePlural", "CAN-BE-SWITCHED-OFFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWPort_Supplied(), source, new String[]{"xml.name", "SUPPLIED", "xml.namePlural", "SUPPLIEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.oscillatorOscillatorModeEnumEEnum, source, new String[]{"xml.name", "OSCILLATOR-OSCILLATOR-MODE-ENUM", "xml.namePlural", "OSCILLATOR-OSCILLATOR-MODE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.oscillatorOscillatorModeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "FUNDAMENTAL", "xml.namePlural", "FUNDAMENTALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.oscillatorOscillatorModeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "OVERTONE", "xml.namePlural", "OVERTONES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.oscillatorEClass, source, new String[]{"xml.name", "OSCILLATOR", "xml.namePlural", "OSCILLATORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getOscillator_Adjustible(), source, new String[]{"xml.name", "ADJUSTIBLE", "xml.namePlural", "ADJUSTIBLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOscillator_BackupOscillator(), source, new String[]{"xml.name", "BACKUP-OSCILLATOR", "xml.namePlural", "BACKUP-OSCILLATORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorFrequencyRange(), source, new String[]{"xml.name", "OSCILLATOR-FREQUENCY-RANGE", "xml.namePlural", "OSCILLATOR-FREQUENCY-RANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorJitter(), source, new String[]{"xml.name", "OSCILLATOR-JITTER", "xml.namePlural", "OSCILLATOR-JITTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorMode(), source, new String[]{"xml.name", "OSCILLATOR-MODE", "xml.namePlural", "OSCILLATOR-MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorStartupTime(), source, new String[]{"xml.name", "OSCILLATOR-STARTUP-TIME", "xml.namePlural", "OSCILLATOR-STARTUP-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorTolerance(), source, new String[]{"xml.name", "OSCILLATOR-TOLERANCE", "xml.namePlural", "OSCILLATOR-TOLERANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.busTerminationEClass, source, new String[]{"name", "BUS-TERMINATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBusTermination_ActiveSwitchable(), source, new String[]{"name", "ACTIVE-SWITCHABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Choke(), source, new String[]{"name", "CHOKE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBusTermination_EmcFilter(), source, new String[]{"name", "EMC-FILTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Split(), source, new String[]{"name", "SPLIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBusTermination_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clockEClass, source, new String[]{"name", "CLOCK", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClock_Adjustable(), source, new String[]{"name", "ADJUSTABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClock_ClockJitter(), source, new String[]{"name", "CLOCK-JITTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClock_ClockStartupTime(), source, new String[]{"name", "CLOCK-STARTUP-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClock_ClockTolerance(), source, new String[]{"name", "CLOCK-TOLERANCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClock_Frequency(), source, new String[]{"name", "FREQUENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClock_Oscillators(), source, new String[]{"name", "OSCILLATOR-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClock_Type(), source, new String[]{"name", "TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ecuElectronicsEClass, source, new String[]{"name", "ECU-ELECTRONICS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUElectronics_CanBeDisabled(), source, new String[]{"name", "CAN-BE-DISABLED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverEClass, source, new String[]{"name", "COMMUNICATION-TRANSCEIVER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_AcceptanceFilter(), source, new String[]{"name", "ACCEPTANCE-FILTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_Architecture(), source, new String[]{"name", "ARCHITECTURE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_RejectionFilter(), source, new String[]{"name", "REJECTION-FILTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_Termination(), source, new String[]{"name", "TERMINATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.discreteECUElectronicsEClass, source, new String[]{"name", "DISCRETE-ECU-ELECTRONICS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementEClass, source, new String[]{"name", "POWER-DRIVER-HW-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_CurrentLimitation(), source, new String[]{"name", "CURRENT-LIMITATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_DefaultResetBehaviuor(), source, new String[]{"name", "DEFAULT-RESET-BEHAVIUOR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_Notification(), source, new String[]{"name", "NOTIFICATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_OnStateResistance(), source, new String[]{"name", "ON-STATE-RESISTANCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_PowerDriverType(), source, new String[]{"name", "POWER-DRIVER-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_Protection(), source, new String[]{"name", "PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_ResetOnFaultBehaviour(), source, new String[]{"name", "RESET-ON-FAULT-BEHAVIOUR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerDriverProtectionEClass, source, new String[]{"name", "POWER-DRIVER-PROTECTION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_LossOfGroundProtection(), source, new String[]{"name", "LOSS-OF-GROUND-PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxCurrentProtection(), source, new String[]{"name", "MAX-CURRENT-PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxVoltageProtection(), source, new String[]{"name", "MAX-VOLTAGE-PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinCurrentProtection(), source, new String[]{"name", "MIN-CURRENT-PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinVoltageProtection(), source, new String[]{"name", "MIN-VOLTAGE-PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_OverTemperatureProtection(), source, new String[]{"name", "OVER-TEMPERATURE-PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_ReverseBatteryProtection(), source, new String[]{"name", "REVERSE-BATTERY-PROTECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerDriverNotificationEClass, source, new String[]{"name", "POWER-DRIVER-NOTIFICATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_IssuedInterruptSource(), source, new String[]{"name", "ISSUED-INTERRUPT-SOURCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_LossOfGround(), source, new String[]{"name", "LOSS-OF-GROUND", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxCurrent(), source, new String[]{"name", "MAX-CURRENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxVoltage(), source, new String[]{"name", "MAX-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinCurrent(), source, new String[]{"name", "MIN-CURRENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinVoltage(), source, new String[]{"name", "MIN-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OpenLoad(), source, new String[]{"name", "OPEN-LOAD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OverTemperature(), source, new String[]{"name", "OVER-TEMPERATURE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortLoad(), source, new String[]{"name", "SHORT-LOAD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToBatt(), source, new String[]{"name", "SHORT-TO-BATT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToGround(), source, new String[]{"name", "SHORT-TO-GROUND", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerDriverHWPortEClass, source, new String[]{"name", "POWER-DRIVER-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMaxFrequency(), source, new String[]{"name", "PWM-MAX-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOffTime(), source, new String[]{"name", "PWM-MIN-OFF-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOnTime(), source, new String[]{"name", "PWM-MIN-ON-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerSupplyCurrentNotificationEClass, source, new String[]{"name", "POWER-SUPPLY-CURRENT-NOTIFICATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Hysteresis(), source, new String[]{"name", "HYSTERESIS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Interrupts(), source, new String[]{"name", "INTERRUPT-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyCurrentNotification_Level(), source, new String[]{"name", "LEVEL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementEClass, source, new String[]{"name", "POWER-SUPPLY-HW-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_BackupCapacity(), source, new String[]{"name", "BACKUP-CAPACITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_DefaultVoltageOnReset(), source, new String[]{"name", "DEFAULT-VOLTAGE-ON-RESET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MaxVoltage(), source, new String[]{"name", "MAX-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MinVoltage(), source, new String[]{"name", "MIN-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationOverTemperature(), source, new String[]{"name", "NOTIFICATION-OVER-TEMPERATURE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationReset(), source, new String[]{"name", "NOTIFICATION-RESET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_OverCurrentNotification(), source, new String[]{"name", "OVER-CURRENT-NOTIFICATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_OverVoltageNotification(), source, new String[]{"name", "OVER-VOLTAGE-NOTIFICATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetDelay(), source, new String[]{"name", "RESET-DELAY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetOnFaultBehaviour(), source, new String[]{"name", "RESET-ON-FAULT-BEHAVIOUR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_UnderVoltageNotification(), source, new String[]{"name", "UNDER-VOLTAGE-NOTIFICATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_WakeupCapability(), source, new String[]{"name", "WAKEUP-CAPABILITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerSupplyVoltageNotificationEClass, source, new String[]{"name", "POWER-SUPPLY-VOLTAGE-NOTIFICATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Hystereses(), source, new String[]{"name", "HYSTERESES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Interrupts(), source, new String[]{"name", "INTERRUPT-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyVoltageNotification_Level(), source, new String[]{"name", "LEVEL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWPortEClass, source, new String[]{"name", "POWER-SUPPLY-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWPort_CanBeSwitchedOff(), source, new String[]{"name", "CAN-BE-SWITCHED-OFF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWPort_Supplied(), source, new String[]{"name", "SUPPLIED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.oscillatorEClass, source, new String[]{"name", "OSCILLATOR", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOscillator_Adjustible(), source, new String[]{"name", "ADJUSTIBLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOscillator_BackupOscillator(), source, new String[]{"name", "BACKUP-OSCILLATOR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorFrequencyRange(), source, new String[]{"name", "OSCILLATOR-FREQUENCY-RANGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorJitter(), source, new String[]{"name", "OSCILLATOR-JITTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorMode(), source, new String[]{"name", "OSCILLATOR-MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorStartupTime(), source, new String[]{"name", "OSCILLATOR-STARTUP-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorTolerance(), source, new String[]{"name", "OSCILLATOR-TOLERANCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.busTerminationEClass, source, new String[]{"documentation", "In order to avoid signal reflection and oscillation of the Technical Signal represen-tation the impedance on communication lines have to be defined and matched at the signal destination and the signal source.\r\nSome examples:\r\nA High-speed CAN network with a twisted pair cable works optimal with an overall impedance of 60 Ohms represented by a 120 Ohm resistor in the ECU at the begin-ning of the network and 120 Ohm in the ECU at the end of a linear network topology.\r\nFor Low-speed CAN networks in many cases termination resistors of 820 Ohm each are distributed on several ECUs to get good balance between system scalability and signal integrity in real networks without a fixed network topology. The lower bandwidth can tolerate some impedance mismatch.\r\nFor LIN networks recessive termination is used: The inactive bus signal level is defined by resistors tied to a defined voltage level.\r\nAn important attribute for communication lines is the presence of a termination resistor and the value of this resistor."});
        this.addAnnotation((ENamedElement)this.getBusTermination_ActiveSwitchable(), source, new String[]{"documentation", "Switchable termination describes a technology were the termination resistors can be switched or changed by extra hardware and therefore is under control of software. Main scope of a switchable termination is to adopt the termination of an individual ECU to the network topology of a specific car, e. g modules for extra car options can use this method to be incorporated in a wide range of different car types. The active termination is described by the values for each termination value. E.g. 120, 820, 12k. No termination is represented by values greater than 100 k. The attributes value and switchable are exclusive to each other."});
        this.addAnnotation((ENamedElement)this.getBusTermination_Choke(), source, new String[]{"documentation", "To improve the signal integrity on communication busses with a differential electrical signal representation on the physical layer, common mode chokes are used. They suppress common mode DC noise on CAN, FlexRay and Ethernet networks. Depending on the network topology common mode chokes of an ECU have to be taken in to account when adding ECUs to a network during design phase. Typically chokes are used on CAN, FlexRay, LVDS."});
        this.addAnnotation((ENamedElement)this.getBusTermination_EmcFilter(), source, new String[]{"documentation", "To improve the EMC behaviour of communication busses common dedicated EMC Filters are used. They suppress frequencies outside the range, which is needed for the communication of the specific bus\r\nE.g. some small capacitors in parallel to ground, resistors and inductivities in series are added to the bus lines in order to prevent the higher harmonics stimulated by the communication on the network\r\nThe information about the termination is used with in the system configuration process, where the placement of an ECU within a car architecture is generated."});
        this.addAnnotation((ENamedElement)this.getBusTermination_Split(), source, new String[]{"documentation", "Describe a technology were the termination is split in to individual resistors with a  capacitive coupling to ground. This technology improves the signal quality."});
        this.addAnnotation((ENamedElement)this.getBusTermination_Value(), source, new String[]{"documentation", "Describe the nominal Value of the termination resistor at the ECU as seen from the communication network."});
        this.addAnnotation((ENamedElement)this.clockEClass, source, new String[]{"documentation", "The clock delivers the time for the PU and other HW Elements on the ECU."});
        this.addAnnotation((ENamedElement)this.getClock_Adjustable(), source, new String[]{"documentation", "Defines if the clock is adjustable from software."});
        this.addAnnotation((ENamedElement)this.getClock_ClockJitter(), source, new String[]{"documentation", "The short-term deviation of the nominal frequency to the real frequency. Jitter is influenced by the circuitry itself, voltage spikes etc. Jitter is critical for communication elements. PLL need/generate jitter for operation. Therefore communication interfaces should operate from an oscillator e.g. quartz directly or use only divider, not a PLL, as clock source. Using PLL for communication interfaces is a very common source for problems in ECU test and integration."});
        this.addAnnotation((ENamedElement)this.getClock_ClockStartupTime(), source, new String[]{"documentation", "The time the clock generation needs to deliver a stable and valid signal."});
        this.addAnnotation((ENamedElement)this.getClock_ClockTolerance(), source, new String[]{"documentation", "The long-term deviation of the nominal frequency to the real frequency. Influenced by manufacturing, layout, temperature, external components and voltage. Tolerances are critical for timer application and time synchronisation."});
        this.addAnnotation((ENamedElement)this.getClock_Frequency(), source, new String[]{"documentation", "The frequency range the clock is able to provide. This value depends on what the oscillator is delivering."});
        this.addAnnotation((ENamedElement)this.getClock_Oscillators(), source, new String[]{"documentation", "Specifies which oscillator is used to generate the clock."});
        this.addAnnotation((ENamedElement)this.getClock_Type(), source, new String[]{"documentation", "Defines if a PLL or a divides is used to create the clock signal."});
        this.addAnnotation((ENamedElement)this.ecuElectronicsEClass, source, new String[]{"documentation", "The abstract class ECU Electronics HW Element contains all elements and attributes common for all kind of ECU Electronics."});
        this.addAnnotation((ENamedElement)this.getECUElectronics_CanBeDisabled(), source, new String[]{"documentation", "Defines if the ECU Electronic can be enabled and disabled."});
        this.addAnnotation((ENamedElement)this.communicationTransceiverEClass, source, new String[]{"documentation", "The Communication Transceiver has to transfer and receive the data through the physical link and is the implementation of the OSI layer 1. Communication Transceivers have additional links to the controller/PU to support wake-up feature, enabling/disabling and error indication.\r\n"});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_AcceptanceFilter(), source, new String[]{"documentation", "Some transceivers have already acceptance filters implemented in hardware. This can be specified here."});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_Architecture(), source, new String[]{"documentation", "Distinguish between different implementations.\r\n- Master: Defines the position within the ECU, as the main controlling unit. The master defines the schedules and controls the telegram traffic.\r\n- Slave: Reacts only on request from the master\r\n- Multi Master: The PU has to share the external Interface with other PU. No specific master is defined by hardware."});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_RejectionFilter(), source, new String[]{"documentation", "Some transceivers have already rejection filters implemented in hardware. This can be specified here."});
        this.addAnnotation((ENamedElement)this.getCommunicationTransceiver_Termination(), source, new String[]{"documentation", "Description how this network node is terminated."});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementEClass, source, new String[]{"documentation", "Power Driver HW Element describes a group of electronic devices, which perform signal transformations with hardware devices. The main focus of the ECU Resource Template is the logical description of these elements, necessary for the system generation and relevant for the SW development."});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_CurrentLimitation(), source, new String[]{"documentation", "The device limits the maximum current conduction. The limit has to be specified. If this element does not occur the HW Element does not provide current limitation.\r\nUnit: Ampere"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_DefaultResetBehaviuor(), source, new String[]{"documentation", "- Passive: HW Element does not have an influence on ECU electronics (Tri-State).\r\n- On: The HW Element supplies other electronics with power e.g. the switch is closed.\r\n- Off: HW Element does not supply other electronics with power e.g. the switch is open.\r\n- Other: The HW Element has a complex behaviour and must be described by other means."});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_Notification(), source, new String[]{"documentation", "Which kind of notification to the PU is available."});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_OnStateResistance(), source, new String[]{"documentation", "The resistance in ON state can be used together with the current through this element to determine the static thermal power dissipation of the element itself and the ECU completely by summing up each element with power dissipation.\r\nAs the heating up of an power element follows with an exponential delay, the ratio of on and off times is later needed in the system generation process.\r\nThis information can give the first hint on critical issues of thermal design, but does not replace a complete static and dynamic verification of the thermal layout.\r\nUnit: Ohm"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_PowerDriverType(), source, new String[]{"documentation", "Defines the general type of the element. Type is a most common naming for an element. Several sets of types exist. Type is mandatory for the usage of the ECU Resource Template.\r\nExamples are:\r\n- High Side Switch (HS): Power supply is switched\r\n- Low Side Switch (LS): GND is switched\r\n- Half Bridge (HB): Both Power and GND can be switched exclusive\r\n- Full-Bridge (FB): Current direction in load can be alternated\r\n- Other: Different and complex functions can be included. Examples are Power ASICs that combine smart power devices within one package."});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_Protection(), source, new String[]{"documentation", "Which kind of protection is available."});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWElement_ResetOnFaultBehaviour(), source, new String[]{"documentation", "Describe the way the element is reactivated after a self protection sequence was entered\r\n- Auto: The element is turned on automatically when the fault situation disappears\r\n- Re-Trigger: The element is turned on each time a new trigger is initiated. This new trigger must be initiated by SW.\r\n- Fold-Back: The element is turned on automatically or after a new activation trigger with a lower threshold."});
        this.addAnnotation((ENamedElement)this.powerDriverProtectionEClass, source, new String[]{"documentation", "The Power Driver HW Element / ASIC turns off by internal means in order to protect the device against severe damages."});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_LossOfGroundProtection(), source, new String[]{"documentation", "Is protected against loss of ground."});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxCurrentProtection(), source, new String[]{"documentation", "Maximal current limits are exceeded."});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MaxVoltageProtection(), source, new String[]{"documentation", "Maximal voltage limits are exceeded."});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinCurrentProtection(), source, new String[]{"documentation", "Minimal current limits are exceeded."});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_MinVoltageProtection(), source, new String[]{"documentation", "Minimal voltage limits are exceeded."});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_OverTemperatureProtection(), source, new String[]{"documentation", "Is protected against over-temperature."});
        this.addAnnotation((ENamedElement)this.getPowerDriverProtection_ReverseBatteryProtection(), source, new String[]{"documentation", "Is protected against reverse battery voltage."});
        this.addAnnotation((ENamedElement)this.powerDriverNotificationEClass, source, new String[]{"documentation", "Describe the status which cause a notification to the controlling devices of an ECU, e.g. to the PU."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_IssuedInterruptSource(), source, new String[]{"documentation", "If a notification is issued, in which Interrupt will it result."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_LossOfGround(), source, new String[]{"documentation", "The device detected a loss of ground situation. The device was forced off, in order to avoid damages by excessive currents."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxCurrent(), source, new String[]{"documentation", "The device detected a too high current."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MaxVoltage(), source, new String[]{"documentation", "The device detected a too high supply voltage."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinCurrent(), source, new String[]{"documentation", "The device detected a too low curent."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_MinVoltage(), source, new String[]{"documentation", "The device detected a too low supply voltage."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OpenLoad(), source, new String[]{"documentation", "The device detected open loads. This situation is reported to the controlling portion of an ECU, e.g. to the PU."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_OverTemperature(), source, new String[]{"documentation", "The maximum allowed temperature was detected in the device. A protecting hardware has forced the device off."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortLoad(), source, new String[]{"documentation", "The device was forced off, in order to avoid damages by excessive currents."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToBatt(), source, new String[]{"documentation", "The device detected a short to battery situation. The device was forced off, in order to avoid damages by excessive currents."});
        this.addAnnotation((ENamedElement)this.getPowerDriverNotification_ShortToGround(), source, new String[]{"documentation", "The device detected a short to ground situation. The device was forced off, in order to avoid damages by excessive currents."});
        this.addAnnotation((ENamedElement)this.powerDriverHWPortEClass, source, new String[]{"documentation", "Define the option of a Power Driver that the output of a Power Driver can be superposed by a PWM signal asserted by a HW Element e.g. a microprocessor. \r\nIn most cases, the PWM signal is connected by a separate wire, even when the general control information are transmitted by a bus."});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMaxFrequency(), source, new String[]{"documentation", "It defines the upper limit at which the device can fulfil the PWM capability.\r\nEMC and power dissipation are increasing almost exponential with the PWM frequency. Choosing PWM frequencies be aware that some effects can cause secondary effects, which can create a audible noise for the user, e.g. a PWM dimmed lamp can be noticed by the driver.\r\nUnit: Hz"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOffTime(), source, new String[]{"documentation", "Defines the characteristic, that a Power Driver has to be off at least a minimum time in order to assure the function.\r\nUnit: s"});
        this.addAnnotation((ENamedElement)this.getPowerDriverHWPort_PwmMinOnTime(), source, new String[]{"documentation", "Defines the characteristic, that a Power Driver has to be on at least a minimum time in order to assure the function.\r\nUnit: s"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementEClass, source, new String[]{"documentation", "The Power Supply HW Element provides information about the power source of the ECU. There can be multiple power supplies within one ECU."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_BackupCapacity(), source, new String[]{"documentation", "Define the capability assigned to the output of the Power Supply HW Element to maintain the output voltage stable for a certain time after the undervoltage status information is asserted.\r\nIn the ECU Resource Template the Backup Capacity is described as time. The time is dependent from the current consumed by the HW Elements connected to the according output, the SW-functions controlling the ECU hardware and the implementation of the Power Supply HW Element itself. The time has to be calculated from the available capacitors or measured in the application.\r\nExample: For the energy storage for airbag applications capacitors stores energy for the airbag ignition for several seconds even the battery is completely disconnected.\r\nExample: A combined step up/step down DC/DC converter can deliver a stable 5V volt output even when the input has already dropped to 3V. The undervoltage status is already set at a Vbatt level of 6V.\r\nUnit: Ah"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_DefaultVoltageOnReset(), source, new String[]{"documentation", "This value defines the nominal output voltage, which is supplied as default after a reset occured. This attribute is only applicable at power supplies with a programmable output voltage."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MaxVoltage(), source, new String[]{"documentation", "The maximum voltage that can be supplied."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_MinVoltage(), source, new String[]{"documentation", "The minimum voltage that can be supplied."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationOverTemperature(), source, new String[]{"documentation", "Status information that the on-chip temperature on the Power Supply Hardware Element exceed the maximal, defined limit."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_NotificationReset(), source, new String[]{"documentation", "The power on reset is generated depending on the output voltage. Valid operation of the ECU and the connected HW Elements are only possible if the output voltage is stable and within the specified output voltage range. Therefore most of the Power Supply HW Elements contain a circuitry, which generate a output signal which indicates an instable or unspecified voltage at the output. Some Power Supply HW Elements offer the possibility to adjust the reset thresholds."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_OverCurrentNotification(), source, new String[]{"documentation", "Status information that the output current exceeds the maximal, defined limit at the output of the Power Supply HW Element. A short circuit indication is a special form of the overcurrent status information."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_OverVoltageNotification(), source, new String[]{"documentation", "Notification that the source voltage is too high for the power Supply HW Element to handle."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetDelay(), source, new String[]{"documentation", "The reset signal at the power-on reset is delayed by the Power Supply HW Element in order to enable the different ECU HW Elements to enter a stable and defined operation state when the reset signal is released.\r\nUnit: s"});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_ResetOnFaultBehaviour(), source, new String[]{"documentation", "Describe the way the element is reactivated after a self protection sequence was entered\r\n- Auto: The element is turned on automatically when the fault situation disappears\r\n- Re-Trigger: The element is turned on each time a new trigger is initiated. This new trigger must be initiated by SW.\r\n- Fold-Back: The element is turned on automatically or after a new activation trigger with a lower threshold."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_UnderVoltageNotification(), source, new String[]{"documentation", "Status information that at the input of the Power Supply HW Element has dropped to a critical value.\r\nThis can be used to switch off functions, which caused that voltage drop or start a power down function like storing important data to NV memory."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWElement_WakeupCapability(), source, new String[]{"documentation", "Describes the feature of the power supply to turn on the output voltage by an external event. In some cases this feature is coupled with other ECU internal HW elements e.g. transceivers and is the main feature used by the car specific power management. Different to other HW elements with this feature the power supply is the receiver of the signal, as more ECU function is only possible if the power supply is activated. Example: Philips CAN Transceivers have an output called INH, which allow together with some Voltage regulators with wake up capability to wake up the ECU at the presence of a CAN bus telegram. \r\nExample: The Wake up Capability is connected to the terminal KL15 (ignition), the ECU is waked up at the presence of KL15."});
        this.addAnnotation((ENamedElement)this.powerSupplyHWPortEClass, source, new String[]{"documentation", "The Power Supply HW Port is used to model the power distribution within the ECU. If the direction is \"in\" the port is used to describe the power consumption of an HW Element. If the direction is \"out\" the port is used to describe a power source. The HW Connection between these two HW Ports can only be established between the Power Supply HW Port of the HW Element with direction \"out\" and a Power Supply HW Port of the Power Supply HW Element with direction \"in\"."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWPort_CanBeSwitchedOff(), source, new String[]{"documentation", "Defines if the Power Supply HW Port can be switched off and therefore the supplied HW Element is switched off as well. This feature allows to describe which parts of an ECU are able be disconnected from their power supply based on software interaction. \r\nIf the Power Supply HW Port has the direction 'in' the supplied HW Element can be switched off. \r\nIf the Power Supply HW Port has the direction 'out' the power supply can be switched off and therefore all supplied HW Elements are switched off as well (This is used to describe groups of HW Elements that can only be switched off together). \r\nWhen however the whole ECU is disconnected from power the switchable power supply is of course not valid anymore."});
        this.addAnnotation((ENamedElement)this.getPowerSupplyHWPort_Supplied(), source, new String[]{"documentation", "For power source: provided electrical specification.\r\nFor power consumer: required electrical specification."});
        this.addAnnotation((ENamedElement)this.oscillatorEClass, source, new String[]{"documentation", "The basic source for time in the ECU. Based on the oscillator the PU clock is generated, but also the communication and other peripherals need timing information (ADC, PWM, timer)."});
        this.addAnnotation((ENamedElement)this.getOscillator_Adjustible(), source, new String[]{"documentation", "Defines if the oscillator is adjustable from software."});
        this.addAnnotation((ENamedElement)this.getOscillator_BackupOscillator(), source, new String[]{"documentation", "An internal, very inaccurate RC-oscillator, which provide the PU with a clock source when the external oscillator is not available."});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorFrequencyRange(), source, new String[]{"documentation", "The frequency range the oscillator is able to provide."});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorJitter(), source, new String[]{"documentation", "The short-term deviation of the nominal frequency to the real frequency. Jitter is influenced by the circuitry itself, voltage spikes etc. Jitter is critical for communication elements."});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorMode(), source, new String[]{"documentation", "Crystals and other oscillating elements have more than one resonant frequencies, which are usually odd harmonics to the basic, fundamental frequencies. For Automotive a basic requirement should be to use only fundamental mode only. Using overtone modes there is a risk, that the oscillator circuitry starts at the fundamental mode after a error in the start up routine. In order to reach an overtone mode the frequency of the fundamental mode, or lower overtones has to be passed during start up. There is a risk that the oscillator locks to this, lower frequency. Therefore Fundamental modes oscillatorts are not so critical for this issue. Fundamental quartz/crystals can reach up to 40 MHz today, above this frequency all quartz/crystals are running in the 3rd, 5th or higher overtone mode."});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorStartupTime(), source, new String[]{"documentation", "The time the oscillator needs to deliver a stable and valid signal."});
        this.addAnnotation((ENamedElement)this.getOscillator_OscillatorTolerance(), source, new String[]{"documentation", "The long-term deviation of the nominal frequency to the real frequency. Influenced by manufacturing, layout, temperature, external components and voltage. Tolerances are critical for timer application and time synchronisation."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.busTerminationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clockEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.ecuElectronicsEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.discreteECUElectronicsEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.powerDriverProtectionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.powerDriverNotificationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.powerDriverHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.powerSupplyCurrentNotificationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.powerSupplyVoltageNotificationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.oscillatorEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.busTerminationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.powerDriverProtectionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.powerDriverNotificationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.powerSupplyCurrentNotificationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.powerSupplyVoltageNotificationEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ECUElectronicsAnnotations() {
        String source = "TaggedValuesOfGeneralization_ECUElectronics";
        this.addAnnotation((ENamedElement)this.clockEClass, source, new String[]{"Name", "", "GUID", "{69855588-2A84-4c79-A3E8-394D8B06462D}", "Id", "1900163502", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationTransceiverEClass, source, new String[]{"Name", "", "GUID", "{AAF0E2FF-7523-4bd9-9CC1-9B1FB7D758A5}", "Id", "153341742", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.discreteECUElectronicsEClass, source, new String[]{"Name", "", "GUID", "{F704663B-460E-4e57-8002-D2E454B89241}", "Id", "-1464974626", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.powerDriverHWElementEClass, source, new String[]{"Name", "", "GUID", "{7D91F3B9-4E9E-4602-9E15-313B64012EF7}", "Id", "-1720730086", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWElementEClass, source, new String[]{"Name", "", "GUID", "{55AA528B-FA64-46db-8808-B03F270AF490}", "Id", "-988764785", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.oscillatorEClass, source, new String[]{"Name", "", "GUID", "{60DCAF57-749E-42c4-9434-44743B86D577}", "Id", "-1002361599", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_HWElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWElement";
        this.addAnnotation((ENamedElement)this.ecuElectronicsEClass, source, new String[]{"Name", "", "GUID", "{CAA0DA55-0DD3-447e-A42E-DD63C8563559}", "Id", "-1194273244", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_HWPortAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWPort";
        this.addAnnotation((ENamedElement)this.powerDriverHWPortEClass, source, new String[]{"Name", "", "GUID", "{2C60115E-5662-4db6-B535-63893FAB2299}", "Id", "1956111282", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.powerSupplyHWPortEClass, source, new String[]{"Name", "", "GUID", "{663DBD21-E702-488e-A127-148E39D29138}", "Id", "-2041354559", "xml.sequenceOffset", "0"});
    }
}

