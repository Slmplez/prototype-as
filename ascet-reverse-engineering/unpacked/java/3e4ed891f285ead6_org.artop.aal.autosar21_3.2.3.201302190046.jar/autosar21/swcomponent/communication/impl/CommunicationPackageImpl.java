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
package autosar21.swcomponent.communication.impl;

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
import autosar21.swcomponent.communication.ClientComSpec;
import autosar21.swcomponent.communication.ClientServerConnectorComSpec;
import autosar21.swcomponent.communication.CommunicationFactory;
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.ConnectorComSpec;
import autosar21.swcomponent.communication.HandleInvalidType;
import autosar21.swcomponent.communication.ModeSwitchComSpec;
import autosar21.swcomponent.communication.ModeSwitchedAckRequest;
import autosar21.swcomponent.communication.PPortComSpec;
import autosar21.swcomponent.communication.QueuedReceiverComSpec;
import autosar21.swcomponent.communication.QueuedSenderComSpec;
import autosar21.swcomponent.communication.RPortComSpec;
import autosar21.swcomponent.communication.ReceiverComSpec;
import autosar21.swcomponent.communication.SenderComSpec;
import autosar21.swcomponent.communication.SenderReceiverConnectorComSpec;
import autosar21.swcomponent.communication.ServerComSpec;
import autosar21.swcomponent.communication.TransmissionAcknowledgementRequest;
import autosar21.swcomponent.communication.UnqueuedReceiverComSpec;
import autosar21.swcomponent.communication.UnqueuedSenderComSpec;
import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.impl.FilterPackageImpl;
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

public class CommunicationPackageImpl
extends EPackageImpl
implements CommunicationPackage {
    private EClass modeSwitchComSpecEClass = null;
    private EClass pPortComSpecEClass = null;
    private EClass modeSwitchedAckRequestEClass = null;
    private EClass senderComSpecEClass = null;
    private EClass transmissionAcknowledgementRequestEClass = null;
    private EClass unqueuedSenderComSpecEClass = null;
    private EClass queuedSenderComSpecEClass = null;
    private EClass serverComSpecEClass = null;
    private EClass receiverComSpecEClass = null;
    private EClass unqueuedReceiverComSpecEClass = null;
    private EClass queuedReceiverComSpecEClass = null;
    private EClass clientComSpecEClass = null;
    private EClass connectorComSpecEClass = null;
    private EClass senderReceiverConnectorComSpecEClass = null;
    private EClass clientServerConnectorComSpecEClass = null;
    private EClass rPortComSpecEClass = null;
    private EEnum handleInvalidTypeEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private CommunicationPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/communication", (EFactory)CommunicationFactory.eINSTANCE);
    }

    public static CommunicationPackage init() {
        if (isInited) {
            return (CommunicationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication");
        }
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/communication") : new CommunicationPackageImpl());
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
        autosar21.system.communication.impl.CommunicationPackageImpl theCommunicationPackage_1 = (autosar21.system.communication.impl.CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") instanceof autosar21.system.communication.impl.CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") : autosar21.system.communication.CommunicationPackage.eINSTANCE);
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
        theCommunicationPackage.createPackageContents();
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
        theCommunicationPackage.initializePackageContents();
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
        theCommunicationPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/communication", (Object)theCommunicationPackage);
        return theCommunicationPackage;
    }

    public EClass getModeSwitchComSpec() {
        return this.modeSwitchComSpecEClass;
    }

    public EReference getModeSwitchComSpec_ModeGroup() {
        return (EReference)this.modeSwitchComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getModeSwitchComSpec_ModeSwitchedAck() {
        return (EReference)this.modeSwitchComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getModeSwitchComSpec_QueueLength() {
        return (EAttribute)this.modeSwitchComSpecEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPPortComSpec() {
        return this.pPortComSpecEClass;
    }

    public EReference getPPortComSpec_PPortPrototype() {
        return (EReference)this.pPortComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getModeSwitchedAckRequest() {
        return this.modeSwitchedAckRequestEClass;
    }

    public EReference getModeSwitchedAckRequest_ModeSwitchComSpec() {
        return (EReference)this.modeSwitchedAckRequestEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getModeSwitchedAckRequest_Timeout() {
        return (EAttribute)this.modeSwitchedAckRequestEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSenderComSpec() {
        return this.senderComSpecEClass;
    }

    public EReference getSenderComSpec_DataElement() {
        return (EReference)this.senderComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderComSpec_TransmissionAcknowledge() {
        return (EReference)this.senderComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EClass getTransmissionAcknowledgementRequest() {
        return this.transmissionAcknowledgementRequestEClass;
    }

    public EReference getTransmissionAcknowledgementRequest_SenderComSpec() {
        return (EReference)this.transmissionAcknowledgementRequestEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getTransmissionAcknowledgementRequest_Timeout() {
        return (EAttribute)this.transmissionAcknowledgementRequestEClass.getEStructuralFeatures().get(1);
    }

    public EClass getUnqueuedSenderComSpec() {
        return this.unqueuedSenderComSpecEClass;
    }

    public EAttribute getUnqueuedSenderComSpec_CanInvalidate() {
        return (EAttribute)this.unqueuedSenderComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getUnqueuedSenderComSpec_InitValue() {
        return (EReference)this.unqueuedSenderComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EClass getQueuedSenderComSpec() {
        return this.queuedSenderComSpecEClass;
    }

    public EClass getServerComSpec() {
        return this.serverComSpecEClass;
    }

    public EReference getServerComSpec_Operation() {
        return (EReference)this.serverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getServerComSpec_QueueLength() {
        return (EAttribute)this.serverComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EClass getReceiverComSpec() {
        return this.receiverComSpecEClass;
    }

    public EReference getReceiverComSpec_DataElement() {
        return (EReference)this.receiverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EReference getReceiverComSpec_Filter() {
        return (EReference)this.receiverComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EClass getUnqueuedReceiverComSpec() {
        return this.unqueuedReceiverComSpecEClass;
    }

    public EAttribute getUnqueuedReceiverComSpec_AliveTimeout() {
        return (EAttribute)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getUnqueuedReceiverComSpec_HandleInvalid() {
        return (EAttribute)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EReference getUnqueuedReceiverComSpec_InitValue() {
        return (EReference)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getUnqueuedReceiverComSpec_ResyncTime() {
        return (EAttribute)this.unqueuedReceiverComSpecEClass.getEStructuralFeatures().get(3);
    }

    public EClass getQueuedReceiverComSpec() {
        return this.queuedReceiverComSpecEClass;
    }

    public EAttribute getQueuedReceiverComSpec_QueueLength() {
        return (EAttribute)this.queuedReceiverComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getClientComSpec() {
        return this.clientComSpecEClass;
    }

    public EReference getClientComSpec_Operation() {
        return (EReference)this.clientComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getConnectorComSpec() {
        return this.connectorComSpecEClass;
    }

    public EReference getConnectorComSpec_AssemblyConnectorPrototype() {
        return (EReference)this.connectorComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSenderReceiverConnectorComSpec() {
        return this.senderReceiverConnectorComSpecEClass;
    }

    public EReference getSenderReceiverConnectorComSpec_DataElement() {
        return (EReference)this.senderReceiverConnectorComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSenderReceiverConnectorComSpec_MaxResponseTime() {
        return (EAttribute)this.senderReceiverConnectorComSpecEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSenderReceiverConnectorComSpec_MinResponseTime() {
        return (EAttribute)this.senderReceiverConnectorComSpecEClass.getEStructuralFeatures().get(2);
    }

    public EClass getClientServerConnectorComSpec() {
        return this.clientServerConnectorComSpecEClass;
    }

    public EReference getClientServerConnectorComSpec_Operation() {
        return (EReference)this.clientServerConnectorComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EClass getRPortComSpec() {
        return this.rPortComSpecEClass;
    }

    public EReference getRPortComSpec_RPortPrototype() {
        return (EReference)this.rPortComSpecEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getHandleInvalidType() {
        return this.handleInvalidTypeEEnum;
    }

    public CommunicationFactory getCommunicationFactory() {
        return (CommunicationFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.modeSwitchComSpecEClass = this.createEClass(0);
        this.createEReference(this.modeSwitchComSpecEClass, 5);
        this.createEReference(this.modeSwitchComSpecEClass, 6);
        this.createEAttribute(this.modeSwitchComSpecEClass, 7);
        this.pPortComSpecEClass = this.createEClass(1);
        this.createEReference(this.pPortComSpecEClass, 4);
        this.modeSwitchedAckRequestEClass = this.createEClass(2);
        this.createEReference(this.modeSwitchedAckRequestEClass, 4);
        this.createEAttribute(this.modeSwitchedAckRequestEClass, 5);
        this.senderComSpecEClass = this.createEClass(3);
        this.createEReference(this.senderComSpecEClass, 6);
        this.createEReference(this.senderComSpecEClass, 7);
        this.transmissionAcknowledgementRequestEClass = this.createEClass(4);
        this.createEReference(this.transmissionAcknowledgementRequestEClass, 4);
        this.createEAttribute(this.transmissionAcknowledgementRequestEClass, 5);
        this.unqueuedSenderComSpecEClass = this.createEClass(5);
        this.createEAttribute(this.unqueuedSenderComSpecEClass, 9);
        this.createEReference(this.unqueuedSenderComSpecEClass, 10);
        this.queuedSenderComSpecEClass = this.createEClass(6);
        this.serverComSpecEClass = this.createEClass(7);
        this.createEReference(this.serverComSpecEClass, 7);
        this.createEAttribute(this.serverComSpecEClass, 8);
        this.receiverComSpecEClass = this.createEClass(8);
        this.createEReference(this.receiverComSpecEClass, 6);
        this.createEReference(this.receiverComSpecEClass, 7);
        this.unqueuedReceiverComSpecEClass = this.createEClass(9);
        this.createEAttribute(this.unqueuedReceiverComSpecEClass, 9);
        this.createEAttribute(this.unqueuedReceiverComSpecEClass, 10);
        this.createEReference(this.unqueuedReceiverComSpecEClass, 11);
        this.createEAttribute(this.unqueuedReceiverComSpecEClass, 12);
        this.queuedReceiverComSpecEClass = this.createEClass(10);
        this.createEAttribute(this.queuedReceiverComSpecEClass, 9);
        this.clientComSpecEClass = this.createEClass(11);
        this.createEReference(this.clientComSpecEClass, 6);
        this.connectorComSpecEClass = this.createEClass(12);
        this.createEReference(this.connectorComSpecEClass, 4);
        this.senderReceiverConnectorComSpecEClass = this.createEClass(13);
        this.createEReference(this.senderReceiverConnectorComSpecEClass, 5);
        this.createEAttribute(this.senderReceiverConnectorComSpecEClass, 6);
        this.createEAttribute(this.senderReceiverConnectorComSpecEClass, 7);
        this.clientServerConnectorComSpecEClass = this.createEClass(14);
        this.createEReference(this.clientServerConnectorComSpecEClass, 5);
        this.rPortComSpecEClass = this.createEClass(15);
        this.createEReference(this.rPortComSpecEClass, 4);
        this.handleInvalidTypeEEnum = this.createEEnum(16);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("communication");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/communication");
        autosar21.swcomponent.communication.instanceref.InstancerefPackage theInstancerefPackage_5 = (autosar21.swcomponent.communication.instanceref.InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/r");
        FilterPackage theFilterPackage = (FilterPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/f");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        GcommunicationPackage theGcommunicationPackage = (GcommunicationPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/communication");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components");
        ConstantsPackage theConstantsPackage = (ConstantsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/c");
        CompositionPackage theCompositionPackage = (CompositionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition");
        this.getESubpackages().add((Object)theInstancerefPackage_5);
        this.getESubpackages().add((Object)theFilterPackage);
        this.modeSwitchComSpecEClass.getESuperTypes().add((Object)this.getPPortComSpec());
        this.pPortComSpecEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.pPortComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGPPortComSpec());
        this.modeSwitchedAckRequestEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderComSpecEClass.getESuperTypes().add((Object)this.getPPortComSpec());
        this.senderComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGSenderComSpec());
        this.transmissionAcknowledgementRequestEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.unqueuedSenderComSpecEClass.getESuperTypes().add((Object)this.getSenderComSpec());
        this.unqueuedSenderComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGNonqueuedSenderComSpec());
        this.queuedSenderComSpecEClass.getESuperTypes().add((Object)this.getSenderComSpec());
        this.queuedSenderComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGQueuedSenderComSpec());
        this.serverComSpecEClass.getESuperTypes().add((Object)this.getPPortComSpec());
        this.serverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGServerComSpec());
        this.receiverComSpecEClass.getESuperTypes().add((Object)this.getRPortComSpec());
        this.receiverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGReceiverComSpec());
        this.unqueuedReceiverComSpecEClass.getESuperTypes().add((Object)this.getReceiverComSpec());
        this.unqueuedReceiverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGNonqueuedReceiverComSpec());
        this.queuedReceiverComSpecEClass.getESuperTypes().add((Object)this.getReceiverComSpec());
        this.queuedReceiverComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGQueuedReceiverComSpec());
        this.clientComSpecEClass.getESuperTypes().add((Object)this.getRPortComSpec());
        this.clientComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGClientComSpec());
        this.connectorComSpecEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderReceiverConnectorComSpecEClass.getESuperTypes().add((Object)this.getConnectorComSpec());
        this.clientServerConnectorComSpecEClass.getESuperTypes().add((Object)this.getConnectorComSpec());
        this.rPortComSpecEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.rPortComSpecEClass.getESuperTypes().add((Object)theGcommunicationPackage.getGRPortComSpec());
        this.initEClass(this.modeSwitchComSpecEClass, ModeSwitchComSpec.class, "ModeSwitchComSpec", false, false, true);
        this.initEReference(this.getModeSwitchComSpec_ModeGroup(), (EClassifier)theInstancerefPackage_5.getModeSwitchComSpecModeDeclarationGroupPrototype(), theInstancerefPackage_5.getModeSwitchComSpecModeDeclarationGroupPrototype_ModeSwitchComSpec(), "modeGroup", null, 0, 1, ModeSwitchComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getModeSwitchComSpec_ModeSwitchedAck(), (EClassifier)this.getModeSwitchedAckRequest(), this.getModeSwitchedAckRequest_ModeSwitchComSpec(), "modeSwitchedAck", null, 0, 1, ModeSwitchComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getModeSwitchComSpec_QueueLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "queueLength", "0", 0, 1, ModeSwitchComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.pPortComSpecEClass, PPortComSpec.class, "PPortComSpec", true, false, true);
        this.initEReference(this.getPPortComSpec_PPortPrototype(), (EClassifier)theComponentsPackage.getPPortPrototype(), theComponentsPackage.getPPortPrototype_ProvidedComSpecs(), "pPortPrototype", null, 0, 1, PPortComSpec.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.modeSwitchedAckRequestEClass, ModeSwitchedAckRequest.class, "ModeSwitchedAckRequest", false, false, true);
        this.initEReference(this.getModeSwitchedAckRequest_ModeSwitchComSpec(), (EClassifier)this.getModeSwitchComSpec(), this.getModeSwitchComSpec_ModeSwitchedAck(), "modeSwitchComSpec", null, 0, 1, ModeSwitchedAckRequest.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getModeSwitchedAckRequest_Timeout(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeout", "0.0", 0, 1, ModeSwitchedAckRequest.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.senderComSpecEClass, SenderComSpec.class, "SenderComSpec", true, false, true);
        this.initEReference(this.getSenderComSpec_DataElement(), (EClassifier)theInstancerefPackage_5.getSenderComSpecDataElement(), theInstancerefPackage_5.getSenderComSpecDataElement_SenderComSpec(), "dataElement", null, 0, 1, SenderComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderComSpec_TransmissionAcknowledge(), (EClassifier)this.getTransmissionAcknowledgementRequest(), this.getTransmissionAcknowledgementRequest_SenderComSpec(), "transmissionAcknowledge", null, 0, 1, SenderComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.transmissionAcknowledgementRequestEClass, TransmissionAcknowledgementRequest.class, "TransmissionAcknowledgementRequest", false, false, true);
        this.initEReference(this.getTransmissionAcknowledgementRequest_SenderComSpec(), (EClassifier)this.getSenderComSpec(), this.getSenderComSpec_TransmissionAcknowledge(), "senderComSpec", null, 0, 1, TransmissionAcknowledgementRequest.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getTransmissionAcknowledgementRequest_Timeout(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeout", "0.0", 0, 1, TransmissionAcknowledgementRequest.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.unqueuedSenderComSpecEClass, UnqueuedSenderComSpec.class, "UnqueuedSenderComSpec", false, false, true);
        this.initEAttribute(this.getUnqueuedSenderComSpec_CanInvalidate(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canInvalidate", "false", 0, 1, UnqueuedSenderComSpec.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getUnqueuedSenderComSpec_InitValue(), (EClassifier)theConstantsPackage.getValueSpecification(), null, "initValue", null, 0, 1, UnqueuedSenderComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.queuedSenderComSpecEClass, QueuedSenderComSpec.class, "QueuedSenderComSpec", false, false, true);
        this.initEClass(this.serverComSpecEClass, ServerComSpec.class, "ServerComSpec", false, false, true);
        this.initEReference(this.getServerComSpec_Operation(), (EClassifier)theInstancerefPackage_5.getServerComSpecOperation(), theInstancerefPackage_5.getServerComSpecOperation_ServerComSpec(), "operation", null, 0, 1, ServerComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getServerComSpec_QueueLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "queueLength", "0", 0, 1, ServerComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.receiverComSpecEClass, ReceiverComSpec.class, "ReceiverComSpec", true, false, true);
        this.initEReference(this.getReceiverComSpec_DataElement(), (EClassifier)theInstancerefPackage_5.getReceiverComSpecDataElement(), theInstancerefPackage_5.getReceiverComSpecDataElement_ReceiverComSpec(), "dataElement", null, 0, 1, ReceiverComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getReceiverComSpec_Filter(), (EClassifier)theFilterPackage.getDataFilter(), theFilterPackage.getDataFilter_ReceiverComSpec(), "filter", null, 0, 1, ReceiverComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.unqueuedReceiverComSpecEClass, UnqueuedReceiverComSpec.class, "UnqueuedReceiverComSpec", false, false, true);
        this.initEAttribute(this.getUnqueuedReceiverComSpec_AliveTimeout(), (EClassifier)thePrimitivetypesPackage.getFloat(), "aliveTimeout", "0.0", 0, 1, UnqueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getUnqueuedReceiverComSpec_HandleInvalid(), (EClassifier)this.getHandleInvalidType(), "handleInvalid", "KEEP", 0, 1, UnqueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getUnqueuedReceiverComSpec_InitValue(), (EClassifier)theConstantsPackage.getValueSpecification(), null, "initValue", null, 0, 1, UnqueuedReceiverComSpec.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getUnqueuedReceiverComSpec_ResyncTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "resyncTime", "0.0", 0, 1, UnqueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.queuedReceiverComSpecEClass, QueuedReceiverComSpec.class, "QueuedReceiverComSpec", false, false, true);
        this.initEAttribute(this.getQueuedReceiverComSpec_QueueLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "queueLength", "0", 0, 1, QueuedReceiverComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.clientComSpecEClass, ClientComSpec.class, "ClientComSpec", false, false, true);
        this.initEReference(this.getClientComSpec_Operation(), (EClassifier)theInstancerefPackage_5.getClientComSpecOperation(), theInstancerefPackage_5.getClientComSpecOperation_ClientComSpec(), "operation", null, 0, 1, ClientComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.connectorComSpecEClass, ConnectorComSpec.class, "ConnectorComSpec", true, false, true);
        this.initEReference(this.getConnectorComSpec_AssemblyConnectorPrototype(), (EClassifier)theCompositionPackage.getAssemblyConnectorPrototype(), theCompositionPackage.getAssemblyConnectorPrototype_ConnectorComSpecs(), "assemblyConnectorPrototype", null, 0, 1, ConnectorComSpec.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.senderReceiverConnectorComSpecEClass, SenderReceiverConnectorComSpec.class, "SenderReceiverConnectorComSpec", false, false, true);
        this.initEReference(this.getSenderReceiverConnectorComSpec_DataElement(), (EClassifier)theInstancerefPackage_5.getSenderReceiverConnectorComSpecDataElement(), theInstancerefPackage_5.getSenderReceiverConnectorComSpecDataElement_SenderReceiverConnectorComSpec(), "dataElement", null, 0, 1, SenderReceiverConnectorComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSenderReceiverConnectorComSpec_MaxResponseTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxResponseTime", "0.0", 0, 1, SenderReceiverConnectorComSpec.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSenderReceiverConnectorComSpec_MinResponseTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minResponseTime", "0.0", 0, 1, SenderReceiverConnectorComSpec.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.clientServerConnectorComSpecEClass, ClientServerConnectorComSpec.class, "ClientServerConnectorComSpec", false, false, true);
        this.initEReference(this.getClientServerConnectorComSpec_Operation(), (EClassifier)theInstancerefPackage_5.getClientServerConnectorComSpecOperation(), theInstancerefPackage_5.getClientServerConnectorComSpecOperation_ClientServerConnectorComSpec(), "operation", null, 0, 1, ClientServerConnectorComSpec.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.rPortComSpecEClass, RPortComSpec.class, "RPortComSpec", true, false, true);
        this.initEReference(this.getRPortComSpec_RPortPrototype(), (EClassifier)theComponentsPackage.getRPortPrototype(), theComponentsPackage.getRPortPrototype_RequiredComSpecs(), "rPortPrototype", null, 0, 1, RPortComSpec.class, true, false, true, false, false, false, true, false, true);
        this.initEEnum(this.handleInvalidTypeEEnum, HandleInvalidType.class, "HandleInvalidType");
        this.addEEnumLiteral(this.handleInvalidTypeEEnum, HandleInvalidType.KEEP);
        this.addEEnumLiteral(this.handleInvalidTypeEEnum, HandleInvalidType.REPLACE);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/communication");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_PPortComSpecAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_SenderComSpecAnnotations();
        this.createTaggedValuesOfGeneralization_RPortComSpecAnnotations();
        this.createTaggedValuesOfGeneralization_ReceiverComSpecAnnotations();
        this.createTaggedValuesOfGeneralization_ConnectorComSpecAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Communication", "GUID", "{E385B2A4-C7E3-4548-816C-03640915AE63}", "Id", "153445678"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"Name", "HandleInvalidType", "Modified", "Wed Sep 20 18:42:15 CEST 2006", "Created", "Wed Sep 20 17:30:56 CEST 2006", "GUID", "{3D91136C-CD68-42aa-9010-546CB65DFBCF}", "Id", "1158766256"});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"Name", "ModeSwitchComSpec", "Modified", "Thu Sep 28 11:04:06 CEST 2006", "Created", "Mon Aug 28 14:34:52 CEST 2006", "GUID", "{0261AE4C-0114-43f7-A4CA-9D4CE6240CDF}", "Id", "1568761875"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"Name", "queueLength", "GUID", "{42FA3388-8441-4aed-956F-31E2B092105D}", "Id", "-1728029352"});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"Name", "PPortComSpec", "Modified", "Tue Aug 09 08:58:46 CEST 2005", "Created", "Tue Jul 13 11:33:00 CEST 2004", "GUID", "{CD517AED-7818-4d78-950F-CC4C7D66D969}", "Id", "-2068147579"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"Name", "ModeSwitchedAckRequest", "Modified", "Thu Sep 28 13:48:27 CEST 2006", "Created", "Mon Aug 28 14:41:57 CEST 2006", "GUID", "{6C1125B9-E66A-427c-8701-9360A3071FEE}", "Id", "-2083155059"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"Name", "timeout", "GUID", "{AB52442F-7234-4b52-A62E-CFE82022C757}", "Id", "-245654070"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"Name", "SenderComSpec", "Modified", "Tue Aug 09 08:58:46 CEST 2005", "Created", "Tue Jul 13 11:34:41 CEST 2004", "GUID", "{16848CB4-FAB0-41b3-A71B-0A2D6C1AA3C8}", "Id", "-94536608"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"Name", "TransmissionAcknowledgementRequest", "Modified", "Thu Sep 14 16:33:21 CEST 2006", "Created", "Fri May 14 13:01:50 CEST 2004", "GUID", "{0DA3AA4A-FF2A-46a5-84A9-E3B3424433E4}", "Id", "-1649251510"});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"Name", "timeout", "GUID", "{3A837E56-1F9A-4e4c-B375-2CB0B171A08C}", "Id", "-448702461"});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"Name", "UnqueuedSenderComSpec", "Modified", "Mon Jul 31 15:06:36 CEST 2006", "Created", "Tue Jul 13 11:35:43 CEST 2004", "GUID", "{7E4D8F1F-22AF-439b-B936-60B4CFE4A271}", "Id", "1597580863"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"Name", "canInvalidate", "GUID", "{CEAA6EEF-CEEB-4583-AE53-AD52AC523967}", "Id", "1091624005"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"Name", "QueuedSenderComSpec", "Modified", "Mon Jul 31 15:06:57 CEST 2006", "Created", "Tue Jul 13 11:36:05 CEST 2004", "GUID", "{841C63DB-519F-4030-9215-0D2A5F5DC85D}", "Id", "-616666192"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"Name", "ServerComSpec", "Modified", "Tue Aug 09 08:54:50 CEST 2005", "Created", "Tue Jul 13 11:34:55 CEST 2004", "GUID", "{04FC1178-650D-4a1b-B7BE-6813A52C63D1}", "Id", "-1440197868"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"Name", "queueLength", "GUID", "{4F5275AD-4E00-4c08-9C19-1A4A4395654E}", "Id", "-1622631346"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"Name", "ReceiverComSpec", "Modified", "Tue Aug 09 08:13:24 CEST 2005", "Created", "Tue Jul 13 11:36:56 CEST 2004", "GUID", "{F04DB475-1EF1-46ee-8FA1-23E4405EDE27}", "Id", "1507444492"});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"Name", "UnqueuedReceiverComSpec", "Modified", "Mon Jul 31 15:08:50 CEST 2006", "Created", "Tue Jul 13 11:37:31 CEST 2004", "GUID", "{97EE7442-5A54-4712-8588-91D42CDBCF28}", "Id", "1936110618"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"Name", "aliveTimeout", "GUID", "{40CD06A5-EFFD-4878-9393-3386E09343C9}", "Id", "-1767046220"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"Name", "handleInvalid", "GUID", "{F8E944B3-2AE3-4528-ACBC-27EFB7D74383}", "Id", "1550801340"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"Name", "resyncTime", "GUID", "{B5786416-29CD-46d3-B28F-A8B55D92005B}", "Id", "-1822620525"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"Name", "QueuedReceiverComSpec", "Modified", "Mon Jul 31 15:06:10 CEST 2006", "Created", "Tue Jul 13 11:38:04 CEST 2004", "GUID", "{5E2419D4-F8D3-4ae1-A7A7-B5D6AACC3A5A}", "Id", "522234345"});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"Name", "queueLength", "GUID", "{433EF430-1A05-4cb9-80C1-9C3EACF98716}", "Id", "2124755958"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"Name", "ClientComSpec", "Modified", "Tue Aug 09 08:46:47 CEST 2005", "Created", "Tue Jul 13 11:37:12 CEST 2004", "GUID", "{36254FC8-3569-4ea5-AD1D-6AEFEFCAE211}", "Id", "2085484894"});
        this.addAnnotation((ENamedElement)this.connectorComSpecEClass, source, new String[]{"Name", "ConnectorComSpec", "Modified", "Wed Aug 04 15:00:42 CEST 2004", "Created", "Tue Jul 13 11:33:46 CEST 2004", "GUID", "{DEB2B228-7DF0-4e87-80B3-A4C5BCAD16E3}", "Id", "-1757446812"});
        this.addAnnotation((ENamedElement)this.senderReceiverConnectorComSpecEClass, source, new String[]{"Name", "SenderReceiverConnectorComSpec", "Modified", "Wed Jun 29 09:10:57 CEST 2005", "Created", "Tue Jul 13 11:38:26 CEST 2004", "GUID", "{5F85B945-D9F4-4c62-8E9F-025C792D16BC}", "Id", "1782155021"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MaxResponseTime(), source, new String[]{"Name", "maxResponseTime", "GUID", "{969C06B1-AD8E-43dd-B95C-1265E81DB10C}", "Id", "205533243"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MinResponseTime(), source, new String[]{"Name", "minResponseTime", "GUID", "{2083BF21-C327-43c0-8F56-129826347F0D}", "Id", "1069681442"});
        this.addAnnotation((ENamedElement)this.clientServerConnectorComSpecEClass, source, new String[]{"Name", "ClientServerConnectorComSpec", "Modified", "Mon Jul 26 18:38:16 CEST 2004", "Created", "Tue Jul 13 11:38:42 CEST 2004", "GUID", "{11AB6535-A56F-4f73-AEE6-B404DF0391DA}", "Id", "-82000611"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"Name", "RPortComSpec", "Modified", "Tue Aug 09 08:46:26 CEST 2005", "Created", "Tue Jul 13 11:33:21 CEST 2004", "GUID", "{260905B8-211F-473b-8F4C-A6BA3E138C96}", "Id", "-621857092"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "COMMUNICATION", "xml.namePlural", "COMMUNICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"xml.name", "HANDLE-INVALID-TYPE", "xml.namePlural", "HANDLE-INVALID-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(0), source, new String[]{"xml.name", "KEEP", "xml.namePlural", "KEEPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum.getELiterals().get(1), source, new String[]{"xml.name", "REPLACE", "xml.namePlural", "REPLACES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"xml.name", "MODE-SWITCH-COM-SPEC", "xml.namePlural", "MODE-SWITCH-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeGroup(), source, new String[]{"xml.name", "MODE-GROUP-IREF", "xml.namePlural", "MODE-GROUP-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeSwitchedAck(), source, new String[]{"xml.name", "MODE-SWITCHED-ACK", "xml.namePlural", "MODE-SWITCHED-ACKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"xml.name", "QUEUE-LENGTH", "xml.namePlural", "QUEUE-LENGTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"xml.name", "P-PORT-COM-SPEC", "xml.namePlural", "P-PORT-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"xml.name", "MODE-SWITCHED-ACK-REQUEST", "xml.namePlural", "MODE-SWITCHED-ACK-REQUESTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "TIMEOUT", "xml.namePlural", "TIMEOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"xml.name", "SENDER-COM-SPEC", "xml.namePlural", "SENDER-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_DataElement(), source, new String[]{"xml.name", "DATA-ELEMENT-IREF", "xml.namePlural", "DATA-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_TransmissionAcknowledge(), source, new String[]{"xml.name", "TRANSMISSION-ACKNOWLEDGE", "xml.namePlural", "TRANSMISSION-ACKNOWLEDGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"xml.name", "TRANSMISSION-ACKNOWLEDGEMENT-REQUEST", "xml.namePlural", "TRANSMISSION-ACKNOWLEDGEMENT-REQUESTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "TIMEOUT", "xml.namePlural", "TIMEOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"xml.name", "UNQUEUED-SENDER-COM-SPEC", "xml.namePlural", "UNQUEUED-SENDER-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"xml.name", "CAN-INVALIDATE", "xml.namePlural", "CAN-INVALIDATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_InitValue(), source, new String[]{"xml.name", "INIT-VALUE-REF", "xml.namePlural", "INIT-VALUE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"xml.name", "QUEUED-SENDER-COM-SPEC", "xml.namePlural", "QUEUED-SENDER-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"xml.name", "SERVER-COM-SPEC", "xml.namePlural", "SERVER-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_Operation(), source, new String[]{"xml.name", "OPERATION-IREF", "xml.namePlural", "OPERATION-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"xml.name", "QUEUE-LENGTH", "xml.namePlural", "QUEUE-LENGTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"xml.name", "RECEIVER-COM-SPEC", "xml.namePlural", "RECEIVER-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_DataElement(), source, new String[]{"xml.name", "DATA-ELEMENT-IREF", "xml.namePlural", "DATA-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_Filter(), source, new String[]{"xml.name", "FILTER", "xml.namePlural", "FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"xml.name", "UNQUEUED-RECEIVER-COM-SPEC", "xml.namePlural", "UNQUEUED-RECEIVER-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"xml.name", "ALIVE-TIMEOUT", "xml.namePlural", "ALIVE-TIMEOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"xml.name", "HANDLE-INVALID", "xml.namePlural", "HANDLE-INVALIDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_InitValue(), source, new String[]{"xml.name", "INIT-VALUE-REF", "xml.namePlural", "INIT-VALUE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"xml.name", "RESYNC-TIME", "xml.namePlural", "RESYNC-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"xml.name", "QUEUED-RECEIVER-COM-SPEC", "xml.namePlural", "QUEUED-RECEIVER-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "QUEUE-LENGTH", "xml.namePlural", "QUEUE-LENGTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"xml.name", "CLIENT-COM-SPEC", "xml.namePlural", "CLIENT-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientComSpec_Operation(), source, new String[]{"xml.name", "OPERATION-IREF", "xml.namePlural", "OPERATION-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.connectorComSpecEClass, source, new String[]{"xml.name", "CONNECTOR-COM-SPEC", "xml.namePlural", "CONNECTOR-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.senderReceiverConnectorComSpecEClass, source, new String[]{"xml.name", "SENDER-RECEIVER-CONNECTOR-COM-SPEC", "xml.namePlural", "SENDER-RECEIVER-CONNECTOR-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_DataElement(), source, new String[]{"xml.name", "DATA-ELEMENT-IREF", "xml.namePlural", "DATA-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MaxResponseTime(), source, new String[]{"xml.name", "MAX-RESPONSE-TIME", "xml.namePlural", "MAX-RESPONSE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MinResponseTime(), source, new String[]{"xml.name", "MIN-RESPONSE-TIME", "xml.namePlural", "MIN-RESPONSE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerConnectorComSpecEClass, source, new String[]{"xml.name", "CLIENT-SERVER-CONNECTOR-COM-SPEC", "xml.namePlural", "CLIENT-SERVER-CONNECTOR-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerConnectorComSpec_Operation(), source, new String[]{"xml.name", "OPERATION-IREF", "xml.namePlural", "OPERATION-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"xml.name", "R-PORT-COM-SPEC", "xml.namePlural", "R-PORT-COM-SPECS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"name", "MODE-SWITCH-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeGroup(), source, new String[]{"name", "MODE-GROUP-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_ModeSwitchedAck(), source, new String[]{"name", "MODE-SWITCHED-ACK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"name", "QUEUE-LENGTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"name", "P-PORT-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"name", "MODE-SWITCHED-ACK-REQUEST", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"name", "TIMEOUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"name", "SENDER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_DataElement(), source, new String[]{"name", "DATA-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_TransmissionAcknowledge(), source, new String[]{"name", "TRANSMISSION-ACKNOWLEDGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"name", "TRANSMISSION-ACKNOWLEDGEMENT-REQUEST", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"name", "TIMEOUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"name", "UNQUEUED-SENDER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"name", "CAN-INVALIDATE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_InitValue(), source, new String[]{"name", "INIT-VALUE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"name", "QUEUED-SENDER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"name", "SERVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_Operation(), source, new String[]{"name", "OPERATION-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"name", "QUEUE-LENGTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"name", "RECEIVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_DataElement(), source, new String[]{"name", "DATA-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_Filter(), source, new String[]{"name", "FILTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"name", "UNQUEUED-RECEIVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"name", "ALIVE-TIMEOUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"name", "HANDLE-INVALID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_InitValue(), source, new String[]{"name", "INIT-VALUE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"name", "RESYNC-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"name", "QUEUED-RECEIVER-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"name", "QUEUE-LENGTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"name", "CLIENT-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientComSpec_Operation(), source, new String[]{"name", "OPERATION-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.connectorComSpecEClass, source, new String[]{"name", "CONNECTOR-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderReceiverConnectorComSpecEClass, source, new String[]{"name", "SENDER-RECEIVER-CONNECTOR-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_DataElement(), source, new String[]{"name", "DATA-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MaxResponseTime(), source, new String[]{"name", "MAX-RESPONSE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MinResponseTime(), source, new String[]{"name", "MIN-RESPONSE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerConnectorComSpecEClass, source, new String[]{"name", "CLIENT-SERVER-CONNECTOR-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerConnectorComSpec_Operation(), source, new String[]{"name", "OPERATION-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"name", "R-PORT-COM-SPEC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"documentation", "Strategies of handling the reception of invalidValue."});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"documentation", "Communication attributes for both sender /server port (P-Port and sender-receiver interface). (0=unqueued)"});
        this.addAnnotation((ENamedElement)this.getModeSwitchComSpec_QueueLength(), source, new String[]{"documentation", "Length of call queue on the server side. The queue is implemented by the RTE."});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"documentation", "Communication attributes for P-Ports. This class will contain attributes that are valid for all kinds of provide ports, independent of client-server or sender-receiver communication patterns."});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"documentation", "Requests acknowledgements that a mode switch has been proceeded successfully"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckRequest_Timeout(), source, new String[]{"documentation", "Number of seconds before an error is reported or in case of allowed redundancy, the value is sent again."});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"documentation", "Communication attributes for a sender port (P-Port and sender-receiver interface)."});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_DataElement(), source, new String[]{"documentation", "Data element these quality of service attributes apply to."});
        this.addAnnotation((ENamedElement)this.getSenderComSpec_TransmissionAcknowledge(), source, new String[]{"documentation", "Requested transmission acknowledgement for data element."});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"documentation", "Requests transmission acknowledgement that data has been sent successfully. Success/failure is reported via a SendPoint of a Runnable."});
        this.addAnnotation((ENamedElement)this.getTransmissionAcknowledgementRequest_Timeout(), source, new String[]{"documentation", "Number of seconds before an error is reported or in case of allowed redundancy, the value is sent again."});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to distribution of data (P-Port, sender-receiver interface and data element carries \"data\" opposed to carrying an \"event\")."});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_CanInvalidate(), source, new String[]{"documentation", "Flag whether the component can actively invalidate data."});
        this.addAnnotation((ENamedElement)this.getUnqueuedSenderComSpec_InitValue(), source, new String[]{"documentation", "Init value to be sent if sender component is not yet fully initialized, but receiver needs data already."});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to distribution of  events (P-Port, sender-receiver interface and data element carries an \"event\")."});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"documentation", "Communication attributes for a server port (P-Port and client-server interface)."});
        this.addAnnotation((ENamedElement)this.getServerComSpec_Operation(), source, new String[]{"documentation", "Operation these communication attributes apply to."});
        this.addAnnotation((ENamedElement)this.getServerComSpec_QueueLength(), source, new String[]{"documentation", "Length of call queue on the server side. The queue is implemented by the RTE."});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"documentation", "Receiver specific communication attributes (R-Port and sender-receiver interface)."});
        this.addAnnotation((ENamedElement)this.getReceiverComSpec_DataElement(), source, new String[]{"documentation", "Data element these attributes belong to."});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to reciving data (opposed to receiving events)."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_AliveTimeout(), source, new String[]{"documentation", "Specify the amount of time (in seconds) after which the software component (via the RTE)  needs to be notified if the corresponding data item have not been received according to the specified timing description."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_HandleInvalid(), source, new String[]{"documentation", "Specifies strategy of handling the reception of invalidValue."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_InitValue(), source, new String[]{"documentation", "Initial value to be used in case the sending component is not yet initialized. If the sender also specifies an init value the receiver's value will be used."});
        this.addAnnotation((ENamedElement)this.getUnqueuedReceiverComSpec_ResyncTime(), source, new String[]{"documentation", "Time allowed for resynchronization of data values after current data is lost, e.g. after an ECU reset."});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"documentation", "Communication attributes specific to reciving events."});
        this.addAnnotation((ENamedElement)this.getQueuedReceiverComSpec_QueueLength(), source, new String[]{"documentation", "Length of queue for received events."});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"documentation", "Client specific communication attributes (R-Port and client-server interface)."});
        this.addAnnotation((ENamedElement)this.getClientComSpec_Operation(), source, new String[]{"documentation", "Operation these attributes belong to."});
        this.addAnnotation((ENamedElement)this.connectorComSpecEClass, source, new String[]{"documentation", "Communication attributes for all connector classes."});
        this.addAnnotation((ENamedElement)this.senderReceiverConnectorComSpecEClass, source, new String[]{"documentation", "Communication attributes for connectors between sender and receiver ports."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_DataElement(), source, new String[]{"documentation", "Data element these attributes apply to."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MaxResponseTime(), source, new String[]{"documentation", "Maximum allowed time (seconds) for date transfer via this connector. The time has to be measured from the moment, at which the information to be sent has been made available by the sending component at its P-Port until it is ready to be used by the receiving component at its R-Port."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverConnectorComSpec_MinResponseTime(), source, new String[]{"documentation", "Minimum allowed time (seconds) for date transfer via this connector. The time has to be measured from the moment, at which the information to be sent has been made available by the sending component at its P-Port until it is ready to be used by the receiving component at its R-Port. Note that in many cases the minimum required time will be zero."});
        this.addAnnotation((ENamedElement)this.clientServerConnectorComSpecEClass, source, new String[]{"documentation", "Communication attributes for connectors between client and server ports."});
        this.addAnnotation((ENamedElement)this.getClientServerConnectorComSpec_Operation(), source, new String[]{"documentation", "Operation these attributes apply to."});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"documentation", "Communication attributes of an R-Port. This class will contain attributes that are valid for all kinds of require-ports, independent of client-server or sender-receiver communication patterns."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.handleInvalidTypeEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.connectorComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderReceiverConnectorComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerConnectorComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_PPortComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_PPortComSpec";
        this.addAnnotation((ENamedElement)this.modeSwitchComSpecEClass, source, new String[]{"Name", "", "GUID", "{93130CE3-BE22-4bc9-9CF5-C93D7CF1D31F}", "Id", "1705126102", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderComSpecEClass, source, new String[]{"Name", "", "GUID", "{94352365-7E2D-4e73-8368-13A453B0E742}", "Id", "754010232", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.serverComSpecEClass, source, new String[]{"Name", "", "GUID", "{D561768F-5CB8-45ec-B9BF-3646345F14A8}", "Id", "-729922714", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.pPortComSpecEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckRequestEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.transmissionAcknowledgementRequestEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.connectorComSpecEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rPortComSpecEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SenderComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_SenderComSpec";
        this.addAnnotation((ENamedElement)this.unqueuedSenderComSpecEClass, source, new String[]{"Name", "", "GUID", "{CA7BDE7F-993A-49f0-A036-643161B6B6B3}", "Id", "-1809338364", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.queuedSenderComSpecEClass, source, new String[]{"Name", "", "GUID", "{E516D281-FE12-480d-807B-8E9E9630A54B}", "Id", "-1079799507", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_RPortComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_RPortComSpec";
        this.addAnnotation((ENamedElement)this.receiverComSpecEClass, source, new String[]{"Name", "", "GUID", "{7A69A9C5-904C-41b5-9CB8-34A50C5FCD58}", "Id", "1730314405", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientComSpecEClass, source, new String[]{"Name", "", "GUID", "{2011CC53-C68A-4c7f-BB1F-0D2C31EC358B}", "Id", "-510861988", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ReceiverComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_ReceiverComSpec";
        this.addAnnotation((ENamedElement)this.unqueuedReceiverComSpecEClass, source, new String[]{"Name", "", "GUID", "{D967357A-A3AE-499d-8777-7BA4F2326C70}", "Id", "215445343", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.queuedReceiverComSpecEClass, source, new String[]{"Name", "", "GUID", "{CDEE30BE-564A-4cbb-871B-6F46C309D3D7}", "Id", "212725172", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ConnectorComSpecAnnotations() {
        String source = "TaggedValuesOfGeneralization_ConnectorComSpec";
        this.addAnnotation((ENamedElement)this.senderReceiverConnectorComSpecEClass, source, new String[]{"Name", "", "GUID", "{335E6351-7174-405b-830F-F005D09527D2}", "Id", "-831589654", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerConnectorComSpecEClass, source, new String[]{"Name", "", "GUID", "{95D55031-6F3E-437f-AA91-354350A1CCE5}", "Id", "124818953", "xml.sequenceOffset", "0"});
    }
}

