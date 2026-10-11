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
package autosar21.system.communication.impl;

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
import autosar21.system.communication.AbsolutelyScheduledTiming;
import autosar21.system.communication.AbsolutelyScheduledTimingCycleRepetitionEnum;
import autosar21.system.communication.ActiveCondition;
import autosar21.system.communication.CanFrame;
import autosar21.system.communication.CommunicationFactory;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.CyclicTiming;
import autosar21.system.communication.EventControlledTiming;
import autosar21.system.communication.EventTriggeredFrameSlot;
import autosar21.system.communication.FlexrayFrame;
import autosar21.system.communication.Frame;
import autosar21.system.communication.FreeTextCondition;
import autosar21.system.communication.GatewayEntry;
import autosar21.system.communication.GatewayType;
import autosar21.system.communication.LinFrame;
import autosar21.system.communication.LinSchedulingTable;
import autosar21.system.communication.LinSchedulingTableEntry;
import autosar21.system.communication.PDUGatewayEntry;
import autosar21.system.communication.PDUGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.communication.RelativelyScheduledTiming;
import autosar21.system.communication.RequestControlledTiming;
import autosar21.system.communication.SendCondition;
import autosar21.system.communication.SignalGatewayEntry;
import autosar21.system.communication.SignalGatewayEntryActionOnTimeoutEnum;
import autosar21.system.communication.SignalTrigger;
import autosar21.system.communication.SignalTriggerDataEventConditionEnum;
import autosar21.system.communication.SporadicFrameSlot;
import autosar21.system.communication.StartCondition;
import autosar21.system.communication.StopCondition;
import autosar21.system.communication.SystemStateTrigger;
import autosar21.system.communication.Timing;
import autosar21.system.communication.UnconditionalFrameSlot;
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
    private EClass pduPrototypeEClass = null;
    private EClass timingEClass = null;
    private EClass freeTextConditionEClass = null;
    private EClass communicationMatrixTypeEClass = null;
    private EClass linSchedulingTableEClass = null;
    private EClass linSchedulingTableEntryEClass = null;
    private EClass frameEClass = null;
    private EClass absolutelyScheduledTimingEClass = null;
    private EClass activeConditionEClass = null;
    private EClass systemStateTriggerEClass = null;
    private EClass canFrameEClass = null;
    private EClass cyclicTimingEClass = null;
    private EClass stopConditionEClass = null;
    private EClass signalTriggerEClass = null;
    private EClass startConditionEClass = null;
    private EClass eventControlledTimingEClass = null;
    private EClass sendConditionEClass = null;
    private EClass eventTriggeredFrameSlotEClass = null;
    private EClass linFrameEClass = null;
    private EClass flexrayFrameEClass = null;
    private EClass gatewayEntryEClass = null;
    private EClass gatewayTypeEClass = null;
    private EClass pduGatewayEntryEClass = null;
    private EClass relativelyScheduledTimingEClass = null;
    private EClass requestControlledTimingEClass = null;
    private EClass signalGatewayEntryEClass = null;
    private EClass sporadicFrameSlotEClass = null;
    private EClass unconditionalFrameSlotEClass = null;
    private EEnum absolutelyScheduledTimingCycleRepetitionEnumEEnum = null;
    private EEnum signalTriggerDataEventConditionEnumEEnum = null;
    private EEnum pduGatewayEntryActionOnTimeoutEnumEEnum = null;
    private EEnum signalGatewayEntryActionOnTimeoutEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private CommunicationPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/s/c", (EFactory)CommunicationFactory.eINSTANCE);
    }

    public static CommunicationPackage init() {
        if (isInited) {
            return (CommunicationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c");
        }
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/c") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/c") : new CommunicationPackageImpl());
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
        autosar21.swcomponent.communication.impl.CommunicationPackageImpl theCommunicationPackage_1 = (autosar21.swcomponent.communication.impl.CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") instanceof autosar21.swcomponent.communication.impl.CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") : autosar21.swcomponent.communication.CommunicationPackage.eINSTANCE);
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
        theCommunicationPackage_1.createPackageContents();
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
        theCommunicationPackage_1.initializePackageContents();
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
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/s/c", (Object)theCommunicationPackage);
        return theCommunicationPackage;
    }

    public EClass getPDUPrototype() {
        return this.pduPrototypeEClass;
    }

    public EReference getPDUPrototype_Frame() {
        return (EReference)this.pduPrototypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPDUPrototype_IncludedClusterSignals() {
        return (EReference)this.pduPrototypeEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPDUPrototype_PduType() {
        return (EReference)this.pduPrototypeEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPDUPrototype_StartPosition() {
        return (EAttribute)this.pduPrototypeEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getPDUPrototype_UpdateIndicationBitPosition() {
        return (EAttribute)this.pduPrototypeEClass.getEStructuralFeatures().get(4);
    }

    public EClass getTiming() {
        return this.timingEClass;
    }

    public EReference getTiming_FreeTextConditions() {
        return (EReference)this.timingEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFreeTextCondition() {
        return this.freeTextConditionEClass;
    }

    public EReference getFreeTextCondition_Timing() {
        return (EReference)this.freeTextConditionEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFreeTextCondition_Condition() {
        return (EAttribute)this.freeTextConditionEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCommunicationMatrixType() {
        return this.communicationMatrixTypeEClass;
    }

    public EReference getCommunicationMatrixType_CommunicationCluster() {
        return (EReference)this.communicationMatrixTypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCommunicationMatrixType_Frames() {
        return (EReference)this.communicationMatrixTypeEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCommunicationMatrixType_LinSchedulingTables() {
        return (EReference)this.communicationMatrixTypeEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCommunicationMatrixType_SystemTopologyType() {
        return (EReference)this.communicationMatrixTypeEClass.getEStructuralFeatures().get(3);
    }

    public EClass getLinSchedulingTable() {
        return this.linSchedulingTableEClass;
    }

    public EReference getLinSchedulingTable_CommunicationMatrixType() {
        return (EReference)this.linSchedulingTableEClass.getEStructuralFeatures().get(0);
    }

    public EReference getLinSchedulingTable_Entries() {
        return (EReference)this.linSchedulingTableEClass.getEStructuralFeatures().get(1);
    }

    public EClass getLinSchedulingTableEntry() {
        return this.linSchedulingTableEntryEClass;
    }

    public EReference getLinSchedulingTableEntry_LinSchedulingTable() {
        return (EReference)this.linSchedulingTableEntryEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getLinSchedulingTableEntry_DelayToNextFrame() {
        return (EAttribute)this.linSchedulingTableEntryEClass.getEStructuralFeatures().get(1);
    }

    public EClass getFrame() {
        return this.frameEClass;
    }

    public EReference getFrame_CommunicationMatrixType() {
        return (EReference)this.frameEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFrame_FrameID() {
        return (EAttribute)this.frameEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getFrame_FrameLength() {
        return (EAttribute)this.frameEClass.getEStructuralFeatures().get(2);
    }

    public EReference getFrame_FrameTimings() {
        return (EReference)this.frameEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getFrame_MinimumDelayTime() {
        return (EAttribute)this.frameEClass.getEStructuralFeatures().get(4);
    }

    public EReference getFrame_PduPrototypes() {
        return (EReference)this.frameEClass.getEStructuralFeatures().get(5);
    }

    public EReference getFrame_Receivers() {
        return (EReference)this.frameEClass.getEStructuralFeatures().get(6);
    }

    public EReference getFrame_Transmitter() {
        return (EReference)this.frameEClass.getEStructuralFeatures().get(7);
    }

    public EReference getFrame_UsedPhysicalChannel() {
        return (EReference)this.frameEClass.getEStructuralFeatures().get(8);
    }

    public EClass getAbsolutelyScheduledTiming() {
        return this.absolutelyScheduledTimingEClass;
    }

    public EAttribute getAbsolutelyScheduledTiming_BaseCycle() {
        return (EAttribute)this.absolutelyScheduledTimingEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getAbsolutelyScheduledTiming_CycleRepetition() {
        return (EAttribute)this.absolutelyScheduledTimingEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getAbsolutelyScheduledTiming_SlotID() {
        return (EAttribute)this.absolutelyScheduledTimingEClass.getEStructuralFeatures().get(2);
    }

    public EClass getActiveCondition() {
        return this.activeConditionEClass;
    }

    public EReference getActiveCondition_SystemStates() {
        return (EReference)this.activeConditionEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSystemStateTrigger() {
        return this.systemStateTriggerEClass;
    }

    public EAttribute getSystemStateTrigger_SystemStateConditions() {
        return (EAttribute)this.systemStateTriggerEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCanFrame() {
        return this.canFrameEClass;
    }

    public EClass getCyclicTiming() {
        return this.cyclicTimingEClass;
    }

    public EReference getCyclicTiming_ActiveCondition() {
        return (EReference)this.cyclicTimingEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCyclicTiming_CycleTime() {
        return (EAttribute)this.cyclicTimingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCyclicTiming_StartCondition() {
        return (EReference)this.cyclicTimingEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getCyclicTiming_StartingTime() {
        return (EAttribute)this.cyclicTimingEClass.getEStructuralFeatures().get(3);
    }

    public EReference getCyclicTiming_StopCondition() {
        return (EReference)this.cyclicTimingEClass.getEStructuralFeatures().get(4);
    }

    public EClass getStopCondition() {
        return this.stopConditionEClass;
    }

    public EReference getStopCondition_CyclicTiming() {
        return (EReference)this.stopConditionEClass.getEStructuralFeatures().get(0);
    }

    public EReference getStopCondition_SignalStates() {
        return (EReference)this.stopConditionEClass.getEStructuralFeatures().get(1);
    }

    public EReference getStopCondition_SystemStates() {
        return (EReference)this.stopConditionEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSignalTrigger() {
        return this.signalTriggerEClass;
    }

    public EReference getSignalTrigger_ComparedSignal() {
        return (EReference)this.signalTriggerEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSignalTrigger_DataEventCondition() {
        return (EAttribute)this.signalTriggerEClass.getEStructuralFeatures().get(1);
    }

    public EClass getStartCondition() {
        return this.startConditionEClass;
    }

    public EReference getStartCondition_CyclicTiming() {
        return (EReference)this.startConditionEClass.getEStructuralFeatures().get(0);
    }

    public EReference getStartCondition_SignalStates() {
        return (EReference)this.startConditionEClass.getEStructuralFeatures().get(1);
    }

    public EReference getStartCondition_SystemStates() {
        return (EReference)this.startConditionEClass.getEStructuralFeatures().get(2);
    }

    public EClass getEventControlledTiming() {
        return this.eventControlledTimingEClass;
    }

    public EReference getEventControlledTiming_ActiveCondition() {
        return (EReference)this.eventControlledTimingEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getEventControlledTiming_DebounceTime() {
        return (EAttribute)this.eventControlledTimingEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getEventControlledTiming_NumberOfRepeats() {
        return (EAttribute)this.eventControlledTimingEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getEventControlledTiming_RepeatCycleTime() {
        return (EAttribute)this.eventControlledTimingEClass.getEStructuralFeatures().get(3);
    }

    public EReference getEventControlledTiming_SendCondition() {
        return (EReference)this.eventControlledTimingEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSendCondition() {
        return this.sendConditionEClass;
    }

    public EReference getSendCondition_EventControlledTiming() {
        return (EReference)this.sendConditionEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSendCondition_SignalStates() {
        return (EReference)this.sendConditionEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSendCondition_SystemStates() {
        return (EReference)this.sendConditionEClass.getEStructuralFeatures().get(2);
    }

    public EClass getEventTriggeredFrameSlot() {
        return this.eventTriggeredFrameSlotEClass;
    }

    public EAttribute getEventTriggeredFrameSlot_EventTriggeredFrameID() {
        return (EAttribute)this.eventTriggeredFrameSlotEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEventTriggeredFrameSlot_UnconditionalFrames() {
        return (EReference)this.eventTriggeredFrameSlotEClass.getEStructuralFeatures().get(1);
    }

    public EClass getLinFrame() {
        return this.linFrameEClass;
    }

    public EReference getLinFrame_ResponseErrorSignal() {
        return (EReference)this.linFrameEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFlexrayFrame() {
        return this.flexrayFrameEClass;
    }

    public EClass getGatewayEntry() {
        return this.gatewayEntryEClass;
    }

    public EReference getGatewayEntry_GatewayType() {
        return (EReference)this.gatewayEntryEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getGatewayEntry_GatewayEntryId() {
        return (EAttribute)this.gatewayEntryEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGatewayType() {
        return this.gatewayTypeEClass;
    }

    public EReference getGatewayType_GatewayEntries() {
        return (EReference)this.gatewayTypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGatewayType_GatewayLocation() {
        return (EReference)this.gatewayTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getPDUGatewayEntry() {
        return this.pduGatewayEntryEClass;
    }

    public EAttribute getPDUGatewayEntry_ActionOnTimeout() {
        return (EAttribute)this.pduGatewayEntryEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPDUGatewayEntry_DestinationPDU() {
        return (EReference)this.pduGatewayEntryEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPDUGatewayEntry_SourcePDU() {
        return (EReference)this.pduGatewayEntryEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getPDUGatewayEntry_TimeOutCycle() {
        return (EAttribute)this.pduGatewayEntryEClass.getEStructuralFeatures().get(3);
    }

    public EClass getRelativelyScheduledTiming() {
        return this.relativelyScheduledTimingEClass;
    }

    public EAttribute getRelativelyScheduledTiming_Delay() {
        return (EAttribute)this.relativelyScheduledTimingEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getRelativelyScheduledTiming_PositionInTable() {
        return (EAttribute)this.relativelyScheduledTimingEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getRelativelyScheduledTiming_ScheduleTableName() {
        return (EAttribute)this.relativelyScheduledTimingEClass.getEStructuralFeatures().get(2);
    }

    public EClass getRequestControlledTiming() {
        return this.requestControlledTimingEClass;
    }

    public EReference getRequestControlledTiming_ActiveCondition() {
        return (EReference)this.requestControlledTimingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRequestControlledTiming_RequestingFrame() {
        return (EReference)this.requestControlledTimingEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getRequestControlledTiming_ResponseTime() {
        return (EAttribute)this.requestControlledTimingEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSignalGatewayEntry() {
        return this.signalGatewayEntryEClass;
    }

    public EAttribute getSignalGatewayEntry_ActionOnTimeout() {
        return (EAttribute)this.signalGatewayEntryEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSignalGatewayEntry_DestinationClusterSignal() {
        return (EReference)this.signalGatewayEntryEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSignalGatewayEntry_SourceClusterSignal() {
        return (EReference)this.signalGatewayEntryEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getSignalGatewayEntry_TimeOutCycle() {
        return (EAttribute)this.signalGatewayEntryEClass.getEStructuralFeatures().get(3);
    }

    public EClass getSporadicFrameSlot() {
        return this.sporadicFrameSlotEClass;
    }

    public EReference getSporadicFrameSlot_SporadicFrames() {
        return (EReference)this.sporadicFrameSlotEClass.getEStructuralFeatures().get(0);
    }

    public EClass getUnconditionalFrameSlot() {
        return this.unconditionalFrameSlotEClass;
    }

    public EReference getUnconditionalFrameSlot_UnconditionalFrame() {
        return (EReference)this.unconditionalFrameSlotEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getAbsolutelyScheduledTimingCycleRepetitionEnum() {
        return this.absolutelyScheduledTimingCycleRepetitionEnumEEnum;
    }

    public EEnum getSignalTriggerDataEventConditionEnum() {
        return this.signalTriggerDataEventConditionEnumEEnum;
    }

    public EEnum getPDUGatewayEntryActionOnTimeoutEnum() {
        return this.pduGatewayEntryActionOnTimeoutEnumEEnum;
    }

    public EEnum getSignalGatewayEntryActionOnTimeoutEnum() {
        return this.signalGatewayEntryActionOnTimeoutEnumEEnum;
    }

    public CommunicationFactory getCommunicationFactory() {
        return (CommunicationFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.pduPrototypeEClass = this.createEClass(0);
        this.createEReference(this.pduPrototypeEClass, 16);
        this.createEReference(this.pduPrototypeEClass, 17);
        this.createEReference(this.pduPrototypeEClass, 18);
        this.createEAttribute(this.pduPrototypeEClass, 19);
        this.createEAttribute(this.pduPrototypeEClass, 20);
        this.timingEClass = this.createEClass(1);
        this.createEReference(this.timingEClass, 4);
        this.freeTextConditionEClass = this.createEClass(2);
        this.createEReference(this.freeTextConditionEClass, 4);
        this.createEAttribute(this.freeTextConditionEClass, 5);
        this.communicationMatrixTypeEClass = this.createEClass(3);
        this.createEReference(this.communicationMatrixTypeEClass, 18);
        this.createEReference(this.communicationMatrixTypeEClass, 19);
        this.createEReference(this.communicationMatrixTypeEClass, 20);
        this.createEReference(this.communicationMatrixTypeEClass, 21);
        this.linSchedulingTableEClass = this.createEClass(4);
        this.createEReference(this.linSchedulingTableEClass, 16);
        this.createEReference(this.linSchedulingTableEClass, 17);
        this.linSchedulingTableEntryEClass = this.createEClass(5);
        this.createEReference(this.linSchedulingTableEntryEClass, 4);
        this.createEAttribute(this.linSchedulingTableEntryEClass, 5);
        this.frameEClass = this.createEClass(6);
        this.createEReference(this.frameEClass, 16);
        this.createEAttribute(this.frameEClass, 17);
        this.createEAttribute(this.frameEClass, 18);
        this.createEReference(this.frameEClass, 19);
        this.createEAttribute(this.frameEClass, 20);
        this.createEReference(this.frameEClass, 21);
        this.createEReference(this.frameEClass, 22);
        this.createEReference(this.frameEClass, 23);
        this.createEReference(this.frameEClass, 24);
        this.absolutelyScheduledTimingEClass = this.createEClass(7);
        this.createEAttribute(this.absolutelyScheduledTimingEClass, 5);
        this.createEAttribute(this.absolutelyScheduledTimingEClass, 6);
        this.createEAttribute(this.absolutelyScheduledTimingEClass, 7);
        this.activeConditionEClass = this.createEClass(8);
        this.createEReference(this.activeConditionEClass, 4);
        this.systemStateTriggerEClass = this.createEClass(9);
        this.createEAttribute(this.systemStateTriggerEClass, 4);
        this.canFrameEClass = this.createEClass(10);
        this.cyclicTimingEClass = this.createEClass(11);
        this.createEReference(this.cyclicTimingEClass, 5);
        this.createEAttribute(this.cyclicTimingEClass, 6);
        this.createEReference(this.cyclicTimingEClass, 7);
        this.createEAttribute(this.cyclicTimingEClass, 8);
        this.createEReference(this.cyclicTimingEClass, 9);
        this.stopConditionEClass = this.createEClass(12);
        this.createEReference(this.stopConditionEClass, 4);
        this.createEReference(this.stopConditionEClass, 5);
        this.createEReference(this.stopConditionEClass, 6);
        this.signalTriggerEClass = this.createEClass(13);
        this.createEReference(this.signalTriggerEClass, 4);
        this.createEAttribute(this.signalTriggerEClass, 5);
        this.startConditionEClass = this.createEClass(14);
        this.createEReference(this.startConditionEClass, 4);
        this.createEReference(this.startConditionEClass, 5);
        this.createEReference(this.startConditionEClass, 6);
        this.eventControlledTimingEClass = this.createEClass(15);
        this.createEReference(this.eventControlledTimingEClass, 5);
        this.createEAttribute(this.eventControlledTimingEClass, 6);
        this.createEAttribute(this.eventControlledTimingEClass, 7);
        this.createEAttribute(this.eventControlledTimingEClass, 8);
        this.createEReference(this.eventControlledTimingEClass, 9);
        this.sendConditionEClass = this.createEClass(16);
        this.createEReference(this.sendConditionEClass, 4);
        this.createEReference(this.sendConditionEClass, 5);
        this.createEReference(this.sendConditionEClass, 6);
        this.eventTriggeredFrameSlotEClass = this.createEClass(17);
        this.createEAttribute(this.eventTriggeredFrameSlotEClass, 6);
        this.createEReference(this.eventTriggeredFrameSlotEClass, 7);
        this.linFrameEClass = this.createEClass(18);
        this.createEReference(this.linFrameEClass, 25);
        this.flexrayFrameEClass = this.createEClass(19);
        this.gatewayEntryEClass = this.createEClass(20);
        this.createEReference(this.gatewayEntryEClass, 4);
        this.createEAttribute(this.gatewayEntryEClass, 5);
        this.gatewayTypeEClass = this.createEClass(21);
        this.createEReference(this.gatewayTypeEClass, 18);
        this.createEReference(this.gatewayTypeEClass, 19);
        this.pduGatewayEntryEClass = this.createEClass(22);
        this.createEAttribute(this.pduGatewayEntryEClass, 6);
        this.createEReference(this.pduGatewayEntryEClass, 7);
        this.createEReference(this.pduGatewayEntryEClass, 8);
        this.createEAttribute(this.pduGatewayEntryEClass, 9);
        this.relativelyScheduledTimingEClass = this.createEClass(23);
        this.createEAttribute(this.relativelyScheduledTimingEClass, 5);
        this.createEAttribute(this.relativelyScheduledTimingEClass, 6);
        this.createEAttribute(this.relativelyScheduledTimingEClass, 7);
        this.requestControlledTimingEClass = this.createEClass(24);
        this.createEReference(this.requestControlledTimingEClass, 5);
        this.createEReference(this.requestControlledTimingEClass, 6);
        this.createEAttribute(this.requestControlledTimingEClass, 7);
        this.signalGatewayEntryEClass = this.createEClass(25);
        this.createEAttribute(this.signalGatewayEntryEClass, 6);
        this.createEReference(this.signalGatewayEntryEClass, 7);
        this.createEReference(this.signalGatewayEntryEClass, 8);
        this.createEAttribute(this.signalGatewayEntryEClass, 9);
        this.sporadicFrameSlotEClass = this.createEClass(26);
        this.createEReference(this.sporadicFrameSlotEClass, 6);
        this.unconditionalFrameSlotEClass = this.createEClass(27);
        this.createEReference(this.unconditionalFrameSlotEClass, 6);
        this.absolutelyScheduledTimingCycleRepetitionEnumEEnum = this.createEEnum(28);
        this.signalTriggerDataEventConditionEnumEEnum = this.createEEnum(29);
        this.pduGatewayEntryActionOnTimeoutEnumEEnum = this.createEEnum(30);
        this.signalGatewayEntryActionOnTimeoutEnumEEnum = this.createEEnum(31);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("communication");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/s/c");
        autosar21.system.communication.instanceref.InstancerefPackage theInstancerefPackage_10 = (autosar21.system.communication.instanceref.InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c/r");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        SystemsignalPackage theSystemsignalPackage = (SystemsignalPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss");
        PdustructurePackage thePdustructurePackage = (PdustructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/pdus");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        TopologyPackage theTopologyPackage = (TopologyPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t");
        this.getESubpackages().add((Object)theInstancerefPackage_10);
        this.pduPrototypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.timingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.freeTextConditionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.communicationMatrixTypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.linSchedulingTableEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.linSchedulingTableEntryEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.frameEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.absolutelyScheduledTimingEClass.getESuperTypes().add((Object)this.getTiming());
        this.activeConditionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.systemStateTriggerEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.canFrameEClass.getESuperTypes().add((Object)this.getFrame());
        this.cyclicTimingEClass.getESuperTypes().add((Object)this.getTiming());
        this.stopConditionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.signalTriggerEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.startConditionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.eventControlledTimingEClass.getESuperTypes().add((Object)this.getTiming());
        this.sendConditionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.eventTriggeredFrameSlotEClass.getESuperTypes().add((Object)this.getLinSchedulingTableEntry());
        this.linFrameEClass.getESuperTypes().add((Object)this.getFrame());
        this.flexrayFrameEClass.getESuperTypes().add((Object)this.getFrame());
        this.gatewayEntryEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.gatewayTypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.pduGatewayEntryEClass.getESuperTypes().add((Object)this.getGatewayEntry());
        this.relativelyScheduledTimingEClass.getESuperTypes().add((Object)this.getTiming());
        this.requestControlledTimingEClass.getESuperTypes().add((Object)this.getTiming());
        this.signalGatewayEntryEClass.getESuperTypes().add((Object)this.getGatewayEntry());
        this.sporadicFrameSlotEClass.getESuperTypes().add((Object)this.getLinSchedulingTableEntry());
        this.unconditionalFrameSlotEClass.getESuperTypes().add((Object)this.getLinSchedulingTableEntry());
        this.initEClass(this.pduPrototypeEClass, PDUPrototype.class, "PDUPrototype", false, false, true);
        this.initEReference(this.getPDUPrototype_Frame(), (EClassifier)this.getFrame(), this.getFrame_PduPrototypes(), "frame", null, 0, 1, PDUPrototype.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPDUPrototype_IncludedClusterSignals(), (EClassifier)theSystemsignalPackage.getClusterSignal(), theSystemsignalPackage.getClusterSignal_PDUPrototype(), "includedClusterSignals", null, 0, -1, PDUPrototype.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPDUPrototype_PduType(), (EClassifier)thePdustructurePackage.getPDUType(), null, "pduType", null, 0, 1, PDUPrototype.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getPDUPrototype_StartPosition(), (EClassifier)thePrimitivetypesPackage.getInteger(), "startPosition", "0", 0, 1, PDUPrototype.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPDUPrototype_UpdateIndicationBitPosition(), (EClassifier)thePrimitivetypesPackage.getInteger(), "UpdateIndicationBitPosition", "0", 0, 1, PDUPrototype.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.timingEClass, Timing.class, "Timing", false, false, true);
        this.initEReference(this.getTiming_FreeTextConditions(), (EClassifier)this.getFreeTextCondition(), this.getFreeTextCondition_Timing(), "freeTextConditions", null, 0, -1, Timing.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.freeTextConditionEClass, FreeTextCondition.class, "FreeTextCondition", false, false, true);
        this.initEReference(this.getFreeTextCondition_Timing(), (EClassifier)this.getTiming(), this.getTiming_FreeTextConditions(), "timing", null, 0, 1, FreeTextCondition.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getFreeTextCondition_Condition(), (EClassifier)thePrimitivetypesPackage.getString(), "condition", "", 0, 1, FreeTextCondition.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.communicationMatrixTypeEClass, CommunicationMatrixType.class, "CommunicationMatrixType", false, false, true);
        this.initEReference(this.getCommunicationMatrixType_CommunicationCluster(), (EClassifier)theInstancerefPackage_10.getCommunicationMatrixTypeCommunicationCluster(), theInstancerefPackage_10.getCommunicationMatrixTypeCommunicationCluster_CommunicationMatrixType(), "communicationCluster", null, 0, 1, CommunicationMatrixType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommunicationMatrixType_Frames(), (EClassifier)this.getFrame(), this.getFrame_CommunicationMatrixType(), "frames", null, 0, -1, CommunicationMatrixType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommunicationMatrixType_LinSchedulingTables(), (EClassifier)this.getLinSchedulingTable(), this.getLinSchedulingTable_CommunicationMatrixType(), "linSchedulingTables", null, 0, -1, CommunicationMatrixType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCommunicationMatrixType_SystemTopologyType(), (EClassifier)theTopologyPackage.getSystemTopologyType(), null, "systemTopologyType", null, 0, 1, CommunicationMatrixType.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.linSchedulingTableEClass, LinSchedulingTable.class, "LinSchedulingTable", false, false, true);
        this.initEReference(this.getLinSchedulingTable_CommunicationMatrixType(), (EClassifier)this.getCommunicationMatrixType(), this.getCommunicationMatrixType_LinSchedulingTables(), "communicationMatrixType", null, 0, 1, LinSchedulingTable.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getLinSchedulingTable_Entries(), (EClassifier)this.getLinSchedulingTableEntry(), this.getLinSchedulingTableEntry_LinSchedulingTable(), "entries", null, 0, -1, LinSchedulingTable.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.linSchedulingTableEntryEClass, LinSchedulingTableEntry.class, "LinSchedulingTableEntry", false, false, true);
        this.initEReference(this.getLinSchedulingTableEntry_LinSchedulingTable(), (EClassifier)this.getLinSchedulingTable(), this.getLinSchedulingTable_Entries(), "linSchedulingTable", null, 0, 1, LinSchedulingTableEntry.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getLinSchedulingTableEntry_DelayToNextFrame(), (EClassifier)thePrimitivetypesPackage.getFloat(), "delayToNextFrame", "0.0", 0, 1, LinSchedulingTableEntry.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.frameEClass, Frame.class, "Frame", false, false, true);
        this.initEReference(this.getFrame_CommunicationMatrixType(), (EClassifier)this.getCommunicationMatrixType(), this.getCommunicationMatrixType_Frames(), "communicationMatrixType", null, 0, 1, Frame.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getFrame_FrameID(), (EClassifier)thePrimitivetypesPackage.getInteger(), "frameID", "0", 0, 1, Frame.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFrame_FrameLength(), (EClassifier)thePrimitivetypesPackage.getInteger(), "frameLength", "0", 0, 1, Frame.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getFrame_FrameTimings(), (EClassifier)this.getTiming(), null, "frameTimings", null, 0, -1, Frame.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getFrame_MinimumDelayTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minimumDelayTime", "0.0", 0, 1, Frame.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getFrame_PduPrototypes(), (EClassifier)this.getPDUPrototype(), this.getPDUPrototype_Frame(), "pduPrototypes", null, 0, -1, Frame.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getFrame_Receivers(), (EClassifier)theInstancerefPackage_10.getFrameReceiver(), theInstancerefPackage_10.getFrameReceiver_Frame(), "receivers", null, 0, -1, Frame.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getFrame_Transmitter(), (EClassifier)theInstancerefPackage_10.getFrameTransmitter(), theInstancerefPackage_10.getFrameTransmitter_Frame(), "transmitter", null, 0, 1, Frame.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getFrame_UsedPhysicalChannel(), (EClassifier)theInstancerefPackage_10.getFrameUsedPhysicalChannel(), theInstancerefPackage_10.getFrameUsedPhysicalChannel_Frame(), "usedPhysicalChannel", null, 0, 1, Frame.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.absolutelyScheduledTimingEClass, AbsolutelyScheduledTiming.class, "AbsolutelyScheduledTiming", false, false, true);
        this.initEAttribute(this.getAbsolutelyScheduledTiming_BaseCycle(), (EClassifier)thePrimitivetypesPackage.getInteger(), "BaseCycle", "0", 0, 1, AbsolutelyScheduledTiming.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAbsolutelyScheduledTiming_CycleRepetition(), (EClassifier)this.getAbsolutelyScheduledTimingCycleRepetitionEnum(), "CycleRepetition", "1", 0, 1, AbsolutelyScheduledTiming.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getAbsolutelyScheduledTiming_SlotID(), (EClassifier)thePrimitivetypesPackage.getInteger(), "slotID", "0", 0, 1, AbsolutelyScheduledTiming.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.activeConditionEClass, ActiveCondition.class, "ActiveCondition", false, false, true);
        this.initEReference(this.getActiveCondition_SystemStates(), (EClassifier)this.getSystemStateTrigger(), null, "systemStates", null, 0, -1, ActiveCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.systemStateTriggerEClass, SystemStateTrigger.class, "SystemStateTrigger", false, false, true);
        this.initEAttribute(this.getSystemStateTrigger_SystemStateConditions(), (EClassifier)thePrimitivetypesPackage.getString(), "systemStateConditions", "", 0, -1, SystemStateTrigger.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.canFrameEClass, CanFrame.class, "CanFrame", false, false, true);
        this.initEClass(this.cyclicTimingEClass, CyclicTiming.class, "CyclicTiming", false, false, true);
        this.initEReference(this.getCyclicTiming_ActiveCondition(), (EClassifier)this.getActiveCondition(), null, "activeCondition", null, 0, 1, CyclicTiming.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCyclicTiming_CycleTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "cycleTime", "0.0", 0, 1, CyclicTiming.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCyclicTiming_StartCondition(), (EClassifier)this.getStartCondition(), this.getStartCondition_CyclicTiming(), "startCondition", null, 0, 1, CyclicTiming.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCyclicTiming_StartingTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "startingTime", "0.0", 0, 1, CyclicTiming.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCyclicTiming_StopCondition(), (EClassifier)this.getStopCondition(), this.getStopCondition_CyclicTiming(), "stopCondition", null, 0, 1, CyclicTiming.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.stopConditionEClass, StopCondition.class, "StopCondition", false, false, true);
        this.initEReference(this.getStopCondition_CyclicTiming(), (EClassifier)this.getCyclicTiming(), this.getCyclicTiming_StopCondition(), "cyclicTiming", null, 0, 1, StopCondition.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getStopCondition_SignalStates(), (EClassifier)this.getSignalTrigger(), null, "signalStates", null, 0, -1, StopCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getStopCondition_SystemStates(), (EClassifier)this.getSystemStateTrigger(), null, "systemStates", null, 0, -1, StopCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.signalTriggerEClass, SignalTrigger.class, "SignalTrigger", false, false, true);
        this.initEReference(this.getSignalTrigger_ComparedSignal(), (EClassifier)theSystemsignalPackage.getClusterSignal(), null, "comparedSignal", null, 0, 1, SignalTrigger.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getSignalTrigger_DataEventCondition(), (EClassifier)this.getSignalTriggerDataEventConditionEnum(), "dataEventCondition", "ON-CHANGE", 0, 1, SignalTrigger.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.startConditionEClass, StartCondition.class, "StartCondition", false, false, true);
        this.initEReference(this.getStartCondition_CyclicTiming(), (EClassifier)this.getCyclicTiming(), this.getCyclicTiming_StartCondition(), "cyclicTiming", null, 0, 1, StartCondition.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getStartCondition_SignalStates(), (EClassifier)this.getSignalTrigger(), null, "signalStates", null, 0, -1, StartCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getStartCondition_SystemStates(), (EClassifier)this.getSystemStateTrigger(), null, "systemStates", null, 0, -1, StartCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.eventControlledTimingEClass, EventControlledTiming.class, "EventControlledTiming", false, false, true);
        this.initEReference(this.getEventControlledTiming_ActiveCondition(), (EClassifier)this.getActiveCondition(), null, "activeCondition", null, 0, 1, EventControlledTiming.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getEventControlledTiming_DebounceTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "debounceTime", "0.0", 0, 1, EventControlledTiming.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getEventControlledTiming_NumberOfRepeats(), (EClassifier)thePrimitivetypesPackage.getInteger(), "numberOfRepeats", "0", 0, 1, EventControlledTiming.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getEventControlledTiming_RepeatCycleTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "repeatCycleTime", "0.0", 0, 1, EventControlledTiming.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getEventControlledTiming_SendCondition(), (EClassifier)this.getSendCondition(), this.getSendCondition_EventControlledTiming(), "sendCondition", null, 0, 1, EventControlledTiming.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.sendConditionEClass, SendCondition.class, "SendCondition", false, false, true);
        this.initEReference(this.getSendCondition_EventControlledTiming(), (EClassifier)this.getEventControlledTiming(), this.getEventControlledTiming_SendCondition(), "eventControlledTiming", null, 0, 1, SendCondition.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSendCondition_SignalStates(), (EClassifier)this.getSignalTrigger(), null, "signalStates", null, 0, -1, SendCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSendCondition_SystemStates(), (EClassifier)this.getSystemStateTrigger(), null, "systemStates", null, 0, -1, SendCondition.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.eventTriggeredFrameSlotEClass, EventTriggeredFrameSlot.class, "EventTriggeredFrameSlot", false, false, true);
        this.initEAttribute(this.getEventTriggeredFrameSlot_EventTriggeredFrameID(), (EClassifier)thePrimitivetypesPackage.getInteger(), "eventTriggeredFrameID", "0", 0, 1, EventTriggeredFrameSlot.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getEventTriggeredFrameSlot_UnconditionalFrames(), (EClassifier)this.getLinFrame(), null, "unconditionalFrames", null, 0, -1, EventTriggeredFrameSlot.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.linFrameEClass, LinFrame.class, "LinFrame", false, false, true);
        this.initEReference(this.getLinFrame_ResponseErrorSignal(), (EClassifier)thePdustructurePackage.getSignalPosition(), null, "responseErrorSignal", null, 0, 1, LinFrame.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.flexrayFrameEClass, FlexrayFrame.class, "FlexrayFrame", false, false, true);
        this.initEClass(this.gatewayEntryEClass, GatewayEntry.class, "GatewayEntry", true, false, true);
        this.initEReference(this.getGatewayEntry_GatewayType(), (EClassifier)this.getGatewayType(), this.getGatewayType_GatewayEntries(), "gatewayType", null, 0, 1, GatewayEntry.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getGatewayEntry_GatewayEntryId(), (EClassifier)thePrimitivetypesPackage.getInteger(), "gatewayEntryId", "0", 0, 1, GatewayEntry.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.gatewayTypeEClass, GatewayType.class, "GatewayType", false, false, true);
        this.initEReference(this.getGatewayType_GatewayEntries(), (EClassifier)this.getGatewayEntry(), this.getGatewayEntry_GatewayType(), "gatewayEntries", null, 0, -1, GatewayType.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getGatewayType_GatewayLocation(), (EClassifier)theInstancerefPackage_10.getGatewayTypeGatewayLocation(), theInstancerefPackage_10.getGatewayTypeGatewayLocation_GatewayType(), "gatewayLocation", null, 0, 1, GatewayType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.pduGatewayEntryEClass, PDUGatewayEntry.class, "PDUGatewayEntry", false, false, true);
        this.initEAttribute(this.getPDUGatewayEntry_ActionOnTimeout(), (EClassifier)this.getPDUGatewayEntryActionOnTimeoutEnum(), "actionOnTimeout", "USE-DEFAULT-VALUE", 0, 1, PDUGatewayEntry.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPDUGatewayEntry_DestinationPDU(), (EClassifier)theInstancerefPackage_10.getPDUGatewayEntryDestinationPDU(), theInstancerefPackage_10.getPDUGatewayEntryDestinationPDU_PDUGatewayEntry(), "destinationPDU", null, 0, 1, PDUGatewayEntry.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPDUGatewayEntry_SourcePDU(), (EClassifier)theInstancerefPackage_10.getPDUGatewayEntrySourcePDU(), theInstancerefPackage_10.getPDUGatewayEntrySourcePDU_PDUGatewayEntry(), "sourcePDU", null, 0, 1, PDUGatewayEntry.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPDUGatewayEntry_TimeOutCycle(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeOutCycle", "0.0", 0, 1, PDUGatewayEntry.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.relativelyScheduledTimingEClass, RelativelyScheduledTiming.class, "RelativelyScheduledTiming", false, false, true);
        this.initEAttribute(this.getRelativelyScheduledTiming_Delay(), (EClassifier)thePrimitivetypesPackage.getInteger(), "delay", "0", 0, 1, RelativelyScheduledTiming.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRelativelyScheduledTiming_PositionInTable(), (EClassifier)thePrimitivetypesPackage.getInteger(), "positionInTable", "0", 0, 1, RelativelyScheduledTiming.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRelativelyScheduledTiming_ScheduleTableName(), (EClassifier)thePrimitivetypesPackage.getString(), "scheduleTableName", "", 0, 1, RelativelyScheduledTiming.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.requestControlledTimingEClass, RequestControlledTiming.class, "RequestControlledTiming", false, false, true);
        this.initEReference(this.getRequestControlledTiming_ActiveCondition(), (EClassifier)this.getActiveCondition(), null, "activeCondition", null, 0, 1, RequestControlledTiming.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRequestControlledTiming_RequestingFrame(), (EClassifier)this.getFrame(), null, "requestingFrame", null, 0, 1, RequestControlledTiming.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getRequestControlledTiming_ResponseTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "responseTime", "0.0", 0, 1, RequestControlledTiming.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.signalGatewayEntryEClass, SignalGatewayEntry.class, "SignalGatewayEntry", false, false, true);
        this.initEAttribute(this.getSignalGatewayEntry_ActionOnTimeout(), (EClassifier)this.getSignalGatewayEntryActionOnTimeoutEnum(), "actionOnTimeout", "USE-DEFAULT-VALUE", 0, 1, SignalGatewayEntry.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSignalGatewayEntry_DestinationClusterSignal(), (EClassifier)theInstancerefPackage_10.getSignalGatewayEntryDestinationClusterSignal(), theInstancerefPackage_10.getSignalGatewayEntryDestinationClusterSignal_SignalGatewayEntry(), "destinationClusterSignal", null, 0, 1, SignalGatewayEntry.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSignalGatewayEntry_SourceClusterSignal(), (EClassifier)theInstancerefPackage_10.getSignalGatewayEntrySourceClusterSignal(), theInstancerefPackage_10.getSignalGatewayEntrySourceClusterSignal_SignalGatewayEntry(), "sourceClusterSignal", null, 0, 1, SignalGatewayEntry.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSignalGatewayEntry_TimeOutCycle(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeOutCycle", "0.0", 0, 1, SignalGatewayEntry.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.sporadicFrameSlotEClass, SporadicFrameSlot.class, "SporadicFrameSlot", false, false, true);
        this.initEReference(this.getSporadicFrameSlot_SporadicFrames(), (EClassifier)this.getLinFrame(), null, "sporadicFrames", null, 0, -1, SporadicFrameSlot.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.unconditionalFrameSlotEClass, UnconditionalFrameSlot.class, "UnconditionalFrameSlot", false, false, true);
        this.initEReference(this.getUnconditionalFrameSlot_UnconditionalFrame(), (EClassifier)this.getLinFrame(), null, "unconditionalFrame", null, 0, 1, UnconditionalFrameSlot.class, false, false, true, false, true, false, true, false, true);
        this.initEEnum(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum.class, "AbsolutelyScheduledTimingCycleRepetitionEnum");
        this.addEEnumLiteral(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum._1);
        this.addEEnumLiteral(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum._2);
        this.addEEnumLiteral(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum._4);
        this.addEEnumLiteral(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum._8);
        this.addEEnumLiteral(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum._16);
        this.addEEnumLiteral(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum._32);
        this.addEEnumLiteral(this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, AbsolutelyScheduledTimingCycleRepetitionEnum._64);
        this.initEEnum(this.signalTriggerDataEventConditionEnumEEnum, SignalTriggerDataEventConditionEnum.class, "SignalTriggerDataEventConditionEnum");
        this.addEEnumLiteral(this.signalTriggerDataEventConditionEnumEEnum, SignalTriggerDataEventConditionEnum.ON_CHANGE);
        this.addEEnumLiteral(this.signalTriggerDataEventConditionEnumEEnum, SignalTriggerDataEventConditionEnum.ON_UPDATE);
        this.addEEnumLiteral(this.signalTriggerDataEventConditionEnumEEnum, SignalTriggerDataEventConditionEnum.ON_NOT_DEFAULT);
        this.initEEnum(this.pduGatewayEntryActionOnTimeoutEnumEEnum, PDUGatewayEntryActionOnTimeoutEnum.class, "PDUGatewayEntryActionOnTimeoutEnum");
        this.addEEnumLiteral(this.pduGatewayEntryActionOnTimeoutEnumEEnum, PDUGatewayEntryActionOnTimeoutEnum.USE_DEFAULT_VALUE);
        this.addEEnumLiteral(this.pduGatewayEntryActionOnTimeoutEnumEEnum, PDUGatewayEntryActionOnTimeoutEnum.USE_LAST_VALUE);
        this.addEEnumLiteral(this.pduGatewayEntryActionOnTimeoutEnumEEnum, PDUGatewayEntryActionOnTimeoutEnum.DONT_SEND);
        this.initEEnum(this.signalGatewayEntryActionOnTimeoutEnumEEnum, SignalGatewayEntryActionOnTimeoutEnum.class, "SignalGatewayEntryActionOnTimeoutEnum");
        this.addEEnumLiteral(this.signalGatewayEntryActionOnTimeoutEnumEEnum, SignalGatewayEntryActionOnTimeoutEnum.USE_DEFAULT_VALUE);
        this.addEEnumLiteral(this.signalGatewayEntryActionOnTimeoutEnumEEnum, SignalGatewayEntryActionOnTimeoutEnum.USE_LAST_VALUE);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_TimingAnnotations();
        this.createTaggedValuesOfGeneralization_FrameAnnotations();
        this.createTaggedValuesOfGeneralization_LinSchedulingTableEntryAnnotations();
        this.createTaggedValuesOfGeneralization_GatewayEntryAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Communication", "GUID", "{CBB95FD5-5992-45d0-8983-D9D4C5E6EE5C}", "Id", "-1118774563"});
        this.addAnnotation((ENamedElement)this.pduPrototypeEClass, source, new String[]{"Name", "PDUPrototype", "Modified", "Thu Sep 21 11:07:53 CEST 2006", "Created", "Tue Sep 19 10:23:41 CEST 2006", "GUID", "{6E94D151-1BE3-4047-8590-CD6411808667}", "Id", "1158654221"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_StartPosition(), source, new String[]{"Name", "startPosition", "GUID", "{25BBCD7A-91B5-40a6-9BEE-3AA32D1F1B97}", "Id", "680008696"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_UpdateIndicationBitPosition(), source, new String[]{"Name", "UpdateIndicationBitPosition", "GUID", "{6C4D0380-770A-4d8d-8F4E-6F70A2A96806}", "Id", "-2080053965"});
        this.addAnnotation((ENamedElement)this.timingEClass, source, new String[]{"Name", "Timing", "Modified", "Mon Sep 25 12:05:06 CEST 2006", "Created", "Fri Apr 23 09:26:27 CEST 2004", "GUID", "{D686E7CD-C975-48f6-BBA8-51AA426C5DF5}", "Id", "908286649"});
        this.addAnnotation((ENamedElement)this.freeTextConditionEClass, source, new String[]{"Name", "FreeTextCondition", "Modified", "Tue Dec 21 15:29:00 CET 2004", "Created", "Tue Jun 22 11:05:24 CEST 2004", "GUID", "{0428299F-E642-428e-BD49-C0603C988ED4}", "Id", "279257944"});
        this.addAnnotation((ENamedElement)this.getFreeTextCondition_Condition(), source, new String[]{"Name", "condition", "GUID", "{150461A1-0ED1-4d76-9A50-3721CF4610A2}", "Id", "1757955705"});
        this.addAnnotation((ENamedElement)this.communicationMatrixTypeEClass, source, new String[]{"Name", "CommunicationMatrixType", "Modified", "Tue Sep 19 15:10:40 CEST 2006", "Created", "Wed Jun 30 10:15:48 CEST 2004", "GUID", "{5C042720-6FEB-4007-94AF-EC89215FB5A9}", "Id", "-1372135937"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEClass, source, new String[]{"Name", "LinSchedulingTable", "Modified", "Fri Nov 03 09:05:15 CET 2006", "Created", "Tue Jun 22 12:16:03 CEST 2004", "GUID", "{7CC2E7E5-C348-4892-AC99-17C77AD7C6C4}", "Id", "-846306634"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEntryEClass, source, new String[]{"Name", "LinSchedulingTableEntry", "Modified", "Tue Apr 12 16:13:51 CEST 2005", "Created", "Tue Jun 22 12:16:27 CEST 2004", "GUID", "{A6FF07D8-8FFD-481c-A452-DA09203CBD57}", "Id", "670367822"});
        this.addAnnotation((ENamedElement)this.getLinSchedulingTableEntry_DelayToNextFrame(), source, new String[]{"Name", "delayToNextFrame", "GUID", "{28E438AD-B481-41c9-AD51-946F932D273D}", "Id", "836182455"});
        this.addAnnotation((ENamedElement)this.frameEClass, source, new String[]{"Name", "Frame", "Modified", "Fri Nov 17 21:37:20 CET 2006", "Created", "Wed Apr 14 14:13:19 CEST 2004", "GUID", "{E0AB8077-C6B4-4576-8F99-863C7087B09B}", "Id", "303630042"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameID(), source, new String[]{"Name", "frameID", "GUID", "{B1DF4A31-A838-4c70-AF8E-5AE60DFBDAF5}", "Id", "1097654640"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameLength(), source, new String[]{"Name", "frameLength", "GUID", "{EAC18406-BEC8-4e7c-A577-FB52E7B922E3}", "Id", "1526948411"});
        this.addAnnotation((ENamedElement)this.getFrame_MinimumDelayTime(), source, new String[]{"Name", "minimumDelayTime", "GUID", "{777424B2-0FA6-42e6-A126-BC7DB2D3D5A3}", "Id", "1112444622"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingEClass, source, new String[]{"Name", "AbsolutelyScheduledTiming", "Modified", "Tue Oct 17 12:07:48 CEST 2006", "Created", "Tue Oct 17 11:37:03 CEST 2006", "GUID", "{1136420A-1303-4532-92B0-FA1046CC8948}", "Id", "1161077823"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_BaseCycle(), source, new String[]{"Name", "BaseCycle", "GUID", "{574CB7FD-719A-404d-A34E-01E0790995DC}", "Id", "-2032169413"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_CycleRepetition(), source, new String[]{"Name", "CycleRepetition", "GUID", "{B9D447D5-4800-432c-872B-E0EE188F7703}", "Id", "919929440"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_SlotID(), source, new String[]{"Name", "slotID", "GUID", "{9029E15E-96A2-44f0-9DC6-2834F189DCB7}", "Id", "1897190754"});
        this.addAnnotation((ENamedElement)this.activeConditionEClass, source, new String[]{"Name", "ActiveCondition", "Modified", "Wed Mar 16 16:19:54 CET 2005", "Created", "Thu Oct 21 12:29:31 CEST 2004", "GUID", "{CF293624-359C-44fe-BCB4-7C6035C3DC95}", "Id", "626273588"});
        this.addAnnotation((ENamedElement)this.systemStateTriggerEClass, source, new String[]{"Name", "SystemStateTrigger", "Modified", "Wed Mar 16 16:19:54 CET 2005", "Created", "Thu Oct 21 13:05:22 CEST 2004", "GUID", "{2A24B667-996C-43ea-B0A6-9863009E52C3}", "Id", "-770331131"});
        this.addAnnotation((ENamedElement)this.getSystemStateTrigger_SystemStateConditions(), source, new String[]{"Name", "systemStateCondition", "GUID", "{25F2425C-742D-4bfe-B51C-DE4D92E10B91}", "Id", "-1535303167"});
        this.addAnnotation((ENamedElement)this.canFrameEClass, source, new String[]{"Name", "CanFrame", "Modified", "Tue Sep 19 15:19:08 CEST 2006", "Created", "Mon May 24 10:28:57 CEST 2004", "GUID", "{CFD5C05C-98E2-4a91-85BE-A17C3D839A73}", "Id", "1756073165"});
        this.addAnnotation((ENamedElement)this.cyclicTimingEClass, source, new String[]{"Name", "CyclicTiming", "Modified", "Wed Apr 13 08:49:28 CEST 2005", "Created", "Fri Apr 23 09:28:04 CEST 2004", "GUID", "{A02D6FD4-F731-4064-B13A-E9F82DC3D554}", "Id", "-1344790572"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_CycleTime(), source, new String[]{"Name", "cycleTime", "GUID", "{E8A33C83-21E5-4d0d-8BC8-8A3D4DE2D3EE}", "Id", "-426373051"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StartingTime(), source, new String[]{"Name", "startingTime", "GUID", "{553B5A37-0463-4cac-8326-6409B31D6287}", "Id", "-750855646"});
        this.addAnnotation((ENamedElement)this.stopConditionEClass, source, new String[]{"Name", "StopCondition", "Modified", "Thu Mar 10 10:58:43 CET 2005", "Created", "Thu Oct 21 12:30:36 CEST 2004", "GUID", "{8A47265D-7442-4e93-8963-6FE93620068C}", "Id", "654896769"});
        this.addAnnotation((ENamedElement)this.signalTriggerEClass, source, new String[]{"Name", "SignalTrigger", "Modified", "Mon Sep 11 13:41:57 CEST 2006", "Created", "Tue Jun 15 13:45:59 CEST 2004", "GUID", "{CD91E9BF-43AE-4b0a-905D-B43F4398406C}", "Id", "-1588569890"});
        this.addAnnotation((ENamedElement)this.getSignalTrigger_DataEventCondition(), source, new String[]{"Name", "dataEventCondition", "GUID", "{5DB88554-36EA-4427-9206-DD8C801F9E89}", "Id", "-327740665"});
        this.addAnnotation((ENamedElement)this.startConditionEClass, source, new String[]{"Name", "StartCondition", "Modified", "Wed Apr 13 08:49:28 CEST 2005", "Created", "Thu Oct 21 12:29:51 CEST 2004", "GUID", "{E19AC500-2A54-490d-86C3-5842046AB2B9}", "Id", "-1306095397"});
        this.addAnnotation((ENamedElement)this.eventControlledTimingEClass, source, new String[]{"Name", "EventControlledTiming", "Modified", "Fri Jul 08 11:24:28 CEST 2005", "Created", "Fri Apr 23 09:28:04 CEST 2004", "GUID", "{9F99F10A-7CB1-4428-BAAD-EE0B60F7532E}", "Id", "1404193095"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_DebounceTime(), source, new String[]{"Name", "debounceTime", "GUID", "{0DEB2B9E-DD96-4ca6-B17A-BF3B91364E76}", "Id", "317500284"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_NumberOfRepeats(), source, new String[]{"Name", "numberOfRepeats", "GUID", "{475F7188-29AC-4fbc-BF96-9108EA937243}", "Id", "1098260384"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_RepeatCycleTime(), source, new String[]{"Name", "repeatCycleTime", "GUID", "{28A6DA46-FAD3-486d-88E8-FA4B13086C18}", "Id", "1781354273"});
        this.addAnnotation((ENamedElement)this.sendConditionEClass, source, new String[]{"Name", "SendCondition", "Modified", "Thu Mar 10 10:58:43 CET 2005", "Created", "Thu Oct 21 12:30:46 CEST 2004", "GUID", "{E4E04AC3-F6B5-4c3f-8B87-F1B56997DF50}", "Id", "1666342039"});
        this.addAnnotation((ENamedElement)this.eventTriggeredFrameSlotEClass, source, new String[]{"Name", "EventTriggeredFrameSlot", "Modified", "Tue Nov 09 09:54:37 CET 2004", "Created", "Thu Sep 30 13:11:37 CEST 2004", "GUID", "{C8E35714-F12C-46c9-838B-2FE1652B3341}", "Id", "-746319461"});
        this.addAnnotation((ENamedElement)this.getEventTriggeredFrameSlot_EventTriggeredFrameID(), source, new String[]{"Name", "eventTriggeredFrameID", "GUID", "{EBCFB241-6B17-484e-858F-60BB31BDED9B}", "Id", "1097738695"});
        this.addAnnotation((ENamedElement)this.linFrameEClass, source, new String[]{"Name", "LinFrame", "Modified", "Tue Sep 19 15:19:57 CEST 2006", "Created", "Tue Jun 22 12:27:00 CEST 2004", "GUID", "{3384DEDE-611F-47e4-B65C-449E86A4FC00}", "Id", "-1626468269"});
        this.addAnnotation((ENamedElement)this.flexrayFrameEClass, source, new String[]{"Name", "FlexrayFrame", "Modified", "Fri Oct 20 14:53:13 CEST 2006", "Created", "Mon May 24 10:29:11 CEST 2004", "GUID", "{85049BB6-2668-4765-8B23-0FE66730F276}", "Id", "330144292"});
        this.addAnnotation((ENamedElement)this.gatewayEntryEClass, source, new String[]{"Name", "GatewayEntry", "Modified", "Fri Nov 17 21:55:04 CET 2006", "Created", "Mon May 03 10:01:27 CEST 2004", "GUID", "{0890E90F-93A4-4280-B3B8-F2491EDBD5E0}", "Id", "1420490673"});
        this.addAnnotation((ENamedElement)this.getGatewayEntry_GatewayEntryId(), source, new String[]{"Name", "gatewayEntryId", "GUID", "{581B2C6F-A65D-4e91-A41F-B89F717061F0}", "Id", "-1277784034"});
        this.addAnnotation((ENamedElement)this.gatewayTypeEClass, source, new String[]{"Name", "GatewayType", "Modified", "Tue Sep 19 14:16:20 CEST 2006", "Created", "Mon May 03 10:00:24 CEST 2004", "GUID", "{D58A1052-6267-4c08-BC00-CAA97DA74C35}", "Id", "1898042307"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryEClass, source, new String[]{"Name", "PDUGatewayEntry", "Modified", "Fri Nov 17 21:55:19 CET 2006", "Created", "Tue May 04 16:00:31 CEST 2004", "GUID", "{E11BC60D-8E52-4443-8BEF-BC940A094929}", "Id", "1628112610"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_ActionOnTimeout(), source, new String[]{"Name", "actionOnTimeout", "GUID", "{303A20B7-E811-45f9-BDE1-E616C17EAC04}", "Id", "-640905248"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_TimeOutCycle(), source, new String[]{"Name", "timeOutCycle", "GUID", "{B928AF63-6AB6-4507-8D33-2BBDBD7E4A10}", "Id", "-979418693"});
        this.addAnnotation((ENamedElement)this.relativelyScheduledTimingEClass, source, new String[]{"Name", "RelativelyScheduledTiming", "Modified", "Thu Oct 14 15:36:28 CEST 2004", "Created", "Mon May 03 09:43:33 CEST 2004", "GUID", "{E77D158A-5869-420d-A4D9-989B95EB18E9}", "Id", "1360493184"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_Delay(), source, new String[]{"Name", "delay", "GUID", "{BE963F38-1E36-4070-91C8-A21F23FA2F17}", "Id", "721585815"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_PositionInTable(), source, new String[]{"Name", "positionInTable", "GUID", "{DA11B697-56D9-4d95-B30A-146D224F908A}", "Id", "1564402862"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_ScheduleTableName(), source, new String[]{"Name", "scheduleTableName", "GUID", "{3A52ACDB-E3DF-4cac-B497-681AD54D5502}", "Id", "2033158273"});
        this.addAnnotation((ENamedElement)this.requestControlledTimingEClass, source, new String[]{"Name", "RequestControlledTiming", "Modified", "Tue Oct 24 10:14:52 CEST 2006", "Created", "Fri Apr 23 09:28:04 CEST 2004", "GUID", "{F2002D55-507A-4ba3-BD9C-ABBD8F5DC3B1}", "Id", "-1460442296"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_ResponseTime(), source, new String[]{"Name", "responseTime", "GUID", "{A802DA6F-5F06-432f-ACEF-445ED3EABBF6}", "Id", "-819164247"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryEClass, source, new String[]{"Name", "SignalGatewayEntry", "Modified", "Fri Nov 17 21:56:36 CET 2006", "Created", "Tue May 04 15:59:55 CEST 2004", "GUID", "{0A7BFE88-D91D-4fd7-AD72-EE41D37919DE}", "Id", "-652384013"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_ActionOnTimeout(), source, new String[]{"Name", "actionOnTimeout", "GUID", "{0DD2FC56-11B7-48b6-8088-D5DEF7A58E9F}", "Id", "1493178790"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_TimeOutCycle(), source, new String[]{"Name", "timeOutCycle", "GUID", "{3A5B5947-0B87-4b74-8EF1-91D55B5CEC30}", "Id", "1412809912"});
        this.addAnnotation((ENamedElement)this.sporadicFrameSlotEClass, source, new String[]{"Name", "SporadicFrameSlot", "Modified", "Tue Oct 24 09:17:12 CEST 2006", "Created", "Thu Sep 30 13:10:53 CEST 2004", "GUID", "{7BC780CA-C5A9-4094-BEE2-4A7D94441B8D}", "Id", "-821704490"});
        this.addAnnotation((ENamedElement)this.unconditionalFrameSlotEClass, source, new String[]{"Name", "UnconditionalFrameSlot", "Modified", "Thu Nov 18 11:43:16 CET 2004", "Created", "Thu Sep 30 13:08:39 CEST 2004", "GUID", "{4FD975C3-CC78-4417-9BB5-DFA8B4F4DF79}", "Id", "1427682669"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "COMMUNICATION", "xml.namePlural", "COMMUNICATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pduPrototypeEClass, source, new String[]{"xml.name", "PDU-PROTOTYPE", "xml.namePlural", "PDU-PROTOTYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_IncludedClusterSignals(), source, new String[]{"xml.name", "INCLUDED-CLUSTER-SIGNAL", "xml.namePlural", "INCLUDED-CLUSTER-SIGNALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_PduType(), source, new String[]{"xml.name", "PDU-TYPE-TREF", "xml.namePlural", "PDU-TYPE-TREFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_StartPosition(), source, new String[]{"xml.name", "START-POSITION", "xml.namePlural", "START-POSITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_UpdateIndicationBitPosition(), source, new String[]{"xml.name", "UPDATE-INDICATION-BIT-POSITION", "xml.namePlural", "UPDATE-INDICATION-BIT-POSITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.timingEClass, source, new String[]{"xml.name", "TIMING", "xml.namePlural", "TIMINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTiming_FreeTextConditions(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "FREE-TEXT-CONDITION", "xml.namePlural", "FREE-TEXT-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.freeTextConditionEClass, source, new String[]{"xml.name", "FREE-TEXT-CONDITION", "xml.namePlural", "FREE-TEXT-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFreeTextCondition_Condition(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "CONDITION", "xml.namePlural", "CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.communicationMatrixTypeEClass, source, new String[]{"xml.name", "COMMUNICATION-MATRIX-TYPE", "xml.namePlural", "COMMUNICATION-MATRIX-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_CommunicationCluster(), source, new String[]{"xml.name", "COMMUNICATION-CLUSTER", "xml.namePlural", "COMMUNICATION-CLUSTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_Frames(), source, new String[]{"xml.name", "FRAME", "xml.namePlural", "FRAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_LinSchedulingTables(), source, new String[]{"xml.name", "LIN-SCHEDULING-TABLE", "xml.namePlural", "LIN-SCHEDULING-TABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_SystemTopologyType(), source, new String[]{"xml.name", "SYSTEM-TOPOLOGY-TYPE-REF", "xml.namePlural", "SYSTEM-TOPOLOGY-TYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEClass, source, new String[]{"xml.name", "LIN-SCHEDULING-TABLE", "xml.namePlural", "LIN-SCHEDULING-TABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getLinSchedulingTable_Entries(), source, new String[]{"xml.namePlural", "ENTRIES", "xml.tags", "xml.namePlural=\"ENTRIES\"", "xml.sequenceOffset", "0", "xml.name", "ENTRY", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEntryEClass, source, new String[]{"xml.namePlural", "LIN-SCHEDULING-TABLE-ENTRIES", "xml.tags", "xml.namePlural=\"LIN-SCHEDULING-TABLE-ENTRIES\"", "xml.name", "LIN-SCHEDULING-TABLE-ENTRY", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getLinSchedulingTableEntry_DelayToNextFrame(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "DELAY-TO-NEXT-FRAME", "xml.namePlural", "DELAY-TO-NEXT-FRAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.frameEClass, source, new String[]{"xml.name", "FRAME", "xml.namePlural", "FRAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameID(), source, new String[]{"xml.name", "FRAME-ID", "xml.namePlural", "FRAME-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameLength(), source, new String[]{"xml.name", "FRAME-LENGTH", "xml.namePlural", "FRAME-LENGTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameTimings(), source, new String[]{"xml.name", "FRAME-TIMING", "xml.namePlural", "FRAME-TIMINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrame_MinimumDelayTime(), source, new String[]{"xml.name", "MINIMUM-DELAY-TIME", "xml.namePlural", "MINIMUM-DELAY-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrame_PduPrototypes(), source, new String[]{"xml.name", "PDU-PROTOTYPE", "xml.namePlural", "PDU-PROTOTYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrame_Receivers(), source, new String[]{"xml.name", "RECEIVER-IREF", "xml.namePlural", "RECEIVER-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "5", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "true"});
        this.addAnnotation((ENamedElement)this.getFrame_Transmitter(), source, new String[]{"xml.name", "TRANSMITTER-IREF", "xml.namePlural", "TRANSMITTER-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "6", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrame_UsedPhysicalChannel(), source, new String[]{"xml.name", "USED-PHYSICAL-CHANNEL-IREF", "xml.namePlural", "USED-PHYSICAL-CHANNEL-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "7", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingEClass, source, new String[]{"xml.name", "ABSOLUTELY-SCHEDULED-TIMING", "xml.namePlural", "ABSOLUTELY-SCHEDULED-TIMINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_BaseCycle(), source, new String[]{"xml.name", "BASE-CYCLE", "xml.namePlural", "BASE-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_CycleRepetition(), source, new String[]{"xml.name", "CYCLE-REPETITION", "xml.namePlural", "CYCLE-REPETITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_SlotID(), source, new String[]{"xml.name", "SLOT-ID", "xml.namePlural", "SLOT-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum, source, new String[]{"xml.name", "ABSOLUTELY-SCHEDULED-TIMING-CYCLE-REPETITION-ENUM", "xml.namePlural", "ABSOLUTELY-SCHEDULED-TIMING-CYCLE-REPETITION-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "1", "xml.namePlural", "1S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "2", "xml.namePlural", "2S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "4", "xml.namePlural", "4S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "8", "xml.namePlural", "8S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum.getELiterals().get(4), source, new String[]{"xml.name", "16", "xml.namePlural", "16S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum.getELiterals().get(5), source, new String[]{"xml.name", "32", "xml.namePlural", "32S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingCycleRepetitionEnumEEnum.getELiterals().get(6), source, new String[]{"xml.name", "64", "xml.namePlural", "64S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.activeConditionEClass, source, new String[]{"xml.name", "ACTIVE-CONDITION", "xml.namePlural", "ACTIVE-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getActiveCondition_SystemStates(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SYSTEM-STATE", "xml.namePlural", "SYSTEM-STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.systemStateTriggerEClass, source, new String[]{"xml.name", "SYSTEM-STATE-TRIGGER", "xml.namePlural", "SYSTEM-STATE-TRIGGERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSystemStateTrigger_SystemStateConditions(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "SYSTEM-STATE-CONDITION", "xml.namePlural", "SYSTEM-STATE-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.canFrameEClass, source, new String[]{"xml.name", "CAN-FRAME", "xml.namePlural", "CAN-FRAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.cyclicTimingEClass, source, new String[]{"xml.name", "CYCLIC-TIMING", "xml.namePlural", "CYCLIC-TIMINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_ActiveCondition(), source, new String[]{"xml.name", "ACTIVE-CONDITION", "xml.namePlural", "ACTIVE-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_CycleTime(), source, new String[]{"xml.name", "CYCLE-TIME", "xml.namePlural", "CYCLE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StartCondition(), source, new String[]{"xml.name", "START-CONDITION", "xml.namePlural", "START-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StartingTime(), source, new String[]{"xml.name", "STARTING-TIME", "xml.namePlural", "STARTING-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StopCondition(), source, new String[]{"xml.name", "STOP-CONDITION", "xml.namePlural", "STOP-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.stopConditionEClass, source, new String[]{"xml.name", "STOP-CONDITION", "xml.namePlural", "STOP-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStopCondition_SignalStates(), source, new String[]{"xml.name", "SIGNAL-STATE", "xml.namePlural", "SIGNAL-STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getStopCondition_SystemStates(), source, new String[]{"xml.name", "SYSTEM-STATE", "xml.namePlural", "SYSTEM-STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.signalTriggerEClass, source, new String[]{"xml.name", "SIGNAL-TRIGGER", "xml.namePlural", "SIGNAL-TRIGGERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSignalTrigger_ComparedSignal(), source, new String[]{"xml.name", "COMPARED-SIGNAL-REF", "xml.namePlural", "COMPARED-SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSignalTrigger_DataEventCondition(), source, new String[]{"xml.name", "DATA-EVENT-CONDITION", "xml.namePlural", "DATA-EVENT-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.signalTriggerDataEventConditionEnumEEnum, source, new String[]{"xml.name", "SIGNAL-TRIGGER-DATA-EVENT-CONDITION-ENUM", "xml.namePlural", "SIGNAL-TRIGGER-DATA-EVENT-CONDITION-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.signalTriggerDataEventConditionEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "ON-CHANGE", "xml.namePlural", "ON-CHANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.signalTriggerDataEventConditionEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "ON-UPDATE", "xml.namePlural", "ON-UPDATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.signalTriggerDataEventConditionEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "ON-NOT-DEFAULT", "xml.namePlural", "ON-NOT-DEFAULTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.startConditionEClass, source, new String[]{"xml.name", "START-CONDITION", "xml.namePlural", "START-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStartCondition_SignalStates(), source, new String[]{"xml.name", "SIGNAL-STATE", "xml.namePlural", "SIGNAL-STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getStartCondition_SystemStates(), source, new String[]{"xml.name", "SYSTEM-STATE", "xml.namePlural", "SYSTEM-STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.eventControlledTimingEClass, source, new String[]{"xml.name", "EVENT-CONTROLLED-TIMING", "xml.namePlural", "EVENT-CONTROLLED-TIMINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_ActiveCondition(), source, new String[]{"xml.name", "ACTIVE-CONDITION", "xml.namePlural", "ACTIVE-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_DebounceTime(), source, new String[]{"xml.name", "DEBOUNCE-TIME", "xml.namePlural", "DEBOUNCE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_NumberOfRepeats(), source, new String[]{"xml.name", "NUMBER-OF-REPEATS", "xml.namePlural", "NUMBER-OF-REPEATSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_RepeatCycleTime(), source, new String[]{"xml.name", "REPEAT-CYCLE-TIME", "xml.namePlural", "REPEAT-CYCLE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_SendCondition(), source, new String[]{"xml.name", "SEND-CONDITION", "xml.namePlural", "SEND-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.sendConditionEClass, source, new String[]{"xml.name", "SEND-CONDITION", "xml.namePlural", "SEND-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSendCondition_SignalStates(), source, new String[]{"xml.name", "SIGNAL-STATE", "xml.namePlural", "SIGNAL-STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSendCondition_SystemStates(), source, new String[]{"xml.name", "SYSTEM-STATE", "xml.namePlural", "SYSTEM-STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.eventTriggeredFrameSlotEClass, source, new String[]{"xml.name", "EVENT-TRIGGERED-FRAME-SLOT", "xml.namePlural", "EVENT-TRIGGERED-FRAME-SLOTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEventTriggeredFrameSlot_EventTriggeredFrameID(), source, new String[]{"xml.name", "EVENT-TRIGGERED-FRAME-ID", "xml.namePlural", "EVENT-TRIGGERED-FRAME-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEventTriggeredFrameSlot_UnconditionalFrames(), source, new String[]{"xml.name", "UNCONDITIONAL-FRAME-REF", "xml.namePlural", "UNCONDITIONAL-FRAME-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.linFrameEClass, source, new String[]{"xml.name", "LIN-FRAME", "xml.namePlural", "LIN-FRAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getLinFrame_ResponseErrorSignal(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "RESPONSE-ERROR-SIGNAL-REF", "xml.namePlural", "RESPONSE-ERROR-SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.flexrayFrameEClass, source, new String[]{"xml.name", "FLEXRAY-FRAME", "xml.namePlural", "FLEXRAY-FRAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.gatewayEntryEClass, source, new String[]{"xml.namePlural", "GATEWAY-ENTRIES", "xml.tags", "xml.namePlural=\"GATEWAY-ENTRIES\"", "xml.name", "GATEWAY-ENTRY", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getGatewayEntry_GatewayEntryId(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "GATEWAY-ENTRY-ID", "xml.namePlural", "GATEWAY-ENTRY-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.gatewayTypeEClass, source, new String[]{"xml.name", "GATEWAY-TYPE", "xml.namePlural", "GATEWAY-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getGatewayType_GatewayEntries(), source, new String[]{"xml.namePlural", "GATEWAY-ENTRIES", "xml.tags", "xml.namePlural=\"GATEWAY-ENTRIES\"", "xml.name", "GATEWAY-ENTRY", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getGatewayType_GatewayLocation(), source, new String[]{"xml.name", "GATEWAY-LOCATION-IREF", "xml.namePlural", "GATEWAY-LOCATION-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "1", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryEClass, source, new String[]{"xml.namePlural", "PDU-GATEWAY-ENTRIES", "xml.tags", "xml.namePlural=\"PDU-GATEWAY-ENTRIES\"", "xml.name", "PDU-GATEWAY-ENTRY", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_ActionOnTimeout(), source, new String[]{"xml.name", "ACTION-ON-TIMEOUT", "xml.namePlural", "ACTION-ON-TIMEOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_DestinationPDU(), source, new String[]{"xml.name", "DESTINATION-PDU", "xml.namePlural", "DESTINATION-PDUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_SourcePDU(), source, new String[]{"xml.name", "SOURCE-PDU", "xml.namePlural", "SOURCE-PDUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_TimeOutCycle(), source, new String[]{"xml.name", "TIME-OUT-CYCLE", "xml.namePlural", "TIME-OUT-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryActionOnTimeoutEnumEEnum, source, new String[]{"xml.name", "PDU-GATEWAY-ENTRY-ACTION-ON-TIMEOUT-ENUM", "xml.namePlural", "PDU-GATEWAY-ENTRY-ACTION-ON-TIMEOUT-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryActionOnTimeoutEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "USE-DEFAULT-VALUE", "xml.namePlural", "USE-DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryActionOnTimeoutEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "USE-LAST-VALUE", "xml.namePlural", "USE-LAST-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryActionOnTimeoutEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "DONT-SEND", "xml.namePlural", "DONT-SENDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.relativelyScheduledTimingEClass, source, new String[]{"xml.name", "RELATIVELY-SCHEDULED-TIMING", "xml.namePlural", "RELATIVELY-SCHEDULED-TIMINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_Delay(), source, new String[]{"xml.name", "DELAY", "xml.namePlural", "DELAYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_PositionInTable(), source, new String[]{"xml.name", "POSITION-IN-TABLE", "xml.namePlural", "POSITION-IN-TABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_ScheduleTableName(), source, new String[]{"xml.name", "SCHEDULE-TABLE-NAME", "xml.namePlural", "SCHEDULE-TABLE-NAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.requestControlledTimingEClass, source, new String[]{"xml.name", "REQUEST-CONTROLLED-TIMING", "xml.namePlural", "REQUEST-CONTROLLED-TIMINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_ActiveCondition(), source, new String[]{"xml.name", "ACTIVE-CONDITION", "xml.namePlural", "ACTIVE-CONDITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_RequestingFrame(), source, new String[]{"xml.name", "REQUESTING-FRAME-REF", "xml.namePlural", "REQUESTING-FRAME-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_ResponseTime(), source, new String[]{"xml.name", "RESPONSE-TIME", "xml.namePlural", "RESPONSE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryEClass, source, new String[]{"xml.namePlural", "SIGNAL-GATEWAY-ENTRIES", "xml.tags", "xml.namePlural=\"SIGNAL-GATEWAY-ENTRIES\"", "xml.name", "SIGNAL-GATEWAY-ENTRY", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_ActionOnTimeout(), source, new String[]{"xml.name", "ACTION-ON-TIMEOUT", "xml.namePlural", "ACTION-ON-TIMEOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_DestinationClusterSignal(), source, new String[]{"xml.name", "DESTINATION-CLUSTER-SIGNAL", "xml.namePlural", "DESTINATION-CLUSTER-SIGNALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_SourceClusterSignal(), source, new String[]{"xml.name", "SOURCE-CLUSTER-SIGNAL", "xml.namePlural", "SOURCE-CLUSTER-SIGNALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_TimeOutCycle(), source, new String[]{"xml.name", "TIME-OUT-CYCLE", "xml.namePlural", "TIME-OUT-CYCLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryActionOnTimeoutEnumEEnum, source, new String[]{"xml.name", "SIGNAL-GATEWAY-ENTRY-ACTION-ON-TIMEOUT-ENUM", "xml.namePlural", "SIGNAL-GATEWAY-ENTRY-ACTION-ON-TIMEOUT-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryActionOnTimeoutEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "USE-DEFAULT-VALUE", "xml.namePlural", "USE-DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryActionOnTimeoutEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "USE-LAST-VALUE", "xml.namePlural", "USE-LAST-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.sporadicFrameSlotEClass, source, new String[]{"xml.name", "SPORADIC-FRAME-SLOT", "xml.namePlural", "SPORADIC-FRAME-SLOTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSporadicFrameSlot_SporadicFrames(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SPORADIC-FRAME-REF", "xml.namePlural", "SPORADIC-FRAME-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.unconditionalFrameSlotEClass, source, new String[]{"xml.name", "UNCONDITIONAL-FRAME-SLOT", "xml.namePlural", "UNCONDITIONAL-FRAME-SLOTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getUnconditionalFrameSlot_UnconditionalFrame(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "UNCONDITIONAL-FRAME-REF", "xml.namePlural", "UNCONDITIONAL-FRAME-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.pduPrototypeEClass, source, new String[]{"name", "PDU-PROTOTYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_IncludedClusterSignals(), source, new String[]{"name", "INCLUDED-CLUSTER-SIGNALS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_PduType(), source, new String[]{"name", "PDU-TYPE-TREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_StartPosition(), source, new String[]{"name", "START-POSITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_UpdateIndicationBitPosition(), source, new String[]{"name", "UPDATE-INDICATION-BIT-POSITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.timingEClass, source, new String[]{"name", "TIMING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTiming_FreeTextConditions(), source, new String[]{"name", "FREE-TEXT-CONDITIONS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.freeTextConditionEClass, source, new String[]{"name", "FREE-TEXT-CONDITION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFreeTextCondition_Condition(), source, new String[]{"name", "CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.communicationMatrixTypeEClass, source, new String[]{"name", "COMMUNICATION-MATRIX-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_CommunicationCluster(), source, new String[]{"name", "COMMUNICATION-CLUSTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_Frames(), source, new String[]{"name", "FRAMES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_LinSchedulingTables(), source, new String[]{"name", "LIN-SCHEDULING-TABLES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_SystemTopologyType(), source, new String[]{"name", "SYSTEM-TOPOLOGY-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEClass, source, new String[]{"name", "LIN-SCHEDULING-TABLE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLinSchedulingTable_Entries(), source, new String[]{"name", "ENTRIES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEntryEClass, source, new String[]{"name", "LIN-SCHEDULING-TABLE-ENTRY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLinSchedulingTableEntry_DelayToNextFrame(), source, new String[]{"name", "DELAY-TO-NEXT-FRAME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.frameEClass, source, new String[]{"name", "FRAME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameID(), source, new String[]{"name", "FRAME-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameLength(), source, new String[]{"name", "FRAME-LENGTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_FrameTimings(), source, new String[]{"name", "FRAME-TIMINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_MinimumDelayTime(), source, new String[]{"name", "MINIMUM-DELAY-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_PduPrototypes(), source, new String[]{"name", "PDU-PROTOTYPES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_Receivers(), source, new String[]{"name", "RECEIVER-IREFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_Transmitter(), source, new String[]{"name", "TRANSMITTER-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrame_UsedPhysicalChannel(), source, new String[]{"name", "USED-PHYSICAL-CHANNEL-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingEClass, source, new String[]{"name", "ABSOLUTELY-SCHEDULED-TIMING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_BaseCycle(), source, new String[]{"name", "BASE-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_CycleRepetition(), source, new String[]{"name", "CYCLE-REPETITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_SlotID(), source, new String[]{"name", "SLOT-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.activeConditionEClass, source, new String[]{"name", "ACTIVE-CONDITION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getActiveCondition_SystemStates(), source, new String[]{"name", "SYSTEM-STATES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.systemStateTriggerEClass, source, new String[]{"name", "SYSTEM-STATE-TRIGGER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSystemStateTrigger_SystemStateConditions(), source, new String[]{"name", "SYSTEM-STATE-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.canFrameEClass, source, new String[]{"name", "CAN-FRAME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.cyclicTimingEClass, source, new String[]{"name", "CYCLIC-TIMING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_ActiveCondition(), source, new String[]{"name", "ACTIVE-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_CycleTime(), source, new String[]{"name", "CYCLE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StartCondition(), source, new String[]{"name", "START-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StartingTime(), source, new String[]{"name", "STARTING-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StopCondition(), source, new String[]{"name", "STOP-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.stopConditionEClass, source, new String[]{"name", "STOP-CONDITION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStopCondition_SignalStates(), source, new String[]{"name", "SIGNAL-STATES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStopCondition_SystemStates(), source, new String[]{"name", "SYSTEM-STATES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.signalTriggerEClass, source, new String[]{"name", "SIGNAL-TRIGGER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSignalTrigger_ComparedSignal(), source, new String[]{"name", "COMPARED-SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSignalTrigger_DataEventCondition(), source, new String[]{"name", "DATA-EVENT-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.startConditionEClass, source, new String[]{"name", "START-CONDITION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStartCondition_SignalStates(), source, new String[]{"name", "SIGNAL-STATES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStartCondition_SystemStates(), source, new String[]{"name", "SYSTEM-STATES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.eventControlledTimingEClass, source, new String[]{"name", "EVENT-CONTROLLED-TIMING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_ActiveCondition(), source, new String[]{"name", "ACTIVE-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_DebounceTime(), source, new String[]{"name", "DEBOUNCE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_NumberOfRepeats(), source, new String[]{"name", "NUMBER-OF-REPEATS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_RepeatCycleTime(), source, new String[]{"name", "REPEAT-CYCLE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_SendCondition(), source, new String[]{"name", "SEND-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.sendConditionEClass, source, new String[]{"name", "SEND-CONDITION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSendCondition_SignalStates(), source, new String[]{"name", "SIGNAL-STATES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSendCondition_SystemStates(), source, new String[]{"name", "SYSTEM-STATES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.eventTriggeredFrameSlotEClass, source, new String[]{"name", "EVENT-TRIGGERED-FRAME-SLOT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEventTriggeredFrameSlot_EventTriggeredFrameID(), source, new String[]{"name", "EVENT-TRIGGERED-FRAME-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEventTriggeredFrameSlot_UnconditionalFrames(), source, new String[]{"name", "UNCONDITIONAL-FRAME-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.linFrameEClass, source, new String[]{"name", "LIN-FRAME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getLinFrame_ResponseErrorSignal(), source, new String[]{"name", "RESPONSE-ERROR-SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.flexrayFrameEClass, source, new String[]{"name", "FLEXRAY-FRAME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.gatewayEntryEClass, source, new String[]{"name", "GATEWAY-ENTRY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getGatewayEntry_GatewayEntryId(), source, new String[]{"name", "GATEWAY-ENTRY-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.gatewayTypeEClass, source, new String[]{"name", "GATEWAY-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getGatewayType_GatewayEntries(), source, new String[]{"name", "GATEWAY-ENTRIES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getGatewayType_GatewayLocation(), source, new String[]{"name", "GATEWAY-LOCATION-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryEClass, source, new String[]{"name", "PDU-GATEWAY-ENTRY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_ActionOnTimeout(), source, new String[]{"name", "ACTION-ON-TIMEOUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_DestinationPDU(), source, new String[]{"name", "DESTINATION-PDU", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_SourcePDU(), source, new String[]{"name", "SOURCE-PDU", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_TimeOutCycle(), source, new String[]{"name", "TIME-OUT-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.relativelyScheduledTimingEClass, source, new String[]{"name", "RELATIVELY-SCHEDULED-TIMING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_Delay(), source, new String[]{"name", "DELAY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_PositionInTable(), source, new String[]{"name", "POSITION-IN-TABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_ScheduleTableName(), source, new String[]{"name", "SCHEDULE-TABLE-NAME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.requestControlledTimingEClass, source, new String[]{"name", "REQUEST-CONTROLLED-TIMING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_ActiveCondition(), source, new String[]{"name", "ACTIVE-CONDITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_RequestingFrame(), source, new String[]{"name", "REQUESTING-FRAME-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_ResponseTime(), source, new String[]{"name", "RESPONSE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryEClass, source, new String[]{"name", "SIGNAL-GATEWAY-ENTRY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_ActionOnTimeout(), source, new String[]{"name", "ACTION-ON-TIMEOUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_DestinationClusterSignal(), source, new String[]{"name", "DESTINATION-CLUSTER-SIGNAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_SourceClusterSignal(), source, new String[]{"name", "SOURCE-CLUSTER-SIGNAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_TimeOutCycle(), source, new String[]{"name", "TIME-OUT-CYCLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.sporadicFrameSlotEClass, source, new String[]{"name", "SPORADIC-FRAME-SLOT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSporadicFrameSlot_SporadicFrames(), source, new String[]{"name", "SPORADIC-FRAME-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.unconditionalFrameSlotEClass, source, new String[]{"name", "UNCONDITIONAL-FRAME-SLOT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getUnconditionalFrameSlot_UnconditionalFrame(), source, new String[]{"name", "UNCONDITIONAL-FRAME-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.pduPrototypeEClass, source, new String[]{"documentation", "The PDU (Protocol Data Unit) is a collection of signals for transfer between nodes in a network. The PDU is sent within a frame over a communication medium. A PDU can contain multiplexed data. \r\n\r\n"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_IncludedClusterSignals(), source, new String[]{"documentation", "Definition of clusterSignals included in the PDU. "});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_PduType(), source, new String[]{"documentation", "Reference to the PDU description that defines the structure of the PDU. Different PDUs can have the same structure, for example they can have the same size and include the same signal layout.  "});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_StartPosition(), source, new String[]{"documentation", "This parameter is necessary to describe the position of a PDU within a frame."});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_UpdateIndicationBitPosition(), source, new String[]{"documentation", "Indication to the receivers that the corresponding PDU was updated by the\r\nsender. The AUTOSAR FlexRay Interface explicitly defines a location for the update bit in the Frame that aggregates this PDUPrototype.\r\n"});
        this.addAnnotation((ENamedElement)this.timingEClass, source, new String[]{"documentation", "A timing defines time behavior (e.g. Cyclic, Event Triggered) of a frame, PDU or a Signal. "});
        this.addAnnotation((ENamedElement)this.getTiming_FreeTextConditions(), source, new String[]{"documentation", "If a Condition is aggregated in a Timing, then the timing is only valid\r\nif the condition holds."});
        this.addAnnotation((ENamedElement)this.freeTextConditionEClass, source, new String[]{"documentation", "A Condition can be formulated as a free text. If a FreeTextCondition is aggregated in a Timing, then the timing is only valid if the condition holds. "});
        this.addAnnotation((ENamedElement)this.getFreeTextCondition_Condition(), source, new String[]{"documentation", "Condition formulated as a free text."});
        this.addAnnotation((ENamedElement)this.communicationMatrixTypeEClass, source, new String[]{"documentation", "A communication matrix defines frames that are transported on a specific communication system, with timing etc. The communication matrix is separated from the topology, since the same topology may be used with different communication matrices. The same communication matrix  type may be reused in different systems. Reuse is however only possible if the systems reuse the same topology (i.e. system topology type) as well."});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_CommunicationCluster(), source, new String[]{"documentation", "Reference to the communication cluster this communication matrix is defined for. In each actual system, there is a 1-to-1 relation between communication clusters and communication matrices. But since a topology may be reused in different systems with different communication matrices, there may be several communication matrices referencing to the same communication cluster."});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_Frames(), source, new String[]{"documentation", "The frames that are defined in the communication matrix\r\n"});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_LinSchedulingTables(), source, new String[]{"documentation", "The master task transmits frame headers based on a schedule table. The master application may use different schedule tables and select among them."});
        this.addAnnotation((ENamedElement)this.getCommunicationMatrixType_SystemTopologyType(), source, new String[]{"documentation", "Each communication matrix is defined for exactly one topology. \r\nThe same communication matrix  type may be reused in different systems. But this is only possible if the systems reuse the same topology as well.  "});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEClass, source, new String[]{"documentation", "The master task (in the master node) transmits frame headers based on a schedule table. The schedule table specifies the identifiers for each header and the interval\r\nbetween the start of a frame and the start of the following frame. "});
        this.addAnnotation((ENamedElement)this.getLinSchedulingTable_Entries(), source, new String[]{"documentation", "The position of a table entry in the scheduling table is described by the \"isOrdered\" attribute."});
        this.addAnnotation((ENamedElement)this.getLinSchedulingTableEntry_DelayToNextFrame(), source, new String[]{"documentation", "Relative delay of the frame in seconds to its successor in the schedule table."});
        this.addAnnotation((ENamedElement)this.frameEClass, source, new String[]{"documentation", "Data frame which is sent over a communication medium. Each Frame can be identified per channel by an Identifier (ID). "});
        this.addAnnotation((ENamedElement)this.getFrame_FrameID(), source, new String[]{"documentation", "The Identifier (ID) of the data frame on the channel. \r\nIn FlexRay each frame is identified by its slot id and communication cycle (attributes of AbsoluetlyScheduledTiming)."});
        this.addAnnotation((ENamedElement)this.getFrame_FrameLength(), source, new String[]{"documentation", "The frameLength specifies the length of the payload section in bytes."});
        this.addAnnotation((ENamedElement)this.getFrame_FrameTimings(), source, new String[]{"documentation", "One frame can have 0..* Timings, since it is possible that e.g. a frame is sent cyclic, but at an occurred event it is sent EventControlled. Furthermore, at different ECU states or signal conditions, a different timing can be valid.\r\n\r\nA multiplicity of zero means that no timing is specified. If no timing is specified the frame is defined (i.e. the ID is allocated) but will not be transmitted on the system. (e.g. useful for placeholder frames).\r\n"});
        this.addAnnotation((ENamedElement)this.getFrame_MinimumDelayTime(), source, new String[]{"documentation", "A minimum delay time between transmissions in seconds. If a transmission is requested before the minimumDelayTime expires, the next transmission is postponed until the delay time expires. The minimum delay time for the next transmission starts the moment the previous transmission is confirmed. (OSEK COM)  "});
        this.addAnnotation((ENamedElement)this.getFrame_PduPrototypes(), source, new String[]{"documentation", "A Frame can be composed of several PDUs (e.g. FlexRay).\r\n"});
        this.addAnnotation((ENamedElement)this.getFrame_Receivers(), source, new String[]{"documentation", "ECUs which receive the frame. This can also be a gateway. An ECU can contain more than one communication controller to a data bus. Therefore, it is important to describe over which controller the frame will be received. Several receivers of the information can exist. The set of receivers defined for the frame  must be a superset of all receivers specified in any cluster signal that is included in the frame. In other words, if one of the cluster signals included in the frame specifies a certain receiver, this receiver must be included for the corresponding frame as well. "});
        this.addAnnotation((ENamedElement)this.getFrame_Transmitter(), source, new String[]{"documentation", "The transmitter describes the ECU which sends the frame. An ECU can contain more than one communication controller to a data bus. Therefore, it is important to describe over which controller the frame will be sent. The transmitter defined for the frame must match with the transmitter defined for all cluster signals that are included in the frame."});
        this.addAnnotation((ENamedElement)this.getFrame_UsedPhysicalChannel(), source, new String[]{"documentation", "Reference to the physical channel used to transport this frame.\r\nIf a frame is sent over several physical channels (e.g. in case of redundancy), several Frames have to be defined in the System Description, one for each physical channel."});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingEClass, source, new String[]{"documentation", "Each frame in FlexRay is identified by its slot id and communication cycle. A description is provided by the usage of AbsolutelyScheduledTiming. \r\n\r\nIn the static segment a frame can be sent multiple times within one communication cycle. For describing this case multiple AbsolutelyScheduledTimings have to be used. The main use case would be that a frame is sent twice within one communication cycle."});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_BaseCycle(), source, new String[]{"documentation", "The first communication cycle where the frame is sent"});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_CycleRepetition(), source, new String[]{"documentation", "The number of communication cycles (after the first cycle) whenever the frame is sent again. The FlexRay communication controller allows only determined values."});
        this.addAnnotation((ENamedElement)this.getAbsolutelyScheduledTiming_SlotID(), source, new String[]{"documentation", "In the static part the SlotID defines the slot in which the frame is transmitted. \r\nThe SlotID also determines, in combination with FlexrayCluster::numberOfStaticSlots, whether the frame is sent in static or dynamic segment. \r\nIn the dynamic part, the slot id is equivalent to a priority. Lower dynamic slot ids are all sent until the end of the dynamic segment. Higher numbers, which were ignored that time, have to wait one cycle and then must try again."});
        this.addAnnotation((ENamedElement)this.activeConditionEClass, source, new String[]{"documentation", "Precondition that must be fulfilled by the system. If this precondition is not fulfilled the timing that aggregates this ActiveCondition is not active.\r\nIf a timing is not active, the frame is either not sent at all (if no other active timing exists), or the frame is sent since another timing is active and all conditions are met in that timing."});
        this.addAnnotation((ENamedElement)this.getActiveCondition_SystemStates(), source, new String[]{"documentation", "Reference to the system state that must rule that the referring timing is activated.\r\n\r\nUse one trigger with many systemStateConditions, if these states must rule simultaneously for activation. Use a separate trigger for each state if only one state needs to rule for activation."});
        this.addAnnotation((ENamedElement)this.systemStateTriggerEClass, source, new String[]{"documentation", "System state that must rule that the referring timing is activated. "});
        this.addAnnotation((ENamedElement)this.getSystemStateTrigger_SystemStateConditions(), source, new String[]{"documentation", "This attribute describes the system state. \r\n\r\nExamples for values are: CLAMP_15, CLAMP_30, CLAMP_87, CLAMP_RADIO, CHANNEL_ACTIVE. (These values are only examples, they are not standardized by AUTOSAR)"});
        this.addAnnotation((ENamedElement)this.canFrameEClass, source, new String[]{"documentation", "The frame description for the CAN Bus."});
        this.addAnnotation((ENamedElement)this.cyclicTimingEClass, source, new String[]{"documentation", "Specification of a cyclic sending behavior, e.g. used on CAN buses."});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_ActiveCondition(), source, new String[]{"documentation", "If an active condition is aggregated in a Cyclic Timing, then the cycle can be started if the condition holds."});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_CycleTime(), source, new String[]{"documentation", "Specification of the repeating cycle in seconds whenever the frame described by this timing is sent."});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StartCondition(), source, new String[]{"documentation", "If a StartCondition is aggregated in a Cyclic Timing, then the cycle is only started if the condition holds."});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StartingTime(), source, new String[]{"documentation", "Specification of the time in seconds that is needed before the frame can be sent the first time. This starting time is relative to the StartCondition.\r\n"});
        this.addAnnotation((ENamedElement)this.getCyclicTiming_StopCondition(), source, new String[]{"documentation", "If a Stop Condition is aggregated in a Cyclic Timing, then the cycle is only stopped if the condition holds."});
        this.addAnnotation((ENamedElement)this.stopConditionEClass, source, new String[]{"documentation", "Condition that must be fulfilled by the system or some signals that the cycle is stopped."});
        this.addAnnotation((ENamedElement)this.getStopCondition_SignalStates(), source, new String[]{"documentation", "Reference to the condition that must be fulfilled by some signals that the cycle is stopped."});
        this.addAnnotation((ENamedElement)this.getStopCondition_SystemStates(), source, new String[]{"documentation", "Reference to the system state that must rule that the referring timing is activated.\r\n\r\nUse one trigger with many systemStateConditions, if these states must rule simultaneously for activation. Use a separate trigger for each state if only one state needs to rule for activation."});
        this.addAnnotation((ENamedElement)this.signalTriggerEClass, source, new String[]{"documentation", "The Signal Trigger describes the signal state that must rule that the referring timing is executed. The attribute dataEventCondition defines the primary condition when the condition is fulfilled. It is a Boolean Condition. If this Condition is TRUE, then the referring timing can be executed. "});
        this.addAnnotation((ENamedElement)this.getSignalTrigger_ComparedSignal(), source, new String[]{"documentation", "reference to the signal which is\r\ncompared to the\r\nconditionValue in the\r\nSignalCondition."});
        this.addAnnotation((ENamedElement)this.getSignalTrigger_DataEventCondition(), source, new String[]{"documentation", "Specifies what operation on the data mapped to this signal will trigger the sending of a frame.\r\nonChange: send frame if data written changed compared to last value written\r\nonUpdate: send frame whenever data is written\r\nonNotDefault: send frame whenever value is different from default value"});
        this.addAnnotation((ENamedElement)this.startConditionEClass, source, new String[]{"documentation", "Condition that must be fulfilled by the system or some signals that the cycle is started. "});
        this.addAnnotation((ENamedElement)this.getStartCondition_SignalStates(), source, new String[]{"documentation", "Reference to the condition that must be fulfilled by some signals that the cycle is started."});
        this.addAnnotation((ENamedElement)this.getStartCondition_SystemStates(), source, new String[]{"documentation", "Reference to the system state that must rule that the referring timing is activated.\r\n\r\nUse one trigger with many systemStateConditions, if these states must rule simultaneously for activation. Use a separate trigger for each state if only one state needs to rule for activation."});
        this.addAnnotation((ENamedElement)this.eventControlledTimingEClass, source, new String[]{"documentation", "Specification of a event driven sending behavior, e.g. used on CAN buses. The Frame is sent \"numberOfRepeats\" times separated by the repeatCycleTime. If numberOfRepeats = 1, then the frame is sent just once.  The debounce Time must elapses before the frame can be sent the next time."});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_ActiveCondition(), source, new String[]{"documentation", "If an active condition is aggregated in a EventControlledTiming, then the event will be registered if the condition holds.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_DebounceTime(), source, new String[]{"documentation", "Specification of the time in seconds that elapses before the frame can be sent the next time (Minimum repeat gap between two frames). This time is different to the minimumDelayTime, defined on the Frame Level. If a transmission is requested before the debounceTime expires, this request will be ignored. The next transmission will not be postponed."});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_NumberOfRepeats(), source, new String[]{"documentation", "Number of times the frame is sent if the condition is met"});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_RepeatCycleTime(), source, new String[]{"documentation", "Specification of the repeating cycle in seconds that is used to repeat the frame."});
        this.addAnnotation((ENamedElement)this.getEventControlledTiming_SendCondition(), source, new String[]{"documentation", "If a Send Condition is aggregated in a EventControlledTiming, then the frame will be sent if the condition holds.\r\n\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.sendConditionEClass, source, new String[]{"documentation", "Condition (Event) that must be fulfilled to cause the frame to be sent."});
        this.addAnnotation((ENamedElement)this.getSendCondition_SignalStates(), source, new String[]{"documentation", "Reference to the signal state that must rule that the referring timing is executed."});
        this.addAnnotation((ENamedElement)this.getSendCondition_SystemStates(), source, new String[]{"documentation", "Reference to the system state that must rule that the referring timing is activated.\r\n\r\nUse one trigger with many systemStateConditions, if these states must rule simultaneously for activation. Use a separate trigger for each state if only one state needs to rule for activation."});
        this.addAnnotation((ENamedElement)this.eventTriggeredFrameSlotEClass, source, new String[]{"documentation", "Frame slot for an event triggered frame.\r\nLIN Spec 2.0 defines: \"An event triggered frame is used as a placeholder to allow multiple slave nodes to provide its response. This is\r\nuseful when the signals involved are changed infrequently.\" \r\nThe event triggered frame has an own frame id that is sent by the LIN master. The slaves may answer with one of the unconditional frames referenced.  \r\nLIN Spec 2.0 defines: \"If more than one unconditional frame is associated with one event triggered frame (which is the normal case) they shall all be of equal length, use the same checksum model (i.e. mixing LIN 1.3 and LIN 2.0 frames is incorrect) and, furthermore, they shall all be published by different slave tasks.\" "});
        this.addAnnotation((ENamedElement)this.getEventTriggeredFrameSlot_UnconditionalFrames(), source, new String[]{"documentation", "Reference to the unconditional frame(s)  associated with the event triggered frame. \r\nFrom LIN 2.0 Specification: \"If more than one unconditional frame is associated with one event triggered frame (which is the normal case) they shall all be of equal length, use the same checksum model (i.e. mixing LIN 1.3 and LIN 2.0 frames is incorrect) and, furthermore, they shall all be published by different slave tasks.\" The unconditional frames are ordered in decreasing priority.\r\nIn the System Templates, this means that all LinFrames referenced need to furthermore define attribute eventTriggeredFrameID, set to the same value."});
        this.addAnnotation((ENamedElement)this.linFrameEClass, source, new String[]{"documentation", "The frame description for the LIN Bus."});
        this.addAnnotation((ENamedElement)this.getLinFrame_ResponseErrorSignal(), source, new String[]{"documentation", "This reference denotes the signal within this frame (if present) that is used to implement Response_Error. If no such signal exists in this frame, the reference is omitted.\r\nLIN 2.0 Spec states:\r\n\"Each slave shall send one status bit signal, Response_Error, to the master node in one of its transmitted frames. Response_Error shall be set whenever a frame received by the node or a frame transmitted by the node contains an error in the response field. Response_Error shall be cleared after transmission.\"\r\n"});
        this.addAnnotation((ENamedElement)this.flexrayFrameEClass, source, new String[]{"documentation", "Unlike with other communication systems - as for example CAN - the Frame ID is not sufficient for the identification. On FlexRay the communication cycle is used with SlotID for frame identification. These attributes are described by the AbsolutelyScheduledTiming class.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.gatewayEntryEClass, source, new String[]{"documentation", "A GatewayEntry describes the information routing by references to the source and the destination \r\nPDUPrototype or ClusterSignal.\r\nThere are two possible methods to route the data from one channel to another: SignalCopy and PDUCopy."});
        this.addAnnotation((ENamedElement)this.getGatewayEntry_GatewayEntryId(), source, new String[]{"documentation", "Identify the gateway entry in the gateway table. May be used to define the ordering of the entries."});
        this.addAnnotation((ENamedElement)this.gatewayTypeEClass, source, new String[]{"documentation", "A gateway is a functionality within an ECU that performs as a PDU or signal mapping function between two or more communication clusters. The same GatewayType may be reused in different systems. This is however only possible if the system topology and communication matrices that are referenced from the gateway are  reused as well."});
        this.addAnnotation((ENamedElement)this.getGatewayType_GatewayEntries(), source, new String[]{"documentation", "Each Gateway consists of 1..* Gateway Entries."});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryEClass, source, new String[]{"documentation", "PDUGatewayEntry describes the PDUCopy Method. In this case the PDU will be copied, i.e. the destination PDU will have the same content (signals) and structure (position and length of signals) as the PDU on the source channel. "});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_ActionOnTimeout(), source, new String[]{"documentation", "What to do if a timeout occurred:\r\n- useDefaultValue: The default value of the signal will be transmitted. The default Value is the value that is sent in the PDU when no actual or no valid value is available for the COM-Layer that could be sent. This/These values are defined in the SWC-T: InvalidValue, InitValue\r\n \r\n- useLastValue: The last sent value will be transmitted again. \r\n- dontSend: nothing will be transmitted"});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_DestinationPDU(), source, new String[]{"documentation", "Reference to the PDU on the destination channel."});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_SourcePDU(), source, new String[]{"documentation", "Reference to the PDU that is copied to the other channel."});
        this.addAnnotation((ENamedElement)this.getPDUGatewayEntry_TimeOutCycle(), source, new String[]{"documentation", "Time in seconds. Is this value exceeded without that a value of the source is received, the action defined in actionOnTimeout is performed. "});
        this.addAnnotation((ENamedElement)this.relativelyScheduledTimingEClass, source, new String[]{"documentation", "Specification of a sending behavior where the transmission order is predefined, e.g. used on LIN buses"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_Delay(), source, new String[]{"documentation", "Relative delay of the frame in ms described by this timing to its predecessor in the schedule table."});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_PositionInTable(), source, new String[]{"documentation", "Relative position of the frame described by this timing in the schedule table"});
        this.addAnnotation((ENamedElement)this.getRelativelyScheduledTiming_ScheduleTableName(), source, new String[]{"documentation", "Identifier of the schedule table containing the frame described by the referring timing on the triggering channel."});
        this.addAnnotation((ENamedElement)this.requestControlledTimingEClass, source, new String[]{"documentation", "Specification of a request driven sending behavior, e.g. used on CAN buses. Semantics of this communication mechanism is that basic software stores values but does not send it out until a frame requesting the information is received.\r\n"});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_ActiveCondition(), source, new String[]{"documentation", "If an active condition is aggregated in a RequestControlledTiming, then the request will be registered if the condition holds."});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_RequestingFrame(), source, new String[]{"documentation", "Reference to the requesting frame. This frame must be received, before the value can be send out."});
        this.addAnnotation((ENamedElement)this.getRequestControlledTiming_ResponseTime(), source, new String[]{"documentation", "Specification of the time in seconds that is needed before the frame can be sent after the requests arrival."});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryEClass, source, new String[]{"documentation", "SignalGatewayEntry describes the SignalCopy Method. In this case only one signal of the PDU will be copied to another PDU on the destination channel. The parameters on the destination channel like signal position will be defined through the PDU description of the destination PDU. I.e. the signal must be described in the source and the destination PDU.  For each signal which should be copied, one entry in this table has to be created. If you want e.g. to create one PDU on the destination channel from two Signals of the source channel, you have to make two entries in the table. \r\n\r\nThe Signal Gateway Trigger Condition is described by the usage of the SendCondition on an EventControlledFrame and the referring signal state.  "});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_ActionOnTimeout(), source, new String[]{"documentation", "What to do if a timeout occurred:\r\n- useDefaultValue: The default value of the signal will be transmitted. \r\nThe default Value is the value that is sent in the frame when no actual or no valid value is available for the COM-Layer that could be sent. This/These values are defined in the SWC-T:\r\nInvalidValue;\r\nInitValue\r\n \r\n- useLastValue: The last sent value will be transmitted again. "});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_DestinationClusterSignal(), source, new String[]{"documentation", "Reference to the signal on the destination channel."});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_SourceClusterSignal(), source, new String[]{"documentation", "Reference to the signal that is copied to the other channel."});
        this.addAnnotation((ENamedElement)this.getSignalGatewayEntry_TimeOutCycle(), source, new String[]{"documentation", "Time in seconds. Is this value exceeded without that a value of the source is received, the action defined in actionOnTimeout is performed."});
        this.addAnnotation((ENamedElement)this.sporadicFrameSlotEClass, source, new String[]{"documentation", "By use of sporadic frames, the LIN master may send different unconditional frames in a specific scheduling table position, depending on events that occurred.  From LIN 2.0 specification: \"If multiple sporadic frames are associated with the same frame slot (the normal case), the most prioritized of the sporadic frames (which has an updated signal) shall be transferred in the frame slot. If none of the sporadic frames associated with a frame slot has an updated signal the frame slot shall be silent.\""});
        this.addAnnotation((ENamedElement)this.getSporadicFrameSlot_SporadicFrames(), source, new String[]{"documentation", "List of the unconditional frames that may be sent in this frame slot, ordered in decreasing priority."});
        this.addAnnotation((ENamedElement)this.unconditionalFrameSlotEClass, source, new String[]{"documentation", "Frame slot for an unconditional frame. An unconditional frame is a signal-carrying frame that is always sent in its allocated frame slot. "});
        this.addAnnotation((ENamedElement)this.getUnconditionalFrameSlot_UnconditionalFrame(), source, new String[]{"documentation", "Reference to the unconditional frame sent in the unconditional frame slot."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.pduPrototypeEClass, source, new String[]{"Stereotype", "atpPrototype"});
        this.addAnnotation((ENamedElement)this.getPDUPrototype_PduType(), source, new String[]{"Stereotype", "isOfType"});
        this.addAnnotation((ENamedElement)this.timingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.freeTextConditionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.communicationMatrixTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEntryEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.frameEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.activeConditionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.systemStateTriggerEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.canFrameEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.cyclicTimingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.stopConditionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.signalTriggerEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.startConditionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.eventControlledTimingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.sendConditionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.eventTriggeredFrameSlotEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.linFrameEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.flexrayFrameEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.gatewayEntryEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.gatewayTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.pduGatewayEntryEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.relativelyScheduledTimingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.requestControlledTimingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryEClass, source, new String[]{"Stereotype", "atpStructureElement"});
        this.addAnnotation((ENamedElement)this.sporadicFrameSlotEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.unconditionalFrameSlotEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.pduPrototypeEClass, source, new String[]{"Name", "", "GUID", "{FDC942F1-CF5B-43f8-A328-F7F271F69DA5}", "Id", "484534853", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEClass, source, new String[]{"Name", "", "GUID", "{8032822B-BC5A-42ca-84FB-7EAAF0D8DE73}", "Id", "-104585268", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.frameEClass, source, new String[]{"Name", "", "GUID", "{29D59354-E801-4e61-8F02-FC513A675CDA}", "Id", "2012844069", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.timingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.freeTextConditionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.linSchedulingTableEntryEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.activeConditionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.systemStateTriggerEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.stopConditionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.signalTriggerEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.startConditionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.sendConditionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.gatewayEntryEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.communicationMatrixTypeEClass, source, new String[]{"Name", "", "GUID", "{194AAF46-8646-4ac6-A60F-63B5761F8FF3}", "Id", "134294395", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.gatewayTypeEClass, source, new String[]{"Name", "", "GUID", "{FC30746B-F4A5-45d1-A030-8BE88699D829}", "Id", "64936747", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_TimingAnnotations() {
        String source = "TaggedValuesOfGeneralization_Timing";
        this.addAnnotation((ENamedElement)this.absolutelyScheduledTimingEClass, source, new String[]{"Name", "", "GUID", "{34D373C2-9EEB-4518-A20B-79D3E6C85972}", "Id", "-279297915", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.cyclicTimingEClass, source, new String[]{"Name", "", "GUID", "{CE61CE36-224D-4543-917E-8A06671A379A}", "Id", "-384925951", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.eventControlledTimingEClass, source, new String[]{"Name", "", "GUID", "{81746E44-18B8-47d6-9350-4F6BE2F7F98E}", "Id", "2028419374", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.relativelyScheduledTimingEClass, source, new String[]{"Name", "", "GUID", "{F706ABF9-1742-4d21-95BD-302CFFCF661E}", "Id", "-697840293", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.requestControlledTimingEClass, source, new String[]{"Name", "", "GUID", "{7C12BB51-8D26-4e1b-995C-99DEC5E30E07}", "Id", "-477863657", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_FrameAnnotations() {
        String source = "TaggedValuesOfGeneralization_Frame";
        this.addAnnotation((ENamedElement)this.canFrameEClass, source, new String[]{"Name", "", "GUID", "{25E1B57F-0E6E-4d56-84B5-41CF3A17E32D}", "Id", "262406095", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.linFrameEClass, source, new String[]{"Name", "", "GUID", "{B519ABDF-F2E0-4ef6-BF1B-95C11A4B73FD}", "Id", "1479772307", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.flexrayFrameEClass, source, new String[]{"Name", "", "GUID", "{5A83006A-697B-4358-BE40-4BD2BB4AB1C7}", "Id", "2114354630", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_LinSchedulingTableEntryAnnotations() {
        String source = "TaggedValuesOfGeneralization_LinSchedulingTableEntry";
        this.addAnnotation((ENamedElement)this.eventTriggeredFrameSlotEClass, source, new String[]{"Name", "", "GUID", "{92C97A66-7D7F-4d4f-88B1-04EA6986BD03}", "Id", "1437092647", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.sporadicFrameSlotEClass, source, new String[]{"Name", "", "GUID", "{23FCD0F8-9C59-435f-A358-8B76C47B5E94}", "Id", "-1998962724", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.unconditionalFrameSlotEClass, source, new String[]{"Name", "", "GUID", "{25430454-A2EC-43cb-88A3-9173572910F2}", "Id", "-826482259", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_GatewayEntryAnnotations() {
        String source = "TaggedValuesOfGeneralization_GatewayEntry";
        this.addAnnotation((ENamedElement)this.pduGatewayEntryEClass, source, new String[]{"Name", "", "GUID", "{956810CB-5C14-4465-AFAA-C1A5ABA42535}", "Id", "-1990840029", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.signalGatewayEntryEClass, source, new String[]{"Name", "", "GUID", "{D1826475-3AB4-42b3-A79F-B19F2DFF05E0}", "Id", "-1671529238", "xml.sequenceOffset", "0"});
    }
}

