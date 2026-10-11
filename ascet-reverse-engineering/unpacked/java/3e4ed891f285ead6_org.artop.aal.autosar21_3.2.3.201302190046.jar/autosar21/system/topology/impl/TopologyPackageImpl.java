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
package autosar21.system.topology.impl;

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
import autosar21.system.topology.CANBus;
import autosar21.system.topology.CANBusCanAddressingModeEnum;
import autosar21.system.topology.CANCommunicationPortInstance;
import autosar21.system.topology.CANCommunicationPortInstanceProtocolVersionEnum;
import autosar21.system.topology.CommunicationCluster;
import autosar21.system.topology.Connector;
import autosar21.system.topology.ECUCommunicationPortInstance;
import autosar21.system.topology.ECUInstance;
import autosar21.system.topology.ECUInstancePowerSupplyEnum;
import autosar21.system.topology.FlexrayCluster;
import autosar21.system.topology.FlexrayCommunicationPortInstance;
import autosar21.system.topology.Hub;
import autosar21.system.topology.HubHubTypeEnum;
import autosar21.system.topology.LINCommunicationPortInstance;
import autosar21.system.topology.LINCommunicationPortInstanceNodeRoleEnum;
import autosar21.system.topology.LINCommunicationPortInstanceProtocolVersionEnum;
import autosar21.system.topology.LINSubBus;
import autosar21.system.topology.PhysicalChannel;
import autosar21.system.topology.PhysicalMediumSegment;
import autosar21.system.topology.PhysicalMediumSegmentPhysicalMediumTypeEnum;
import autosar21.system.topology.SystemTopologyType;
import autosar21.system.topology.TopologyElement;
import autosar21.system.topology.TopologyFactory;
import autosar21.system.topology.TopologyPackage;
import autosar21.system.topology.UnspecifiedConnection;
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

public class TopologyPackageImpl
extends EPackageImpl
implements TopologyPackage {
    private EClass canBusEClass = null;
    private EClass canCommunicationPortInstanceEClass = null;
    private EClass ecuCommunicationPortInstanceEClass = null;
    private EClass connectorEClass = null;
    private EClass ecuInstanceEClass = null;
    private EClass topologyElementEClass = null;
    private EClass flexrayClusterEClass = null;
    private EClass flexrayCommunicationPortInstanceEClass = null;
    private EClass hubEClass = null;
    private EClass linCommunicationPortInstanceEClass = null;
    private EClass linSubBusEClass = null;
    private EClass physicalChannelEClass = null;
    private EClass physicalMediumSegmentEClass = null;
    private EClass systemTopologyTypeEClass = null;
    private EClass unspecifiedConnectionEClass = null;
    private EClass communicationClusterEClass = null;
    private EEnum canBusCanAddressingModeEnumEEnum = null;
    private EEnum canCommunicationPortInstanceProtocolVersionEnumEEnum = null;
    private EEnum ecuInstancePowerSupplyEnumEEnum = null;
    private EEnum hubHubTypeEnumEEnum = null;
    private EEnum linCommunicationPortInstanceProtocolVersionEnumEEnum = null;
    private EEnum linCommunicationPortInstanceNodeRoleEnumEEnum = null;
    private EEnum physicalMediumSegmentPhysicalMediumTypeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private TopologyPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/s/t", (EFactory)TopologyFactory.eINSTANCE);
    }

    public static TopologyPackage init() {
        if (isInited) {
            return (TopologyPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t");
        }
        TopologyPackageImpl theTopologyPackage = (TopologyPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/t") instanceof TopologyPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/t") : new TopologyPackageImpl());
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
        theTopologyPackage.createPackageContents();
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
        theTopologyPackage.initializePackageContents();
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
        theTopologyPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/s/t", (Object)theTopologyPackage);
        return theTopologyPackage;
    }

    public EClass getCANBus() {
        return this.canBusEClass;
    }

    public EAttribute getCANBus_CanAddressingMode() {
        return (EAttribute)this.canBusEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCANCommunicationPortInstance() {
        return this.canCommunicationPortInstanceEClass;
    }

    public EAttribute getCANCommunicationPortInstance_BRP() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getCANCommunicationPortInstance_PortTermination() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getCANCommunicationPortInstance_ProtocolVersion() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getCANCommunicationPortInstance_ReceiveProcessingPeriod() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getCANCommunicationPortInstance_SyncJumpWidth() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getCANCommunicationPortInstance_TimeSeg0() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getCANCommunicationPortInstance_TimeSeg1() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getCANCommunicationPortInstance_TransmitProcessingPeriod() {
        return (EAttribute)this.canCommunicationPortInstanceEClass.getEStructuralFeatures().get(8);
    }

    public EClass getECUCommunicationPortInstance() {
        return this.ecuCommunicationPortInstanceEClass;
    }

    public EReference getECUCommunicationPortInstance_ECUInstance() {
        return (EReference)this.ecuCommunicationPortInstanceEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getECUCommunicationPortInstance_CommPortId() {
        return (EAttribute)this.ecuCommunicationPortInstanceEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getECUCommunicationPortInstance_CommunicationSpeedPort() {
        return (EAttribute)this.ecuCommunicationPortInstanceEClass.getEStructuralFeatures().get(2);
    }

    public EReference getECUCommunicationPortInstance_Port() {
        return (EReference)this.ecuCommunicationPortInstanceEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getECUCommunicationPortInstance_WakeUpOnCommPortSupported() {
        return (EAttribute)this.ecuCommunicationPortInstanceEClass.getEStructuralFeatures().get(4);
    }

    public EClass getConnector() {
        return this.connectorEClass;
    }

    public EReference getConnector_ECUInstance() {
        return (EReference)this.connectorEClass.getEStructuralFeatures().get(0);
    }

    public EReference getConnector_CommPort() {
        return (EReference)this.connectorEClass.getEStructuralFeatures().get(1);
    }

    public EClass getECUInstance() {
        return this.ecuInstanceEClass;
    }

    public EAttribute getECUInstance_COMProcessingPeriod() {
        return (EAttribute)this.ecuInstanceEClass.getEStructuralFeatures().get(0);
    }

    public EReference getECUInstance_CommPorts() {
        return (EReference)this.ecuInstanceEClass.getEStructuralFeatures().get(1);
    }

    public EReference getECUInstance_Connectors() {
        return (EReference)this.ecuInstanceEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getECUInstance_EcuAddress() {
        return (EAttribute)this.ecuInstanceEClass.getEStructuralFeatures().get(3);
    }

    public EReference getECUInstance_Ecu() {
        return (EReference)this.ecuInstanceEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getECUInstance_PowerSupply() {
        return (EAttribute)this.ecuInstanceEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getECUInstance_ProcessingUnitEndianness() {
        return (EAttribute)this.ecuInstanceEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getECUInstance_SleepModeSupported() {
        return (EAttribute)this.ecuInstanceEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getECUInstance_WakeUpOnInternalSupported() {
        return (EAttribute)this.ecuInstanceEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getECUInstance_WakeUpOnIoSupported() {
        return (EAttribute)this.ecuInstanceEClass.getEStructuralFeatures().get(9);
    }

    public EClass getTopologyElement() {
        return this.topologyElementEClass;
    }

    public EReference getTopologyElement_SystemTopologyType() {
        return (EReference)this.topologyElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getTopologyElement_Childs() {
        return (EReference)this.topologyElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getTopologyElement_Parent() {
        return (EReference)this.topologyElementEClass.getEStructuralFeatures().get(2);
    }

    public EClass getFlexrayCluster() {
        return this.flexrayClusterEClass;
    }

    public EAttribute getFlexrayCluster_ActionPointOffset() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFlexrayCluster_BusGuardianEnablePart() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getFlexrayCluster_CasRxLowMax() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getFlexrayCluster_CasRxLowMin() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getFlexrayCluster_ColdStartAttempts() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getFlexrayCluster_Cycle() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getFlexrayCluster_DynamicSlotIdlePhase() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getFlexrayCluster_ListenNoise() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getFlexrayCluster_MacroInitialOffset() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getFlexrayCluster_MacroPerCycle() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getFlexrayCluster_MacrotickDuration() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(10);
    }

    public EAttribute getFlexrayCluster_MaxInitialisationError() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(11);
    }

    public EAttribute getFlexrayCluster_MaxWithoutClockCorrectionFatal() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(12);
    }

    public EAttribute getFlexrayCluster_MaxWithoutClockCorrectionPassive() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(13);
    }

    public EAttribute getFlexrayCluster_MinislotActionPointOffset() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(14);
    }

    public EAttribute getFlexrayCluster_MinislotDuration() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(15);
    }

    public EAttribute getFlexrayCluster_NetworkIdleTime() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(16);
    }

    public EAttribute getFlexrayCluster_NetworkManagementVectorLength() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(17);
    }

    public EAttribute getFlexrayCluster_NumberOfMinislots() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(18);
    }

    public EAttribute getFlexrayCluster_NumberOfStaticSlots() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(19);
    }

    public EAttribute getFlexrayCluster_OffsetCorrectionStart() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(20);
    }

    public EAttribute getFlexrayCluster_PayloadLengthStatic() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(21);
    }

    public EAttribute getFlexrayCluster_SampleClockPeriod() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(22);
    }

    public EAttribute getFlexrayCluster_StaticSlotDuration() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(23);
    }

    public EAttribute getFlexrayCluster_SymbolWindow() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(24);
    }

    public EAttribute getFlexrayCluster_SyncNodeMax() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(25);
    }

    public EAttribute getFlexrayCluster_TransmissionStartSequenceDuration() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(26);
    }

    public EAttribute getFlexrayCluster_WakeUpSymbolRxIdle() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(27);
    }

    public EAttribute getFlexrayCluster_WakeUpSymbolRxLow() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(28);
    }

    public EAttribute getFlexrayCluster_WakeUpSymbolRxWindow() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(29);
    }

    public EAttribute getFlexrayCluster_WakeUpSymbolTxIdle() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(30);
    }

    public EAttribute getFlexrayCluster_WakeUpSymbolTxLow() {
        return (EAttribute)this.flexrayClusterEClass.getEStructuralFeatures().get(31);
    }

    public EClass getFlexrayCommunicationPortInstance() {
        return this.flexrayCommunicationPortInstanceEClass;
    }

    public EAttribute getFlexrayCommunicationPortInstance_AcceptedStartupRange() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFlexrayCommunicationPortInstance_AllowHaltDueToClock() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getFlexrayCommunicationPortInstance_AllowPassiveToActive() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getFlexrayCommunicationPortInstance_ClusterDriftDamping() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getFlexrayCommunicationPortInstance_DelayCompensationA() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getFlexrayCommunicationPortInstance_DelayCompensationB() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getFlexrayCommunicationPortInstance_DynamicSegmentEnable() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getFlexrayCommunicationPortInstance_ExternOffsetCorrection() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getFlexrayCommunicationPortInstance_ExternRateCorrection() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getFlexrayCommunicationPortInstance_KeySlotID() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(10);
    }

    public EAttribute getFlexrayCommunicationPortInstance_KeySlotUsedForSync() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(11);
    }

    public EAttribute getFlexrayCommunicationPortInstance_LatestTX() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(12);
    }

    public EAttribute getFlexrayCommunicationPortInstance_ListenTimeout() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(13);
    }

    public EAttribute getFlexrayCommunicationPortInstance_MaxDrift() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(14);
    }

    public EAttribute getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(15);
    }

    public EAttribute getFlexrayCommunicationPortInstance_MicroInitialOffsetA() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(16);
    }

    public EAttribute getFlexrayCommunicationPortInstance_MicroInitialOffsetB() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(17);
    }

    public EAttribute getFlexrayCommunicationPortInstance_MicroPerCycle() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(18);
    }

    public EAttribute getFlexrayCommunicationPortInstance_MicroPerMacroNom() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(19);
    }

    public EAttribute getFlexrayCommunicationPortInstance_MicrotickDuration() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(20);
    }

    public EAttribute getFlexrayCommunicationPortInstance_SamplesPerMicrotick() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(21);
    }

    public EAttribute getFlexrayCommunicationPortInstance_SingleSlotEnabled() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(22);
    }

    public EAttribute getFlexrayCommunicationPortInstance_StartUpNode() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(23);
    }

    public EAttribute getFlexrayCommunicationPortInstance_SyncSlot() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(24);
    }

    public EAttribute getFlexrayCommunicationPortInstance_WakeUpPattern() {
        return (EAttribute)this.flexrayCommunicationPortInstanceEClass.getEStructuralFeatures().get(25);
    }

    public EClass getHub() {
        return this.hubEClass;
    }

    public EAttribute getHub_HubType() {
        return (EAttribute)this.hubEClass.getEStructuralFeatures().get(0);
    }

    public EClass getLINCommunicationPortInstance() {
        return this.linCommunicationPortInstanceEClass;
    }

    public EAttribute getLINCommunicationPortInstance_DiagnosticAddress() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getLINCommunicationPortInstance_FunctionID() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getLINCommunicationPortInstance_InitialNADs() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getLINCommunicationPortInstance_MaxMessageLength() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getLINCommunicationPortInstance_MaxPermittedSlaveJitter() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getLINCommunicationPortInstance_NodeRole() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getLINCommunicationPortInstance_P2Min() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getLINCommunicationPortInstance_ProtocolVersion() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getLINCommunicationPortInstance_StMin() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getLINCommunicationPortInstance_SupplierID() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getLINCommunicationPortInstance_SupportSID() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(10);
    }

    public EAttribute getLINCommunicationPortInstance_TimeBase() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(11);
    }

    public EAttribute getLINCommunicationPortInstance_TimeBaseJitter() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(12);
    }

    public EAttribute getLINCommunicationPortInstance_VariantID() {
        return (EAttribute)this.linCommunicationPortInstanceEClass.getEStructuralFeatures().get(13);
    }

    public EClass getLINSubBus() {
        return this.linSubBusEClass;
    }

    public EAttribute getLINSubBus_MaxPermittedSlaveJitter() {
        return (EAttribute)this.linSubBusEClass.getEStructuralFeatures().get(0);
    }

    public EClass getPhysicalChannel() {
        return this.physicalChannelEClass;
    }

    public EReference getPhysicalChannel_CommunicationCluster() {
        return (EReference)this.physicalChannelEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPhysicalChannel_PhysicalSegments() {
        return (EReference)this.physicalChannelEClass.getEStructuralFeatures().get(1);
    }

    public EClass getPhysicalMediumSegment() {
        return this.physicalMediumSegmentEClass;
    }

    public EReference getPhysicalMediumSegment_PhysicalChannel() {
        return (EReference)this.physicalMediumSegmentEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPhysicalMediumSegment_ConnectedEcus() {
        return (EReference)this.physicalMediumSegmentEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPhysicalMediumSegment_ConnectedHubs() {
        return (EReference)this.physicalMediumSegmentEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPhysicalMediumSegment_PhysicalMediumDataLines() {
        return (EAttribute)this.physicalMediumSegmentEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getPhysicalMediumSegment_PhysicalMediumType() {
        return (EAttribute)this.physicalMediumSegmentEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSystemTopologyType() {
        return this.systemTopologyTypeEClass;
    }

    public EReference getSystemTopologyType_CommunicationClusters() {
        return (EReference)this.systemTopologyTypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSystemTopologyType_TopologyElements() {
        return (EReference)this.systemTopologyTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getUnspecifiedConnection() {
        return this.unspecifiedConnectionEClass;
    }

    public EClass getCommunicationCluster() {
        return this.communicationClusterEClass;
    }

    public EReference getCommunicationCluster_SystemTopologyType() {
        return (EReference)this.communicationClusterEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCommunicationCluster_CommunicationSpeedBus() {
        return (EAttribute)this.communicationClusterEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCommunicationCluster_PhysicalChannels() {
        return (EReference)this.communicationClusterEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getCommunicationCluster_ProtocolName() {
        return (EAttribute)this.communicationClusterEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getCommunicationCluster_ProtocolVersion() {
        return (EAttribute)this.communicationClusterEClass.getEStructuralFeatures().get(4);
    }

    public EEnum getCANBusCanAddressingModeEnum() {
        return this.canBusCanAddressingModeEnumEEnum;
    }

    public EEnum getCANCommunicationPortInstanceProtocolVersionEnum() {
        return this.canCommunicationPortInstanceProtocolVersionEnumEEnum;
    }

    public EEnum getECUInstancePowerSupplyEnum() {
        return this.ecuInstancePowerSupplyEnumEEnum;
    }

    public EEnum getHubHubTypeEnum() {
        return this.hubHubTypeEnumEEnum;
    }

    public EEnum getLINCommunicationPortInstanceProtocolVersionEnum() {
        return this.linCommunicationPortInstanceProtocolVersionEnumEEnum;
    }

    public EEnum getLINCommunicationPortInstanceNodeRoleEnum() {
        return this.linCommunicationPortInstanceNodeRoleEnumEEnum;
    }

    public EEnum getPhysicalMediumSegmentPhysicalMediumTypeEnum() {
        return this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum;
    }

    public TopologyFactory getTopologyFactory() {
        return (TopologyFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.canBusEClass = this.createEClass(0);
        this.createEAttribute(this.canBusEClass, 21);
        this.canCommunicationPortInstanceEClass = this.createEClass(1);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 21);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 22);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 23);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 24);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 25);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 26);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 27);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 28);
        this.createEAttribute(this.canCommunicationPortInstanceEClass, 29);
        this.ecuCommunicationPortInstanceEClass = this.createEClass(2);
        this.createEReference(this.ecuCommunicationPortInstanceEClass, 16);
        this.createEAttribute(this.ecuCommunicationPortInstanceEClass, 17);
        this.createEAttribute(this.ecuCommunicationPortInstanceEClass, 18);
        this.createEReference(this.ecuCommunicationPortInstanceEClass, 19);
        this.createEAttribute(this.ecuCommunicationPortInstanceEClass, 20);
        this.connectorEClass = this.createEClass(3);
        this.createEReference(this.connectorEClass, 16);
        this.createEReference(this.connectorEClass, 17);
        this.ecuInstanceEClass = this.createEClass(4);
        this.createEAttribute(this.ecuInstanceEClass, 19);
        this.createEReference(this.ecuInstanceEClass, 20);
        this.createEReference(this.ecuInstanceEClass, 21);
        this.createEAttribute(this.ecuInstanceEClass, 22);
        this.createEReference(this.ecuInstanceEClass, 23);
        this.createEAttribute(this.ecuInstanceEClass, 24);
        this.createEAttribute(this.ecuInstanceEClass, 25);
        this.createEAttribute(this.ecuInstanceEClass, 26);
        this.createEAttribute(this.ecuInstanceEClass, 27);
        this.createEAttribute(this.ecuInstanceEClass, 28);
        this.topologyElementEClass = this.createEClass(5);
        this.createEReference(this.topologyElementEClass, 16);
        this.createEReference(this.topologyElementEClass, 17);
        this.createEReference(this.topologyElementEClass, 18);
        this.flexrayClusterEClass = this.createEClass(6);
        this.createEAttribute(this.flexrayClusterEClass, 21);
        this.createEAttribute(this.flexrayClusterEClass, 22);
        this.createEAttribute(this.flexrayClusterEClass, 23);
        this.createEAttribute(this.flexrayClusterEClass, 24);
        this.createEAttribute(this.flexrayClusterEClass, 25);
        this.createEAttribute(this.flexrayClusterEClass, 26);
        this.createEAttribute(this.flexrayClusterEClass, 27);
        this.createEAttribute(this.flexrayClusterEClass, 28);
        this.createEAttribute(this.flexrayClusterEClass, 29);
        this.createEAttribute(this.flexrayClusterEClass, 30);
        this.createEAttribute(this.flexrayClusterEClass, 31);
        this.createEAttribute(this.flexrayClusterEClass, 32);
        this.createEAttribute(this.flexrayClusterEClass, 33);
        this.createEAttribute(this.flexrayClusterEClass, 34);
        this.createEAttribute(this.flexrayClusterEClass, 35);
        this.createEAttribute(this.flexrayClusterEClass, 36);
        this.createEAttribute(this.flexrayClusterEClass, 37);
        this.createEAttribute(this.flexrayClusterEClass, 38);
        this.createEAttribute(this.flexrayClusterEClass, 39);
        this.createEAttribute(this.flexrayClusterEClass, 40);
        this.createEAttribute(this.flexrayClusterEClass, 41);
        this.createEAttribute(this.flexrayClusterEClass, 42);
        this.createEAttribute(this.flexrayClusterEClass, 43);
        this.createEAttribute(this.flexrayClusterEClass, 44);
        this.createEAttribute(this.flexrayClusterEClass, 45);
        this.createEAttribute(this.flexrayClusterEClass, 46);
        this.createEAttribute(this.flexrayClusterEClass, 47);
        this.createEAttribute(this.flexrayClusterEClass, 48);
        this.createEAttribute(this.flexrayClusterEClass, 49);
        this.createEAttribute(this.flexrayClusterEClass, 50);
        this.createEAttribute(this.flexrayClusterEClass, 51);
        this.createEAttribute(this.flexrayClusterEClass, 52);
        this.flexrayCommunicationPortInstanceEClass = this.createEClass(7);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 21);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 22);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 23);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 24);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 25);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 26);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 27);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 28);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 29);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 30);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 31);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 32);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 33);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 34);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 35);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 36);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 37);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 38);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 39);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 40);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 41);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 42);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 43);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 44);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 45);
        this.createEAttribute(this.flexrayCommunicationPortInstanceEClass, 46);
        this.hubEClass = this.createEClass(8);
        this.createEAttribute(this.hubEClass, 19);
        this.linCommunicationPortInstanceEClass = this.createEClass(9);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 21);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 22);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 23);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 24);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 25);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 26);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 27);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 28);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 29);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 30);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 31);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 32);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 33);
        this.createEAttribute(this.linCommunicationPortInstanceEClass, 34);
        this.linSubBusEClass = this.createEClass(10);
        this.createEAttribute(this.linSubBusEClass, 21);
        this.physicalChannelEClass = this.createEClass(11);
        this.createEReference(this.physicalChannelEClass, 16);
        this.createEReference(this.physicalChannelEClass, 17);
        this.physicalMediumSegmentEClass = this.createEClass(12);
        this.createEReference(this.physicalMediumSegmentEClass, 4);
        this.createEReference(this.physicalMediumSegmentEClass, 5);
        this.createEReference(this.physicalMediumSegmentEClass, 6);
        this.createEAttribute(this.physicalMediumSegmentEClass, 7);
        this.createEAttribute(this.physicalMediumSegmentEClass, 8);
        this.systemTopologyTypeEClass = this.createEClass(13);
        this.createEReference(this.systemTopologyTypeEClass, 18);
        this.createEReference(this.systemTopologyTypeEClass, 19);
        this.unspecifiedConnectionEClass = this.createEClass(14);
        this.communicationClusterEClass = this.createEClass(15);
        this.createEReference(this.communicationClusterEClass, 16);
        this.createEAttribute(this.communicationClusterEClass, 17);
        this.createEReference(this.communicationClusterEClass, 18);
        this.createEAttribute(this.communicationClusterEClass, 19);
        this.createEAttribute(this.communicationClusterEClass, 20);
        this.canBusCanAddressingModeEnumEEnum = this.createEEnum(16);
        this.canCommunicationPortInstanceProtocolVersionEnumEEnum = this.createEEnum(17);
        this.ecuInstancePowerSupplyEnumEEnum = this.createEEnum(18);
        this.hubHubTypeEnumEEnum = this.createEEnum(19);
        this.linCommunicationPortInstanceProtocolVersionEnumEEnum = this.createEEnum(20);
        this.linCommunicationPortInstanceNodeRoleEnumEEnum = this.createEEnum(21);
        this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum = this.createEEnum(22);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("topology");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/s/t");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        PeripheralsPackage thePeripheralsPackage = (PeripheralsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/p");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        EnumerationsPackage theEnumerationsPackage = (EnumerationsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/e");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        this.canBusEClass.getESuperTypes().add((Object)this.getCommunicationCluster());
        this.canCommunicationPortInstanceEClass.getESuperTypes().add((Object)this.getECUCommunicationPortInstance());
        this.ecuCommunicationPortInstanceEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.connectorEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.ecuInstanceEClass.getESuperTypes().add((Object)this.getTopologyElement());
        this.topologyElementEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.flexrayClusterEClass.getESuperTypes().add((Object)this.getCommunicationCluster());
        this.flexrayCommunicationPortInstanceEClass.getESuperTypes().add((Object)this.getECUCommunicationPortInstance());
        this.hubEClass.getESuperTypes().add((Object)this.getTopologyElement());
        this.linCommunicationPortInstanceEClass.getESuperTypes().add((Object)this.getECUCommunicationPortInstance());
        this.linSubBusEClass.getESuperTypes().add((Object)this.getCommunicationCluster());
        this.physicalChannelEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.physicalMediumSegmentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.systemTopologyTypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.unspecifiedConnectionEClass.getESuperTypes().add((Object)this.getCommunicationCluster());
        this.communicationClusterEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.initEClass(this.canBusEClass, CANBus.class, "CANBus", false, false, true);
        this.initEAttribute(this.getCANBus_CanAddressingMode(), (EClassifier)this.getCANBusCanAddressingModeEnum(), "canAddressingMode", "STANDARD", 0, 1, CANBus.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.canCommunicationPortInstanceEClass, CANCommunicationPortInstance.class, "CANCommunicationPortInstance", false, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_BRP(), (EClassifier)thePrimitivetypesPackage.getInteger(), "BRP", "0", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxPermittedProcessingPeriodJitter", "0.0", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_PortTermination(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "portTermination", "false", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_ProtocolVersion(), (EClassifier)this.getCANCommunicationPortInstanceProtocolVersionEnum(), "protocolVersion", "20-A", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_ReceiveProcessingPeriod(), (EClassifier)thePrimitivetypesPackage.getFloat(), "receiveProcessingPeriod", "0.0", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_SyncJumpWidth(), (EClassifier)thePrimitivetypesPackage.getInteger(), "SyncJumpWidth", "0", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_TimeSeg0(), (EClassifier)thePrimitivetypesPackage.getInteger(), "TimeSeg0", "0", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_TimeSeg1(), (EClassifier)thePrimitivetypesPackage.getInteger(), "TimeSeg1", "0", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCANCommunicationPortInstance_TransmitProcessingPeriod(), (EClassifier)thePrimitivetypesPackage.getFloat(), "transmitProcessingPeriod", "0.0", 0, 1, CANCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.ecuCommunicationPortInstanceEClass, ECUCommunicationPortInstance.class, "ECUCommunicationPortInstance", false, false, true);
        this.initEReference(this.getECUCommunicationPortInstance_ECUInstance(), (EClassifier)this.getECUInstance(), this.getECUInstance_CommPorts(), "eCUInstance", null, 0, 1, ECUCommunicationPortInstance.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getECUCommunicationPortInstance_CommPortId(), (EClassifier)thePrimitivetypesPackage.getInteger(), "commPortId", "0", 0, 1, ECUCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getECUCommunicationPortInstance_CommunicationSpeedPort(), (EClassifier)thePrimitivetypesPackage.getInteger(), "communicationSpeedPort", "0", 0, 1, ECUCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getECUCommunicationPortInstance_Port(), (EClassifier)thePeripheralsPackage.getECUCommunicationPort(), null, "port", null, 0, 1, ECUCommunicationPortInstance.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getECUCommunicationPortInstance_WakeUpOnCommPortSupported(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "wakeUpOnCommPortSupported", "false", 0, 1, ECUCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.connectorEClass, Connector.class, "Connector", false, false, true);
        this.initEReference(this.getConnector_ECUInstance(), (EClassifier)this.getECUInstance(), this.getECUInstance_Connectors(), "eCUInstance", null, 0, 1, Connector.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getConnector_CommPort(), (EClassifier)this.getECUCommunicationPortInstance(), null, "commPort", null, 0, 1, Connector.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.ecuInstanceEClass, ECUInstance.class, "ECUInstance", false, false, true);
        this.initEAttribute(this.getECUInstance_COMProcessingPeriod(), (EClassifier)thePrimitivetypesPackage.getFloat(), "COMProcessingPeriod", "0.0", 0, 1, ECUInstance.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getECUInstance_CommPorts(), (EClassifier)this.getECUCommunicationPortInstance(), this.getECUCommunicationPortInstance_ECUInstance(), "commPorts", null, 0, -1, ECUInstance.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getECUInstance_Connectors(), (EClassifier)this.getConnector(), this.getConnector_ECUInstance(), "connectors", null, 0, -1, ECUInstance.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getECUInstance_EcuAddress(), (EClassifier)thePrimitivetypesPackage.getInteger(), "EcuAddress", "0", 0, 1, ECUInstance.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getECUInstance_Ecu(), (EClassifier)theEcuresourcePackage.getECU(), null, "ecu", null, 0, 1, ECUInstance.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getECUInstance_PowerSupply(), (EClassifier)this.getECUInstancePowerSupplyEnum(), "powerSupply", "BATTERY", 0, 1, ECUInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getECUInstance_ProcessingUnitEndianness(), (EClassifier)theEnumerationsPackage.getByteOrderEnum(), "processingUnitEndianness", "MOST-SIGNIFICANT-BYTE-LAST", 0, 1, ECUInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getECUInstance_SleepModeSupported(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "sleepModeSupported", "false", 0, 1, ECUInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getECUInstance_WakeUpOnInternalSupported(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "wakeUpOnInternalSupported", "false", 0, 1, ECUInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getECUInstance_WakeUpOnIoSupported(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "wakeUpOnIoSupported", "false", 0, 1, ECUInstance.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.topologyElementEClass, TopologyElement.class, "TopologyElement", true, false, true);
        this.initEReference(this.getTopologyElement_SystemTopologyType(), (EClassifier)this.getSystemTopologyType(), this.getSystemTopologyType_TopologyElements(), "systemTopologyType", null, 0, 1, TopologyElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getTopologyElement_Childs(), (EClassifier)this.getTopologyElement(), null, "childs", null, 0, -1, TopologyElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getTopologyElement_Parent(), (EClassifier)this.getTopologyElement(), null, "parent", null, 0, 1, TopologyElement.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.flexrayClusterEClass, FlexrayCluster.class, "FlexrayCluster", false, false, true);
        this.initEAttribute(this.getFlexrayCluster_ActionPointOffset(), (EClassifier)thePrimitivetypesPackage.getInteger(), "actionPointOffset", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_BusGuardianEnablePart(), (EClassifier)thePrimitivetypesPackage.getInteger(), "busGuardianEnablePart", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_CasRxLowMax(), (EClassifier)thePrimitivetypesPackage.getInteger(), "casRxLowMax", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_CasRxLowMin(), (EClassifier)thePrimitivetypesPackage.getInteger(), "casRxLowMin", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_ColdStartAttempts(), (EClassifier)thePrimitivetypesPackage.getInteger(), "coldStartAttempts", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_Cycle(), (EClassifier)thePrimitivetypesPackage.getFloat(), "cycle", "0.0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_DynamicSlotIdlePhase(), (EClassifier)thePrimitivetypesPackage.getInteger(), "dynamicSlotIdlePhase", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_ListenNoise(), (EClassifier)thePrimitivetypesPackage.getInteger(), "listenNoise", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MacroInitialOffset(), (EClassifier)thePrimitivetypesPackage.getInteger(), "macroInitialOffset", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MacroPerCycle(), (EClassifier)thePrimitivetypesPackage.getInteger(), "macroPerCycle", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MacrotickDuration(), (EClassifier)thePrimitivetypesPackage.getFloat(), "macrotickDuration", "0.0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MaxInitialisationError(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxInitialisationError", "0.0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MaxWithoutClockCorrectionFatal(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxWithoutClockCorrectionFatal", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MaxWithoutClockCorrectionPassive(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxWithoutClockCorrectionPassive", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MinislotActionPointOffset(), (EClassifier)thePrimitivetypesPackage.getInteger(), "minislotActionPointOffset", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_MinislotDuration(), (EClassifier)thePrimitivetypesPackage.getInteger(), "minislotDuration", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_NetworkIdleTime(), (EClassifier)thePrimitivetypesPackage.getInteger(), "networkIdleTime", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_NetworkManagementVectorLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "networkManagementVectorLength", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_NumberOfMinislots(), (EClassifier)thePrimitivetypesPackage.getInteger(), "numberOfMinislots", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_NumberOfStaticSlots(), (EClassifier)thePrimitivetypesPackage.getInteger(), "numberOfStaticSlots", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_OffsetCorrectionStart(), (EClassifier)thePrimitivetypesPackage.getInteger(), "OffsetCorrectionStart", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_PayloadLengthStatic(), (EClassifier)thePrimitivetypesPackage.getInteger(), "payloadLengthStatic", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_SampleClockPeriod(), (EClassifier)thePrimitivetypesPackage.getFloat(), "sampleClockPeriod", "0.0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_StaticSlotDuration(), (EClassifier)thePrimitivetypesPackage.getInteger(), "staticSlotDuration", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_SymbolWindow(), (EClassifier)thePrimitivetypesPackage.getInteger(), "symbolWindow", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_SyncNodeMax(), (EClassifier)thePrimitivetypesPackage.getInteger(), "syncNodeMax", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_TransmissionStartSequenceDuration(), (EClassifier)thePrimitivetypesPackage.getInteger(), "transmissionStartSequenceDuration", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_WakeUpSymbolRxIdle(), (EClassifier)thePrimitivetypesPackage.getInteger(), "wakeUpSymbolRxIdle", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_WakeUpSymbolRxLow(), (EClassifier)thePrimitivetypesPackage.getInteger(), "wakeUpSymbolRxLow", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_WakeUpSymbolRxWindow(), (EClassifier)thePrimitivetypesPackage.getInteger(), "wakeUpSymbolRxWindow", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_WakeUpSymbolTxIdle(), (EClassifier)thePrimitivetypesPackage.getInteger(), "wakeUpSymbolTxIdle", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCluster_WakeUpSymbolTxLow(), (EClassifier)thePrimitivetypesPackage.getInteger(), "wakeUpSymbolTxLow", "0", 0, 1, FlexrayCluster.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.flexrayCommunicationPortInstanceEClass, FlexrayCommunicationPortInstance.class, "FlexrayCommunicationPortInstance", false, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_AcceptedStartupRange(), (EClassifier)thePrimitivetypesPackage.getInteger(), "acceptedStartupRange", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_AllowHaltDueToClock(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "allowHaltDueToClock", "false", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_AllowPassiveToActive(), (EClassifier)thePrimitivetypesPackage.getInteger(), "allowPassiveToActive", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_ClusterDriftDamping(), (EClassifier)thePrimitivetypesPackage.getInteger(), "clusterDriftDamping", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_DelayCompensationA(), (EClassifier)thePrimitivetypesPackage.getInteger(), "delayCompensationA", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_DelayCompensationB(), (EClassifier)thePrimitivetypesPackage.getInteger(), "delayCompensationB", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_DynamicSegmentEnable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "dynamicSegmentEnable", "false", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_ExternOffsetCorrection(), (EClassifier)thePrimitivetypesPackage.getInteger(), "externOffsetCorrection", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_ExternRateCorrection(), (EClassifier)thePrimitivetypesPackage.getInteger(), "externRateCorrection", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_KeySlotID(), (EClassifier)thePrimitivetypesPackage.getInteger(), "keySlotID", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "keySlotUsedForStartUp", "false", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_KeySlotUsedForSync(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "keySlotUsedForSync", "false", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_LatestTX(), (EClassifier)thePrimitivetypesPackage.getInteger(), "latestTX", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_ListenTimeout(), (EClassifier)thePrimitivetypesPackage.getInteger(), "listenTimeout", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_MaxDrift(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxDrift", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maximumDynamicPayloadLength", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_MicroInitialOffsetA(), (EClassifier)thePrimitivetypesPackage.getInteger(), "MicroInitialOffsetA", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_MicroInitialOffsetB(), (EClassifier)thePrimitivetypesPackage.getInteger(), "MicroInitialOffsetB", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_MicroPerCycle(), (EClassifier)thePrimitivetypesPackage.getInteger(), "microPerCycle", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_MicroPerMacroNom(), (EClassifier)thePrimitivetypesPackage.getFloat(), "MicroPerMacroNom", "0.0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_MicrotickDuration(), (EClassifier)thePrimitivetypesPackage.getFloat(), "microtickDuration", "0.0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_SamplesPerMicrotick(), (EClassifier)thePrimitivetypesPackage.getInteger(), "samplesPerMicrotick", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_SingleSlotEnabled(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "SingleSlotEnabled", "false", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_StartUpNode(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "startUpNode", "false", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_SyncSlot(), (EClassifier)thePrimitivetypesPackage.getInteger(), "syncSlot", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFlexrayCommunicationPortInstance_WakeUpPattern(), (EClassifier)thePrimitivetypesPackage.getInteger(), "wakeUpPattern", "0", 0, 1, FlexrayCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.hubEClass, Hub.class, "Hub", false, false, true);
        this.initEAttribute(this.getHub_HubType(), (EClassifier)this.getHubHubTypeEnum(), "hubType", "ACTIVE-HUB", 0, 1, Hub.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.linCommunicationPortInstanceEClass, LINCommunicationPortInstance.class, "LINCommunicationPortInstance", false, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_DiagnosticAddress(), (EClassifier)thePrimitivetypesPackage.getInteger(), "diagnosticAddress", "0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_FunctionID(), (EClassifier)thePrimitivetypesPackage.getInteger(), "functionID", "0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_InitialNADs(), (EClassifier)thePrimitivetypesPackage.getInteger(), "initialNADs", "0", 0, 2, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_MaxMessageLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxMessageLength", "0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_MaxPermittedSlaveJitter(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxPermittedSlaveJitter", "0.0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_NodeRole(), (EClassifier)this.getLINCommunicationPortInstanceNodeRoleEnum(), "nodeRole", "MASTER", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_P2Min(), (EClassifier)thePrimitivetypesPackage.getFloat(), "p2Min", "0.0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_ProtocolVersion(), (EClassifier)this.getLINCommunicationPortInstanceProtocolVersionEnum(), "protocolVersion", "12", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_StMin(), (EClassifier)thePrimitivetypesPackage.getFloat(), "stMin", "0.0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_SupplierID(), (EClassifier)thePrimitivetypesPackage.getInteger(), "supplierID", "0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_SupportSID(), (EClassifier)thePrimitivetypesPackage.getString(), "supportSID", "", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_TimeBase(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeBase", "0.0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_TimeBaseJitter(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeBaseJitter", "0.0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getLINCommunicationPortInstance_VariantID(), (EClassifier)thePrimitivetypesPackage.getInteger(), "variantID", "0", 0, 1, LINCommunicationPortInstance.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.linSubBusEClass, LINSubBus.class, "LINSubBus", false, false, true);
        this.initEAttribute(this.getLINSubBus_MaxPermittedSlaveJitter(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxPermittedSlaveJitter", "0.0", 0, 1, LINSubBus.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.physicalChannelEClass, PhysicalChannel.class, "PhysicalChannel", false, false, true);
        this.initEReference(this.getPhysicalChannel_CommunicationCluster(), (EClassifier)this.getCommunicationCluster(), this.getCommunicationCluster_PhysicalChannels(), "communicationCluster", null, 0, 1, PhysicalChannel.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPhysicalChannel_PhysicalSegments(), (EClassifier)this.getPhysicalMediumSegment(), this.getPhysicalMediumSegment_PhysicalChannel(), "physicalSegments", null, 0, -1, PhysicalChannel.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.physicalMediumSegmentEClass, PhysicalMediumSegment.class, "PhysicalMediumSegment", false, false, true);
        this.initEReference(this.getPhysicalMediumSegment_PhysicalChannel(), (EClassifier)this.getPhysicalChannel(), this.getPhysicalChannel_PhysicalSegments(), "physicalChannel", null, 0, 1, PhysicalMediumSegment.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPhysicalMediumSegment_ConnectedEcus(), (EClassifier)this.getConnector(), null, "connectedEcus", null, 0, -1, PhysicalMediumSegment.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPhysicalMediumSegment_ConnectedHubs(), (EClassifier)this.getHub(), null, "connectedHubs", null, 0, -1, PhysicalMediumSegment.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getPhysicalMediumSegment_PhysicalMediumDataLines(), (EClassifier)thePrimitivetypesPackage.getInteger(), "physicalMediumDataLines", "0", 0, 1, PhysicalMediumSegment.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPhysicalMediumSegment_PhysicalMediumType(), (EClassifier)this.getPhysicalMediumSegmentPhysicalMediumTypeEnum(), "physicalMediumType", "OPTICAL", 0, 1, PhysicalMediumSegment.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.systemTopologyTypeEClass, SystemTopologyType.class, "SystemTopologyType", false, false, true);
        this.initEReference(this.getSystemTopologyType_CommunicationClusters(), (EClassifier)this.getCommunicationCluster(), this.getCommunicationCluster_SystemTopologyType(), "communicationClusters", null, 0, -1, SystemTopologyType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSystemTopologyType_TopologyElements(), (EClassifier)this.getTopologyElement(), this.getTopologyElement_SystemTopologyType(), "topologyElements", null, 0, -1, SystemTopologyType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.unspecifiedConnectionEClass, UnspecifiedConnection.class, "UnspecifiedConnection", false, false, true);
        this.initEClass(this.communicationClusterEClass, CommunicationCluster.class, "CommunicationCluster", true, false, true);
        this.initEReference(this.getCommunicationCluster_SystemTopologyType(), (EClassifier)this.getSystemTopologyType(), this.getSystemTopologyType_CommunicationClusters(), "systemTopologyType", null, 0, 1, CommunicationCluster.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationCluster_CommunicationSpeedBus(), (EClassifier)thePrimitivetypesPackage.getInteger(), "communicationSpeedBus", "0", 0, 1, CommunicationCluster.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCommunicationCluster_PhysicalChannels(), (EClassifier)this.getPhysicalChannel(), this.getPhysicalChannel_CommunicationCluster(), "physicalChannels", null, 0, -1, CommunicationCluster.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCommunicationCluster_ProtocolName(), (EClassifier)thePrimitivetypesPackage.getString(), "protocolName", "", 0, 1, CommunicationCluster.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getCommunicationCluster_ProtocolVersion(), (EClassifier)thePrimitivetypesPackage.getString(), "protocolVersion", "", 0, 1, CommunicationCluster.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.canBusCanAddressingModeEnumEEnum, CANBusCanAddressingModeEnum.class, "CANBusCanAddressingModeEnum");
        this.addEEnumLiteral(this.canBusCanAddressingModeEnumEEnum, CANBusCanAddressingModeEnum.STANDARD);
        this.addEEnumLiteral(this.canBusCanAddressingModeEnumEEnum, CANBusCanAddressingModeEnum.EXTENDED);
        this.initEEnum(this.canCommunicationPortInstanceProtocolVersionEnumEEnum, CANCommunicationPortInstanceProtocolVersionEnum.class, "CANCommunicationPortInstanceProtocolVersionEnum");
        this.addEEnumLiteral(this.canCommunicationPortInstanceProtocolVersionEnumEEnum, CANCommunicationPortInstanceProtocolVersionEnum._20A);
        this.addEEnumLiteral(this.canCommunicationPortInstanceProtocolVersionEnumEEnum, CANCommunicationPortInstanceProtocolVersionEnum._20B);
        this.initEEnum(this.ecuInstancePowerSupplyEnumEEnum, ECUInstancePowerSupplyEnum.class, "ECUInstancePowerSupplyEnum");
        this.addEEnumLiteral(this.ecuInstancePowerSupplyEnumEEnum, ECUInstancePowerSupplyEnum.BATTERY);
        this.addEEnumLiteral(this.ecuInstancePowerSupplyEnumEEnum, ECUInstancePowerSupplyEnum.IGNITION);
        this.addEEnumLiteral(this.ecuInstancePowerSupplyEnumEEnum, ECUInstancePowerSupplyEnum.ACCESSORY);
        this.addEEnumLiteral(this.ecuInstancePowerSupplyEnumEEnum, ECUInstancePowerSupplyEnum.OTHER);
        this.initEEnum(this.hubHubTypeEnumEEnum, HubHubTypeEnum.class, "HubHubTypeEnum");
        this.addEEnumLiteral(this.hubHubTypeEnumEEnum, HubHubTypeEnum.ACTIVE_HUB);
        this.addEEnumLiteral(this.hubHubTypeEnumEEnum, HubHubTypeEnum.PASSIVE_HUB);
        this.initEEnum(this.linCommunicationPortInstanceProtocolVersionEnumEEnum, LINCommunicationPortInstanceProtocolVersionEnum.class, "LINCommunicationPortInstanceProtocolVersionEnum");
        this.addEEnumLiteral(this.linCommunicationPortInstanceProtocolVersionEnumEEnum, LINCommunicationPortInstanceProtocolVersionEnum._12);
        this.addEEnumLiteral(this.linCommunicationPortInstanceProtocolVersionEnumEEnum, LINCommunicationPortInstanceProtocolVersionEnum._13);
        this.addEEnumLiteral(this.linCommunicationPortInstanceProtocolVersionEnumEEnum, LINCommunicationPortInstanceProtocolVersionEnum._20);
        this.initEEnum(this.linCommunicationPortInstanceNodeRoleEnumEEnum, LINCommunicationPortInstanceNodeRoleEnum.class, "LINCommunicationPortInstanceNodeRoleEnum");
        this.addEEnumLiteral(this.linCommunicationPortInstanceNodeRoleEnumEEnum, LINCommunicationPortInstanceNodeRoleEnum.MASTER);
        this.addEEnumLiteral(this.linCommunicationPortInstanceNodeRoleEnumEEnum, LINCommunicationPortInstanceNodeRoleEnum.SLAVE);
        this.initEEnum(this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum, PhysicalMediumSegmentPhysicalMediumTypeEnum.class, "PhysicalMediumSegmentPhysicalMediumTypeEnum");
        this.addEEnumLiteral(this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum, PhysicalMediumSegmentPhysicalMediumTypeEnum.OPTICAL);
        this.addEEnumLiteral(this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum, PhysicalMediumSegmentPhysicalMediumTypeEnum.TWISTED_PAIR);
        this.addEEnumLiteral(this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum, PhysicalMediumSegmentPhysicalMediumTypeEnum.SHIELDED_TWISTED_PAIR);
        this.addEEnumLiteral(this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum, PhysicalMediumSegmentPhysicalMediumTypeEnum.SINGLEWIRE);
        this.addEEnumLiteral(this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum, PhysicalMediumSegmentPhysicalMediumTypeEnum.WIRELESS);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_CommunicationClusterAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ECUCommunicationPortInstanceAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_TopologyElementAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Topology", "GUID", "{1E6502B1-9D5B-4910-8153-43535F44CEDD}", "Id", "1665845478"});
        this.addAnnotation((ENamedElement)this.canBusEClass, source, new String[]{"Name", "CANBus", "Modified", "Tue Jul 19 14:14:12 CEST 2005", "Created", "Wed May 12 12:03:44 CEST 2004", "GUID", "{875C6CBD-AEE5-4d22-8E04-AD253974F812}", "Id", "1695881346"});
        this.addAnnotation((ENamedElement)this.getCANBus_CanAddressingMode(), source, new String[]{"Name", "canAddressingMode", "GUID", "{0FB83572-0C2E-4425-AD7C-2263F6D240C8}", "Id", "-818275621"});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceEClass, source, new String[]{"Name", "CANCommunicationPortInstance", "Modified", "Tue Nov 30 16:23:34 CET 2004", "Created", "Tue Jun 29 15:14:57 CEST 2004", "GUID", "{B651958D-A541-4361-A50D-E14C947E435B}", "Id", "-534514577"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_BRP(), source, new String[]{"Name", "BRP", "GUID", "{AC6CDA43-0DA6-48b2-A999-1122EC7C571B}", "Id", "-640203203"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter(), source, new String[]{"Name", "maxPermittedProcessingPeriodJitter", "GUID", "{E221D49D-5A3B-4854-AB3B-97ADC0E123FC}", "Id", "218418229"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_PortTermination(), source, new String[]{"Name", "portTermination", "GUID", "{ADC3F21D-1C5A-451a-A65C-FBD03F6D8D87}", "Id", "481673579"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ProtocolVersion(), source, new String[]{"Name", "protocolVersion", "GUID", "{F592FC9A-3D2F-4cbe-962D-3F5E5E835668}", "Id", "-458378876"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ReceiveProcessingPeriod(), source, new String[]{"Name", "receiveProcessingPeriod", "GUID", "{EF769DD2-A36E-454c-B795-63F68F611AB2}", "Id", "-1480844162"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_SyncJumpWidth(), source, new String[]{"Name", "SyncJumpWidth", "GUID", "{F4F7DBBD-14FB-448c-85DE-8840A964EA76}", "Id", "-768465222"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg0(), source, new String[]{"Name", "TimeSeg0", "GUID", "{4AA5004A-003D-470c-9543-CEFE17291160}", "Id", "-1910773069"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg1(), source, new String[]{"Name", "TimeSeg1", "GUID", "{E20B88EF-2D06-40c0-8B4A-AB5B5D094838}", "Id", "2105873272"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TransmitProcessingPeriod(), source, new String[]{"Name", "transmitProcessingPeriod", "GUID", "{279DDD70-D995-43bc-BC1E-AA6A40255216}", "Id", "-612818480"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortInstanceEClass, source, new String[]{"Name", "ECUCommunicationPortInstance", "Modified", "Thu Apr 14 10:07:07 CEST 2005", "Created", "Tue Jun 29 15:08:17 CEST 2004", "GUID", "{4D20225B-C001-4d06-A831-696BEDA90E13}", "Id", "-18785514"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommPortId(), source, new String[]{"Name", "commPortId", "GUID", "{BC0C8A4F-30BD-402a-9AD1-B1DC1996FDFD}", "Id", "485672671"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommunicationSpeedPort(), source, new String[]{"Name", "communicationSpeedPort", "GUID", "{81F57D35-4CC1-4078-8643-BC2375376C77}", "Id", "1120719645"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_WakeUpOnCommPortSupported(), source, new String[]{"Name", "wakeUpOnCommPortSupported", "GUID", "{2829BEFE-D02A-427e-8AFC-CFA525AAF810}", "Id", "-770093260"});
        this.addAnnotation((ENamedElement)this.connectorEClass, source, new String[]{"Name", "Connector", "Modified", "Tue Aug 22 14:03:42 CEST 2006", "Created", "Tue Aug 22 11:03:07 CEST 2006", "GUID", "{6EFF608E-7389-4a88-82D7-1D8D9940EEF1}", "Id", "1770376117"});
        this.addAnnotation((ENamedElement)this.ecuInstanceEClass, source, new String[]{"Name", "ECUInstance", "Modified", "Thu Sep 21 18:26:19 CEST 2006", "Created", "Tue Apr 27 09:42:09 CEST 2004", "GUID", "{3FD02593-377C-4050-B07F-96A1D87BD75B}", "Id", "2001751560"});
        this.addAnnotation((ENamedElement)this.getECUInstance_COMProcessingPeriod(), source, new String[]{"Name", "COMProcessingPeriod", "GUID", "{B5BA3391-7643-4299-ACA6-74F6705B62D0}", "Id", "1156403515"});
        this.addAnnotation((ENamedElement)this.getECUInstance_EcuAddress(), source, new String[]{"Name", "EcuAddress", "GUID", "{EBD657A9-FDA3-4b0e-8260-B268C683029B}", "Id", "2033772393"});
        this.addAnnotation((ENamedElement)this.getECUInstance_PowerSupply(), source, new String[]{"Name", "powerSupply", "GUID", "{34FE2458-879B-4cee-9D1E-57C078B2B788}", "Id", "-64421002"});
        this.addAnnotation((ENamedElement)this.getECUInstance_ProcessingUnitEndianness(), source, new String[]{"Name", "processingUnitEndianness", "GUID", "{13AFD9A5-D754-4f22-BC68-8584FBCBA5AF}", "Id", "1160044461"});
        this.addAnnotation((ENamedElement)this.getECUInstance_SleepModeSupported(), source, new String[]{"Name", "sleepModeSupported", "GUID", "{5AE3C439-5365-46fa-BA04-FB9DDCF3EC75}", "Id", "1003593663"});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnInternalSupported(), source, new String[]{"Name", "wakeUpOnInternalSupported", "GUID", "{098F54C1-B750-47e4-A1A4-701E2CDC1D26}", "Id", "1310633620"});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnIoSupported(), source, new String[]{"Name", "wakeUpOnIoSupported", "GUID", "{58C89ECA-8AD2-41cb-83AC-F3EC13E49938}", "Id", "222144517"});
        this.addAnnotation((ENamedElement)this.topologyElementEClass, source, new String[]{"Name", "TopologyElement", "Modified", "Wed Sep 20 11:56:23 CEST 2006", "Created", "Tue Sep 19 13:11:50 CEST 2006", "GUID", "{C0F2AF43-8B8C-4e69-8E20-AFDD9385C348}", "Id", "-279814481"});
        this.addAnnotation((ENamedElement)this.flexrayClusterEClass, source, new String[]{"Name", "FlexrayCluster", "Modified", "Tue Jul 19 14:15:38 CEST 2005", "Created", "Wed May 12 12:03:44 CEST 2004", "GUID", "{89676619-925E-4f04-B0FD-BB4A7762B7DB}", "Id", "458285031"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ActionPointOffset(), source, new String[]{"Name", "actionPointOffset", "GUID", "{D69F9B05-99D7-4a34-A5B9-51CD64AC3F15}", "Id", "2040771200"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_BusGuardianEnablePart(), source, new String[]{"Name", "busGuardianEnablePart", "GUID", "{5E7D0B2C-A809-4aae-BED0-9905F62D5FC6}", "Id", "-1809489791"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMax(), source, new String[]{"Name", "casRxLowMax", "GUID", "{E129C88C-607B-4b41-9F7D-CE42303242A4}", "Id", "305497339"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMin(), source, new String[]{"Name", "casRxLowMin", "GUID", "{E9716388-3358-4ada-A4CC-A28726323885}", "Id", "-526261728"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ColdStartAttempts(), source, new String[]{"Name", "coldStartAttempts", "GUID", "{38971C87-B0F6-4335-B765-CF8FDE88B96D}", "Id", "1091711707"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_Cycle(), source, new String[]{"Name", "cycle", "GUID", "{4FA48715-E9E8-4d73-8129-31A4505B6D4D}", "Id", "-1868950194"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_DynamicSlotIdlePhase(), source, new String[]{"Name", "dynamicSlotIdlePhase", "GUID", "{66678A0B-4B37-44a6-9793-12CE7D291C24}", "Id", "-1069563246"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ListenNoise(), source, new String[]{"Name", "listenNoise", "GUID", "{D069EE27-9BFF-41d6-A80F-BC0B0E301164}", "Id", "-5621046"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroInitialOffset(), source, new String[]{"Name", "macroInitialOffset", "GUID", "{20EA5580-E6D7-45a0-96C7-E20E58A4DDE8}", "Id", "1813301216"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroPerCycle(), source, new String[]{"Name", "macroPerCycle", "GUID", "{2F92440B-F165-4eb0-BD2D-21AD39ACD6B1}", "Id", "574476675"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacrotickDuration(), source, new String[]{"Name", "macrotickDuration", "GUID", "{3A6FBCE0-44BA-4e1c-9A85-BC1961956787}", "Id", "-1596357112"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxInitialisationError(), source, new String[]{"Name", "maxInitialisationError", "GUID", "{F595BF45-4811-4768-AC78-D0281B85BC81}", "Id", "245874537"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionFatal(), source, new String[]{"Name", "maxWithoutClockCorrectionFatal", "GUID", "{8423392F-B3ED-4258-8CFD-477366C15727}", "Id", "-692782218"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionPassive(), source, new String[]{"Name", "maxWithoutClockCorrectionPassive", "GUID", "{EB142834-DFA6-49a1-AF7B-DC14E8FF4A5A}", "Id", "1731999679"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotActionPointOffset(), source, new String[]{"Name", "minislotActionPointOffset", "GUID", "{7F2AC261-C55A-4be2-AEC7-1526E68C039E}", "Id", "-1867517071"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotDuration(), source, new String[]{"Name", "minislotDuration", "GUID", "{0180C2B6-99A5-4050-A4D9-8C2FF6A8C5D5}", "Id", "-572926938"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkIdleTime(), source, new String[]{"Name", "networkIdleTime", "GUID", "{24B6651E-F817-46d4-92A4-32A5ACD85F9C}", "Id", "-354070306"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkManagementVectorLength(), source, new String[]{"Name", "networkManagementVectorLength", "GUID", "{E66D8A02-E6A3-4177-83B4-A008175C65FC}", "Id", "-1268029804"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfMinislots(), source, new String[]{"Name", "numberOfMinislots", "GUID", "{87ADC0AA-0DD8-4256-8F51-00AA0FFF2DFA}", "Id", "1343934581"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfStaticSlots(), source, new String[]{"Name", "numberOfStaticSlots", "GUID", "{B928CC09-B556-4ffe-B69B-4B0E791F2DC3}", "Id", "706845496"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_OffsetCorrectionStart(), source, new String[]{"Name", "OffsetCorrectionStart", "GUID", "{169E0B9E-2558-4b95-9A4A-779A8D2DA139}", "Id", "1422237474"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_PayloadLengthStatic(), source, new String[]{"Name", "payloadLengthStatic", "GUID", "{5499AF36-44DB-44f9-939B-6ED1033B5C6B}", "Id", "1331468505"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SampleClockPeriod(), source, new String[]{"Name", "sampleClockPeriod", "GUID", "{7E14CC1A-E28B-4342-99C6-8EFACCD26AFB}", "Id", "-1300845817"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_StaticSlotDuration(), source, new String[]{"Name", "staticSlotDuration", "GUID", "{B975E472-53F9-4923-97EC-1C9563BA6091}", "Id", "-894359181"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SymbolWindow(), source, new String[]{"Name", "symbolWindow", "GUID", "{21932766-E66B-4208-BE22-0DC3B9DF245F}", "Id", "-710600632"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SyncNodeMax(), source, new String[]{"Name", "syncNodeMax", "GUID", "{3B36EB64-2C23-49b7-8D3E-B4B2BE6A2949}", "Id", "-469336350"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_TransmissionStartSequenceDuration(), source, new String[]{"Name", "transmissionStartSequenceDuration", "GUID", "{5BD61368-7B77-4773-98B2-F0FD52E241C1}", "Id", "-616277444"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxIdle(), source, new String[]{"Name", "wakeUpSymbolRxIdle", "GUID", "{2DB0EF64-7CB3-41af-9F75-4E0F88A9BCA1}", "Id", "-1948912471"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxLow(), source, new String[]{"Name", "wakeUpSymbolRxLow", "GUID", "{1ADC2432-B6D0-4df1-A711-A747380D2042}", "Id", "1806423990"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxWindow(), source, new String[]{"Name", "wakeUpSymbolRxWindow", "GUID", "{6EFC0C02-802C-408f-AE38-B9697E6FAA1F}", "Id", "813854463"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxIdle(), source, new String[]{"Name", "wakeUpSymbolTxIdle", "GUID", "{0B550597-EC3D-4791-BAA9-70B13134899E}", "Id", "-1150903084"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxLow(), source, new String[]{"Name", "wakeUpSymbolTxLow", "GUID", "{D3DFD9AD-4EDF-4398-B1FC-49561EED82EC}", "Id", "854591813"});
        this.addAnnotation((ENamedElement)this.flexrayCommunicationPortInstanceEClass, source, new String[]{"Name", "FlexrayCommunicationPortInstance", "Modified", "Tue Jul 19 14:15:38 CEST 2005", "Created", "Tue Jun 29 15:14:57 CEST 2004", "GUID", "{217499C4-F712-471d-B92E-5C58C4A89EA3}", "Id", "931857939"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AcceptedStartupRange(), source, new String[]{"Name", "acceptedStartupRange", "GUID", "{A7830F02-FDCA-4ff7-BE34-93BA5B11F875}", "Id", "184010257"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowHaltDueToClock(), source, new String[]{"Name", "allowHaltDueToClock", "GUID", "{77E55646-C2C3-496f-9AB6-5BDD8A112F4C}", "Id", "660783513"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowPassiveToActive(), source, new String[]{"Name", "allowPassiveToActive", "GUID", "{B730A137-8752-414d-BE9D-48CA2420311E}", "Id", "1097742416"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ClusterDriftDamping(), source, new String[]{"Name", "clusterDriftDamping", "GUID", "{6AE2B71D-B8CE-4986-B6D1-F103FF0E1669}", "Id", "-516130841"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationA(), source, new String[]{"Name", "delayCompensationA", "GUID", "{BB380D2C-318C-43ea-9A4C-BFD3A7CE311D}", "Id", "-800780992"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationB(), source, new String[]{"Name", "delayCompensationB", "GUID", "{1449CF1E-896D-43a4-A529-64DA4E9A1AA6}", "Id", "-1240804287"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DynamicSegmentEnable(), source, new String[]{"Name", "dynamicSegmentEnable", "GUID", "{02D97557-E209-440c-BBFE-6A50D1291439}", "Id", "-1645499094"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternOffsetCorrection(), source, new String[]{"Name", "externOffsetCorrection", "GUID", "{4BF7934B-2107-4990-B4BE-04F8B3097095}", "Id", "2021731427"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternRateCorrection(), source, new String[]{"Name", "externRateCorrection", "GUID", "{B6CB1854-6537-4231-9D98-A3E1695E9AB2}", "Id", "-1504329880"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotID(), source, new String[]{"Name", "keySlotID", "GUID", "{C8D0D47A-77DA-4262-BF41-D0D3AFFB400C}", "Id", "1236956204"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp(), source, new String[]{"Name", "keySlotUsedForStartUp", "GUID", "{F843C026-A2C2-4503-929A-FE589331C8E5}", "Id", "-1457130563"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForSync(), source, new String[]{"Name", "keySlotUsedForSync", "GUID", "{F839967E-3A2E-45e6-AAD1-AF806ECC9EAA}", "Id", "-756570566"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_LatestTX(), source, new String[]{"Name", "latestTX", "GUID", "{44EA9E3C-828E-451d-A7EE-0422B66313A9}", "Id", "420091209"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ListenTimeout(), source, new String[]{"Name", "listenTimeout", "GUID", "{21264856-5CBE-4e0f-B0E6-6EB2C0C8DC68}", "Id", "512775219"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaxDrift(), source, new String[]{"Name", "maxDrift", "GUID", "{F788538C-7708-460a-BC50-43AC10F360BB}", "Id", "-1575314020"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength(), source, new String[]{"Name", "maximumDynamicPayloadLength", "GUID", "{CE3E66B5-FE2E-46d4-BF73-8961A5391B21}", "Id", "1112179971"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetA(), source, new String[]{"Name", "MicroInitialOffsetA", "GUID", "{EE0AC44C-6D31-4896-B2D3-69485BEC1B5B}", "Id", "2025920254"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetB(), source, new String[]{"Name", "MicroInitialOffsetB", "GUID", "{8BE3A831-14F3-44a7-9F4F-7E54A4880FD2}", "Id", "-31899993"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerCycle(), source, new String[]{"Name", "microPerCycle", "GUID", "{CB00BEB6-ECF3-4b7b-B8ED-26BA57BB148E}", "Id", "-1771962209"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerMacroNom(), source, new String[]{"Name", "MicroPerMacroNom", "GUID", "{7561B7DB-1B97-4b19-8D7C-0E597B4AC5BC}", "Id", "484418282"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicrotickDuration(), source, new String[]{"Name", "microtickDuration", "GUID", "{881BEBFD-AFD6-4043-A2EA-1CC89D343895}", "Id", "460652845"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SamplesPerMicrotick(), source, new String[]{"Name", "samplesPerMicrotick", "GUID", "{804E0BBC-1874-45cc-AB6C-84FBC4AA9FB1}", "Id", "1489280760"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SingleSlotEnabled(), source, new String[]{"Name", "SingleSlotEnabled", "GUID", "{145A7590-3108-45e3-8255-812B6FE22E99}", "Id", "-8778404"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_StartUpNode(), source, new String[]{"Name", "startUpNode", "GUID", "{8CCBC116-7E61-40d9-A579-BBD2ED8D7E60}", "Id", "843023504"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SyncSlot(), source, new String[]{"Name", "syncSlot", "GUID", "{A9E8DCE6-4146-4cbb-9913-37C6C36EF734}", "Id", "977513809"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_WakeUpPattern(), source, new String[]{"Name", "wakeUpPattern", "GUID", "{25D4C03D-2D67-4c3b-BEF5-E3F43065BA03}", "Id", "1171895662"});
        this.addAnnotation((ENamedElement)this.hubEClass, source, new String[]{"Name", "Hub", "Modified", "Fri Nov 17 21:53:46 CET 2006", "Created", "Wed May 12 11:35:05 CEST 2004", "GUID", "{512D5DDF-ECDE-4cd0-99B0-AFD6D6B51798}", "Id", "-954379636"});
        this.addAnnotation((ENamedElement)this.getHub_HubType(), source, new String[]{"Name", "hubType", "GUID", "{6A04C0CC-9D28-4c7d-A590-E8DBFF18125A}", "Id", "1062292125"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceEClass, source, new String[]{"Name", "LINCommunicationPortInstance", "Modified", "Tue Mar 15 15:29:55 CET 2005", "Created", "Tue Jun 29 15:14:57 CEST 2004", "GUID", "{07D9D7F2-9FA5-464a-BC3B-EE1FF22CC73A}", "Id", "-1445309105"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_DiagnosticAddress(), source, new String[]{"Name", "diagnosticAddress", "GUID", "{51CABFB8-0285-429d-83CD-4DA9FBACEAA3}", "Id", "-630023758"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_FunctionID(), source, new String[]{"Name", "functionID", "GUID", "{2D3B4FAD-9C1C-4f97-A29B-699521204FF2}", "Id", "2125349041"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_InitialNADs(), source, new String[]{"Name", "initialNAD", "GUID", "{5F1E3FDC-BFD6-42f5-8716-1FDF83A41D51}", "Id", "-826609589"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxMessageLength(), source, new String[]{"Name", "maxMessageLength", "GUID", "{FF09C1B4-8BC1-401e-A9C2-C97FE06B51A6}", "Id", "-1698863667"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxPermittedSlaveJitter(), source, new String[]{"Name", "maxPermittedSlaveJitter", "GUID", "{67FFA491-F020-4ed7-AE67-C502AE584149}", "Id", "1232345969"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_NodeRole(), source, new String[]{"Name", "nodeRole", "GUID", "{C7C5D198-5DFF-4407-A7EC-A104DC993C7F}", "Id", "214300900"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_P2Min(), source, new String[]{"Name", "p2Min", "GUID", "{5901E03B-BF15-4290-94E3-0EF9E6F2EFD7}", "Id", "-1905608121"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_ProtocolVersion(), source, new String[]{"Name", "protocolVersion", "GUID", "{4E39D32B-8054-4b93-A9C2-48D2923FE5A7}", "Id", "-513173483"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_StMin(), source, new String[]{"Name", "stMin", "GUID", "{5596317E-0AAC-4c3c-A471-920C1205A374}", "Id", "1524533372"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupplierID(), source, new String[]{"Name", "supplierID", "GUID", "{BC312305-5921-4304-A237-9062FE32B4AA}", "Id", "645898032"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupportSID(), source, new String[]{"Name", "supportSID", "GUID", "{E10B55EB-FC6F-4290-B834-78157DFA6220}", "Id", "-1895754998"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBase(), source, new String[]{"Name", "timeBase", "GUID", "{7CD7721C-BAAA-4605-B4B4-E83847E4AF27}", "Id", "1006478333"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBaseJitter(), source, new String[]{"Name", "timeBaseJitter", "GUID", "{32BAB27C-D84D-476e-8B01-BF37DA5F6048}", "Id", "992682362"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_VariantID(), source, new String[]{"Name", "variantID", "GUID", "{0BCB9E55-B37E-4f8e-9C01-1D86D0BC65B8}", "Id", "1241539870"});
        this.addAnnotation((ENamedElement)this.linSubBusEClass, source, new String[]{"Name", "LINSubBus", "Modified", "Mon Mar 21 12:39:26 CET 2005", "Created", "Tue Nov 16 17:02:46 CET 2004", "GUID", "{D1067B82-5D1B-4d3f-9C27-9D4E5336C00A}", "Id", "1100620966"});
        this.addAnnotation((ENamedElement)this.getLINSubBus_MaxPermittedSlaveJitter(), source, new String[]{"Name", "maxPermittedSlaveJitter", "GUID", "{AC38ABC9-F941-4e4b-ABA8-0C9599CBFCDC}", "Id", "-931895993"});
        this.addAnnotation((ENamedElement)this.physicalChannelEClass, source, new String[]{"Name", "PhysicalChannel", "Modified", "Fri Nov 17 21:34:45 CET 2006", "Created", "Fri Oct 22 14:14:51 CEST 2004", "GUID", "{2DB83349-70C9-4c5d-9253-AE229CE66C7D}", "Id", "965616360"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentEClass, source, new String[]{"Name", "PhysicalMediumSegment", "Modified", "Fri Nov 17 21:52:56 CET 2006", "Created", "Wed May 12 11:39:28 CEST 2004", "GUID", "{58276515-2800-4f55-8844-8DECD62CB0A5}", "Id", "209276579"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumDataLines(), source, new String[]{"Name", "physicalMediumDataLines", "GUID", "{DB047C94-7FE9-46c7-BAA8-BB8220FE594D}", "Id", "289407369"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumType(), source, new String[]{"Name", "physicalMediumType", "GUID", "{32B6DA49-6A2F-4c11-8F1B-6FE47951B385}", "Id", "-407288664"});
        this.addAnnotation((ENamedElement)this.systemTopologyTypeEClass, source, new String[]{"Name", "SystemTopologyType", "Modified", "Mon Jun 19 15:28:11 CEST 2006", "Created", "Mon Mar 14 17:27:38 CET 2005", "GUID", "{90882F80-391B-43cc-B7D8-F50B48E81A99}", "Id", "1110817658"});
        this.addAnnotation((ENamedElement)this.unspecifiedConnectionEClass, source, new String[]{"Name", "UnspecifiedConnection", "Modified", "Fri Apr 15 17:58:45 CEST 2005", "Created", "Mon Mar 21 12:33:58 CET 2005", "GUID", "{DCF0C733-AA9A-4916-AF94-49C35775733B}", "Id", "1111404838"});
        this.addAnnotation((ENamedElement)this.communicationClusterEClass, source, new String[]{"Name", "CommunicationCluster", "Modified", "Fri Nov 17 21:27:06 CET 2006", "Created", "Thu Apr 08 15:02:46 CEST 2004", "GUID", "{1AD4117D-A360-4474-AE9F-4BB60186799C}", "Id", "1737467439"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_CommunicationSpeedBus(), source, new String[]{"Name", "communicationSpeedBus", "GUID", "{3ADE1CAA-DCA0-4333-BEFF-6F0CA5D24B86}", "Id", "2130796562"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolName(), source, new String[]{"Name", "protocolName", "GUID", "{CD8E7D5F-7299-4c76-8279-618C1BDB551D}", "Id", "-1982247792"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolVersion(), source, new String[]{"Name", "protocolVersion", "GUID", "{52E3D0B2-7486-4d16-B03C-D0E5CB4DE39C}", "Id", "-906242735"});
    }

    /*
     * Opcode count of 13879 triggered aggressive code reduction.  Override with --aggressivesizethreshold.
     */
    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "TOPOLOGY", "xml.namePlural", "TOPOLOGYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.canBusEClass, source, new String[]{"xml.namePlural", "CAN-BUSES", "xml.tags", "xml.namePlural=\"CAN-BUSES\"", "xml.name", "CAN-BUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCANBus_CanAddressingMode(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "CAN-ADDRESSING-MODE", "xml.namePlural", "CAN-ADDRESSING-MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.canBusCanAddressingModeEnumEEnum, source, new String[]{"xml.name", "CAN-BUS-CAN-ADDRESSING-MODE-ENUM", "xml.namePlural", "CAN-BUS-CAN-ADDRESSING-MODE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.canBusCanAddressingModeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "STANDARD", "xml.namePlural", "STANDARDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.canBusCanAddressingModeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "EXTENDED", "xml.namePlural", "EXTENDEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceEClass, source, new String[]{"xml.name", "CAN-COMMUNICATION-PORT-INSTANCE", "xml.namePlural", "CAN-COMMUNICATION-PORT-INSTANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_BRP(), source, new String[]{"xml.name", "BRP", "xml.namePlural", "BRPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter(), source, new String[]{"xml.name", "MAX-PERMITTED-PROCESSING-PERIOD-JITTER", "xml.namePlural", "MAX-PERMITTED-PROCESSING-PERIOD-JITTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_PortTermination(), source, new String[]{"xml.name", "PORT-TERMINATION", "xml.namePlural", "PORT-TERMINATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ProtocolVersion(), source, new String[]{"xml.name", "PROTOCOL-VERSION", "xml.namePlural", "PROTOCOL-VERSIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ReceiveProcessingPeriod(), source, new String[]{"xml.name", "RECEIVE-PROCESSING-PERIOD", "xml.namePlural", "RECEIVE-PROCESSING-PERIODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_SyncJumpWidth(), source, new String[]{"xml.name", "SYNC-JUMP-WIDTH", "xml.namePlural", "SYNC-JUMP-WIDTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg0(), source, new String[]{"xml.name", "TIME-SEG-0", "xml.namePlural", "TIME-SEG-0S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg1(), source, new String[]{"xml.name", "TIME-SEG-1", "xml.namePlural", "TIME-SEG-1S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TransmitProcessingPeriod(), source, new String[]{"xml.name", "TRANSMIT-PROCESSING-PERIOD", "xml.namePlural", "TRANSMIT-PROCESSING-PERIODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortInstanceEClass, source, new String[]{"xml.name", "ECU-COMMUNICATION-PORT-INSTANCE", "xml.namePlural", "ECU-COMMUNICATION-PORT-INSTANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommPortId(), source, new String[]{"xml.name", "COMM-PORT-ID", "xml.namePlural", "COMM-PORT-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommunicationSpeedPort(), source, new String[]{"xml.name", "COMMUNICATION-SPEED-PORT", "xml.namePlural", "COMMUNICATION-SPEED-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_Port(), source, new String[]{"xml.name", "PORT-TREF", "xml.namePlural", "PORT-TREFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_WakeUpOnCommPortSupported(), source, new String[]{"xml.name", "WAKE-UP-ON-COMM-PORT-SUPPORTED", "xml.namePlural", "WAKE-UP-ON-COMM-PORT-SUPPORTEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceProtocolVersionEnumEEnum, source, new String[]{"xml.name", "CAN-COMMUNICATION-PORT-INSTANCE-PROTOCOL-VERSION-ENUM", "xml.namePlural", "CAN-COMMUNICATION-PORT-INSTANCE-PROTOCOL-VERSION-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceProtocolVersionEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "20-A", "xml.namePlural", "20-AS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceProtocolVersionEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "20-B", "xml.namePlural", "20-BS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.connectorEClass, source, new String[]{"xml.name", "CONNECTOR", "xml.namePlural", "CONNECTORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getConnector_CommPort(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "COMM-PORT-REF", "xml.namePlural", "COMM-PORT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecuInstanceEClass, source, new String[]{"xml.name", "ECU-INSTANCE", "xml.namePlural", "ECU-INSTANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_COMProcessingPeriod(), source, new String[]{"xml.name", "COM-PROCESSING-PERIOD", "xml.namePlural", "COM-PROCESSING-PERIODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_CommPorts(), source, new String[]{"xml.name", "COMM-PORT", "xml.namePlural", "COMM-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_Connectors(), source, new String[]{"xml.name", "CONNECTOR", "xml.namePlural", "CONNECTORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_EcuAddress(), source, new String[]{"xml.name", "ECU-ADDRESS", "xml.namePlural", "ECU-ADDRESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_Ecu(), source, new String[]{"xml.name", "ECU-TREF", "xml.namePlural", "ECU-TREFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_PowerSupply(), source, new String[]{"xml.name", "POWER-SUPPLY", "xml.namePlural", "POWER-SUPPLYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_ProcessingUnitEndianness(), source, new String[]{"xml.name", "PROCESSING-UNIT-ENDIANNESS", "xml.namePlural", "PROCESSING-UNIT-ENDIANNESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_SleepModeSupported(), source, new String[]{"xml.name", "SLEEP-MODE-SUPPORTED", "xml.namePlural", "SLEEP-MODE-SUPPORTEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnInternalSupported(), source, new String[]{"xml.name", "WAKE-UP-ON-INTERNAL-SUPPORTED", "xml.namePlural", "WAKE-UP-ON-INTERNAL-SUPPORTEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnIoSupported(), source, new String[]{"xml.name", "WAKE-UP-ON-IO-SUPPORTED", "xml.namePlural", "WAKE-UP-ON-IO-SUPPORTEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.topologyElementEClass, source, new String[]{"xml.name", "TOPOLOGY-ELEMENT", "xml.namePlural", "TOPOLOGY-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getTopologyElement_Childs(), source, new String[]{"xml.name", "CHILD-REF", "xml.namePlural", "CHILD-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTopologyElement_Parent(), source, new String[]{"xml.name", "PARENT-REF", "xml.namePlural", "PARENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecuInstancePowerSupplyEnumEEnum, source, new String[]{"xml.name", "ECU-INSTANCE-POWER-SUPPLY-ENUM", "xml.namePlural", "ECU-INSTANCE-POWER-SUPPLY-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ecuInstancePowerSupplyEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "BATTERY", "xml.namePlural", "BATTERYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ecuInstancePowerSupplyEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "IGNITION", "xml.namePlural", "IGNITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ecuInstancePowerSupplyEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "ACCESSORY", "xml.namePlural", "ACCESSORYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ecuInstancePowerSupplyEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "OTHER", "xml.namePlural", "OTHERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.flexrayClusterEClass, source, new String[]{"xml.name", "FLEXRAY-CLUSTER", "xml.namePlural", "FLEXRAY-CLUSTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ActionPointOffset(), source, new String[]{"xml.name", "ACTION-POINT-OFFSET", "xml.namePlural", "ACTION-POINT-OFFSETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_BusGuardianEnablePart(), source, new String[]{"xml.name", "BUS-GUARDIAN-ENABLE-PART", "xml.namePlural", "BUS-GUARDIAN-ENABLE-PARTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMax(), source, new String[]{"xml.name", "CAS-RX-LOW-MAX", "xml.namePlural", "CAS-RX-LOW-MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMin(), source, new String[]{"xml.name", "CAS-RX-LOW-MIN", "xml.namePlural", "CAS-RX-LOW-MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ColdStartAttempts(), source, new String[]{"xml.name", "COLD-START-ATTEMPTS", "xml.namePlural", "COLD-START-ATTEMPTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_Cycle(), source, new String[]{"xml.name", "CYCLE", "xml.namePlural", "CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_DynamicSlotIdlePhase(), source, new String[]{"xml.name", "DYNAMIC-SLOT-IDLE-PHASE", "xml.namePlural", "DYNAMIC-SLOT-IDLE-PHASES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ListenNoise(), source, new String[]{"xml.name", "LISTEN-NOISE", "xml.namePlural", "LISTEN-NOISES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroInitialOffset(), source, new String[]{"xml.name", "MACRO-INITIAL-OFFSET", "xml.namePlural", "MACRO-INITIAL-OFFSETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroPerCycle(), source, new String[]{"xml.name", "MACRO-PER-CYCLE", "xml.namePlural", "MACRO-PER-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacrotickDuration(), source, new String[]{"xml.name", "MACROTICK-DURATION", "xml.namePlural", "MACROTICK-DURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxInitialisationError(), source, new String[]{"xml.name", "MAX-INITIALISATION-ERROR", "xml.namePlural", "MAX-INITIALISATION-ERRORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionFatal(), source, new String[]{"xml.name", "MAX-WITHOUT-CLOCK-CORRECTION-FATAL", "xml.namePlural", "MAX-WITHOUT-CLOCK-CORRECTION-FATALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "12", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionPassive(), source, new String[]{"xml.name", "MAX-WITHOUT-CLOCK-CORRECTION-PASSIVE", "xml.namePlural", "MAX-WITHOUT-CLOCK-CORRECTION-PASSIVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "13", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotActionPointOffset(), source, new String[]{"xml.name", "MINISLOT-ACTION-POINT-OFFSET", "xml.namePlural", "MINISLOT-ACTION-POINT-OFFSETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "14", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotDuration(), source, new String[]{"xml.name", "MINISLOT-DURATION", "xml.namePlural", "MINISLOT-DURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "15", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkIdleTime(), source, new String[]{"xml.name", "NETWORK-IDLE-TIME", "xml.namePlural", "NETWORK-IDLE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "16", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkManagementVectorLength(), source, new String[]{"xml.name", "NETWORK-MANAGEMENT-VECTOR-LENGTH", "xml.namePlural", "NETWORK-MANAGEMENT-VECTOR-LENGTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "17", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfMinislots(), source, new String[]{"xml.name", "NUMBER-OF-MINISLOTS", "xml.namePlural", "NUMBER-OF-MINISLOTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "18", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfStaticSlots(), source, new String[]{"xml.name", "NUMBER-OF-STATIC-SLOTS", "xml.namePlural", "NUMBER-OF-STATIC-SLOTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "19", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_OffsetCorrectionStart(), source, new String[]{"xml.name", "OFFSET-CORRECTION-START", "xml.namePlural", "OFFSET-CORRECTION-STARTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_PayloadLengthStatic(), source, new String[]{"xml.name", "PAYLOAD-LENGTH-STATIC", "xml.namePlural", "PAYLOAD-LENGTH-STATICS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "21", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SampleClockPeriod(), source, new String[]{"xml.name", "SAMPLE-CLOCK-PERIOD", "xml.namePlural", "SAMPLE-CLOCK-PERIODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "22", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_StaticSlotDuration(), source, new String[]{"xml.name", "STATIC-SLOT-DURATION", "xml.namePlural", "STATIC-SLOT-DURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "23", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SymbolWindow(), source, new String[]{"xml.name", "SYMBOL-WINDOW", "xml.namePlural", "SYMBOL-WINDOWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "24", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SyncNodeMax(), source, new String[]{"xml.name", "SYNC-NODE-MAX", "xml.namePlural", "SYNC-NODE-MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "25", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_TransmissionStartSequenceDuration(), source, new String[]{"xml.name", "TRANSMISSION-START-SEQUENCE-DURATION", "xml.namePlural", "TRANSMISSION-START-SEQUENCE-DURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "26", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxIdle(), source, new String[]{"xml.name", "WAKE-UP-SYMBOL-RX-IDLE", "xml.namePlural", "WAKE-UP-SYMBOL-RX-IDLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "27", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxLow(), source, new String[]{"xml.name", "WAKE-UP-SYMBOL-RX-LOW", "xml.namePlural", "WAKE-UP-SYMBOL-RX-LOWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "28", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxWindow(), source, new String[]{"xml.name", "WAKE-UP-SYMBOL-RX-WINDOW", "xml.namePlural", "WAKE-UP-SYMBOL-RX-WINDOWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "29", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxIdle(), source, new String[]{"xml.name", "WAKE-UP-SYMBOL-TX-IDLE", "xml.namePlural", "WAKE-UP-SYMBOL-TX-IDLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxLow(), source, new String[]{"xml.name", "WAKE-UP-SYMBOL-TX-LOW", "xml.namePlural", "WAKE-UP-SYMBOL-TX-LOWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "31", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.flexrayCommunicationPortInstanceEClass, source, new String[]{"xml.name", "FLEXRAY-COMMUNICATION-PORT-INSTANCE", "xml.namePlural", "FLEXRAY-COMMUNICATION-PORT-INSTANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AcceptedStartupRange(), source, new String[]{"xml.name", "ACCEPTED-STARTUP-RANGE", "xml.namePlural", "ACCEPTED-STARTUP-RANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowHaltDueToClock(), source, new String[]{"xml.name", "ALLOW-HALT-DUE-TO-CLOCK", "xml.namePlural", "ALLOW-HALT-DUE-TO-CLOCKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowPassiveToActive(), source, new String[]{"xml.name", "ALLOW-PASSIVE-TO-ACTIVE", "xml.namePlural", "ALLOW-PASSIVE-TO-ACTIVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ClusterDriftDamping(), source, new String[]{"xml.name", "CLUSTER-DRIFT-DAMPING", "xml.namePlural", "CLUSTER-DRIFT-DAMPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationA(), source, new String[]{"xml.name", "DELAY-COMPENSATION-A", "xml.namePlural", "DELAY-COMPENSATION-AS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationB(), source, new String[]{"xml.name", "DELAY-COMPENSATION-B", "xml.namePlural", "DELAY-COMPENSATION-BS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DynamicSegmentEnable(), source, new String[]{"xml.name", "DYNAMIC-SEGMENT-ENABLE", "xml.namePlural", "DYNAMIC-SEGMENT-ENABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternOffsetCorrection(), source, new String[]{"xml.name", "EXTERN-OFFSET-CORRECTION", "xml.namePlural", "EXTERN-OFFSET-CORRECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternRateCorrection(), source, new String[]{"xml.name", "EXTERN-RATE-CORRECTION", "xml.namePlural", "EXTERN-RATE-CORRECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotID(), source, new String[]{"xml.name", "KEY-SLOT-ID", "xml.namePlural", "KEY-SLOT-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp(), source, new String[]{"xml.name", "KEY-SLOT-USED-FOR-START-UP", "xml.namePlural", "KEY-SLOT-USED-FOR-START-UPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForSync(), source, new String[]{"xml.name", "KEY-SLOT-USED-FOR-SYNC", "xml.namePlural", "KEY-SLOT-USED-FOR-SYNCS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_LatestTX(), source, new String[]{"xml.name", "LATEST-TX", "xml.namePlural", "LATEST-TXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "12", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ListenTimeout(), source, new String[]{"xml.name", "LISTEN-TIMEOUT", "xml.namePlural", "LISTEN-TIMEOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "13", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaxDrift(), source, new String[]{"xml.name", "MAX-DRIFT", "xml.namePlural", "MAX-DRIFTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "14", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength(), source, new String[]{"xml.name", "MAXIMUM-DYNAMIC-PAYLOAD-LENGTH", "xml.namePlural", "MAXIMUM-DYNAMIC-PAYLOAD-LENGTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "15", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetA(), source, new String[]{"xml.name", "MICRO-INITIAL-OFFSET-A", "xml.namePlural", "MICRO-INITIAL-OFFSET-AS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "16", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetB(), source, new String[]{"xml.name", "MICRO-INITIAL-OFFSET-B", "xml.namePlural", "MICRO-INITIAL-OFFSET-BS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "17", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerCycle(), source, new String[]{"xml.name", "MICRO-PER-CYCLE", "xml.namePlural", "MICRO-PER-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "18", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerMacroNom(), source, new String[]{"xml.name", "MICRO-PER-MACRO-NOM", "xml.namePlural", "MICRO-PER-MACRO-NOMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "19", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicrotickDuration(), source, new String[]{"xml.name", "MICROTICK-DURATION", "xml.namePlural", "MICROTICK-DURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SamplesPerMicrotick(), source, new String[]{"xml.name", "SAMPLES-PER-MICROTICK", "xml.namePlural", "SAMPLES-PER-MICROTICKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "21", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SingleSlotEnabled(), source, new String[]{"xml.name", "SINGLE-SLOT-ENABLED", "xml.namePlural", "SINGLE-SLOT-ENABLEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "22", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_StartUpNode(), source, new String[]{"xml.name", "START-UP-NODE", "xml.namePlural", "START-UP-NODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "23", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SyncSlot(), source, new String[]{"xml.name", "SYNC-SLOT", "xml.namePlural", "SYNC-SLOTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "24", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_WakeUpPattern(), source, new String[]{"xml.name", "WAKE-UP-PATTERN", "xml.namePlural", "WAKE-UP-PATTERNS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "25", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.hubEClass, source, new String[]{"xml.name", "HUB", "xml.namePlural", "HUBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getHub_HubType(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "HUB-TYPE", "xml.namePlural", "HUB-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.hubHubTypeEnumEEnum, source, new String[]{"xml.name", "HUB-HUB-TYPE-ENUM", "xml.namePlural", "HUB-HUB-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.hubHubTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "ACTIVE-HUB", "xml.namePlural", "ACTIVE-HUBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.hubHubTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "PASSIVE-HUB", "xml.namePlural", "PASSIVE-HUBS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceEClass, source, new String[]{"xml.name", "LIN-COMMUNICATION-PORT-INSTANCE", "xml.namePlural", "LIN-COMMUNICATION-PORT-INSTANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_DiagnosticAddress(), source, new String[]{"xml.name", "DIAGNOSTIC-ADDRESS", "xml.namePlural", "DIAGNOSTIC-ADDRESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_FunctionID(), source, new String[]{"xml.name", "FUNCTION-ID", "xml.namePlural", "FUNCTION-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_InitialNADs(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "INITIAL-NAD", "xml.namePlural", "INITIAL-NADS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxMessageLength(), source, new String[]{"xml.name", "MAX-MESSAGE-LENGTH", "xml.namePlural", "MAX-MESSAGE-LENGTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxPermittedSlaveJitter(), source, new String[]{"xml.name", "MAX-PERMITTED-SLAVE-JITTER", "xml.namePlural", "MAX-PERMITTED-SLAVE-JITTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_NodeRole(), source, new String[]{"xml.name", "NODE-ROLE", "xml.namePlural", "NODE-ROLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_P2Min(), source, new String[]{"xml.name", "P-2-MIN", "xml.namePlural", "P-2-MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_ProtocolVersion(), source, new String[]{"xml.name", "PROTOCOL-VERSION", "xml.namePlural", "PROTOCOL-VERSIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_StMin(), source, new String[]{"xml.name", "ST-MIN", "xml.namePlural", "ST-MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupplierID(), source, new String[]{"xml.name", "SUPPLIER-ID", "xml.namePlural", "SUPPLIER-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupportSID(), source, new String[]{"xml.name", "SUPPORT-SID", "xml.namePlural", "SUPPORT-SIDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBase(), source, new String[]{"xml.name", "TIME-BASE", "xml.namePlural", "TIME-BASES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBaseJitter(), source, new String[]{"xml.name", "TIME-BASE-JITTER", "xml.namePlural", "TIME-BASE-JITTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "12", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_VariantID(), source, new String[]{"xml.name", "VARIANT-ID", "xml.namePlural", "VARIANT-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "13", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceProtocolVersionEnumEEnum, source, new String[]{"xml.name", "LIN-COMMUNICATION-PORT-INSTANCE-PROTOCOL-VERSION-ENUM", "xml.namePlural", "LIN-COMMUNICATION-PORT-INSTANCE-PROTOCOL-VERSION-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceProtocolVersionEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "12", "xml.namePlural", "12S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceProtocolVersionEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "13", "xml.namePlural", "13S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceProtocolVersionEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "20", "xml.namePlural", "20S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceNodeRoleEnumEEnum, source, new String[]{"xml.name", "LIN-COMMUNICATION-PORT-INSTANCE-NODE-ROLE-ENUM", "xml.namePlural", "LIN-COMMUNICATION-PORT-INSTANCE-NODE-ROLE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceNodeRoleEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "MASTER", "xml.namePlural", "MASTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceNodeRoleEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "SLAVE", "xml.namePlural", "SLAVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.linSubBusEClass, source, new String[]{"xml.name", "LIN-SUB-BUS", "xml.namePlural", "LIN-SUB-BUSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getLINSubBus_MaxPermittedSlaveJitter(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "MAX-PERMITTED-SLAVE-JITTER", "xml.namePlural", "MAX-PERMITTED-SLAVE-JITTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.physicalChannelEClass, source, new String[]{"xml.name", "PHYSICAL-CHANNEL", "xml.namePlural", "PHYSICAL-CHANNELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPhysicalChannel_PhysicalSegments(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "PHYSICAL-SEGMENT", "xml.namePlural", "PHYSICAL-SEGMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentEClass, source, new String[]{"xml.name", "PHYSICAL-MEDIUM-SEGMENT", "xml.namePlural", "PHYSICAL-MEDIUM-SEGMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_ConnectedEcus(), source, new String[]{"xml.name", "CONNECTED-ECU-REF", "xml.namePlural", "CONNECTED-ECU-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_ConnectedHubs(), source, new String[]{"xml.name", "CONNECTED-HUB-REF", "xml.namePlural", "CONNECTED-HUB-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumDataLines(), source, new String[]{"xml.name", "PHYSICAL-MEDIUM-DATA-LINES", "xml.namePlural", "PHYSICAL-MEDIUM-DATA-LINESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumType(), source, new String[]{"xml.name", "PHYSICAL-MEDIUM-TYPE", "xml.namePlural", "PHYSICAL-MEDIUM-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum, source, new String[]{"xml.name", "PHYSICAL-MEDIUM-SEGMENT-PHYSICAL-MEDIUM-TYPE-ENUM", "xml.namePlural", "PHYSICAL-MEDIUM-SEGMENT-PHYSICAL-MEDIUM-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "OPTICAL", "xml.namePlural", "OPTICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "TWISTED-PAIR", "xml.namePlural", "TWISTED-PAIRS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "SHIELDED-TWISTED-PAIR", "xml.namePlural", "SHIELDED-TWISTED-PAIRS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "SINGLEWIRE", "xml.namePlural", "SINGLEWIRES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentPhysicalMediumTypeEnumEEnum.getELiterals().get(4), source, new String[]{"xml.name", "WIRELESS", "xml.namePlural", "WIRELESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.systemTopologyTypeEClass, source, new String[]{"xml.name", "SYSTEM-TOPOLOGY-TYPE", "xml.namePlural", "SYSTEM-TOPOLOGY-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSystemTopologyType_CommunicationClusters(), source, new String[]{"xml.name", "COMMUNICATION-CLUSTER", "xml.namePlural", "COMMUNICATION-CLUSTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSystemTopologyType_TopologyElements(), source, new String[]{"xml.name", "TOPOLOGY-ELEMENT", "xml.namePlural", "TOPOLOGY-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.unspecifiedConnectionEClass, source, new String[]{"xml.name", "UNSPECIFIED-CONNECTION", "xml.namePlural", "UNSPECIFIED-CONNECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.communicationClusterEClass, source, new String[]{"xml.name", "COMMUNICATION-CLUSTER", "xml.namePlural", "COMMUNICATION-CLUSTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_CommunicationSpeedBus(), source, new String[]{"xml.name", "COMMUNICATION-SPEED-BUS", "xml.namePlural", "COMMUNICATION-SPEED-BUSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_PhysicalChannels(), source, new String[]{"xml.name", "PHYSICAL-CHANNEL", "xml.namePlural", "PHYSICAL-CHANNELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolName(), source, new String[]{"xml.name", "PROTOCOL-NAME", "xml.namePlural", "PROTOCOL-NAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolVersion(), source, new String[]{"xml.name", "PROTOCOL-VERSION", "xml.namePlural", "PROTOCOL-VERSIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.canBusEClass, source, new String[]{"name", "CAN-BUS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANBus_CanAddressingMode(), source, new String[]{"name", "CAN-ADDRESSING-MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceEClass, source, new String[]{"name", "CAN-COMMUNICATION-PORT-INSTANCE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_BRP(), source, new String[]{"name", "BRP", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter(), source, new String[]{"name", "MAX-PERMITTED-PROCESSING-PERIOD-JITTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_PortTermination(), source, new String[]{"name", "PORT-TERMINATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ProtocolVersion(), source, new String[]{"name", "PROTOCOL-VERSION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ReceiveProcessingPeriod(), source, new String[]{"name", "RECEIVE-PROCESSING-PERIOD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_SyncJumpWidth(), source, new String[]{"name", "SYNC-JUMP-WIDTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg0(), source, new String[]{"name", "TIME-SEG-0", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg1(), source, new String[]{"name", "TIME-SEG-1", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TransmitProcessingPeriod(), source, new String[]{"name", "TRANSMIT-PROCESSING-PERIOD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortInstanceEClass, source, new String[]{"name", "ECU-COMMUNICATION-PORT-INSTANCE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommPortId(), source, new String[]{"name", "COMM-PORT-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommunicationSpeedPort(), source, new String[]{"name", "COMMUNICATION-SPEED-PORT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_Port(), source, new String[]{"name", "PORT-TREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_WakeUpOnCommPortSupported(), source, new String[]{"name", "WAKE-UP-ON-COMM-PORT-SUPPORTED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.connectorEClass, source, new String[]{"name", "CONNECTOR", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getConnector_CommPort(), source, new String[]{"name", "COMM-PORT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ecuInstanceEClass, source, new String[]{"name", "ECU-INSTANCE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_COMProcessingPeriod(), source, new String[]{"name", "COM-PROCESSING-PERIOD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_CommPorts(), source, new String[]{"name", "COMM-PORTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_Connectors(), source, new String[]{"name", "CONNECTORS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_EcuAddress(), source, new String[]{"name", "ECU-ADDRESS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_Ecu(), source, new String[]{"name", "ECU-TREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_PowerSupply(), source, new String[]{"name", "POWER-SUPPLY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_ProcessingUnitEndianness(), source, new String[]{"name", "PROCESSING-UNIT-ENDIANNESS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_SleepModeSupported(), source, new String[]{"name", "SLEEP-MODE-SUPPORTED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnInternalSupported(), source, new String[]{"name", "WAKE-UP-ON-INTERNAL-SUPPORTED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnIoSupported(), source, new String[]{"name", "WAKE-UP-ON-IO-SUPPORTED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.topologyElementEClass, source, new String[]{"name", "TOPOLOGY-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTopologyElement_Childs(), source, new String[]{"name", "CHILD-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTopologyElement_Parent(), source, new String[]{"name", "PARENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.flexrayClusterEClass, source, new String[]{"name", "FLEXRAY-CLUSTER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ActionPointOffset(), source, new String[]{"name", "ACTION-POINT-OFFSET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_BusGuardianEnablePart(), source, new String[]{"name", "BUS-GUARDIAN-ENABLE-PART", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMax(), source, new String[]{"name", "CAS-RX-LOW-MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMin(), source, new String[]{"name", "CAS-RX-LOW-MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ColdStartAttempts(), source, new String[]{"name", "COLD-START-ATTEMPTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_Cycle(), source, new String[]{"name", "CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_DynamicSlotIdlePhase(), source, new String[]{"name", "DYNAMIC-SLOT-IDLE-PHASE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ListenNoise(), source, new String[]{"name", "LISTEN-NOISE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroInitialOffset(), source, new String[]{"name", "MACRO-INITIAL-OFFSET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroPerCycle(), source, new String[]{"name", "MACRO-PER-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacrotickDuration(), source, new String[]{"name", "MACROTICK-DURATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxInitialisationError(), source, new String[]{"name", "MAX-INITIALISATION-ERROR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionFatal(), source, new String[]{"name", "MAX-WITHOUT-CLOCK-CORRECTION-FATAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionPassive(), source, new String[]{"name", "MAX-WITHOUT-CLOCK-CORRECTION-PASSIVE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotActionPointOffset(), source, new String[]{"name", "MINISLOT-ACTION-POINT-OFFSET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotDuration(), source, new String[]{"name", "MINISLOT-DURATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkIdleTime(), source, new String[]{"name", "NETWORK-IDLE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkManagementVectorLength(), source, new String[]{"name", "NETWORK-MANAGEMENT-VECTOR-LENGTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfMinislots(), source, new String[]{"name", "NUMBER-OF-MINISLOTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfStaticSlots(), source, new String[]{"name", "NUMBER-OF-STATIC-SLOTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_OffsetCorrectionStart(), source, new String[]{"name", "OFFSET-CORRECTION-START", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_PayloadLengthStatic(), source, new String[]{"name", "PAYLOAD-LENGTH-STATIC", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SampleClockPeriod(), source, new String[]{"name", "SAMPLE-CLOCK-PERIOD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_StaticSlotDuration(), source, new String[]{"name", "STATIC-SLOT-DURATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SymbolWindow(), source, new String[]{"name", "SYMBOL-WINDOW", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SyncNodeMax(), source, new String[]{"name", "SYNC-NODE-MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_TransmissionStartSequenceDuration(), source, new String[]{"name", "TRANSMISSION-START-SEQUENCE-DURATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxIdle(), source, new String[]{"name", "WAKE-UP-SYMBOL-RX-IDLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxLow(), source, new String[]{"name", "WAKE-UP-SYMBOL-RX-LOW", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxWindow(), source, new String[]{"name", "WAKE-UP-SYMBOL-RX-WINDOW", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxIdle(), source, new String[]{"name", "WAKE-UP-SYMBOL-TX-IDLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxLow(), source, new String[]{"name", "WAKE-UP-SYMBOL-TX-LOW", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.flexrayCommunicationPortInstanceEClass, source, new String[]{"name", "FLEXRAY-COMMUNICATION-PORT-INSTANCE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AcceptedStartupRange(), source, new String[]{"name", "ACCEPTED-STARTUP-RANGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowHaltDueToClock(), source, new String[]{"name", "ALLOW-HALT-DUE-TO-CLOCK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowPassiveToActive(), source, new String[]{"name", "ALLOW-PASSIVE-TO-ACTIVE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ClusterDriftDamping(), source, new String[]{"name", "CLUSTER-DRIFT-DAMPING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationA(), source, new String[]{"name", "DELAY-COMPENSATION-A", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationB(), source, new String[]{"name", "DELAY-COMPENSATION-B", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DynamicSegmentEnable(), source, new String[]{"name", "DYNAMIC-SEGMENT-ENABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternOffsetCorrection(), source, new String[]{"name", "EXTERN-OFFSET-CORRECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternRateCorrection(), source, new String[]{"name", "EXTERN-RATE-CORRECTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotID(), source, new String[]{"name", "KEY-SLOT-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp(), source, new String[]{"name", "KEY-SLOT-USED-FOR-START-UP", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForSync(), source, new String[]{"name", "KEY-SLOT-USED-FOR-SYNC", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_LatestTX(), source, new String[]{"name", "LATEST-TX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ListenTimeout(), source, new String[]{"name", "LISTEN-TIMEOUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaxDrift(), source, new String[]{"name", "MAX-DRIFT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength(), source, new String[]{"name", "MAXIMUM-DYNAMIC-PAYLOAD-LENGTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetA(), source, new String[]{"name", "MICRO-INITIAL-OFFSET-A", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetB(), source, new String[]{"name", "MICRO-INITIAL-OFFSET-B", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerCycle(), source, new String[]{"name", "MICRO-PER-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerMacroNom(), source, new String[]{"name", "MICRO-PER-MACRO-NOM", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicrotickDuration(), source, new String[]{"name", "MICROTICK-DURATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SamplesPerMicrotick(), source, new String[]{"name", "SAMPLES-PER-MICROTICK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SingleSlotEnabled(), source, new String[]{"name", "SINGLE-SLOT-ENABLED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_StartUpNode(), source, new String[]{"name", "START-UP-NODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SyncSlot(), source, new String[]{"name", "SYNC-SLOT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_WakeUpPattern(), source, new String[]{"name", "WAKE-UP-PATTERN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.hubEClass, source, new String[]{"name", "HUB", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getHub_HubType(), source, new String[]{"name", "HUB-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceEClass, source, new String[]{"name", "LIN-COMMUNICATION-PORT-INSTANCE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_DiagnosticAddress(), source, new String[]{"name", "DIAGNOSTIC-ADDRESS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_FunctionID(), source, new String[]{"name", "FUNCTION-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_InitialNADs(), source, new String[]{"name", "INITIAL-NAD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxMessageLength(), source, new String[]{"name", "MAX-MESSAGE-LENGTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxPermittedSlaveJitter(), source, new String[]{"name", "MAX-PERMITTED-SLAVE-JITTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_NodeRole(), source, new String[]{"name", "NODE-ROLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_P2Min(), source, new String[]{"name", "P-2-MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_ProtocolVersion(), source, new String[]{"name", "PROTOCOL-VERSION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_StMin(), source, new String[]{"name", "ST-MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupplierID(), source, new String[]{"name", "SUPPLIER-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupportSID(), source, new String[]{"name", "SUPPORT-SID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBase(), source, new String[]{"name", "TIME-BASE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBaseJitter(), source, new String[]{"name", "TIME-BASE-JITTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_VariantID(), source, new String[]{"name", "VARIANT-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.linSubBusEClass, source, new String[]{"name", "LIN-SUB-BUS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLINSubBus_MaxPermittedSlaveJitter(), source, new String[]{"name", "MAX-PERMITTED-SLAVE-JITTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.physicalChannelEClass, source, new String[]{"name", "PHYSICAL-CHANNEL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPhysicalChannel_PhysicalSegments(), source, new String[]{"name", "PHYSICAL-SEGMENTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentEClass, source, new String[]{"name", "PHYSICAL-MEDIUM-SEGMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_ConnectedEcus(), source, new String[]{"name", "CONNECTED-ECU-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_ConnectedHubs(), source, new String[]{"name", "CONNECTED-HUB-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumDataLines(), source, new String[]{"name", "PHYSICAL-MEDIUM-DATA-LINES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumType(), source, new String[]{"name", "PHYSICAL-MEDIUM-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.systemTopologyTypeEClass, source, new String[]{"name", "SYSTEM-TOPOLOGY-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSystemTopologyType_CommunicationClusters(), source, new String[]{"name", "COMMUNICATION-CLUSTERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSystemTopologyType_TopologyElements(), source, new String[]{"name", "TOPOLOGY-ELEMENTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.unspecifiedConnectionEClass, source, new String[]{"name", "UNSPECIFIED-CONNECTION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationClusterEClass, source, new String[]{"name", "COMMUNICATION-CLUSTER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_CommunicationSpeedBus(), source, new String[]{"name", "COMMUNICATION-SPEED-BUS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_PhysicalChannels(), source, new String[]{"name", "PHYSICAL-CHANNELS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolName(), source, new String[]{"name", "PROTOCOL-NAME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolVersion(), source, new String[]{"name", "PROTOCOL-VERSION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.canBusEClass, source, new String[]{"documentation", "CAN specific attributes"});
        this.addAnnotation((ENamedElement)this.getCANBus_CanAddressingMode(), source, new String[]{"documentation", "The CAN bus supports 11-Bit (\"Standard\") and 29-Bit (\"Extended\") identifiers. This attributes constrains a CAN bus to the selected formats. On Extended-\r\nAddressing it is also possible to have 11-Bit and 29-Bit CAN-identifiers. \r\nPredefined values are \"Standard\" and \"Extended\"."});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceEClass, source, new String[]{"documentation", "CAN bus specific communication port attributes."});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_BRP(), source, new String[]{"documentation", "A clock prescaler value"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_MaxPermittedProcessingPeriodJitter(), source, new String[]{"documentation", "Specifies the maximum acceptable variance (normally delay) in seconds from the nominal Processing Period of the call to execute the Bus Communication SW. The cause of the jitter may be interrupts from tasks in the CPU with higher priority. This requirement must be taken into account when scheduling the software in the CPU. "});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_PortTermination(), source, new String[]{"documentation", "Describes whether the transceiver communication port termination is on or off.\r\nTRUE: communication port is terminated\r\nFALSE: communication port is not terminated"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ProtocolVersion(), source, new String[]{"documentation", "Describes whether the CAN communication port is CAN \"2.0a\" or \"2.0b\" compliant."});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_ReceiveProcessingPeriod(), source, new String[]{"documentation", "Specifies the nominal time interval between two consecutive calls to execute the Bus Communication SW (the COM layer) for receiving. Unit: seconds.\r\nAt the execution of the Bus Communication SW received frames are moved from receive buffers and their signal content made available to the application.\r\n"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_SyncJumpWidth(), source, new String[]{"documentation", "The number of quanta in the Synchronization Jump Width, SJW"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg0(), source, new String[]{"documentation", "The number of quanta before the sampling point"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TimeSeg1(), source, new String[]{"documentation", "The number of quanta after the sampling point"});
        this.addAnnotation((ENamedElement)this.getCANCommunicationPortInstance_TransmitProcessingPeriod(), source, new String[]{"documentation", "Specifies the nominal time interval between two consecutive calls to execute the Bus Communication SW (the COM layer) for sending. Unit: seconds.\r\nAt the execution of the Bus Communication SW frames due for transmission are moved to the transmit buffers, and made available for arbitration on the bus (in the case of CAN).\r\n"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortInstanceEClass, source, new String[]{"documentation", "The ECU resource description describes the hardware properties of each ECU communication port. Some of these properties may be further restricted by more software related constraints. Therefore the communication port instance describes on one hand the real settings to that hardware and on the other hand some properties which are set by software only."});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommPortId(), source, new String[]{"documentation", "The identifier for this communication port on the bus, which can be used as e.g. network management address. There must not be two identical communication port identifiers on the same communication cluster."});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_CommunicationSpeedPort(), source, new String[]{"documentation", "Bus speed of this port in  bits per second"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_Port(), source, new String[]{"documentation", "Reference to the port in the ECU description that is used. \r\n\r\nThe reference from ECUInstance to ECU and from the aggregated ECUCommunicationPortInstance to ECUCommunicationPort must match and point to the same ECU:\r\nIf ECUInstance X refers to ECU Y, then ECUCommunicationPortInstance X/P must refer to an ECUCommunicationPort of Y, e.g. Y/Q.\r\n"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_WakeUpOnCommPortSupported(), source, new String[]{"documentation", "May the ECU be woken up on this communication port?\r\nTRUE: wake up is possible\r\nFALSE: wake up on bus is not supported\r\nNote: This flag may only be set to TRUE if the feature is supported by both hardware and basic software."});
        this.addAnnotation((ENamedElement)this.connectorEClass, source, new String[]{"documentation", "The connector is used to describe the bus interfaces of the ECU. \r\n\r\nEach connector has a reference to exactly one communication port. The communication port can be referenced by several connector elements. This is important for the FlexRay Bus. \r\n\r\nFlexRay communicates via two physical channels. But only one controller in an ECU is responsible for both channels. Thus, two connectors (for channel A and for channel B) must reference to the same communication port. "});
        this.addAnnotation((ENamedElement)this.getConnector_CommPort(), source, new String[]{"documentation", "Reference to the communication port."});
        this.addAnnotation((ENamedElement)this.ecuInstanceEClass, source, new String[]{"documentation", "ECUInstances are used to define the ECUs used in the topology. The type of the ECU is defined by a reference to an ECU specified with the ECU resource description."});
        this.addAnnotation((ENamedElement)this.getECUInstance_COMProcessingPeriod(), source, new String[]{"documentation", "The COM scheduling time is used in order to be able to calculate the worst case bus timing. The processing period shall be specified AUTOSAR conform in seconds."});
        this.addAnnotation((ENamedElement)this.getECUInstance_EcuAddress(), source, new String[]{"documentation", "The unique address of the ECU within the car. Used e.g. for Onboard Diagnostic (OBD) addressing, general diagnostics, Network Management."});
        this.addAnnotation((ENamedElement)this.getECUInstance_Ecu(), source, new String[]{"documentation", "Reference to the ECU hardware used for this ECUInstance.\r\n\r\nThe reference from ECUInstance to ECU and from the aggregated ECUCommunicationPortInstance to ECUCommunicationPort must match and point to the same ECU:\r\nIf ECUInstance X refers to ECU Y, then ECUCommunicationPortInstance X/P must refer to an ECUCommunicationPort of Y, e.g. Y/Q."});
        this.addAnnotation((ENamedElement)this.getECUInstance_PowerSupply(), source, new String[]{"documentation", "Defines how the ECU is connected to  power feed.\r\nPredefined values are \r\nBattery: the ECU is always connected to power\r\nIgnition: the ECU has power feed if ignition is on\r\nAccessory: the ECU has power feed if accessory is switched on.\r\nOther: other power feed mode, such as selective power feed, e.g. under control of another ECU, etc."});
        this.addAnnotation((ENamedElement)this.getECUInstance_ProcessingUnitEndianness(), source, new String[]{"documentation", "The Processing Unit endianness is the byte order in which the CPU interprets multi-byte integers from memory. The byte ordering \"Little Endian\" (MostSignificantByteLast) and \"Big Endian\" (MostSignificantByteFirst) can be selected. "});
        this.addAnnotation((ENamedElement)this.getECUInstance_SleepModeSupported(), source, new String[]{"documentation", "Specifies whether the ECU instance may be put to a \"low power mode\"\r\nTRUE: sleep mode is supported\r\nFALSE: sleep mode is not supported\r\nNote: This flag may only be set to TRUE if the feature is supported by both hardware and basic software."});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnInternalSupported(), source, new String[]{"documentation", "Specifies whether the ECU may be woken from sleep mode on internal events, e.g. by timer or similar device built into the ECU.\r\nTRUE: ECU may wake up on ECU internal event\r\nFALSE: ECU does not support this feature\r\nNote: This flag may only be set to TRUE if the feature is supported by both hardware and basic software."});
        this.addAnnotation((ENamedElement)this.getECUInstance_WakeUpOnIoSupported(), source, new String[]{"documentation", "Specifies whether the ECU may be woken up on IO ports (other than communication ports - those are specified separately).\r\nTRUE: ECU may be woken up on IO ports (see ECU resource descriptions for details)\r\nFALSE: not supported\r\nNote: This flag may only be set to TRUE if the feature is supported by both hardware and basic software."});
        this.addAnnotation((ENamedElement)this.topologyElementEClass, source, new String[]{"documentation", "A Hub or an ECU. The optional parent-child references can be used for the description of tree topologies. Each element in the tree is appropriately indented to indicate its level in the hierarchy, and is connected to its parent and to the children.\r\n"});
        this.addAnnotation((ENamedElement)this.getTopologyElement_Childs(), source, new String[]{"documentation", "This self-association is optional and is used only for tree topologies.   \r\n\r\nThe reference is used to specify the parent-child relationship (The parent node contains a reference to the child node).  "});
        this.addAnnotation((ENamedElement)this.getTopologyElement_Parent(), source, new String[]{"documentation", "This self-association is optional and is used only for tree topologies.   \r\n\r\nThe reference is used to specify the parent-child relationship (The child node contains a reference to the parent node).  "});
        this.addAnnotation((ENamedElement)this.flexrayClusterEClass, source, new String[]{"documentation", "FlexRay specific attributes to the physical Medium"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ActionPointOffset(), source, new String[]{"documentation", "The offset of the action point in networks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_BusGuardianEnablePart(), source, new String[]{"documentation", "Bus Guardian Inter Slot Gap (ISG) part that follows a guarded schedule element. Unit macroticks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMax(), source, new String[]{"documentation", "Upper limit of the Collision Avoidance Symbol (CAS) acceptance window. Unit:bitDuration"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_CasRxLowMin(), source, new String[]{"documentation", "Lower limit of the Collision Avoidance Symbol (CAS) acceptance window. Unit:bitDuration "});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ColdStartAttempts(), source, new String[]{"documentation", "The maximum number of times that a node in this cluster is permitted to attempt to start the cluster by initiating schedule synchronization"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_Cycle(), source, new String[]{"documentation", "Length of the cycle. Unit: seconds"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_DynamicSlotIdlePhase(), source, new String[]{"documentation", "The duration of the dynamic slot idle phase in minislots."});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_ListenNoise(), source, new String[]{"documentation", "Upper limit for the start up and wake up listen timeout in the presence of noise. Expressed as a multiple of the cluster constant pdListenTimeout. Unit microticks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroInitialOffset(), source, new String[]{"documentation", "number of macroticks which describe the distance between the static slot boundary and the closed macrotick boundary of the secondary time reference point using the initial configured macrotick length"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacroPerCycle(), source, new String[]{"documentation", "The number of macroticks in a communication cycle"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MacrotickDuration(), source, new String[]{"documentation", "The duration of the cluster wide nominal macrotick. Unit: seconds"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxInitialisationError(), source, new String[]{"documentation", "The maximum error that a node may have after initialization. Unit: seconds"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionFatal(), source, new String[]{"documentation", "Threshold concerning vClockCorrectionFailedCounter. Defines when the Communication Controller (CC) shall change from normal or passive state to hold state. "});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MaxWithoutClockCorrectionPassive(), source, new String[]{"documentation", "Threshold concerning vClockCorrectionFailedCounter. Defines when the Communication Controller (CC) shall change from normal or passive state to hold state. "});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotActionPointOffset(), source, new String[]{"documentation", "The Offset of the action point within a minislot. Unit: macroticks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_MinislotDuration(), source, new String[]{"documentation", "The duration of a minislot (dynamic segment). Unit: macroticks."});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkIdleTime(), source, new String[]{"documentation", "The duration of the network idle time in macroticks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NetworkManagementVectorLength(), source, new String[]{"documentation", "Length of the Network Management vector on a cluster. Unit: Bytes"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfMinislots(), source, new String[]{"documentation", "number of Minislots in the dynamic segment."});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_NumberOfStaticSlots(), source, new String[]{"documentation", "The number of static slots in the static segment."});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_OffsetCorrectionStart(), source, new String[]{"documentation", "Start of the offset correction phase within the Network Idle Time (NIT), expressed as the number of macroticks from the start of cycle. Unit: macroticks "});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_PayloadLengthStatic(), source, new String[]{"documentation", "Globally configured payload length of a static frame. Unit: 16-bit WORDS."});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SampleClockPeriod(), source, new String[]{"documentation", "Sample clock period. Unit: seconds"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_StaticSlotDuration(), source, new String[]{"documentation", "The duration of a slot in the static segment. Unit: macroticks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SymbolWindow(), source, new String[]{"documentation", "The duration of the symbol window. Unit: macroticks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_SyncNodeMax(), source, new String[]{"documentation", "The maximum number of sync nodes allowed in the cluster"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_TransmissionStartSequenceDuration(), source, new String[]{"documentation", "Duration of the Transmission Start Sequence. Unit: bit"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxIdle(), source, new String[]{"documentation", "Number of bits used by the node to test the duration of the idle portion of a received wake up symbol.  Unit:bitDuration"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxLow(), source, new String[]{"documentation", "Number of bits used by the node to test the LOW portion of a received wake up symbol. \r\nUnit:bitDuration "});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolRxWindow(), source, new String[]{"documentation", "Number of bits used by a node to test the overall duration of a received wake up symbol. Unit: gdBit"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxIdle(), source, new String[]{"documentation", "Number of bits used by the node to transmit the idle part of a wake up symbol. Unit: gDbit"});
        this.addAnnotation((ENamedElement)this.getFlexrayCluster_WakeUpSymbolTxLow(), source, new String[]{"documentation", "Number of bits used by the node to transmit the LOW part of a wake up symbol. Unit:bitDuration "});
        this.addAnnotation((ENamedElement)this.flexrayCommunicationPortInstanceEClass, source, new String[]{"documentation", "FlexRay bus specific communication port attributes."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AcceptedStartupRange(), source, new String[]{"documentation", "Expanded range of measured clock deviation allowed for startup frames during integration. Unit:microtick"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowHaltDueToClock(), source, new String[]{"documentation", "Boolean flag that controls the transition to the POC:halt state due to a clock synchronization errors. \r\nIf set to true, the Communication Controller is allowed to transition to POC:halt. \r\nIf set to false, the Communication Controller will not transition to the POC:halt state but will enter or remain in the normal POC (passive State)."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_AllowPassiveToActive(), source, new String[]{"documentation", "Number of consecutive even/odd cycle pairs that must have valid clock correction terms before the Communication Controller will be allowed to transition from the POC:normal passive state to POC:normal active state. If set to 0, the Communication Controller is not allowed to transition from POC:norm"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ClusterDriftDamping(), source, new String[]{"documentation", "The cluster drift damping factor used in clock synchronization rate correction in microticks"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationA(), source, new String[]{"documentation", "Value used to compensate for reception delays on channel A"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DelayCompensationB(), source, new String[]{"documentation", "Value used to compensate for reception delays on channel B"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_DynamicSegmentEnable(), source, new String[]{"documentation", "Boolean flag that configures the Bus Guardian Schedule\r\nMonitoring Service to expect transmissions within\r\nthe dynamic segment."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternOffsetCorrection(), source, new String[]{"documentation", "Fixed amount added or subtracted to the calculated offset correction term to facilitate external offset correction, expressed in node-local microticks."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ExternRateCorrection(), source, new String[]{"documentation", "Fixed amount added or subtracted to the calculated rate correction term to facilitate external rate correction, expressed in node-local microticks."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotID(), source, new String[]{"documentation", "ID of the slot used to transmit the startup frame, sync frame, or designated single slot frame."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForStartUp(), source, new String[]{"documentation", "Flag indicating whether the Key Slot is used to transmit a startup frame. "});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_KeySlotUsedForSync(), source, new String[]{"documentation", "Flag indicating whether the Key Slot is used to transmit a sync frame. "});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_LatestTX(), source, new String[]{"documentation", "The number of the last minislot in which a transmission can start in the dynamic segment for the respective node"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_ListenTimeout(), source, new String[]{"documentation", "Upper limit for the start up listen timeout and wake up listen timeout. "});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaxDrift(), source, new String[]{"documentation", "Maximum drift offset in microticks between two nodes that operate with unsynchronized clocks over one communication cycle."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MaximumDynamicPayloadLength(), source, new String[]{"documentation", "Maximum payload length for the dynamic channel of a frame in 16 bit WORDS."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetA(), source, new String[]{"documentation", "Number of microticks between the closest macrotick boundary described by gMacroInitialOffset and the secondary time reference point.  The parameter depends on pDelayCompensationA and therefore it has to be set independently for each channel."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroInitialOffsetB(), source, new String[]{"documentation", "Number of microticks between the closest macrotick boundary described by gMacroInitialOffset and the secondary time reference point.  The parameter depends on pDelayCompensationB and therefore it has to be set independently for each channel. "});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerCycle(), source, new String[]{"documentation", "The nominal number of microticks in a communication cycle"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicroPerMacroNom(), source, new String[]{"documentation", "Number of microticks per nominal macrotick that all implementations must support."});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_MicrotickDuration(), source, new String[]{"documentation", "Duration of a microtick. This attribute can be derived from samplePerMicrotick and gdSampleClockPeriod. \r\nUnit: seconds"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SamplesPerMicrotick(), source, new String[]{"documentation", "Number of samples per microtick"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SingleSlotEnabled(), source, new String[]{"documentation", "Flag indicating whether or not the node shall enter single slot mode following startup. "});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_StartUpNode(), source, new String[]{"documentation", "Indicates that the node is a startup node (startup frame configured; connected to gChannels)"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_SyncSlot(), source, new String[]{"documentation", "The number of the static slot in which a sync frame shall be sent, if a sync frame shall be sent"});
        this.addAnnotation((ENamedElement)this.getFlexrayCommunicationPortInstance_WakeUpPattern(), source, new String[]{"documentation", "Number of repetitions of the Tx-wakeup symbol to be sent during the CC_WakeupSend state of this Node in the cluster"});
        this.addAnnotation((ENamedElement)this.hubEClass, source, new String[]{"documentation", "A hub connects several PhysicalMediumSegments together. Hubs are only used to describe the detailed bus topology of star and more complex topologies. They are not used on basic bus topologies."});
        this.addAnnotation((ENamedElement)this.getHub_HubType(), source, new String[]{"documentation", "The type of hub. Predefined values are \"ActiveHub\", \"PassiveHub\""});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceEClass, source, new String[]{"documentation", "LIN bus specific communication port instance attributes."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_DiagnosticAddress(), source, new String[]{"documentation", "Diagnostic address of the LIN node. This attribute is only use for LIN 1.2 and LIN 1.3 slaves."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_FunctionID(), source, new String[]{"documentation", "function_id is a 16 bit number assigned to the product by the supplier to make it unique."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_InitialNADs(), source, new String[]{"documentation", "Unique ID used e.g. for automatic configuration of LIN networks. The Node Address for Diagnostic (NAD) is not part of the LIN 1.2 and 1.3 specification. The NAD is only assigned to LIN slaves. "});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxMessageLength(), source, new String[]{"documentation", "The max_message_length property applies to the diagnostic transport layer only; it defines the maximum length of a diagnostic message in bits."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_MaxPermittedSlaveJitter(), source, new String[]{"documentation", "Maximum jitter time of responding frames, only needed for LIN slaves. Unit is seconds."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_NodeRole(), source, new String[]{"documentation", "Specifies whether the LIN node is master or slave on the bus it is connected to with this communication port"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_P2Min(), source, new String[]{"documentation", "P2_min specifies the minimum time in seconds between a master request frame and the following slave response frame for the node to be able to prepare the response."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_ProtocolVersion(), source, new String[]{"documentation", "The version of the protocol used. Predefined values for LIN are \"1.2\", \"1.3\", \"2.0\"."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_StMin(), source, new String[]{"documentation", "ST_min specifies the minimum time in seconds between two slave response frames in a multi-PDU response, i.e. it only applies to the diagnostic transport layer."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupplierID(), source, new String[]{"documentation", "Unique supplier ID of the LIN slave. A unique ID is assigned to every member of the LIN consortium. It may be used for the automatic configuration of LIN 2.0 slave nodes."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_SupportSID(), source, new String[]{"documentation", "Lists all Service Identifier (SID) values that are supported by the node. Example: {0xb0, 0xb1, 0xb2}"});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBase(), source, new String[]{"documentation", "Time base is mandatory for the master. It is not used for slaves. \r\nLIN 2.0 Spec states: \"The time_base value specifies the used time base in the master node to generate the maximum allowed frame transfer time.\" \r\nThe time base shall be specified AUTOSAR conform in seconds."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_TimeBaseJitter(), source, new String[]{"documentation", "timeBaseJitter is a mandatory attribute for the master and not used for slaves. \r\nLIN 2.0 Spec states: \"The jitter value specifies the differences between the maximum and minimum delay from time base start point to the frame header sending start point (falling edge of BREAK signal).\" \r\nThe jitter shall be specified AUTOSAR conform in seconds."});
        this.addAnnotation((ENamedElement)this.getLINCommunicationPortInstance_VariantID(), source, new String[]{"documentation", "The Variant ID is used for the product identification and is an 8 bit value specifying the variant. The variant ID shall be changed whenever the product is changed but with unaltered function."});
        this.addAnnotation((ENamedElement)this.linSubBusEClass, source, new String[]{"documentation", "LIN sub-bus definition"});
        this.addAnnotation((ENamedElement)this.getLINSubBus_MaxPermittedSlaveJitter(), source, new String[]{"documentation", "Maximum jitter time of responding frames, only needed for LIN slaves. Unit is seconds."});
        this.addAnnotation((ENamedElement)this.physicalChannelEClass, source, new String[]{"documentation", "A physical channel is the transmission medium that is used to send and receive information between two communicating ECUs. Each CommunicationCluster has at least one physical channel. Bus systems like CAN and LIN only have exactly one PhysicalChannel. A FlexRay cluster may have more than one PhysicalChannels that may be used in parallel for redundant communication."});
        this.addAnnotation((ENamedElement)this.getPhysicalChannel_PhysicalSegments(), source, new String[]{"documentation", "The physical segments that compose the physical channel.\r\nCAN and LIN busses that have a simple bus topology  will normally have only one segment. All ECUs are connected to this single segment. FlexRay allows for star and other more complex  topologies where different ECUs may be connected to different segments and may only communicate via the hub. In those cases, several segments can be defined.  \r\nSuch complex physical structures may be simplified, if the details of the structure are not relevant to the AUTOSAR system generation process. At least a single segment has to be defined, though."});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentEClass, source, new String[]{"documentation", "A PhysicalMediumSegment defines a set of communicating ECUs, which has the property of providing the identical physical data representation (e.g. electrical potential) to the all connected hardware (ECUs or Hubs). A PhysicalChannel may be implemented by several segments, which are then connected via (active or passive) Hubs. A PhysicalMediumSegment may connect individual ECUs together (for bus topologies), or connects hub and ECU(s) etc. Each PhysicalChannel consists of at least one segment; CAN and LIN have normally only a single segment, FlexRay can consist of more than one segments. These segments are then connected with each other via one or more Hubs."});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_ConnectedEcus(), source, new String[]{"documentation", "Reference to the ECU instances connected to the physical medium segment. The ECUs are ordered, since the order of the ECUs on a ring topology is relevant. "});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_ConnectedHubs(), source, new String[]{"documentation", "Reference to the hubs that the segment is connected to. A segment may only connect hubs that are aggregated in the same physical medium."});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumDataLines(), source, new String[]{"documentation", "Describes the number of physical wires/media used for data transmission. (E.g. single wire CAN has this value set to 1, LIN also 1)"});
        this.addAnnotation((ENamedElement)this.getPhysicalMediumSegment_PhysicalMediumType(), source, new String[]{"documentation", "Type of the physical medium on this segment.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.systemTopologyTypeEClass, source, new String[]{"documentation", "The system topology, which may be reused in different systems."});
        this.addAnnotation((ENamedElement)this.unspecifiedConnectionEClass, source, new String[]{"documentation", "UnspecifiedConnection may be used for proprietary bus systems, direct connections between I/O-ports of ECUs etc."});
        this.addAnnotation((ENamedElement)this.communicationClusterEClass, source, new String[]{"documentation", "The CommunicationCluster is the main element to describe the topological connection of communicating ECUs. All ECUs within a CommunicationCluster communicate within the same address range. A CommunicationCluster aggregates one or more physical channels. All physical channels that are aggregated by a communication cluster  are synchronized with each other."});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_CommunicationSpeedBus(), source, new String[]{"documentation", "Bus speed in bits per second"});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolName(), source, new String[]{"documentation", "The name of the protocol used. "});
        this.addAnnotation((ENamedElement)this.getCommunicationCluster_ProtocolVersion(), source, new String[]{"documentation", "The version of the protocol used.\r\n"});
    }

    protected void createTaggedValuesOfGeneralization_CommunicationClusterAnnotations() {
        String source = "TaggedValuesOfGeneralization_CommunicationCluster";
        this.addAnnotation((ENamedElement)this.canBusEClass, source, new String[]{"Name", "", "GUID", "{D3CA4575-42BE-4340-81D4-7A3C00B7A843}", "Id", "-1722307057", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.flexrayClusterEClass, source, new String[]{"Name", "", "GUID", "{21AFD9AD-DB57-435e-B2A7-079206D24DAB}", "Id", "-1147334040", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.linSubBusEClass, source, new String[]{"Name", "", "GUID", "{B13D9359-67BD-41ee-820F-8DABCF143706}", "Id", "-1700127982", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.unspecifiedConnectionEClass, source, new String[]{"Name", "", "GUID", "{88CA026D-D41B-482d-AA1A-802D58A53E8A}", "Id", "345822148", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.canBusEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortInstanceEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.getECUCommunicationPortInstance_Port(), source, new String[]{"Stereotype", "isOfType"});
        this.addAnnotation((ENamedElement)this.connectorEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.ecuInstanceEClass, source, new String[]{"Stereotype", "atpPrototype"});
        this.addAnnotation((ENamedElement)this.getECUInstance_Ecu(), source, new String[]{"Stereotype", "isOfType"});
        this.addAnnotation((ENamedElement)this.topologyElementEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.flexrayClusterEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.flexrayCommunicationPortInstanceEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.hubEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.linSubBusEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.physicalChannelEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.systemTopologyTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.unspecifiedConnectionEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.communicationClusterEClass, source, new String[]{"Stereotype", "atpStructureElement"});
    }

    protected void createTaggedValuesOfGeneralization_ECUCommunicationPortInstanceAnnotations() {
        String source = "TaggedValuesOfGeneralization_ECUCommunicationPortInstance";
        this.addAnnotation((ENamedElement)this.canCommunicationPortInstanceEClass, source, new String[]{"Name", "", "GUID", "{19DB2799-BFB1-492a-A095-DF111FFBFDC2}", "Id", "1378330751", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.flexrayCommunicationPortInstanceEClass, source, new String[]{"Name", "", "GUID", "{07FAE5E0-F1DD-47ed-BBD7-7A7FB3B8AD29}", "Id", "-825928437", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.linCommunicationPortInstanceEClass, source, new String[]{"Name", "", "GUID", "{D9AAD06D-AE77-4d25-8BD1-0E47923A86D8}", "Id", "1999740629", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.ecuCommunicationPortInstanceEClass, source, new String[]{"Name", "", "GUID", "{AB6356B3-0D38-4c07-B0D8-BE768D0C9CEF}", "Id", "-1850637426", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.connectorEClass, source, new String[]{"Name", "", "GUID", "{E590B887-8B50-4e43-87F7-0C2D967F78FA}", "Id", "-186285147", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.topologyElementEClass, source, new String[]{"Name", "", "GUID", "{A445FE58-F960-4d26-B868-32FB2C8374FE}", "Id", "-824573715", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.physicalChannelEClass, source, new String[]{"Name", "", "GUID", "{FC194610-E501-4457-850D-94501071F469}", "Id", "992847487", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.communicationClusterEClass, source, new String[]{"Name", "", "GUID", "{317FB9D8-C209-4f72-8E88-DC45FF01AD78}", "Id", "1320393379", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_TopologyElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_TopologyElement";
        this.addAnnotation((ENamedElement)this.ecuInstanceEClass, source, new String[]{"Name", "", "GUID", "{75537447-AC51-493a-A90B-14920341574A}", "Id", "341475262", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.hubEClass, source, new String[]{"Name", "", "GUID", "{8135E4BD-E199-4b2a-9AE8-6EA0CB857990}", "Id", "-121435695", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.physicalMediumSegmentEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.systemTopologyTypeEClass, source, new String[]{"Name", "", "GUID", "{E672641D-C8EB-4fe3-9341-AE3C95810DC9}", "Id", "997884222", "xml.sequenceOffset", "0"});
    }
}

