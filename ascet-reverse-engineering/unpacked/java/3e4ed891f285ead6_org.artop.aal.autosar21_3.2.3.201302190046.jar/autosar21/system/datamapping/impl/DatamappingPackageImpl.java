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
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EcorePackage
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package autosar21.system.datamapping.impl;

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
import autosar21.system.datamapping.ApplicationErrorMapping;
import autosar21.system.datamapping.ClientIdMapping;
import autosar21.system.datamapping.ClientServerArrayElementMapping;
import autosar21.system.datamapping.ClientServerArrayTypeMapping;
import autosar21.system.datamapping.ClientServerCompositeTypeMapping;
import autosar21.system.datamapping.ClientServerPrimitiveTypeMapping;
import autosar21.system.datamapping.ClientServerRecordElementMapping;
import autosar21.system.datamapping.ClientServerRecordTypeMapping;
import autosar21.system.datamapping.ClientServerToSignalGroupMapping;
import autosar21.system.datamapping.DataMapping;
import autosar21.system.datamapping.DatamappingFactory;
import autosar21.system.datamapping.DatamappingPackage;
import autosar21.system.datamapping.EmptySignalMapping;
import autosar21.system.datamapping.SenderRecArrayElementMapping;
import autosar21.system.datamapping.SenderRecArrayTypeMapping;
import autosar21.system.datamapping.SenderRecCompositeTypeMapping;
import autosar21.system.datamapping.SenderRecRecordElementMapping;
import autosar21.system.datamapping.SenderRecRecordTypeMapping;
import autosar21.system.datamapping.SenderReceiverToSignalGroupMapping;
import autosar21.system.datamapping.SenderReceiverToSignalMapping;
import autosar21.system.datamapping.SequenceCounterMapping;
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
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class DatamappingPackageImpl
extends EPackageImpl
implements DatamappingPackage {
    private EClass applicationErrorMappingEClass = null;
    private EClass clientIdMappingEClass = null;
    private EClass clientServerArrayElementMappingEClass = null;
    private EClass clientServerCompositeTypeMappingEClass = null;
    private EClass clientServerArrayTypeMappingEClass = null;
    private EClass clientServerPrimitiveTypeMappingEClass = null;
    private EClass clientServerRecordElementMappingEClass = null;
    private EClass clientServerRecordTypeMappingEClass = null;
    private EClass clientServerToSignalGroupMappingEClass = null;
    private EClass sequenceCounterMappingEClass = null;
    private EClass emptySignalMappingEClass = null;
    private EClass senderRecArrayElementMappingEClass = null;
    private EClass senderRecCompositeTypeMappingEClass = null;
    private EClass senderRecArrayTypeMappingEClass = null;
    private EClass senderReceiverToSignalGroupMappingEClass = null;
    private EClass senderReceiverToSignalMappingEClass = null;
    private EClass senderRecRecordElementMappingEClass = null;
    private EClass senderRecRecordTypeMappingEClass = null;
    private EClass dataMappingEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private DatamappingPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/s/dm", (EFactory)DatamappingFactory.eINSTANCE);
    }

    public static DatamappingPackage init() {
        if (isInited) {
            return (DatamappingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm");
        }
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/dm") : new DatamappingPackageImpl());
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
        TopologyPackageImpl theTopologyPackage = (TopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t") instanceof TopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t") : TopologyPackage.eINSTANCE);
        PdustructurePackageImpl thePdustructurePackage = (PdustructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/pdus") instanceof PdustructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/pdus") : PdustructurePackage.eINSTANCE);
        SystemsignalPackageImpl theSystemsignalPackage = (SystemsignalPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss") instanceof SystemsignalPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss") : SystemsignalPackage.eINSTANCE);
        autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_11 = (autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss/r") instanceof autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss/r") : InstancerefPackage.eINSTANCE);
        CommunicationprotocolPackageImpl theCommunicationprotocolPackage = (CommunicationprotocolPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp") instanceof CommunicationprotocolPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp") : CommunicationprotocolPackage.eINSTANCE);
        autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_12 = (autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp/r") instanceof autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp/r") : autosar21.system.communicationprotocol.instanceref.InstancerefPackage.eINSTANCE);
        SwmappingPackageImpl theSwmappingPackage = (SwmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw") instanceof SwmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw") : SwmappingPackage.eINSTANCE);
        autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_13 = (autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw/r") instanceof autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw/r") : autosar21.system.swmapping.instanceref.InstancerefPackage.eINSTANCE);
        autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_14 = (autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") instanceof autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") : autosar21.system.datamapping.instanceref.InstancerefPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") : SignalpathsPackage.eINSTANCE);
        autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_15 = (autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") instanceof autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") : autosar21.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE);
        BswmodulePackageImpl theBswmodulePackage = (BswmodulePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") instanceof BswmodulePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") : BswmodulePackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_16 = (autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") instanceof autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") : autosar21.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        theDatamappingPackage.createPackageContents();
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
        theTopologyPackage.createPackageContents();
        thePdustructurePackage.createPackageContents();
        theSystemsignalPackage.createPackageContents();
        theInstancerefPackage_11.createPackageContents();
        theCommunicationprotocolPackage.createPackageContents();
        theInstancerefPackage_12.createPackageContents();
        theSwmappingPackage.createPackageContents();
        theInstancerefPackage_13.createPackageContents();
        theInstancerefPackage_14.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theInstancerefPackage_15.createPackageContents();
        theBswmodulePackage.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_16.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theDatamappingPackage.initializePackageContents();
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
        theTopologyPackage.initializePackageContents();
        thePdustructurePackage.initializePackageContents();
        theSystemsignalPackage.initializePackageContents();
        theInstancerefPackage_11.initializePackageContents();
        theCommunicationprotocolPackage.initializePackageContents();
        theInstancerefPackage_12.initializePackageContents();
        theSwmappingPackage.initializePackageContents();
        theInstancerefPackage_13.initializePackageContents();
        theInstancerefPackage_14.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theInstancerefPackage_15.initializePackageContents();
        theBswmodulePackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_16.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theDatamappingPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/s/dm", (Object)theDatamappingPackage);
        return theDatamappingPackage;
    }

    public EClass getApplicationErrorMapping() {
        return this.applicationErrorMappingEClass;
    }

    public EReference getApplicationErrorMapping_ClientServerToSignalGroupMapping() {
        return (EReference)this.applicationErrorMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getApplicationErrorMapping_SystemSignal() {
        return (EReference)this.applicationErrorMappingEClass.getEStructuralFeatures().get(1);
    }

    public EClass getClientIdMapping() {
        return this.clientIdMappingEClass;
    }

    public EReference getClientIdMapping_ClientServerToSignalGroupMapping() {
        return (EReference)this.clientIdMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientIdMapping_SystemSignal() {
        return (EReference)this.clientIdMappingEClass.getEStructuralFeatures().get(1);
    }

    public EClass getClientServerArrayElementMapping() {
        return this.clientServerArrayElementMappingEClass;
    }

    public EReference getClientServerArrayElementMapping_ClientServerArrayTypeMapping() {
        return (EReference)this.clientServerArrayElementMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerArrayElementMapping_ClientServerArrayElementMapping_arrayElement() {
        return (EReference)this.clientServerArrayElementMappingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerArrayElementMapping_ComplexTypeMapping() {
        return (EReference)this.clientServerArrayElementMappingEClass.getEStructuralFeatures().get(2);
    }

    public EReference getClientServerArrayElementMapping_Signal() {
        return (EReference)this.clientServerArrayElementMappingEClass.getEStructuralFeatures().get(3);
    }

    public EClass getClientServerCompositeTypeMapping() {
        return this.clientServerCompositeTypeMappingEClass;
    }

    public EClass getClientServerArrayTypeMapping() {
        return this.clientServerArrayTypeMappingEClass;
    }

    public EReference getClientServerArrayTypeMapping_ArrayElementMappings() {
        return (EReference)this.clientServerArrayTypeMappingEClass.getEStructuralFeatures().get(0);
    }

    public EClass getClientServerPrimitiveTypeMapping() {
        return this.clientServerPrimitiveTypeMappingEClass;
    }

    public EReference getClientServerPrimitiveTypeMapping_ClientServerToSignalGroupMapping() {
        return (EReference)this.clientServerPrimitiveTypeMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerPrimitiveTypeMapping_Argument() {
        return (EReference)this.clientServerPrimitiveTypeMappingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerPrimitiveTypeMapping_SystemSignal() {
        return (EReference)this.clientServerPrimitiveTypeMappingEClass.getEStructuralFeatures().get(2);
    }

    public EClass getClientServerRecordElementMapping() {
        return this.clientServerRecordElementMappingEClass;
    }

    public EReference getClientServerRecordElementMapping_ClientServerRecordTypeMapping() {
        return (EReference)this.clientServerRecordElementMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerRecordElementMapping_ComplexTypeMapping() {
        return (EReference)this.clientServerRecordElementMappingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerRecordElementMapping_RecordElement() {
        return (EReference)this.clientServerRecordElementMappingEClass.getEStructuralFeatures().get(2);
    }

    public EReference getClientServerRecordElementMapping_Signal() {
        return (EReference)this.clientServerRecordElementMappingEClass.getEStructuralFeatures().get(3);
    }

    public EClass getClientServerRecordTypeMapping() {
        return this.clientServerRecordTypeMappingEClass;
    }

    public EReference getClientServerRecordTypeMapping_RecordElementMappings() {
        return (EReference)this.clientServerRecordTypeMappingEClass.getEStructuralFeatures().get(0);
    }

    public EClass getClientServerToSignalGroupMapping() {
        return this.clientServerToSignalGroupMappingEClass;
    }

    public EReference getClientServerToSignalGroupMapping_ApplicationErrors() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerToSignalGroupMapping_ClientID() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerToSignalGroupMapping_CompositeTypeMappings() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(2);
    }

    public EReference getClientServerToSignalGroupMapping_EmptySignal() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(3);
    }

    public EReference getClientServerToSignalGroupMapping_MappedOperation() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(4);
    }

    public EReference getClientServerToSignalGroupMapping_PrimitiveTypeMappings() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(5);
    }

    public EReference getClientServerToSignalGroupMapping_RequestGroup() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(6);
    }

    public EReference getClientServerToSignalGroupMapping_ResponseGroup() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(7);
    }

    public EReference getClientServerToSignalGroupMapping_SequenceCounter() {
        return (EReference)this.clientServerToSignalGroupMappingEClass.getEStructuralFeatures().get(8);
    }

    public EClass getSequenceCounterMapping() {
        return this.sequenceCounterMappingEClass;
    }

    public EReference getSequenceCounterMapping_ClientServerToSignalGroupMapping() {
        return (EReference)this.sequenceCounterMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSequenceCounterMapping_SystemSignal() {
        return (EReference)this.sequenceCounterMappingEClass.getEStructuralFeatures().get(1);
    }

    public EClass getEmptySignalMapping() {
        return this.emptySignalMappingEClass;
    }

    public EReference getEmptySignalMapping_ClientServerToSignalGroupMapping() {
        return (EReference)this.emptySignalMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEmptySignalMapping_SystemSignal() {
        return (EReference)this.emptySignalMappingEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSenderRecArrayElementMapping() {
        return this.senderRecArrayElementMappingEClass;
    }

    public EReference getSenderRecArrayElementMapping_SenderRecArrayTypeMapping() {
        return (EReference)this.senderRecArrayElementMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderRecArrayElementMapping_ArrayElement() {
        return (EReference)this.senderRecArrayElementMappingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSenderRecArrayElementMapping_ComplexTypeMapping() {
        return (EReference)this.senderRecArrayElementMappingEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSenderRecArrayElementMapping_Signal() {
        return (EReference)this.senderRecArrayElementMappingEClass.getEStructuralFeatures().get(3);
    }

    public EClass getSenderRecCompositeTypeMapping() {
        return this.senderRecCompositeTypeMappingEClass;
    }

    public EClass getSenderRecArrayTypeMapping() {
        return this.senderRecArrayTypeMappingEClass;
    }

    public EReference getSenderRecArrayTypeMapping_ArrayElementMappings() {
        return (EReference)this.senderRecArrayTypeMappingEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSenderReceiverToSignalGroupMapping() {
        return this.senderReceiverToSignalGroupMappingEClass;
    }

    public EReference getSenderReceiverToSignalGroupMapping_DataElement() {
        return (EReference)this.senderReceiverToSignalGroupMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderReceiverToSignalGroupMapping_SignalGroup() {
        return (EReference)this.senderReceiverToSignalGroupMappingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSenderReceiverToSignalGroupMapping_TypeMapping() {
        return (EReference)this.senderReceiverToSignalGroupMappingEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSenderReceiverToSignalMapping() {
        return this.senderReceiverToSignalMappingEClass;
    }

    public EReference getSenderReceiverToSignalMapping_DataElement() {
        return (EReference)this.senderReceiverToSignalMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderReceiverToSignalMapping_Signal() {
        return (EReference)this.senderReceiverToSignalMappingEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSenderRecRecordElementMapping() {
        return this.senderRecRecordElementMappingEClass;
    }

    public EReference getSenderRecRecordElementMapping_SenderRecRecordTypeMapping() {
        return (EReference)this.senderRecRecordElementMappingEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderRecRecordElementMapping_ComplexTypeMapping() {
        return (EReference)this.senderRecRecordElementMappingEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSenderRecRecordElementMapping_RecordElement() {
        return (EReference)this.senderRecRecordElementMappingEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSenderRecRecordElementMapping_Signal() {
        return (EReference)this.senderRecRecordElementMappingEClass.getEStructuralFeatures().get(3);
    }

    public EClass getSenderRecRecordTypeMapping() {
        return this.senderRecRecordTypeMappingEClass;
    }

    public EReference getSenderRecRecordTypeMapping_RecordElementMappings() {
        return (EReference)this.senderRecRecordTypeMappingEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDataMapping() {
        return this.dataMappingEClass;
    }

    public EReference getDataMapping_SystemMapping() {
        return (EReference)this.dataMappingEClass.getEStructuralFeatures().get(0);
    }

    public DatamappingFactory getDatamappingFactory() {
        return (DatamappingFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.applicationErrorMappingEClass = this.createEClass(0);
        this.createEReference(this.applicationErrorMappingEClass, 4);
        this.createEReference(this.applicationErrorMappingEClass, 5);
        this.clientIdMappingEClass = this.createEClass(1);
        this.createEReference(this.clientIdMappingEClass, 4);
        this.createEReference(this.clientIdMappingEClass, 5);
        this.clientServerArrayElementMappingEClass = this.createEClass(2);
        this.createEReference(this.clientServerArrayElementMappingEClass, 4);
        this.createEReference(this.clientServerArrayElementMappingEClass, 5);
        this.createEReference(this.clientServerArrayElementMappingEClass, 6);
        this.createEReference(this.clientServerArrayElementMappingEClass, 7);
        this.clientServerCompositeTypeMappingEClass = this.createEClass(3);
        this.clientServerArrayTypeMappingEClass = this.createEClass(4);
        this.createEReference(this.clientServerArrayTypeMappingEClass, 4);
        this.clientServerPrimitiveTypeMappingEClass = this.createEClass(5);
        this.createEReference(this.clientServerPrimitiveTypeMappingEClass, 4);
        this.createEReference(this.clientServerPrimitiveTypeMappingEClass, 5);
        this.createEReference(this.clientServerPrimitiveTypeMappingEClass, 6);
        this.clientServerRecordElementMappingEClass = this.createEClass(6);
        this.createEReference(this.clientServerRecordElementMappingEClass, 4);
        this.createEReference(this.clientServerRecordElementMappingEClass, 5);
        this.createEReference(this.clientServerRecordElementMappingEClass, 6);
        this.createEReference(this.clientServerRecordElementMappingEClass, 7);
        this.clientServerRecordTypeMappingEClass = this.createEClass(7);
        this.createEReference(this.clientServerRecordTypeMappingEClass, 4);
        this.clientServerToSignalGroupMappingEClass = this.createEClass(8);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 5);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 6);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 7);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 8);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 9);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 10);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 11);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 12);
        this.createEReference(this.clientServerToSignalGroupMappingEClass, 13);
        this.sequenceCounterMappingEClass = this.createEClass(9);
        this.createEReference(this.sequenceCounterMappingEClass, 4);
        this.createEReference(this.sequenceCounterMappingEClass, 5);
        this.emptySignalMappingEClass = this.createEClass(10);
        this.createEReference(this.emptySignalMappingEClass, 4);
        this.createEReference(this.emptySignalMappingEClass, 5);
        this.senderRecArrayElementMappingEClass = this.createEClass(11);
        this.createEReference(this.senderRecArrayElementMappingEClass, 4);
        this.createEReference(this.senderRecArrayElementMappingEClass, 5);
        this.createEReference(this.senderRecArrayElementMappingEClass, 6);
        this.createEReference(this.senderRecArrayElementMappingEClass, 7);
        this.senderRecCompositeTypeMappingEClass = this.createEClass(12);
        this.senderRecArrayTypeMappingEClass = this.createEClass(13);
        this.createEReference(this.senderRecArrayTypeMappingEClass, 4);
        this.senderReceiverToSignalGroupMappingEClass = this.createEClass(14);
        this.createEReference(this.senderReceiverToSignalGroupMappingEClass, 5);
        this.createEReference(this.senderReceiverToSignalGroupMappingEClass, 6);
        this.createEReference(this.senderReceiverToSignalGroupMappingEClass, 7);
        this.senderReceiverToSignalMappingEClass = this.createEClass(15);
        this.createEReference(this.senderReceiverToSignalMappingEClass, 5);
        this.createEReference(this.senderReceiverToSignalMappingEClass, 6);
        this.senderRecRecordElementMappingEClass = this.createEClass(16);
        this.createEReference(this.senderRecRecordElementMappingEClass, 4);
        this.createEReference(this.senderRecRecordElementMappingEClass, 5);
        this.createEReference(this.senderRecRecordElementMappingEClass, 6);
        this.createEReference(this.senderRecRecordElementMappingEClass, 7);
        this.senderRecRecordTypeMappingEClass = this.createEClass(17);
        this.createEReference(this.senderRecRecordTypeMappingEClass, 4);
        this.dataMappingEClass = this.createEClass(18);
        this.createEReference(this.dataMappingEClass, 4);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("datamapping");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/s/dm");
        autosar21.system.datamapping.instanceref.InstancerefPackage theInstancerefPackage_14 = (autosar21.system.datamapping.instanceref.InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        SystemsignalPackage theSystemsignalPackage = (SystemsignalPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss");
        SystemPackage theSystemPackage = (SystemPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s");
        this.getESubpackages().add((Object)theInstancerefPackage_14);
        this.applicationErrorMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientIdMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerArrayElementMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerCompositeTypeMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerArrayTypeMappingEClass.getESuperTypes().add((Object)this.getClientServerCompositeTypeMapping());
        this.clientServerPrimitiveTypeMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerRecordElementMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerRecordTypeMappingEClass.getESuperTypes().add((Object)this.getClientServerCompositeTypeMapping());
        this.clientServerToSignalGroupMappingEClass.getESuperTypes().add((Object)this.getDataMapping());
        this.sequenceCounterMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.emptySignalMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderRecArrayElementMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderRecCompositeTypeMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderRecArrayTypeMappingEClass.getESuperTypes().add((Object)this.getSenderRecCompositeTypeMapping());
        this.senderReceiverToSignalGroupMappingEClass.getESuperTypes().add((Object)this.getDataMapping());
        this.senderReceiverToSignalMappingEClass.getESuperTypes().add((Object)this.getDataMapping());
        this.senderRecRecordElementMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderRecRecordTypeMappingEClass.getESuperTypes().add((Object)this.getSenderRecCompositeTypeMapping());
        this.dataMappingEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.applicationErrorMappingEClass, ApplicationErrorMapping.class, "ApplicationErrorMapping", false, false, true);
        this.initEReference(this.getApplicationErrorMapping_ClientServerToSignalGroupMapping(), (EClassifier)this.getClientServerToSignalGroupMapping(), this.getClientServerToSignalGroupMapping_ApplicationErrors(), "clientServerToSignalGroupMapping", null, 0, 1, ApplicationErrorMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getApplicationErrorMapping_SystemSignal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "systemSignal", null, 0, 1, ApplicationErrorMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientIdMappingEClass, ClientIdMapping.class, "ClientIdMapping", false, false, true);
        this.initEReference(this.getClientIdMapping_ClientServerToSignalGroupMapping(), (EClassifier)this.getClientServerToSignalGroupMapping(), this.getClientServerToSignalGroupMapping_ClientID(), "clientServerToSignalGroupMapping", null, 0, 1, ClientIdMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientIdMapping_SystemSignal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "systemSignal", null, 0, 1, ClientIdMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientServerArrayElementMappingEClass, ClientServerArrayElementMapping.class, "ClientServerArrayElementMapping", false, false, true);
        this.initEReference(this.getClientServerArrayElementMapping_ClientServerArrayTypeMapping(), (EClassifier)this.getClientServerArrayTypeMapping(), this.getClientServerArrayTypeMapping_ArrayElementMappings(), "clientServerArrayTypeMapping", null, 0, 1, ClientServerArrayElementMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMapping_ClientServerArrayElementMapping_arrayElement(), (EClassifier)theInstancerefPackage_14.getClientServerArrayElementMappingArrayElement(), theInstancerefPackage_14.getClientServerArrayElementMappingArrayElement_ClientServerArrayElementMapping(), "clientServerArrayElementMapping_arrayElement", null, 0, 1, ClientServerArrayElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMapping_ComplexTypeMapping(), (EClassifier)this.getClientServerCompositeTypeMapping(), null, "complexTypeMapping", null, 0, 1, ClientServerArrayElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMapping_Signal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "signal", null, 0, 1, ClientServerArrayElementMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientServerCompositeTypeMappingEClass, ClientServerCompositeTypeMapping.class, "ClientServerCompositeTypeMapping", true, false, true);
        this.initEClass(this.clientServerArrayTypeMappingEClass, ClientServerArrayTypeMapping.class, "ClientServerArrayTypeMapping", false, false, true);
        this.initEReference(this.getClientServerArrayTypeMapping_ArrayElementMappings(), (EClassifier)this.getClientServerArrayElementMapping(), this.getClientServerArrayElementMapping_ClientServerArrayTypeMapping(), "arrayElementMappings", null, 0, -1, ClientServerArrayTypeMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.clientServerPrimitiveTypeMappingEClass, ClientServerPrimitiveTypeMapping.class, "ClientServerPrimitiveTypeMapping", false, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMapping_ClientServerToSignalGroupMapping(), (EClassifier)this.getClientServerToSignalGroupMapping(), this.getClientServerToSignalGroupMapping_PrimitiveTypeMappings(), "clientServerToSignalGroupMapping", null, 0, 1, ClientServerPrimitiveTypeMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMapping_Argument(), (EClassifier)theInstancerefPackage_14.getClientServerPrimitiveTypeMappingArgument(), theInstancerefPackage_14.getClientServerPrimitiveTypeMappingArgument_ClientServerPrimitiveTypeMapping(), "argument", null, 0, 1, ClientServerPrimitiveTypeMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMapping_SystemSignal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "systemSignal", null, 0, 1, ClientServerPrimitiveTypeMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientServerRecordElementMappingEClass, ClientServerRecordElementMapping.class, "ClientServerRecordElementMapping", false, false, true);
        this.initEReference(this.getClientServerRecordElementMapping_ClientServerRecordTypeMapping(), (EClassifier)this.getClientServerRecordTypeMapping(), this.getClientServerRecordTypeMapping_RecordElementMappings(), "clientServerRecordTypeMapping", null, 0, 1, ClientServerRecordElementMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMapping_ComplexTypeMapping(), (EClassifier)this.getClientServerCompositeTypeMapping(), null, "complexTypeMapping", null, 0, 1, ClientServerRecordElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMapping_RecordElement(), (EClassifier)theInstancerefPackage_14.getClientServerRecordElementMappingRecordElement(), theInstancerefPackage_14.getClientServerRecordElementMappingRecordElement_ClientServerRecordElementMapping(), "recordElement", null, 0, 1, ClientServerRecordElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMapping_Signal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "signal", null, 0, 1, ClientServerRecordElementMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientServerRecordTypeMappingEClass, ClientServerRecordTypeMapping.class, "ClientServerRecordTypeMapping", false, false, true);
        this.initEReference(this.getClientServerRecordTypeMapping_RecordElementMappings(), (EClassifier)this.getClientServerRecordElementMapping(), this.getClientServerRecordElementMapping_ClientServerRecordTypeMapping(), "recordElementMappings", null, 0, -1, ClientServerRecordTypeMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.clientServerToSignalGroupMappingEClass, ClientServerToSignalGroupMapping.class, "ClientServerToSignalGroupMapping", false, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_ApplicationErrors(), (EClassifier)this.getApplicationErrorMapping(), this.getApplicationErrorMapping_ClientServerToSignalGroupMapping(), "applicationErrors", null, 0, -1, ClientServerToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_ClientID(), (EClassifier)this.getClientIdMapping(), this.getClientIdMapping_ClientServerToSignalGroupMapping(), "clientID", null, 0, 1, ClientServerToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_CompositeTypeMappings(), (EClassifier)this.getClientServerCompositeTypeMapping(), null, "compositeTypeMappings", null, 0, -1, ClientServerToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_EmptySignal(), (EClassifier)this.getEmptySignalMapping(), this.getEmptySignalMapping_ClientServerToSignalGroupMapping(), "emptySignal", null, 0, 1, ClientServerToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_MappedOperation(), (EClassifier)theInstancerefPackage_14.getClientServerToSignalGroupMappingMappedOperation(), theInstancerefPackage_14.getClientServerToSignalGroupMappingMappedOperation_ClientServerToSignalGroupMapping(), "mappedOperation", null, 0, 1, ClientServerToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_PrimitiveTypeMappings(), (EClassifier)this.getClientServerPrimitiveTypeMapping(), this.getClientServerPrimitiveTypeMapping_ClientServerToSignalGroupMapping(), "primitiveTypeMappings", null, 0, -1, ClientServerToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_RequestGroup(), (EClassifier)theSystemsignalPackage.getSystemSignalGroup(), null, "requestGroup", null, 0, 1, ClientServerToSignalGroupMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_ResponseGroup(), (EClassifier)theSystemsignalPackage.getSystemSignalGroup(), null, "responseGroup", null, 0, 1, ClientServerToSignalGroupMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMapping_SequenceCounter(), (EClassifier)this.getSequenceCounterMapping(), this.getSequenceCounterMapping_ClientServerToSignalGroupMapping(), "sequenceCounter", null, 0, 1, ClientServerToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.sequenceCounterMappingEClass, SequenceCounterMapping.class, "SequenceCounterMapping", false, false, true);
        this.initEReference(this.getSequenceCounterMapping_ClientServerToSignalGroupMapping(), (EClassifier)this.getClientServerToSignalGroupMapping(), this.getClientServerToSignalGroupMapping_SequenceCounter(), "clientServerToSignalGroupMapping", null, 0, 1, SequenceCounterMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSequenceCounterMapping_SystemSignal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "systemSignal", null, 0, 1, SequenceCounterMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.emptySignalMappingEClass, EmptySignalMapping.class, "EmptySignalMapping", false, false, true);
        this.initEReference(this.getEmptySignalMapping_ClientServerToSignalGroupMapping(), (EClassifier)this.getClientServerToSignalGroupMapping(), this.getClientServerToSignalGroupMapping_EmptySignal(), "clientServerToSignalGroupMapping", null, 0, 1, EmptySignalMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getEmptySignalMapping_SystemSignal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "systemSignal", null, 0, 1, EmptySignalMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.senderRecArrayElementMappingEClass, SenderRecArrayElementMapping.class, "SenderRecArrayElementMapping", false, false, true);
        this.initEReference(this.getSenderRecArrayElementMapping_SenderRecArrayTypeMapping(), (EClassifier)this.getSenderRecArrayTypeMapping(), this.getSenderRecArrayTypeMapping_ArrayElementMappings(), "senderRecArrayTypeMapping", null, 0, 1, SenderRecArrayElementMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMapping_ArrayElement(), (EClassifier)theInstancerefPackage_14.getSenderRecArrayElementMappingArrayElement(), theInstancerefPackage_14.getSenderRecArrayElementMappingArrayElement_SenderRecArrayElementMapping(), "arrayElement", null, 0, 1, SenderRecArrayElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMapping_ComplexTypeMapping(), (EClassifier)this.getSenderRecCompositeTypeMapping(), null, "complexTypeMapping", null, 0, 1, SenderRecArrayElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMapping_Signal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "signal", null, 0, 1, SenderRecArrayElementMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.senderRecCompositeTypeMappingEClass, SenderRecCompositeTypeMapping.class, "SenderRecCompositeTypeMapping", true, false, true);
        this.initEClass(this.senderRecArrayTypeMappingEClass, SenderRecArrayTypeMapping.class, "SenderRecArrayTypeMapping", false, false, true);
        this.initEReference(this.getSenderRecArrayTypeMapping_ArrayElementMappings(), (EClassifier)this.getSenderRecArrayElementMapping(), this.getSenderRecArrayElementMapping_SenderRecArrayTypeMapping(), "arrayElementMappings", null, 0, -1, SenderRecArrayTypeMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.senderReceiverToSignalGroupMappingEClass, SenderReceiverToSignalGroupMapping.class, "SenderReceiverToSignalGroupMapping", false, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMapping_DataElement(), (EClassifier)theInstancerefPackage_14.getSenderReceiverToSignalGroupMappingDataElement(), theInstancerefPackage_14.getSenderReceiverToSignalGroupMappingDataElement_SenderReceiverToSignalGroupMapping(), "dataElement", null, 0, 1, SenderReceiverToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMapping_SignalGroup(), (EClassifier)theSystemsignalPackage.getSystemSignalGroup(), null, "signalGroup", null, 0, 1, SenderReceiverToSignalGroupMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMapping_TypeMapping(), (EClassifier)this.getSenderRecCompositeTypeMapping(), null, "typeMapping", null, 0, 1, SenderReceiverToSignalGroupMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.senderReceiverToSignalMappingEClass, SenderReceiverToSignalMapping.class, "SenderReceiverToSignalMapping", false, false, true);
        this.initEReference(this.getSenderReceiverToSignalMapping_DataElement(), (EClassifier)theInstancerefPackage_14.getSenderReceiverToSignalMappingDataElement(), theInstancerefPackage_14.getSenderReceiverToSignalMappingDataElement_SenderReceiverToSignalMapping(), "dataElement", null, 0, 1, SenderReceiverToSignalMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalMapping_Signal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "signal", null, 0, 1, SenderReceiverToSignalMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.senderRecRecordElementMappingEClass, SenderRecRecordElementMapping.class, "SenderRecRecordElementMapping", false, false, true);
        this.initEReference(this.getSenderRecRecordElementMapping_SenderRecRecordTypeMapping(), (EClassifier)this.getSenderRecRecordTypeMapping(), this.getSenderRecRecordTypeMapping_RecordElementMappings(), "senderRecRecordTypeMapping", null, 0, 1, SenderRecRecordElementMapping.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMapping_ComplexTypeMapping(), (EClassifier)this.getSenderRecCompositeTypeMapping(), null, "complexTypeMapping", null, 0, 1, SenderRecRecordElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMapping_RecordElement(), (EClassifier)theInstancerefPackage_14.getSenderRecRecordElementMappingRecordElement(), theInstancerefPackage_14.getSenderRecRecordElementMappingRecordElement_SenderRecRecordElementMapping(), "recordElement", null, 0, 1, SenderRecRecordElementMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMapping_Signal(), (EClassifier)theSystemsignalPackage.getSystemSignal(), null, "signal", null, 0, 1, SenderRecRecordElementMapping.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.senderRecRecordTypeMappingEClass, SenderRecRecordTypeMapping.class, "SenderRecRecordTypeMapping", false, false, true);
        this.initEReference(this.getSenderRecRecordTypeMapping_RecordElementMappings(), (EClassifier)this.getSenderRecRecordElementMapping(), this.getSenderRecRecordElementMapping_SenderRecRecordTypeMapping(), "recordElementMappings", null, 0, -1, SenderRecRecordTypeMapping.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.dataMappingEClass, DataMapping.class, "DataMapping", true, false, true);
        this.initEReference(this.getDataMapping_SystemMapping(), (EClassifier)theSystemPackage.getSystemMapping(), theSystemPackage.getSystemMapping_DataMappings(), "systemMapping", null, 0, 1, DataMapping.class, true, false, true, false, false, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_ClientServerCompositeTypeMappingAnnotations();
        this.createTaggedValuesOfGeneralization_DataMappingAnnotations();
        this.createTaggedValuesOfGeneralization_SenderRecCompositeTypeMappingAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "DataMapping", "GUID", "{7C60A2E8-CC6E-42d8-8953-E58E9976F78E}", "Id", "635131692"});
        this.addAnnotation((ENamedElement)this.applicationErrorMappingEClass, source, new String[]{"Name", "ApplicationErrorMapping", "Modified", "Wed Nov 15 09:57:51 CET 2006", "Created", "Fri Oct 20 13:51:07 CEST 2006", "GUID", "{22D17954-F9AD-4624-B655-7447083E07F6}", "Id", "-2060526600"});
        this.addAnnotation((ENamedElement)this.clientIdMappingEClass, source, new String[]{"Name", "ClientIdMapping", "Modified", "Wed Nov 15 09:58:15 CET 2006", "Created", "Fri Oct 20 13:41:47 CEST 2006", "GUID", "{C79F6C98-C0CC-49ff-91DF-5B75A354419C}", "Id", "1161344507"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingEClass, source, new String[]{"Name", "ClientServerArrayElementMapping", "Modified", "Wed Oct 04 14:38:50 CEST 2006", "Created", "Wed Oct 04 14:31:26 CEST 2006", "GUID", "{9028DC03-E388-4f44-8650-259EAC89D68D}", "Id", "949462842"});
        this.addAnnotation((ENamedElement)this.clientServerCompositeTypeMappingEClass, source, new String[]{"Name", "ClientServerCompositeTypeMapping", "Modified", "Wed Oct 04 14:30:26 CEST 2006", "Created", "Wed Oct 04 14:27:34 CEST 2006", "GUID", "{5B05C6B5-AC58-4a30-AB7F-D94464198095}", "Id", "1159964854"});
        this.addAnnotation((ENamedElement)this.clientServerArrayTypeMappingEClass, source, new String[]{"Name", "ClientServerArrayTypeMapping", "Modified", "Wed Oct 04 14:30:10 CEST 2006", "Created", "Wed Oct 04 14:28:23 CEST 2006", "GUID", "{02BFD461-3975-4bfb-B5AA-ED35C2BB4D7B}", "Id", "-1681467948"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingEClass, source, new String[]{"Name", "ClientServerPrimitiveTypeMapping", "Modified", "Fri Aug 11 11:26:45 CEST 2006", "Created", "Thu Aug 10 11:52:09 CEST 2006", "GUID", "{81D0635A-877F-422f-A732-0D399E8EDE09}", "Id", "-940926424"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingEClass, source, new String[]{"Name", "ClientServerRecordElementMapping", "Modified", "Wed Oct 04 14:31:23 CEST 2006", "Created", "Wed Oct 04 14:30:54 CEST 2006", "GUID", "{6007E54C-2C98-49bb-BB13-221200AABC02}", "Id", "879822414"});
        this.addAnnotation((ENamedElement)this.clientServerRecordTypeMappingEClass, source, new String[]{"Name", "ClientServerRecordTypeMapping", "Modified", "Wed Oct 04 14:30:19 CEST 2006", "Created", "Wed Oct 04 14:29:03 CEST 2006", "GUID", "{C897AB99-BC79-464a-8996-BC3517B9B476}", "Id", "-1293647838"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingEClass, source, new String[]{"Name", "ClientServerToSignalGroupMapping", "Modified", "Tue Sep 12 16:23:12 CEST 2006", "Created", "Thu Aug 10 11:36:18 CEST 2006", "GUID", "{1B391031-DDFA-4ff8-97D2-BFE5E61A4FEB}", "Id", "-272078575"});
        this.addAnnotation((ENamedElement)this.sequenceCounterMappingEClass, source, new String[]{"Name", "SequenceCounterMapping", "Modified", "Wed Nov 15 09:58:08 CET 2006", "Created", "Fri Oct 20 13:49:53 CEST 2006", "GUID", "{29492960-BA64-458f-BE46-3DA0BBC0BF66}", "Id", "-999630022"});
        this.addAnnotation((ENamedElement)this.emptySignalMappingEClass, source, new String[]{"Name", "EmptySignalMapping", "Modified", "Wed Nov 15 09:58:02 CET 2006", "Created", "Fri Oct 20 13:51:18 CEST 2006", "GUID", "{1AB48A05-6CA2-484b-B491-C62A0D4C7550}", "Id", "341050086"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingEClass, source, new String[]{"Name", "SenderRecArrayElementMapping", "Modified", "Wed Oct 04 14:39:31 CEST 2006", "Created", "Fri Aug 04 09:54:17 CEST 2006", "GUID", "{8155659B-4744-430c-9D3B-D6CF54EDED1F}", "Id", "-35586386"});
        this.addAnnotation((ENamedElement)this.senderRecCompositeTypeMappingEClass, source, new String[]{"Name", "SenderRecCompositeTypeMapping", "Modified", "Wed Oct 04 14:21:40 CEST 2006", "Created", "Tue Aug 08 08:29:05 CEST 2006", "GUID", "{D31E187A-FBFE-4095-B9E6-13E0E88BE562}", "Id", "766091394"});
        this.addAnnotation((ENamedElement)this.senderRecArrayTypeMappingEClass, source, new String[]{"Name", "SenderRecArrayTypeMapping", "Modified", "Wed Oct 04 14:21:54 CEST 2006", "Created", "Fri Aug 04 08:55:17 CEST 2006", "GUID", "{FDD85710-0DCE-45c6-A112-91A2328B9130}", "Id", "-1571932856"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingEClass, source, new String[]{"Name", "SenderReceiverToSignalGroupMapping", "Modified", "Thu Aug 10 11:55:23 CEST 2006", "Created", "Thu Aug 10 10:54:14 CEST 2006", "GUID", "{483322D4-5B1F-4388-B6F9-4F2BBC9FFF80}", "Id", "1155200054"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingEClass, source, new String[]{"Name", "SenderReceiverToSignalMapping", "Modified", "Thu Aug 10 15:29:03 CEST 2006", "Created", "Thu Apr 08 16:30:03 CEST 2004", "GUID", "{31A92170-83F7-4ed0-9770-622276D671E3}", "Id", "840909114"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingEClass, source, new String[]{"Name", "SenderRecRecordElementMapping", "Modified", "Wed Oct 04 14:22:23 CEST 2006", "Created", "Fri Aug 04 09:21:03 CEST 2006", "GUID", "{5181A9BE-FBA5-48e1-9285-21DD9B340230}", "Id", "-1144764377"});
        this.addAnnotation((ENamedElement)this.senderRecRecordTypeMappingEClass, source, new String[]{"Name", "SenderRecRecordTypeMapping", "Modified", "Wed Oct 04 14:22:04 CEST 2006", "Created", "Fri Aug 04 08:55:01 CEST 2006", "GUID", "{F4D500BC-280B-461f-A0FD-ADB535F2ED49}", "Id", "232794122"});
        this.addAnnotation((ENamedElement)this.dataMappingEClass, source, new String[]{"Name", "DataMapping", "Modified", "Tue Aug 08 10:50:45 CEST 2006", "Created", "Thu Apr 08 16:26:30 CEST 2004", "GUID", "{78A68987-4BEA-4bff-9F10-CD15ED369604}", "Id", "-859760487"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "DATA-MAPPING", "xml.namePlural", "DATA-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.applicationErrorMappingEClass, source, new String[]{"xml.name", "APPLICATION-ERROR-MAPPING", "xml.namePlural", "APPLICATION-ERROR-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getApplicationErrorMapping_SystemSignal(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SYSTEM-SIGNAL-REF", "xml.namePlural", "SYSTEM-SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientIdMappingEClass, source, new String[]{"xml.name", "CLIENT-ID-MAPPING", "xml.namePlural", "CLIENT-ID-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientIdMapping_SystemSignal(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SYSTEM-SIGNAL-REF", "xml.namePlural", "SYSTEM-SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingEClass, source, new String[]{"xml.name", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING", "xml.namePlural", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_ClientServerArrayElementMapping_arrayElement(), source, new String[]{"xml.name", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING-ARRAY-ELEMENT-IREF", "xml.namePlural", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING-ARRAY-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_ComplexTypeMapping(), source, new String[]{"xml.name", "COMPLEX-TYPE-MAPPING", "xml.namePlural", "COMPLEX-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_Signal(), source, new String[]{"xml.name", "SIGNAL-REF", "xml.namePlural", "SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerCompositeTypeMappingEClass, source, new String[]{"xml.name", "CLIENT-SERVER-COMPOSITE-TYPE-MAPPING", "xml.namePlural", "CLIENT-SERVER-COMPOSITE-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.clientServerArrayTypeMappingEClass, source, new String[]{"xml.name", "CLIENT-SERVER-ARRAY-TYPE-MAPPING", "xml.namePlural", "CLIENT-SERVER-ARRAY-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayTypeMapping_ArrayElementMappings(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "ARRAY-ELEMENT-MAPPING", "xml.namePlural", "ARRAY-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingEClass, source, new String[]{"xml.name", "CLIENT-SERVER-PRIMITIVE-TYPE-MAPPING", "xml.namePlural", "CLIENT-SERVER-PRIMITIVE-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMapping_Argument(), source, new String[]{"xml.name", "ARGUMENT-IREF", "xml.namePlural", "ARGUMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMapping_SystemSignal(), source, new String[]{"xml.name", "SYSTEM-SIGNAL-REF", "xml.namePlural", "SYSTEM-SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingEClass, source, new String[]{"xml.name", "CLIENT-SERVER-RECORD-ELEMENT-MAPPING", "xml.namePlural", "CLIENT-SERVER-RECORD-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_ComplexTypeMapping(), source, new String[]{"xml.name", "COMPLEX-TYPE-MAPPING", "xml.namePlural", "COMPLEX-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_RecordElement(), source, new String[]{"xml.name", "RECORD-ELEMENT-IREF", "xml.namePlural", "RECORD-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "1", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_Signal(), source, new String[]{"xml.name", "SIGNAL-REF", "xml.namePlural", "SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerRecordTypeMappingEClass, source, new String[]{"xml.name", "CLIENT-SERVER-RECORD-TYPE-MAPPING", "xml.namePlural", "CLIENT-SERVER-RECORD-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordTypeMapping_RecordElementMappings(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "RECORD-ELEMENT-MAPPING", "xml.namePlural", "RECORD-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingEClass, source, new String[]{"xml.name", "CLIENT-SERVER-TO-SIGNAL-GROUP-MAPPING", "xml.namePlural", "CLIENT-SERVER-TO-SIGNAL-GROUP-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_ApplicationErrors(), source, new String[]{"xml.name", "APPLICATION-ERROR", "xml.namePlural", "APPLICATION-ERRORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_ClientID(), source, new String[]{"xml.name", "CLIENT-ID", "xml.namePlural", "CLIENT-IDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_CompositeTypeMappings(), source, new String[]{"xml.name", "COMPOSITE-TYPE-MAPPING", "xml.namePlural", "COMPOSITE-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_EmptySignal(), source, new String[]{"xml.name", "EMPTY-SIGNAL", "xml.namePlural", "EMPTY-SIGNALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_MappedOperation(), source, new String[]{"xml.name", "MAPPED-OPERATION-IREF", "xml.namePlural", "MAPPED-OPERATION-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "4", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_PrimitiveTypeMappings(), source, new String[]{"xml.name", "PRIMITIVE-TYPE-MAPPING", "xml.namePlural", "PRIMITIVE-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_RequestGroup(), source, new String[]{"xml.name", "REQUEST-GROUP-REF", "xml.namePlural", "REQUEST-GROUP-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_ResponseGroup(), source, new String[]{"xml.name", "RESPONSE-GROUP-REF", "xml.namePlural", "RESPONSE-GROUP-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_SequenceCounter(), source, new String[]{"xml.name", "SEQUENCE-COUNTER", "xml.namePlural", "SEQUENCE-COUNTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.sequenceCounterMappingEClass, source, new String[]{"xml.name", "SEQUENCE-COUNTER-MAPPING", "xml.namePlural", "SEQUENCE-COUNTER-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSequenceCounterMapping_SystemSignal(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SYSTEM-SIGNAL-REF", "xml.namePlural", "SYSTEM-SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.emptySignalMappingEClass, source, new String[]{"xml.name", "EMPTY-SIGNAL-MAPPING", "xml.namePlural", "EMPTY-SIGNAL-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEmptySignalMapping_SystemSignal(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SYSTEM-SIGNAL-REF", "xml.namePlural", "SYSTEM-SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingEClass, source, new String[]{"xml.name", "SENDER-REC-ARRAY-ELEMENT-MAPPING", "xml.namePlural", "SENDER-REC-ARRAY-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_ArrayElement(), source, new String[]{"xml.name", "ARRAY-ELEMENT-IREF", "xml.namePlural", "ARRAY-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_ComplexTypeMapping(), source, new String[]{"xml.name", "COMPLEX-TYPE-MAPPING", "xml.namePlural", "COMPLEX-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_Signal(), source, new String[]{"xml.name", "SIGNAL-REF", "xml.namePlural", "SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderRecCompositeTypeMappingEClass, source, new String[]{"xml.name", "SENDER-REC-COMPOSITE-TYPE-MAPPING", "xml.namePlural", "SENDER-REC-COMPOSITE-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.senderRecArrayTypeMappingEClass, source, new String[]{"xml.name", "SENDER-REC-ARRAY-TYPE-MAPPING", "xml.namePlural", "SENDER-REC-ARRAY-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayTypeMapping_ArrayElementMappings(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "ARRAY-ELEMENT-MAPPING", "xml.namePlural", "ARRAY-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingEClass, source, new String[]{"xml.name", "SENDER-RECEIVER-TO-SIGNAL-GROUP-MAPPING", "xml.namePlural", "SENDER-RECEIVER-TO-SIGNAL-GROUP-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_DataElement(), source, new String[]{"xml.name", "DATA-ELEMENT-IREF", "xml.namePlural", "DATA-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_SignalGroup(), source, new String[]{"xml.name", "SIGNAL-GROUP-REF", "xml.namePlural", "SIGNAL-GROUP-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_TypeMapping(), source, new String[]{"xml.name", "TYPE-MAPPING", "xml.namePlural", "TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingEClass, source, new String[]{"xml.name", "SENDER-RECEIVER-TO-SIGNAL-MAPPING", "xml.namePlural", "SENDER-RECEIVER-TO-SIGNAL-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMapping_DataElement(), source, new String[]{"xml.name", "DATA-ELEMENT-IREF", "xml.namePlural", "DATA-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMapping_Signal(), source, new String[]{"xml.name", "SIGNAL-REF", "xml.namePlural", "SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingEClass, source, new String[]{"xml.name", "SENDER-REC-RECORD-ELEMENT-MAPPING", "xml.namePlural", "SENDER-REC-RECORD-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_ComplexTypeMapping(), source, new String[]{"xml.name", "COMPLEX-TYPE-MAPPING", "xml.namePlural", "COMPLEX-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_RecordElement(), source, new String[]{"xml.name", "RECORD-ELEMENT-IREF", "xml.namePlural", "RECORD-ELEMENT-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "1", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_Signal(), source, new String[]{"xml.name", "SIGNAL-REF", "xml.namePlural", "SIGNAL-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderRecRecordTypeMappingEClass, source, new String[]{"xml.name", "SENDER-REC-RECORD-TYPE-MAPPING", "xml.namePlural", "SENDER-REC-RECORD-TYPE-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordTypeMapping_RecordElementMappings(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "RECORD-ELEMENT-MAPPING", "xml.namePlural", "RECORD-ELEMENT-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.dataMappingEClass, source, new String[]{"xml.name", "DATA-MAPPING", "xml.namePlural", "DATA-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.applicationErrorMappingEClass, source, new String[]{"name", "APPLICATION-ERROR-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getApplicationErrorMapping_SystemSignal(), source, new String[]{"name", "SYSTEM-SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientIdMappingEClass, source, new String[]{"name", "CLIENT-ID-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientIdMapping_SystemSignal(), source, new String[]{"name", "SYSTEM-SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingEClass, source, new String[]{"name", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_ClientServerArrayElementMapping_arrayElement(), source, new String[]{"name", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING-ARRAY-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_ComplexTypeMapping(), source, new String[]{"name", "COMPLEX-TYPE-MAPPING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_Signal(), source, new String[]{"name", "SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerCompositeTypeMappingEClass, source, new String[]{"name", "CLIENT-SERVER-COMPOSITE-TYPE-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerArrayTypeMappingEClass, source, new String[]{"name", "CLIENT-SERVER-ARRAY-TYPE-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayTypeMapping_ArrayElementMappings(), source, new String[]{"name", "ARRAY-ELEMENT-MAPPINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingEClass, source, new String[]{"name", "CLIENT-SERVER-PRIMITIVE-TYPE-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMapping_Argument(), source, new String[]{"name", "ARGUMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMapping_SystemSignal(), source, new String[]{"name", "SYSTEM-SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingEClass, source, new String[]{"name", "CLIENT-SERVER-RECORD-ELEMENT-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_ComplexTypeMapping(), source, new String[]{"name", "COMPLEX-TYPE-MAPPING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_RecordElement(), source, new String[]{"name", "RECORD-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_Signal(), source, new String[]{"name", "SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerRecordTypeMappingEClass, source, new String[]{"name", "CLIENT-SERVER-RECORD-TYPE-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordTypeMapping_RecordElementMappings(), source, new String[]{"name", "RECORD-ELEMENT-MAPPINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingEClass, source, new String[]{"name", "CLIENT-SERVER-TO-SIGNAL-GROUP-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_ApplicationErrors(), source, new String[]{"name", "APPLICATION-ERRORS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_ClientID(), source, new String[]{"name", "CLIENT-ID", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_CompositeTypeMappings(), source, new String[]{"name", "COMPOSITE-TYPE-MAPPINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_EmptySignal(), source, new String[]{"name", "EMPTY-SIGNAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_MappedOperation(), source, new String[]{"name", "MAPPED-OPERATION-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_PrimitiveTypeMappings(), source, new String[]{"name", "PRIMITIVE-TYPE-MAPPINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_RequestGroup(), source, new String[]{"name", "REQUEST-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_ResponseGroup(), source, new String[]{"name", "RESPONSE-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_SequenceCounter(), source, new String[]{"name", "SEQUENCE-COUNTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.sequenceCounterMappingEClass, source, new String[]{"name", "SEQUENCE-COUNTER-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSequenceCounterMapping_SystemSignal(), source, new String[]{"name", "SYSTEM-SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.emptySignalMappingEClass, source, new String[]{"name", "EMPTY-SIGNAL-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEmptySignalMapping_SystemSignal(), source, new String[]{"name", "SYSTEM-SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingEClass, source, new String[]{"name", "SENDER-REC-ARRAY-ELEMENT-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_ArrayElement(), source, new String[]{"name", "ARRAY-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_ComplexTypeMapping(), source, new String[]{"name", "COMPLEX-TYPE-MAPPING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_Signal(), source, new String[]{"name", "SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderRecCompositeTypeMappingEClass, source, new String[]{"name", "SENDER-REC-COMPOSITE-TYPE-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderRecArrayTypeMappingEClass, source, new String[]{"name", "SENDER-REC-ARRAY-TYPE-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayTypeMapping_ArrayElementMappings(), source, new String[]{"name", "ARRAY-ELEMENT-MAPPINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingEClass, source, new String[]{"name", "SENDER-RECEIVER-TO-SIGNAL-GROUP-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_DataElement(), source, new String[]{"name", "DATA-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_SignalGroup(), source, new String[]{"name", "SIGNAL-GROUP-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_TypeMapping(), source, new String[]{"name", "TYPE-MAPPING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingEClass, source, new String[]{"name", "SENDER-RECEIVER-TO-SIGNAL-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMapping_DataElement(), source, new String[]{"name", "DATA-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMapping_Signal(), source, new String[]{"name", "SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingEClass, source, new String[]{"name", "SENDER-REC-RECORD-ELEMENT-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_ComplexTypeMapping(), source, new String[]{"name", "COMPLEX-TYPE-MAPPING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_RecordElement(), source, new String[]{"name", "RECORD-ELEMENT-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_Signal(), source, new String[]{"name", "SIGNAL-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderRecRecordTypeMappingEClass, source, new String[]{"name", "SENDER-REC-RECORD-TYPE-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordTypeMapping_RecordElementMappings(), source, new String[]{"name", "RECORD-ELEMENT-MAPPINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.dataMappingEClass, source, new String[]{"name", "DATA-MAPPING", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.applicationErrorMappingEClass, source, new String[]{"documentation", "In client server communication, the server may return any value within the application error range."});
        this.addAnnotation((ENamedElement)this.getApplicationErrorMapping_SystemSignal(), source, new String[]{"documentation", "Reference to the SystemSignal with the ApplicationError."});
        this.addAnnotation((ENamedElement)this.clientIdMappingEClass, source, new String[]{"documentation", "In case of a server on one ECU with multiple clients on other ECUs, the client server communication shall use different unique COM signals and signal groups for each client to allow the identification of the client associated with each system signal."});
        this.addAnnotation((ENamedElement)this.getClientIdMapping_SystemSignal(), source, new String[]{"documentation", "Reference to the SystemSignal with the ClientID."});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingEClass, source, new String[]{"documentation", "The ArrayElement may be a primitive one or a composite one. If the element is primitive, it will be mapped to the \"SystemSignal\" (multiplicity 1).\r\nIf the element is composite, there will be no mapping to the \"SystemSignal\" (multiplicity 0). In this case the \"ArrayElementMapping\" Element will aggregate the \"TypeMapping\" Element. In that way also the composite datatypes can be mapped to SystemSignals. "});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_ClientServerArrayElementMapping_arrayElement(), source, new String[]{"documentation", "Reference to an element in an record."});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_ComplexTypeMapping(), source, new String[]{"documentation", "This aggregation will be used if the element is  composite. "});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMapping_Signal(), source, new String[]{"documentation", "Reference to the system signal used to carry the primitive ArrayElement."});
        this.addAnnotation((ENamedElement)this.clientServerCompositeTypeMappingEClass, source, new String[]{"documentation", "Two mappings exist for the composite data types: \"ArrayTypeMapping\" and \"RecordTypeMapping\".\r\nIn both, a primitive datatype will be mapped to a system signal. \r\n\r\nBut it is also possible to combine the arrays and the records, so that an \"array\" could be an element of a \"record\" and in the same manner a \"record\" could be an element of an \"array\". Nesting these data types is also possible.\r\n\r\nIf an element of a composite data type is again a composite one, the \"CompositeTypeMapping\" element will be used one more time (aggregation between the ArrayElementMapping and CompositeTypeMapping or aggregation between the RecordElementMapping and CompositeTypeMapping). "});
        this.addAnnotation((ENamedElement)this.clientServerArrayTypeMappingEClass, source, new String[]{"documentation", "If the compositeType is an Array, the \"ArrayTypeMapping\" will be used. "});
        this.addAnnotation((ENamedElement)this.getClientServerArrayTypeMapping_ArrayElementMappings(), source, new String[]{"documentation", "Each ArrayElement must be mapped on a SystemSignal. "});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingEClass, source, new String[]{"documentation", "Mapping of an argument with a primitive datatype to a signal. "});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMapping_Argument(), source, new String[]{"documentation", "Reference to the argument, which ought to be sent over the Communication bus."});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMapping_SystemSignal(), source, new String[]{"documentation", "Reference to the system signal used to carry the argument "});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingEClass, source, new String[]{"documentation", "Mapping of a primitive record element to a SystemSignal. \r\n\r\nIf the element is composite, there will be no mapping (multiplicity 0). In this case the \"RecordElementMapping\" Element will aggregate the \"TypeMapping\" Element. In that way also the composite datatypes can be mapped to SystemSignals. "});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_ComplexTypeMapping(), source, new String[]{"documentation", "This aggregation will be used if the element is  composite. "});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_RecordElement(), source, new String[]{"documentation", "Reference to a element in a record."});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMapping_Signal(), source, new String[]{"documentation", "Reference to the system signal used to carry the primitive RecordElement."});
        this.addAnnotation((ENamedElement)this.clientServerRecordTypeMappingEClass, source, new String[]{"documentation", "If the compositeType is a Record, the \"RecordTypeMapping\" will be used. "});
        this.addAnnotation((ENamedElement)this.getClientServerRecordTypeMapping_RecordElementMappings(), source, new String[]{"documentation", "Each RecordElement must be mapped on a SystemSignal. "});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingEClass, source, new String[]{"documentation", "Mapping of client server operation arguments to signals of a signal group. Arguments with a primitive datatype will be mapped via the \"ClientServerPrimitiveTypeMapping\" element. \r\nArguments with composite datatypes will be mapped via the \"CompositeTypeMapping\" element. "});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_MappedOperation(), source, new String[]{"documentation", "Reference to the operation whose arguments should be transmitted via the communication bus."});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_PrimitiveTypeMappings(), source, new String[]{"documentation", "Mapping of an argument with a primitive datatype to a signal. "});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_RequestGroup(), source, new String[]{"documentation", "Reference to the signal group which contains the references to request signals used to transport the OUT arguments of the operation or the empty signal if the operation doesn't have OUT arguments."});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMapping_ResponseGroup(), source, new String[]{"documentation", "Reference to the signal group which contains the references to response signals used to transport the IN arguments of the operation."});
        this.addAnnotation((ENamedElement)this.sequenceCounterMappingEClass, source, new String[]{"documentation", "The purpose of sequence counters is to map a response to the correct request of a known client."});
        this.addAnnotation((ENamedElement)this.getSequenceCounterMapping_SystemSignal(), source, new String[]{"documentation", "Reference to the SystemSignal with the SequenceCounter."});
        this.addAnnotation((ENamedElement)this.emptySignalMappingEClass, source, new String[]{"documentation", "According to the COM Specification, signal groups without signals are allowed. These have a \"signalLength\" = 0. In this case there shall be an \"update-bit\" configured."});
        this.addAnnotation((ENamedElement)this.getEmptySignalMapping_SystemSignal(), source, new String[]{"documentation", "Reference to a SystemSignal with \"signalLength\" = 0 and an UpdateBit."});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingEClass, source, new String[]{"documentation", "The ArrayElement may be a primitive one or a composite one. If the element is primitive, it will be mapped to the \"SystemSignal\" (multiplicity 1).\r\nIf the element is composite, there will be no mapping to the \"SystemSignal\" (multiplicity 0). In this case the \"ArrayElementMapping\" Element will aggregate the \"TypeMapping\" Element. In that way also the composite datatypes can be mapped to SystemSignals. "});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_ArrayElement(), source, new String[]{"documentation", "Reference to an element in an array."});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_ComplexTypeMapping(), source, new String[]{"documentation", "This aggregation will be used if the element is  composite. "});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMapping_Signal(), source, new String[]{"documentation", "Reference to the system signal used to carry the primitive ArrayElement."});
        this.addAnnotation((ENamedElement)this.senderRecCompositeTypeMappingEClass, source, new String[]{"documentation", "Two mappings exist for the composite data types:\r\n\"ArrayTypeMapping\" and \"RecordTypeMapping\".\r\nIn both, a primitive datatype will be mapped to a system signal. \r\n\r\nBut it is also possible to combine the arrays and the records, so that an \"array\" could be an element of a \"record\" and in the same manner a \"record\" could be an element of an \"array\". Nesting these data types is also possible.\r\n\r\nIf an element of a composite data type is again a composite one, the \"CompositeTypeMapping\" element will be used one more time (aggregation between the ArrayElementMapping and CompositeTypeMapping or aggregation between the RecordElementMapping and CompositeTypeMapping). \r\n\r\n"});
        this.addAnnotation((ENamedElement)this.senderRecArrayTypeMappingEClass, source, new String[]{"documentation", "If the compositeType is an Array, the \"ArrayTypeMapping\" will be used. "});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayTypeMapping_ArrayElementMappings(), source, new String[]{"documentation", "Each ArrayElement must be mapped on a SystemSignal. "});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingEClass, source, new String[]{"documentation", "Mapping of a sender receiver communication data element with a composite datatype to a signal group."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_DataElement(), source, new String[]{"documentation", "Reference to the data element, which ought to be sent over the Communication bus. "});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMapping_SignalGroup(), source, new String[]{"documentation", "Reference to the signal group, which contain all primitive datatypes of the composite type"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingEClass, source, new String[]{"documentation", "Mapping of a sender receiver communication data element with a primitive datatype to a signal. If the data element has to be transmitted in several signals (e.g. if the data is sent out to different receivers in different signals), one have to define several mappings. "});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMapping_DataElement(), source, new String[]{"documentation", "Reference to the data element, which ought to be sent over the Communication bus. This DataElement is described in the Software Component Template."});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMapping_Signal(), source, new String[]{"documentation", "Reference to the system signal used to carry the data element. "});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingEClass, source, new String[]{"documentation", "Mapping of a primitive record element to a SystemSignal. \r\n\r\nIf the element is composite, there will be no mapping (multiplicity 0). In this case the \"RecordElementMapping\" Element will aggregate the \"TypeMapping\" Element. In that way also the composite datatypes can be mapped to SystemSignals. "});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_ComplexTypeMapping(), source, new String[]{"documentation", "This aggregation will be used if the element is  composite. "});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_RecordElement(), source, new String[]{"documentation", "Reference to an element in a record."});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMapping_Signal(), source, new String[]{"documentation", "Reference to the system signal used to carry the primitive RecordElement."});
        this.addAnnotation((ENamedElement)this.senderRecRecordTypeMappingEClass, source, new String[]{"documentation", "If the compositeType is a Record, the \"RecordTypeMapping\" will be used. "});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordTypeMapping_RecordElementMappings(), source, new String[]{"documentation", "Each RecordElement must be mapped on a SystemSignal. "});
        this.addAnnotation((ENamedElement)this.dataMappingEClass, source, new String[]{"documentation", "Mapping of port elements (data elements and parameters) to frames and signals."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.applicationErrorMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientIdMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerCompositeTypeMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerArrayTypeMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerRecordTypeMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.sequenceCounterMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.emptySignalMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderRecCompositeTypeMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderRecArrayTypeMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.senderRecRecordTypeMappingEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.dataMappingEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.applicationErrorMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientIdMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerCompositeTypeMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.sequenceCounterMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.emptySignalMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderRecCompositeTypeMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.dataMappingEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ClientServerCompositeTypeMappingAnnotations() {
        String source = "TaggedValuesOfGeneralization_ClientServerCompositeTypeMapping";
        this.addAnnotation((ENamedElement)this.clientServerArrayTypeMappingEClass, source, new String[]{"Name", "", "GUID", "{578E6794-678E-422c-AF5C-C53E70B0C0D6}", "Id", "-532698336", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerRecordTypeMappingEClass, source, new String[]{"Name", "", "GUID", "{0AE41F42-E699-482d-970B-39F40E1EAA57}", "Id", "-957360991", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DataMappingAnnotations() {
        String source = "TaggedValuesOfGeneralization_DataMapping";
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingEClass, source, new String[]{"Name", "", "GUID", "{7BD43FD9-A512-4002-83B9-DCB0B3886719}", "Id", "478583207", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingEClass, source, new String[]{"Name", "", "GUID", "{FBA62BCA-6EA6-4c89-B253-79996C0F3C8B}", "Id", "-1752363692", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingEClass, source, new String[]{"Name", "", "GUID", "{20FBF90C-BF16-4ff5-8B42-3C57F972CFF2}", "Id", "-861561414", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SenderRecCompositeTypeMappingAnnotations() {
        String source = "TaggedValuesOfGeneralization_SenderRecCompositeTypeMapping";
        this.addAnnotation((ENamedElement)this.senderRecArrayTypeMappingEClass, source, new String[]{"Name", "", "GUID", "{26D50AEC-E560-4e1f-BF47-13FB69CEBDA2}", "Id", "1761348157", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderRecRecordTypeMappingEClass, source, new String[]{"Name", "", "GUID", "{EF91ACB0-0578-4091-8A79-2BDAA18092C4}", "Id", "-276204372", "xml.sequenceOffset", "0"});
    }
}

