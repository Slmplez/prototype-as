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
package autosar21.swcomponent.internalbehavior.rteevents.impl;

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
import autosar21.swcomponent.internalbehavior.rteevents.AsynchronousServerCallReturnsEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceiveErrorEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataReceivedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.DataSendCompletedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchEvent;
import autosar21.swcomponent.internalbehavior.rteevents.ModeSwitchedAckEvent;
import autosar21.swcomponent.internalbehavior.rteevents.OperationInvokedEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RTEEvent;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsFactory;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.internalbehavior.rteevents.TimingEvent;
import autosar21.swcomponent.internalbehavior.rteevents.WaitPoint;
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
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class RteeventsPackageImpl
extends EPackageImpl
implements RteeventsPackage {
    private EClass modeSwitchedAckEventEClass = null;
    private EClass rteEventEClass = null;
    private EClass asynchronousServerCallReturnsEventEClass = null;
    private EClass dataSendCompletedEventEClass = null;
    private EClass dataReceivedEventEClass = null;
    private EClass dataReceiveErrorEventEClass = null;
    private EClass timingEventEClass = null;
    private EClass operationInvokedEventEClass = null;
    private EClass modeSwitchEventEClass = null;
    private EClass waitPointEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private RteeventsPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/ib/rtee", (EFactory)RteeventsFactory.eINSTANCE);
    }

    public static RteeventsPackage init() {
        if (isInited) {
            return (RteeventsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee");
        }
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/ib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/ib/rtee") : new RteeventsPackageImpl());
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
        theRteeventsPackage.createPackageContents();
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
        theRteeventsPackage.initializePackageContents();
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
        theRteeventsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/ib/rtee", (Object)theRteeventsPackage);
        return theRteeventsPackage;
    }

    public EClass getModeSwitchedAckEvent() {
        return this.modeSwitchedAckEventEClass;
    }

    public EReference getModeSwitchedAckEvent_EventSource() {
        return (EReference)this.modeSwitchedAckEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getRTEEvent() {
        return this.rteEventEClass;
    }

    public EReference getRTEEvent_InternalBehavior() {
        return (EReference)this.rteEventEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRTEEvent_ModeDependency() {
        return (EReference)this.rteEventEClass.getEStructuralFeatures().get(1);
    }

    public EReference getRTEEvent_StartOnEvent() {
        return (EReference)this.rteEventEClass.getEStructuralFeatures().get(2);
    }

    public EClass getAsynchronousServerCallReturnsEvent() {
        return this.asynchronousServerCallReturnsEventEClass;
    }

    public EReference getAsynchronousServerCallReturnsEvent_EventSource() {
        return (EReference)this.asynchronousServerCallReturnsEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDataSendCompletedEvent() {
        return this.dataSendCompletedEventEClass;
    }

    public EReference getDataSendCompletedEvent_EventSource() {
        return (EReference)this.dataSendCompletedEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDataReceivedEvent() {
        return this.dataReceivedEventEClass;
    }

    public EReference getDataReceivedEvent_Data() {
        return (EReference)this.dataReceivedEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDataReceiveErrorEvent() {
        return this.dataReceiveErrorEventEClass;
    }

    public EReference getDataReceiveErrorEvent_Data() {
        return (EReference)this.dataReceiveErrorEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getTimingEvent() {
        return this.timingEventEClass;
    }

    public EAttribute getTimingEvent_Period() {
        return (EAttribute)this.timingEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getOperationInvokedEvent() {
        return this.operationInvokedEventEClass;
    }

    public EReference getOperationInvokedEvent_Operation() {
        return (EReference)this.operationInvokedEventEClass.getEStructuralFeatures().get(0);
    }

    public EClass getModeSwitchEvent() {
        return this.modeSwitchEventEClass;
    }

    public EAttribute getModeSwitchEvent_Activation() {
        return (EAttribute)this.modeSwitchEventEClass.getEStructuralFeatures().get(0);
    }

    public EReference getModeSwitchEvent_Mode() {
        return (EReference)this.modeSwitchEventEClass.getEStructuralFeatures().get(1);
    }

    public EClass getWaitPoint() {
        return this.waitPointEClass;
    }

    public EReference getWaitPoint_RunnableEntity() {
        return (EReference)this.waitPointEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getWaitPoint_Timeout() {
        return (EAttribute)this.waitPointEClass.getEStructuralFeatures().get(1);
    }

    public EReference getWaitPoint_Triggers() {
        return (EReference)this.waitPointEClass.getEStructuralFeatures().get(2);
    }

    public RteeventsFactory getRteeventsFactory() {
        return (RteeventsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.modeSwitchedAckEventEClass = this.createEClass(0);
        this.createEReference(this.modeSwitchedAckEventEClass, 20);
        this.rteEventEClass = this.createEClass(1);
        this.createEReference(this.rteEventEClass, 17);
        this.createEReference(this.rteEventEClass, 18);
        this.createEReference(this.rteEventEClass, 19);
        this.asynchronousServerCallReturnsEventEClass = this.createEClass(2);
        this.createEReference(this.asynchronousServerCallReturnsEventEClass, 21);
        this.dataSendCompletedEventEClass = this.createEClass(3);
        this.createEReference(this.dataSendCompletedEventEClass, 21);
        this.dataReceivedEventEClass = this.createEClass(4);
        this.createEReference(this.dataReceivedEventEClass, 21);
        this.dataReceiveErrorEventEClass = this.createEClass(5);
        this.createEReference(this.dataReceiveErrorEventEClass, 21);
        this.timingEventEClass = this.createEClass(6);
        this.createEAttribute(this.timingEventEClass, 21);
        this.operationInvokedEventEClass = this.createEClass(7);
        this.createEReference(this.operationInvokedEventEClass, 21);
        this.modeSwitchEventEClass = this.createEClass(8);
        this.createEAttribute(this.modeSwitchEventEClass, 20);
        this.createEReference(this.modeSwitchEventEClass, 21);
        this.waitPointEClass = this.createEClass(9);
        this.createEReference(this.waitPointEClass, 18);
        this.createEAttribute(this.waitPointEClass, 19);
        this.createEReference(this.waitPointEClass, 20);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("rteevents");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/ib/rtee");
        autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage theInstancerefPackage_9 = (autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee/r");
        ModedeclarationgroupPackage theModedeclarationgroupPackage = (ModedeclarationgroupPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        GrteeventsPackage theGrteeventsPackage = (GrteeventsPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/rtee");
        InternalbehaviorPackage theInternalbehaviorPackage = (InternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib");
        ModedeclarationPackage theModedeclarationPackage = (ModedeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md");
        ServercallPackage theServercallPackage = (ServercallPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc");
        DataelementsPackage theDataelementsPackage = (DataelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        this.getESubpackages().add((Object)theInstancerefPackage_9);
        this.modeSwitchedAckEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.rteEventEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.rteEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGRTEEvent());
        this.asynchronousServerCallReturnsEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.asynchronousServerCallReturnsEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGAsynchronousServerCallReturnsEvent());
        this.dataSendCompletedEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.dataSendCompletedEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGDataSendCompletedEvent());
        this.dataReceivedEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.dataReceivedEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGDataReceivedEvent());
        this.dataReceiveErrorEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.dataReceiveErrorEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGDataReceiveErrorEvent());
        this.timingEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.timingEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGTimingEvent());
        this.operationInvokedEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.operationInvokedEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGOperationInvokedEvent());
        this.modeSwitchEventEClass.getESuperTypes().add((Object)this.getRTEEvent());
        this.modeSwitchEventEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGSwcModeSwitchEvent());
        this.waitPointEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.waitPointEClass.getESuperTypes().add((Object)theGrteeventsPackage.getGWaitPoint());
        this.initEClass(this.modeSwitchedAckEventEClass, ModeSwitchedAckEvent.class, "ModeSwitchedAckEvent", false, false, true);
        this.initEReference(this.getModeSwitchedAckEvent_EventSource(), (EClassifier)theModedeclarationgroupPackage.getModeSwitchPoint(), null, "eventSource", null, 0, 1, ModeSwitchedAckEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.rteEventEClass, RTEEvent.class, "RTEEvent", true, false, true);
        this.initEReference(this.getRTEEvent_InternalBehavior(), (EClassifier)theInternalbehaviorPackage.getInternalBehavior(), theInternalbehaviorPackage.getInternalBehavior_Events(), "internalBehavior", null, 0, 1, RTEEvent.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getRTEEvent_ModeDependency(), (EClassifier)theModedeclarationPackage.getModeDisablingDependency(), theModedeclarationPackage.getModeDisablingDependency_RTEEvent(), "modeDependency", null, 0, 1, RTEEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRTEEvent_StartOnEvent(), (EClassifier)theInternalbehaviorPackage.getRunnableEntity(), null, "startOnEvent", null, 0, 1, RTEEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.asynchronousServerCallReturnsEventEClass, AsynchronousServerCallReturnsEvent.class, "AsynchronousServerCallReturnsEvent", false, false, true);
        this.initEReference(this.getAsynchronousServerCallReturnsEvent_EventSource(), (EClassifier)theServercallPackage.getAsynchronousServerCallPoint(), null, "eventSource", null, 0, 1, AsynchronousServerCallReturnsEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.dataSendCompletedEventEClass, DataSendCompletedEvent.class, "DataSendCompletedEvent", false, false, true);
        this.initEReference(this.getDataSendCompletedEvent_EventSource(), (EClassifier)theDataelementsPackage.getDataSendPoint(), null, "eventSource", null, 0, 1, DataSendCompletedEvent.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.dataReceivedEventEClass, DataReceivedEvent.class, "DataReceivedEvent", false, false, true);
        this.initEReference(this.getDataReceivedEvent_Data(), (EClassifier)theInstancerefPackage_9.getDataReceivedEventData(), theInstancerefPackage_9.getDataReceivedEventData_DataReceivedEvent(), "data", null, 0, 1, DataReceivedEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.dataReceiveErrorEventEClass, DataReceiveErrorEvent.class, "DataReceiveErrorEvent", false, false, true);
        this.initEReference(this.getDataReceiveErrorEvent_Data(), (EClassifier)theInstancerefPackage_9.getDataReceiveErrorEventData(), theInstancerefPackage_9.getDataReceiveErrorEventData_DataReceiveErrorEvent(), "data", null, 0, 1, DataReceiveErrorEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.timingEventEClass, TimingEvent.class, "TimingEvent", false, false, true);
        this.initEAttribute(this.getTimingEvent_Period(), (EClassifier)thePrimitivetypesPackage.getFloat(), "period", "0.0", 0, 1, TimingEvent.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.operationInvokedEventEClass, OperationInvokedEvent.class, "OperationInvokedEvent", false, false, true);
        this.initEReference(this.getOperationInvokedEvent_Operation(), (EClassifier)theInstancerefPackage_9.getOperationInvokedEventOperation(), theInstancerefPackage_9.getOperationInvokedEventOperation_OperationInvokedEvent(), "operation", null, 0, 1, OperationInvokedEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.modeSwitchEventEClass, ModeSwitchEvent.class, "ModeSwitchEvent", false, false, true);
        this.initEAttribute(this.getModeSwitchEvent_Activation(), (EClassifier)theModedeclarationPackage.getModeActivationKind(), "activation", "ENTRY", 0, 1, ModeSwitchEvent.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getModeSwitchEvent_Mode(), (EClassifier)theInstancerefPackage_9.getModeSwitchEventMode(), theInstancerefPackage_9.getModeSwitchEventMode_ModeSwitchEvent(), "mode", null, 0, 1, ModeSwitchEvent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.waitPointEClass, WaitPoint.class, "WaitPoint", false, false, true);
        this.initEReference(this.getWaitPoint_RunnableEntity(), (EClassifier)theInternalbehaviorPackage.getRunnableEntity(), theInternalbehaviorPackage.getRunnableEntity_WaitPoints(), "runnableEntity", null, 0, 1, WaitPoint.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getWaitPoint_Timeout(), (EClassifier)thePrimitivetypesPackage.getFloat(), "timeout", "0.0", 0, 1, WaitPoint.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getWaitPoint_Triggers(), (EClassifier)this.getRTEEvent(), null, "triggers", null, 0, -1, WaitPoint.class, false, false, true, false, true, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_RTEEventAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "RTEEvents", "GUID", "{73E7364A-8D2F-4cc7-B0C9-FEC943427108}", "Id", "-1549476041"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckEventEClass, source, new String[]{"Name", "ModeSwitchedAckEvent", "Modified", "Thu Sep 28 14:14:24 CEST 2006", "Created", "Thu Sep 28 14:13:27 CEST 2006", "GUID", "{E2A16F5E-FF99-4689-AE44-A03D32F6A727}", "Id", "-5474952"});
        this.addAnnotation((ENamedElement)this.rteEventEClass, source, new String[]{"Name", "RTEEvent", "Modified", "Tue Mar 07 22:01:39 CET 2006", "Created", "Sun May 02 22:07:27 CEST 2004", "GUID", "{E07D9ACC-BDB1-467c-87B4-59CCBB41519C}", "Id", "-209942805"});
        this.addAnnotation((ENamedElement)this.asynchronousServerCallReturnsEventEClass, source, new String[]{"Name", "AsynchronousServerCallReturnsEvent", "Modified", "Thu Jul 14 14:59:52 CEST 2005", "Created", "Sun May 02 22:13:22 CEST 2004", "GUID", "{3CFAF566-1C93-40cb-A659-B6F8B9B31271}", "Id", "-549017940"});
        this.addAnnotation((ENamedElement)this.dataSendCompletedEventEClass, source, new String[]{"Name", "DataSendCompletedEvent", "Modified", "Thu Jul 14 14:58:48 CEST 2005", "Created", "Sun May 02 22:18:34 CEST 2004", "GUID", "{45170EAF-948E-4b03-BF76-76ACA9B5DC13}", "Id", "136959037"});
        this.addAnnotation((ENamedElement)this.dataReceivedEventEClass, source, new String[]{"Name", "DataReceivedEvent", "Modified", "Thu Jul 14 15:00:48 CEST 2005", "Created", "Sun May 02 22:22:49 CEST 2004", "GUID", "{39CF3E26-F358-41e3-B0E8-8EC6656887AE}", "Id", "-1545243211"});
        this.addAnnotation((ENamedElement)this.dataReceiveErrorEventEClass, source, new String[]{"Name", "DataReceiveErrorEvent", "Modified", "Fri Feb 10 19:23:51 CET 2006", "Created", "Fri Feb 10 19:23:19 CET 2006", "GUID", "{3B21883C-8161-4d61-8D98-110A687CC1CB}", "Id", "1139595799"});
        this.addAnnotation((ENamedElement)this.timingEventEClass, source, new String[]{"Name", "TimingEvent", "Modified", "Fri Feb 17 11:23:22 CET 2006", "Created", "Sun May 02 22:24:24 CEST 2004", "GUID", "{68560964-8572-47ff-B68D-FE4864A29E21}", "Id", "-1572266822"});
        this.addAnnotation((ENamedElement)this.getTimingEvent_Period(), source, new String[]{"Name", "period", "GUID", "{55BE6F54-DB22-46de-807A-E9DBA14EBA55}", "Id", "1126770867"});
        this.addAnnotation((ENamedElement)this.operationInvokedEventEClass, source, new String[]{"Name", "OperationInvokedEvent", "Modified", "Thu Jul 14 14:59:52 CEST 2005", "Created", "Sun May 02 22:24:10 CEST 2004", "GUID", "{ACA9E344-2B27-4ee9-8412-CACBC424C5B1}", "Id", "-1688842542"});
        this.addAnnotation((ENamedElement)this.modeSwitchEventEClass, source, new String[]{"Name", "ModeSwitchEvent", "Modified", "Tue Mar 07 22:01:39 CET 2006", "Created", "Wed May 05 14:50:07 CEST 2004", "GUID", "{9229A5AC-AFDE-4127-A052-6DCE0E6F9D9B}", "Id", "-1232275080"});
        this.addAnnotation((ENamedElement)this.getModeSwitchEvent_Activation(), source, new String[]{"Name", "activation", "GUID", "{ED4AC55C-CD68-4d1a-9B86-EC74FBB320BC}", "Id", "-991319527"});
        this.addAnnotation((ENamedElement)this.waitPointEClass, source, new String[]{"Name", "WaitPoint", "Modified", "Thu Jun 30 07:38:46 CEST 2005", "Created", "Sun May 02 22:00:11 CEST 2004", "GUID", "{6BCECFF0-94E5-4d17-BEEB-8367AF17D015}", "Id", "605348335"});
        this.addAnnotation((ENamedElement)this.getWaitPoint_Timeout(), source, new String[]{"Name", "timeout", "GUID", "{85CA0889-11D3-4520-92C1-881A8A3D1F97}", "Id", "1355144550"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "RTE-EVENTS", "xml.namePlural", "RTE-EVENTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckEventEClass, source, new String[]{"xml.name", "MODE-SWITCHED-ACK-EVENT", "xml.namePlural", "MODE-SWITCHED-ACK-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckEvent_EventSource(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "EVENT-SOURCE-REF", "xml.namePlural", "EVENT-SOURCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rteEventEClass, source, new String[]{"xml.name", "RTE-EVENT", "xml.namePlural", "RTE-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getRTEEvent_ModeDependency(), source, new String[]{"xml.name", "MODE-DEPENDENCY", "xml.namePlural", "MODE-DEPENDENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRTEEvent_StartOnEvent(), source, new String[]{"xml.name", "START-ON-EVENT-REF", "xml.namePlural", "START-ON-EVENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.asynchronousServerCallReturnsEventEClass, source, new String[]{"xml.name", "ASYNCHRONOUS-SERVER-CALL-RETURNS-EVENT", "xml.namePlural", "ASYNCHRONOUS-SERVER-CALL-RETURNS-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getAsynchronousServerCallReturnsEvent_EventSource(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "EVENT-SOURCE-REF", "xml.namePlural", "EVENT-SOURCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.dataSendCompletedEventEClass, source, new String[]{"xml.name", "DATA-SEND-COMPLETED-EVENT", "xml.namePlural", "DATA-SEND-COMPLETED-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDataSendCompletedEvent_EventSource(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "EVENT-SOURCE-REF", "xml.namePlural", "EVENT-SOURCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.dataReceivedEventEClass, source, new String[]{"xml.name", "DATA-RECEIVED-EVENT", "xml.namePlural", "DATA-RECEIVED-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDataReceivedEvent_Data(), source, new String[]{"xml.name", "DATA-IREF", "xml.namePlural", "DATA-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.dataReceiveErrorEventEClass, source, new String[]{"xml.name", "DATA-RECEIVE-ERROR-EVENT", "xml.namePlural", "DATA-RECEIVE-ERROR-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDataReceiveErrorEvent_Data(), source, new String[]{"xml.name", "DATA-IREF", "xml.namePlural", "DATA-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.timingEventEClass, source, new String[]{"xml.name", "TIMING-EVENT", "xml.namePlural", "TIMING-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTimingEvent_Period(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "PERIOD", "xml.namePlural", "PERIODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.operationInvokedEventEClass, source, new String[]{"xml.name", "OPERATION-INVOKED-EVENT", "xml.namePlural", "OPERATION-INVOKED-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getOperationInvokedEvent_Operation(), source, new String[]{"xml.name", "OPERATION-IREF", "xml.namePlural", "OPERATION-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.modeSwitchEventEClass, source, new String[]{"xml.name", "MODE-SWITCH-EVENT", "xml.namePlural", "MODE-SWITCH-EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchEvent_Activation(), source, new String[]{"xml.name", "ACTIVATION", "xml.namePlural", "ACTIVATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModeSwitchEvent_Mode(), source, new String[]{"xml.name", "MODE-IREF", "xml.namePlural", "MODE-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "1", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.waitPointEClass, source, new String[]{"xml.name", "WAIT-POINT", "xml.namePlural", "WAIT-POINTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getWaitPoint_Timeout(), source, new String[]{"xml.name", "TIMEOUT", "xml.namePlural", "TIMEOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getWaitPoint_Triggers(), source, new String[]{"xml.name", "TRIGGER-REF", "xml.namePlural", "TRIGGER-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.modeSwitchedAckEventEClass, source, new String[]{"name", "MODE-SWITCHED-ACK-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckEvent_EventSource(), source, new String[]{"name", "EVENT-SOURCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.rteEventEClass, source, new String[]{"name", "RTE-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRTEEvent_ModeDependency(), source, new String[]{"name", "MODE-DEPENDENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRTEEvent_StartOnEvent(), source, new String[]{"name", "START-ON-EVENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.asynchronousServerCallReturnsEventEClass, source, new String[]{"name", "ASYNCHRONOUS-SERVER-CALL-RETURNS-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getAsynchronousServerCallReturnsEvent_EventSource(), source, new String[]{"name", "EVENT-SOURCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.dataSendCompletedEventEClass, source, new String[]{"name", "DATA-SEND-COMPLETED-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDataSendCompletedEvent_EventSource(), source, new String[]{"name", "EVENT-SOURCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.dataReceivedEventEClass, source, new String[]{"name", "DATA-RECEIVED-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDataReceivedEvent_Data(), source, new String[]{"name", "DATA-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.dataReceiveErrorEventEClass, source, new String[]{"name", "DATA-RECEIVE-ERROR-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDataReceiveErrorEvent_Data(), source, new String[]{"name", "DATA-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.timingEventEClass, source, new String[]{"name", "TIMING-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTimingEvent_Period(), source, new String[]{"name", "PERIOD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.operationInvokedEventEClass, source, new String[]{"name", "OPERATION-INVOKED-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOperationInvokedEvent_Operation(), source, new String[]{"name", "OPERATION-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.modeSwitchEventEClass, source, new String[]{"name", "MODE-SWITCH-EVENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModeSwitchEvent_Activation(), source, new String[]{"name", "ACTIVATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModeSwitchEvent_Mode(), source, new String[]{"name", "MODE-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.waitPointEClass, source, new String[]{"name", "WAIT-POINT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getWaitPoint_Timeout(), source, new String[]{"name", "TIMEOUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getWaitPoint_Triggers(), source, new String[]{"name", "TRIGGER-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.modeSwitchedAckEventEClass, source, new String[]{"documentation", "The event is raised when the referenced mode have been received or an error occurs."});
        this.addAnnotation((ENamedElement)this.getModeSwitchedAckEvent_EventSource(), source, new String[]{"documentation", "Mode switch point that triggers the event."});
        this.addAnnotation((ENamedElement)this.rteEventEClass, source, new String[]{"documentation", "Abstract base class for all RTE-related events"});
        this.addAnnotation((ENamedElement)this.getRTEEvent_ModeDependency(), source, new String[]{"documentation", "Provides the means to describe the Modes this RTEEvent can be disabled by."});
        this.addAnnotation((ENamedElement)this.getRTEEvent_StartOnEvent(), source, new String[]{"documentation", "Runnable starts when event occurs"});
        this.addAnnotation((ENamedElement)this.asynchronousServerCallReturnsEventEClass, source, new String[]{"documentation", "This event is raised when an asynchronous server call is finished."});
        this.addAnnotation((ENamedElement)this.getAsynchronousServerCallReturnsEvent_EventSource(), source, new String[]{"documentation", "The referenced server call point "});
        this.addAnnotation((ENamedElement)this.dataSendCompletedEventEClass, source, new String[]{"documentation", "The event is raised when the referenced data elements have been sent or an error occurs."});
        this.addAnnotation((ENamedElement)this.getDataSendCompletedEvent_EventSource(), source, new String[]{"documentation", "Data send point that triggers the event."});
        this.addAnnotation((ENamedElement)this.dataReceivedEventEClass, source, new String[]{"documentation", "The event is raised when the referenced data elements are received."});
        this.addAnnotation((ENamedElement)this.getDataReceivedEvent_Data(), source, new String[]{"documentation", "Data element referenced by event"});
        this.addAnnotation((ENamedElement)this.dataReceiveErrorEventEClass, source, new String[]{"documentation", "This event is raised by the RTE when the Com layer detects and notifies an error concerning the reception of the referenced data element."});
        this.addAnnotation((ENamedElement)this.getDataReceiveErrorEvent_Data(), source, new String[]{"documentation", "Data element referenced by event"});
        this.addAnnotation((ENamedElement)this.timingEventEClass, source, new String[]{"documentation", "TimingEvent references the runnable that need to be started in response to the TimingEvent"});
        this.addAnnotation((ENamedElement)this.getTimingEvent_Period(), source, new String[]{"documentation", "Period of timing event in seconds."});
        this.addAnnotation((ENamedElement)this.operationInvokedEventEClass, source, new String[]{"documentation", "The OperationINvokedEvent references the operation invoked by the client."});
        this.addAnnotation((ENamedElement)this.getOperationInvokedEvent_Operation(), source, new String[]{"documentation", "The operation to be executed as the consequence of the event."});
        this.addAnnotation((ENamedElement)this.modeSwitchEventEClass, source, new String[]{"documentation", "This event is listening to mode changes coming from the StateManager."});
        this.addAnnotation((ENamedElement)this.getModeSwitchEvent_Activation(), source, new String[]{"documentation", "Specifies if the event is activated on entering or exiting the referenced Mode."});
        this.addAnnotation((ENamedElement)this.getModeSwitchEvent_Mode(), source, new String[]{"documentation", "Reference to the Mode that initiates the Mode Switch Event."});
        this.addAnnotation((ENamedElement)this.waitPointEClass, source, new String[]{"documentation", "This defines a wait-point for which the runnable can wait."});
        this.addAnnotation((ENamedElement)this.getWaitPoint_Timeout(), source, new String[]{"documentation", "Time in seconds before the waitpoint times out and the blocking wait call returns with an error indicating the timeout."});
        this.addAnnotation((ENamedElement)this.getWaitPoint_Triggers(), source, new String[]{"documentation", "Events this wait point is waiting for."});
    }

    protected void createTaggedValuesOfGeneralization_RTEEventAnnotations() {
        String source = "TaggedValuesOfGeneralization_RTEEvent";
        this.addAnnotation((ENamedElement)this.modeSwitchedAckEventEClass, source, new String[]{"Name", "", "GUID", "{66BD5FCC-024C-4c2a-B836-D05EC3040788}", "Id", "-37668762", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.asynchronousServerCallReturnsEventEClass, source, new String[]{"Name", "", "GUID", "{9E3791F1-BB61-4fbf-B7F5-36BAC6BA4F58}", "Id", "1956107874", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.dataSendCompletedEventEClass, source, new String[]{"Name", "", "GUID", "{EE52A100-653A-4d26-9908-492085765BD3}", "Id", "-12529132", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.dataReceivedEventEClass, source, new String[]{"Name", "", "GUID", "{0BD60D46-FE79-443e-AB15-72C7FC0340CE}", "Id", "-1543429558", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.dataReceiveErrorEventEClass, source, new String[]{"Name", "", "GUID", "{2007B05F-1D01-4d16-B8C0-7C085C2D51A3}", "Id", "178375197", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.timingEventEClass, source, new String[]{"Name", "", "GUID", "{F6420EB6-152B-4477-B225-1B069A276192}", "Id", "1042940223", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.operationInvokedEventEClass, source, new String[]{"Name", "", "GUID", "{74CE6924-5AA9-4172-A72E-8D1D92B50958}", "Id", "-359368179", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.modeSwitchEventEClass, source, new String[]{"Name", "", "GUID", "{76815388-6FC1-4dbe-9CB4-230F59FFD64A}", "Id", "-1241163018", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.modeSwitchedAckEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.rteEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.asynchronousServerCallReturnsEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.dataSendCompletedEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.dataReceivedEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.dataReceiveErrorEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.timingEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.operationInvokedEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.modeSwitchEventEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.waitPointEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.rteEventEClass, source, new String[]{"Name", "", "GUID", "{317B17AF-53E8-4b1f-9419-22FEAE424FA6}", "Id", "-331308888", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.waitPointEClass, source, new String[]{"Name", "", "GUID", "{B21711D5-55A3-4b5a-A634-93C54F1670B9}", "Id", "139207813", "xml.sequenceOffset", "0"});
    }
}

