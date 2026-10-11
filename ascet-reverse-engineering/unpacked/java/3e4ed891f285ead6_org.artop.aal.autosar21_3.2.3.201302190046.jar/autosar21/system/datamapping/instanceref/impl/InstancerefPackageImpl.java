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
package autosar21.system.datamapping.instanceref.impl;

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
import autosar21.system.datamapping.instanceref.ClientServerArrayElementMappingArrayElement;
import autosar21.system.datamapping.instanceref.ClientServerPrimitiveTypeMappingArgument;
import autosar21.system.datamapping.instanceref.ClientServerRecordElementMappingRecordElement;
import autosar21.system.datamapping.instanceref.ClientServerToSignalGroupMappingMappedOperation;
import autosar21.system.datamapping.instanceref.IndexedArrayElement;
import autosar21.system.datamapping.instanceref.IndexedDataPrototype;
import autosar21.system.datamapping.instanceref.InstancerefFactory;
import autosar21.system.datamapping.instanceref.InstancerefPackage;
import autosar21.system.datamapping.instanceref.SenderRecArrayElementMappingArrayElement;
import autosar21.system.datamapping.instanceref.SenderRecRecordElementMappingRecordElement;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalGroupMappingDataElement;
import autosar21.system.datamapping.instanceref.SenderReceiverToSignalMappingDataElement;
import autosar21.system.impl.SystemPackageImpl;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.impl.PdustructurePackageImpl;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.impl.SignalpathsPackageImpl;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.swmapping.impl.SwmappingPackageImpl;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.impl.SystemsignalPackageImpl;
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

public class InstancerefPackageImpl
extends EPackageImpl
implements InstancerefPackage {
    private EClass clientServerArrayElementMappingArrayElementEClass = null;
    private EClass indexedDataPrototypeEClass = null;
    private EClass indexedArrayElementEClass = null;
    private EClass clientServerPrimitiveTypeMappingArgumentEClass = null;
    private EClass clientServerRecordElementMappingRecordElementEClass = null;
    private EClass clientServerToSignalGroupMappingMappedOperationEClass = null;
    private EClass senderRecArrayElementMappingArrayElementEClass = null;
    private EClass senderReceiverToSignalGroupMappingDataElementEClass = null;
    private EClass senderReceiverToSignalMappingDataElementEClass = null;
    private EClass senderRecRecordElementMappingRecordElementEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private InstancerefPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/s/dm/r", (EFactory)InstancerefFactory.eINSTANCE);
    }

    public static InstancerefPackage init() {
        if (isInited) {
            return (InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r");
        }
        InstancerefPackageImpl theInstancerefPackage = (InstancerefPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/dm/r") instanceof InstancerefPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/dm/r") : new InstancerefPackageImpl());
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
        autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_1 = (autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c/r") instanceof autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c/r") : autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage.eINSTANCE);
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
        autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_2 = (autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/mp/r") instanceof autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/mp/r") : autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage.eINSTANCE);
        ConstantsPackageImpl theConstantsPackage = (ConstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/c") instanceof ConstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/c") : ConstantsPackage.eINSTANCE);
        ValuemodelPackageImpl theValuemodelPackage = (ValuemodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/vm") instanceof ValuemodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/vm") : ValuemodelPackage.eINSTANCE);
        LocalconstraintsPackageImpl theLocalconstraintsPackage = (LocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/lc") instanceof LocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/lc") : LocalconstraintsPackage.eINSTANCE);
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/cm") : ComputationmethodPackage.eINSTANCE);
        UnitsPackageImpl theUnitsPackage = (UnitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/u") instanceof UnitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/u") : UnitsPackage.eINSTANCE);
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/d") : DatatypesPackage.eINSTANCE);
        CompositionPackageImpl theCompositionPackage = (CompositionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition") instanceof CompositionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition") : CompositionPackage.eINSTANCE);
        autosar21.swcomponent.composition.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_3 = (autosar21.swcomponent.composition.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition/r") instanceof autosar21.swcomponent.composition.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition/r") : autosar21.swcomponent.composition.instanceref.InstancerefPackage.eINSTANCE);
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa") : ApplicationattributesPackage.eINSTANCE);
        autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_4 = (autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa/r") instanceof autosar21.swcomponent.applicationattributes.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/aa/r") : autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage.eINSTANCE);
        PortinterfacePackageImpl thePortinterfacePackage = (PortinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/pi") instanceof PortinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/pi") : PortinterfacePackage.eINSTANCE);
        ModedeclarationPackageImpl theModedeclarationPackage = (ModedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md") instanceof ModedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md") : ModedeclarationPackage.eINSTANCE);
        autosar21.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_5 = (autosar21.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md/r") instanceof autosar21.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/md/r") : autosar21.swcomponent.modedeclaration.instanceref.InstancerefPackage.eINSTANCE);
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") : autosar21.swcomponent.communication.CommunicationPackage.eINSTANCE);
        autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_6 = (autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/r") instanceof autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/r") : autosar21.swcomponent.communication.instanceref.InstancerefPackage.eINSTANCE);
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
        autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_7 = (autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg/r") instanceof autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg/r") : autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.InstancerefPackage.eINSTANCE);
        ServercallPackageImpl theServercallPackage = (ServercallPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc") instanceof ServercallPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc") : ServercallPackage.eINSTANCE);
        autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_8 = (autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc/r") instanceof autosar21.swcomponent.internalbehavior.servercall.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc/r") : autosar21.swcomponent.internalbehavior.servercall.instanceref.InstancerefPackage.eINSTANCE);
        DataelementsPackageImpl theDataelementsPackage = (DataelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de") instanceof DataelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de") : DataelementsPackage.eINSTANCE);
        autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_9 = (autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de/r") instanceof autosar21.swcomponent.internalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de/r") : autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefPackage.eINSTANCE);
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee") : RteeventsPackage.eINSTANCE);
        autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_10 = (autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee/r") instanceof autosar21.swcomponent.internalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee/r") : autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage.eINSTANCE);
        PerinstancememoryPackageImpl thePerinstancememoryPackage = (PerinstancememoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/pim") instanceof PerinstancememoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/pim") : PerinstancememoryPackage.eINSTANCE);
        ImplementationPackageImpl theImplementationPackage = (ImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/i") instanceof ImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/i") : ImplementationPackage.eINSTANCE);
        ServicesPackageImpl theServicesPackage = (ServicesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/s") instanceof ServicesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/s") : ServicesPackage.eINSTANCE);
        ComponentsPackageImpl theComponentsPackage = (ComponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components") instanceof ComponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components") : ComponentsPackage.eINSTANCE);
        SystemPackageImpl theSystemPackage = (SystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s") instanceof SystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s") : SystemPackage.eINSTANCE);
        autosar21.system.communication.impl.CommunicationPackageImpl theCommunicationPackage_1 = (autosar21.system.communication.impl.CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") instanceof autosar21.system.communication.impl.CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") : CommunicationPackage.eINSTANCE);
        autosar21.system.communication.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_11 = (autosar21.system.communication.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c/r") instanceof autosar21.system.communication.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c/r") : autosar21.system.communication.instanceref.InstancerefPackage.eINSTANCE);
        TopologyPackageImpl theTopologyPackage = (TopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t") instanceof TopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t") : TopologyPackage.eINSTANCE);
        PdustructurePackageImpl thePdustructurePackage = (PdustructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/pdus") instanceof PdustructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/pdus") : PdustructurePackage.eINSTANCE);
        SystemsignalPackageImpl theSystemsignalPackage = (SystemsignalPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss") instanceof SystemsignalPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss") : SystemsignalPackage.eINSTANCE);
        autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_12 = (autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss/r") instanceof autosar21.system.systemsignal.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/ss/r") : autosar21.system.systemsignal.instanceref.InstancerefPackage.eINSTANCE);
        CommunicationprotocolPackageImpl theCommunicationprotocolPackage = (CommunicationprotocolPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp") instanceof CommunicationprotocolPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp") : CommunicationprotocolPackage.eINSTANCE);
        autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_13 = (autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp/r") instanceof autosar21.system.communicationprotocol.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/cp/r") : autosar21.system.communicationprotocol.instanceref.InstancerefPackage.eINSTANCE);
        SwmappingPackageImpl theSwmappingPackage = (SwmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw") instanceof SwmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw") : SwmappingPackage.eINSTANCE);
        autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_14 = (autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw/r") instanceof autosar21.system.swmapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sw/r") : autosar21.system.swmapping.instanceref.InstancerefPackage.eINSTANCE);
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm") : DatamappingPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") : SignalpathsPackage.eINSTANCE);
        autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_15 = (autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") instanceof autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") : autosar21.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE);
        BswmodulePackageImpl theBswmodulePackage = (BswmodulePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") instanceof BswmodulePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") : BswmodulePackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_16 = (autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") instanceof autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") : autosar21.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        theInstancerefPackage.createPackageContents();
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
        theInstancerefPackage_1.createPackageContents();
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
        theInstancerefPackage_2.createPackageContents();
        theConstantsPackage.createPackageContents();
        theValuemodelPackage.createPackageContents();
        theLocalconstraintsPackage.createPackageContents();
        theComputationmethodPackage.createPackageContents();
        theUnitsPackage.createPackageContents();
        theDatatypesPackage.createPackageContents();
        theCompositionPackage.createPackageContents();
        theInstancerefPackage_3.createPackageContents();
        theApplicationattributesPackage.createPackageContents();
        theInstancerefPackage_4.createPackageContents();
        thePortinterfacePackage.createPackageContents();
        theModedeclarationPackage.createPackageContents();
        theInstancerefPackage_5.createPackageContents();
        theCommunicationPackage.createPackageContents();
        theInstancerefPackage_6.createPackageContents();
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
        theInstancerefPackage_7.createPackageContents();
        theServercallPackage.createPackageContents();
        theInstancerefPackage_8.createPackageContents();
        theDataelementsPackage.createPackageContents();
        theInstancerefPackage_9.createPackageContents();
        theRteeventsPackage.createPackageContents();
        theInstancerefPackage_10.createPackageContents();
        thePerinstancememoryPackage.createPackageContents();
        theImplementationPackage.createPackageContents();
        theServicesPackage.createPackageContents();
        theComponentsPackage.createPackageContents();
        theSystemPackage.createPackageContents();
        theCommunicationPackage_1.createPackageContents();
        theInstancerefPackage_11.createPackageContents();
        theTopologyPackage.createPackageContents();
        thePdustructurePackage.createPackageContents();
        theSystemsignalPackage.createPackageContents();
        theInstancerefPackage_12.createPackageContents();
        theCommunicationprotocolPackage.createPackageContents();
        theInstancerefPackage_13.createPackageContents();
        theSwmappingPackage.createPackageContents();
        theInstancerefPackage_14.createPackageContents();
        theDatamappingPackage.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theInstancerefPackage_15.createPackageContents();
        theBswmodulePackage.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_16.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theInstancerefPackage.initializePackageContents();
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
        theInstancerefPackage_1.initializePackageContents();
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
        theInstancerefPackage_2.initializePackageContents();
        theConstantsPackage.initializePackageContents();
        theValuemodelPackage.initializePackageContents();
        theLocalconstraintsPackage.initializePackageContents();
        theComputationmethodPackage.initializePackageContents();
        theUnitsPackage.initializePackageContents();
        theDatatypesPackage.initializePackageContents();
        theCompositionPackage.initializePackageContents();
        theInstancerefPackage_3.initializePackageContents();
        theApplicationattributesPackage.initializePackageContents();
        theInstancerefPackage_4.initializePackageContents();
        thePortinterfacePackage.initializePackageContents();
        theModedeclarationPackage.initializePackageContents();
        theInstancerefPackage_5.initializePackageContents();
        theCommunicationPackage.initializePackageContents();
        theInstancerefPackage_6.initializePackageContents();
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
        theInstancerefPackage_7.initializePackageContents();
        theServercallPackage.initializePackageContents();
        theInstancerefPackage_8.initializePackageContents();
        theDataelementsPackage.initializePackageContents();
        theInstancerefPackage_9.initializePackageContents();
        theRteeventsPackage.initializePackageContents();
        theInstancerefPackage_10.initializePackageContents();
        thePerinstancememoryPackage.initializePackageContents();
        theImplementationPackage.initializePackageContents();
        theServicesPackage.initializePackageContents();
        theComponentsPackage.initializePackageContents();
        theSystemPackage.initializePackageContents();
        theCommunicationPackage_1.initializePackageContents();
        theInstancerefPackage_11.initializePackageContents();
        theTopologyPackage.initializePackageContents();
        thePdustructurePackage.initializePackageContents();
        theSystemsignalPackage.initializePackageContents();
        theInstancerefPackage_12.initializePackageContents();
        theCommunicationprotocolPackage.initializePackageContents();
        theInstancerefPackage_13.initializePackageContents();
        theSwmappingPackage.initializePackageContents();
        theInstancerefPackage_14.initializePackageContents();
        theDatamappingPackage.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theInstancerefPackage_15.initializePackageContents();
        theBswmodulePackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_16.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theInstancerefPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/s/dm/r", (Object)theInstancerefPackage);
        return theInstancerefPackage;
    }

    public EClass getClientServerArrayElementMappingArrayElement() {
        return this.clientServerArrayElementMappingArrayElementEClass;
    }

    public EReference getClientServerArrayElementMappingArrayElement_ClientServerArrayElementMapping() {
        return (EReference)this.clientServerArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerArrayElementMappingArrayElement_SoftwareComposition() {
        return (EReference)this.clientServerArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerArrayElementMappingArrayElement_ComponentPrototypes() {
        return (EReference)this.clientServerArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(2);
    }

    public EReference getClientServerArrayElementMappingArrayElement_PortPrototype() {
        return (EReference)this.clientServerArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(3);
    }

    public EReference getClientServerArrayElementMappingArrayElement_ArgumentPrototype() {
        return (EReference)this.clientServerArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(4);
    }

    public EReference getClientServerArrayElementMappingArrayElement_NestingDataPrototypes() {
        return (EReference)this.clientServerArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(5);
    }

    public EReference getClientServerArrayElementMappingArrayElement_ArrayElement() {
        return (EReference)this.clientServerArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(6);
    }

    public EClass getIndexedDataPrototype() {
        return this.indexedDataPrototypeEClass;
    }

    public EAttribute getIndexedDataPrototype_Index() {
        return (EAttribute)this.indexedDataPrototypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getIndexedDataPrototype_NestingDataPrototype() {
        return (EReference)this.indexedDataPrototypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getIndexedArrayElement() {
        return this.indexedArrayElementEClass;
    }

    public EAttribute getIndexedArrayElement_Index() {
        return (EAttribute)this.indexedArrayElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getIndexedArrayElement_ArrayElement() {
        return (EReference)this.indexedArrayElementEClass.getEStructuralFeatures().get(1);
    }

    public EClass getClientServerPrimitiveTypeMappingArgument() {
        return this.clientServerPrimitiveTypeMappingArgumentEClass;
    }

    public EReference getClientServerPrimitiveTypeMappingArgument_ClientServerPrimitiveTypeMapping() {
        return (EReference)this.clientServerPrimitiveTypeMappingArgumentEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerPrimitiveTypeMappingArgument_SoftwareComposition() {
        return (EReference)this.clientServerPrimitiveTypeMappingArgumentEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerPrimitiveTypeMappingArgument_ComponentPrototypes() {
        return (EReference)this.clientServerPrimitiveTypeMappingArgumentEClass.getEStructuralFeatures().get(2);
    }

    public EReference getClientServerPrimitiveTypeMappingArgument_PortPrototype() {
        return (EReference)this.clientServerPrimitiveTypeMappingArgumentEClass.getEStructuralFeatures().get(3);
    }

    public EReference getClientServerPrimitiveTypeMappingArgument_Argument() {
        return (EReference)this.clientServerPrimitiveTypeMappingArgumentEClass.getEStructuralFeatures().get(4);
    }

    public EClass getClientServerRecordElementMappingRecordElement() {
        return this.clientServerRecordElementMappingRecordElementEClass;
    }

    public EReference getClientServerRecordElementMappingRecordElement_ClientServerRecordElementMapping() {
        return (EReference)this.clientServerRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerRecordElementMappingRecordElement_SoftwareComposition() {
        return (EReference)this.clientServerRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerRecordElementMappingRecordElement_ComponentPrototypes() {
        return (EReference)this.clientServerRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(2);
    }

    public EReference getClientServerRecordElementMappingRecordElement_PortPrototype() {
        return (EReference)this.clientServerRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(3);
    }

    public EReference getClientServerRecordElementMappingRecordElement_ArgumentPrototype() {
        return (EReference)this.clientServerRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(4);
    }

    public EReference getClientServerRecordElementMappingRecordElement_NestingDataPrototypes() {
        return (EReference)this.clientServerRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(5);
    }

    public EReference getClientServerRecordElementMappingRecordElement_RecordElement() {
        return (EReference)this.clientServerRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(6);
    }

    public EClass getClientServerToSignalGroupMappingMappedOperation() {
        return this.clientServerToSignalGroupMappingMappedOperationEClass;
    }

    public EReference getClientServerToSignalGroupMappingMappedOperation_ClientServerToSignalGroupMapping() {
        return (EReference)this.clientServerToSignalGroupMappingMappedOperationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype() {
        return (EReference)this.clientServerToSignalGroupMappingMappedOperationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes() {
        return (EReference)this.clientServerToSignalGroupMappingMappedOperationEClass.getEStructuralFeatures().get(2);
    }

    public EReference getClientServerToSignalGroupMappingMappedOperation_PortPrototype() {
        return (EReference)this.clientServerToSignalGroupMappingMappedOperationEClass.getEStructuralFeatures().get(3);
    }

    public EReference getClientServerToSignalGroupMappingMappedOperation_Operation() {
        return (EReference)this.clientServerToSignalGroupMappingMappedOperationEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSenderRecArrayElementMappingArrayElement() {
        return this.senderRecArrayElementMappingArrayElementEClass;
    }

    public EReference getSenderRecArrayElementMappingArrayElement_SenderRecArrayElementMapping() {
        return (EReference)this.senderRecArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderRecArrayElementMappingArrayElement_SoftwareComposition() {
        return (EReference)this.senderRecArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSenderRecArrayElementMappingArrayElement_ComponentPrototypes() {
        return (EReference)this.senderRecArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSenderRecArrayElementMappingArrayElement_PortPrototype() {
        return (EReference)this.senderRecArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSenderRecArrayElementMappingArrayElement_DataElementPrototype() {
        return (EReference)this.senderRecArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(4);
    }

    public EReference getSenderRecArrayElementMappingArrayElement_NestingDataPrototypes() {
        return (EReference)this.senderRecArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSenderRecArrayElementMappingArrayElement_ArrayElement() {
        return (EReference)this.senderRecArrayElementMappingArrayElementEClass.getEStructuralFeatures().get(6);
    }

    public EClass getSenderReceiverToSignalGroupMappingDataElement() {
        return this.senderReceiverToSignalGroupMappingDataElementEClass;
    }

    public EReference getSenderReceiverToSignalGroupMappingDataElement_SenderReceiverToSignalGroupMapping() {
        return (EReference)this.senderReceiverToSignalGroupMappingDataElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderReceiverToSignalGroupMappingDataElement_SoftwareComposition() {
        return (EReference)this.senderReceiverToSignalGroupMappingDataElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSenderReceiverToSignalGroupMappingDataElement_ComponentPrototypes() {
        return (EReference)this.senderReceiverToSignalGroupMappingDataElementEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSenderReceiverToSignalGroupMappingDataElement_PortPrototype() {
        return (EReference)this.senderReceiverToSignalGroupMappingDataElementEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSenderReceiverToSignalGroupMappingDataElement_DataElement() {
        return (EReference)this.senderReceiverToSignalGroupMappingDataElementEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSenderReceiverToSignalMappingDataElement() {
        return this.senderReceiverToSignalMappingDataElementEClass;
    }

    public EReference getSenderReceiverToSignalMappingDataElement_SenderReceiverToSignalMapping() {
        return (EReference)this.senderReceiverToSignalMappingDataElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderReceiverToSignalMappingDataElement_SoftwareComposition() {
        return (EReference)this.senderReceiverToSignalMappingDataElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSenderReceiverToSignalMappingDataElement_ComponentPrototypes() {
        return (EReference)this.senderReceiverToSignalMappingDataElementEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSenderReceiverToSignalMappingDataElement_PortPrototype() {
        return (EReference)this.senderReceiverToSignalMappingDataElementEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSenderReceiverToSignalMappingDataElement_DataElement() {
        return (EReference)this.senderReceiverToSignalMappingDataElementEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSenderRecRecordElementMappingRecordElement() {
        return this.senderRecRecordElementMappingRecordElementEClass;
    }

    public EReference getSenderRecRecordElementMappingRecordElement_SenderRecRecordElementMapping() {
        return (EReference)this.senderRecRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSenderRecRecordElementMappingRecordElement_SoftwareComposition() {
        return (EReference)this.senderRecRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSenderRecRecordElementMappingRecordElement_ComponentPrototypes() {
        return (EReference)this.senderRecRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSenderRecRecordElementMappingRecordElement_PortPrototype() {
        return (EReference)this.senderRecRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSenderRecRecordElementMappingRecordElement_DataElementPrototype() {
        return (EReference)this.senderRecRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(4);
    }

    public EReference getSenderRecRecordElementMappingRecordElement_NestingDataPrototypes() {
        return (EReference)this.senderRecRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSenderRecRecordElementMappingRecordElement_RecordElement() {
        return (EReference)this.senderRecRecordElementMappingRecordElementEClass.getEStructuralFeatures().get(6);
    }

    public InstancerefFactory getInstancerefFactory() {
        return (InstancerefFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.clientServerArrayElementMappingArrayElementEClass = this.createEClass(0);
        this.createEReference(this.clientServerArrayElementMappingArrayElementEClass, 4);
        this.createEReference(this.clientServerArrayElementMappingArrayElementEClass, 5);
        this.createEReference(this.clientServerArrayElementMappingArrayElementEClass, 6);
        this.createEReference(this.clientServerArrayElementMappingArrayElementEClass, 7);
        this.createEReference(this.clientServerArrayElementMappingArrayElementEClass, 8);
        this.createEReference(this.clientServerArrayElementMappingArrayElementEClass, 9);
        this.createEReference(this.clientServerArrayElementMappingArrayElementEClass, 10);
        this.indexedDataPrototypeEClass = this.createEClass(1);
        this.createEAttribute(this.indexedDataPrototypeEClass, 4);
        this.createEReference(this.indexedDataPrototypeEClass, 5);
        this.indexedArrayElementEClass = this.createEClass(2);
        this.createEAttribute(this.indexedArrayElementEClass, 4);
        this.createEReference(this.indexedArrayElementEClass, 5);
        this.clientServerPrimitiveTypeMappingArgumentEClass = this.createEClass(3);
        this.createEReference(this.clientServerPrimitiveTypeMappingArgumentEClass, 4);
        this.createEReference(this.clientServerPrimitiveTypeMappingArgumentEClass, 5);
        this.createEReference(this.clientServerPrimitiveTypeMappingArgumentEClass, 6);
        this.createEReference(this.clientServerPrimitiveTypeMappingArgumentEClass, 7);
        this.createEReference(this.clientServerPrimitiveTypeMappingArgumentEClass, 8);
        this.clientServerRecordElementMappingRecordElementEClass = this.createEClass(4);
        this.createEReference(this.clientServerRecordElementMappingRecordElementEClass, 4);
        this.createEReference(this.clientServerRecordElementMappingRecordElementEClass, 5);
        this.createEReference(this.clientServerRecordElementMappingRecordElementEClass, 6);
        this.createEReference(this.clientServerRecordElementMappingRecordElementEClass, 7);
        this.createEReference(this.clientServerRecordElementMappingRecordElementEClass, 8);
        this.createEReference(this.clientServerRecordElementMappingRecordElementEClass, 9);
        this.createEReference(this.clientServerRecordElementMappingRecordElementEClass, 10);
        this.clientServerToSignalGroupMappingMappedOperationEClass = this.createEClass(5);
        this.createEReference(this.clientServerToSignalGroupMappingMappedOperationEClass, 4);
        this.createEReference(this.clientServerToSignalGroupMappingMappedOperationEClass, 5);
        this.createEReference(this.clientServerToSignalGroupMappingMappedOperationEClass, 6);
        this.createEReference(this.clientServerToSignalGroupMappingMappedOperationEClass, 7);
        this.createEReference(this.clientServerToSignalGroupMappingMappedOperationEClass, 8);
        this.senderRecArrayElementMappingArrayElementEClass = this.createEClass(6);
        this.createEReference(this.senderRecArrayElementMappingArrayElementEClass, 4);
        this.createEReference(this.senderRecArrayElementMappingArrayElementEClass, 5);
        this.createEReference(this.senderRecArrayElementMappingArrayElementEClass, 6);
        this.createEReference(this.senderRecArrayElementMappingArrayElementEClass, 7);
        this.createEReference(this.senderRecArrayElementMappingArrayElementEClass, 8);
        this.createEReference(this.senderRecArrayElementMappingArrayElementEClass, 9);
        this.createEReference(this.senderRecArrayElementMappingArrayElementEClass, 10);
        this.senderReceiverToSignalGroupMappingDataElementEClass = this.createEClass(7);
        this.createEReference(this.senderReceiverToSignalGroupMappingDataElementEClass, 4);
        this.createEReference(this.senderReceiverToSignalGroupMappingDataElementEClass, 5);
        this.createEReference(this.senderReceiverToSignalGroupMappingDataElementEClass, 6);
        this.createEReference(this.senderReceiverToSignalGroupMappingDataElementEClass, 7);
        this.createEReference(this.senderReceiverToSignalGroupMappingDataElementEClass, 8);
        this.senderReceiverToSignalMappingDataElementEClass = this.createEClass(8);
        this.createEReference(this.senderReceiverToSignalMappingDataElementEClass, 4);
        this.createEReference(this.senderReceiverToSignalMappingDataElementEClass, 5);
        this.createEReference(this.senderReceiverToSignalMappingDataElementEClass, 6);
        this.createEReference(this.senderReceiverToSignalMappingDataElementEClass, 7);
        this.createEReference(this.senderReceiverToSignalMappingDataElementEClass, 8);
        this.senderRecRecordElementMappingRecordElementEClass = this.createEClass(9);
        this.createEReference(this.senderRecRecordElementMappingRecordElementEClass, 4);
        this.createEReference(this.senderRecRecordElementMappingRecordElementEClass, 5);
        this.createEReference(this.senderRecRecordElementMappingRecordElementEClass, 6);
        this.createEReference(this.senderRecRecordElementMappingRecordElementEClass, 7);
        this.createEReference(this.senderRecRecordElementMappingRecordElementEClass, 8);
        this.createEReference(this.senderRecRecordElementMappingRecordElementEClass, 9);
        this.createEReference(this.senderRecRecordElementMappingRecordElementEClass, 10);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("instanceref");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/s/dm/r");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        DatamappingPackage theDatamappingPackage = (DatamappingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm");
        SystemPackage theSystemPackage = (SystemPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s");
        CompositionPackage theCompositionPackage = (CompositionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components");
        PortinterfacePackage thePortinterfacePackage = (PortinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/pi");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        DatatypesPackage theDatatypesPackage = (DatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/d");
        this.clientServerArrayElementMappingArrayElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.indexedDataPrototypeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.indexedArrayElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerPrimitiveTypeMappingArgumentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerRecordElementMappingRecordElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.clientServerToSignalGroupMappingMappedOperationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderRecArrayElementMappingArrayElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderReceiverToSignalGroupMappingDataElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderReceiverToSignalMappingDataElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.senderRecRecordElementMappingRecordElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.clientServerArrayElementMappingArrayElementEClass, ClientServerArrayElementMappingArrayElement.class, "ClientServerArrayElementMappingArrayElement", false, false, true);
        this.initEReference(this.getClientServerArrayElementMappingArrayElement_ClientServerArrayElementMapping(), (EClassifier)theDatamappingPackage.getClientServerArrayElementMapping(), theDatamappingPackage.getClientServerArrayElementMapping_ClientServerArrayElementMapping_arrayElement(), "clientServerArrayElementMapping", null, 0, 1, ClientServerArrayElementMappingArrayElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMappingArrayElement_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, ClientServerArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMappingArrayElement_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, ClientServerArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMappingArrayElement_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, ClientServerArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMappingArrayElement_ArgumentPrototype(), (EClassifier)thePortinterfacePackage.getArgumentPrototype(), null, "argumentPrototype", null, 0, 1, ClientServerArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMappingArrayElement_NestingDataPrototypes(), (EClassifier)this.getIndexedDataPrototype(), null, "nestingDataPrototypes", null, 0, -1, ClientServerArrayElementMappingArrayElement.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerArrayElementMappingArrayElement_ArrayElement(), (EClassifier)this.getIndexedArrayElement(), null, "arrayElement", null, 1, 1, ClientServerArrayElementMappingArrayElement.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.indexedDataPrototypeEClass, IndexedDataPrototype.class, "IndexedDataPrototype", false, false, true);
        this.initEAttribute(this.getIndexedDataPrototype_Index(), (EClassifier)thePrimitivetypesPackage.getInteger(), "index", "0", 0, 1, IndexedDataPrototype.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getIndexedDataPrototype_NestingDataPrototype(), (EClassifier)theDatatypesPackage.getDataPrototype(), null, "nestingDataPrototype", null, 0, 1, IndexedDataPrototype.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.indexedArrayElementEClass, IndexedArrayElement.class, "IndexedArrayElement", false, false, true);
        this.initEAttribute(this.getIndexedArrayElement_Index(), (EClassifier)thePrimitivetypesPackage.getInteger(), "index", "0", 0, 1, IndexedArrayElement.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getIndexedArrayElement_ArrayElement(), (EClassifier)theDatatypesPackage.getArrayElement(), null, "arrayElement", null, 0, 1, IndexedArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientServerPrimitiveTypeMappingArgumentEClass, ClientServerPrimitiveTypeMappingArgument.class, "ClientServerPrimitiveTypeMappingArgument", false, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMappingArgument_ClientServerPrimitiveTypeMapping(), (EClassifier)theDatamappingPackage.getClientServerPrimitiveTypeMapping(), theDatamappingPackage.getClientServerPrimitiveTypeMapping_Argument(), "clientServerPrimitiveTypeMapping", null, 0, 1, ClientServerPrimitiveTypeMappingArgument.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMappingArgument_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, ClientServerPrimitiveTypeMappingArgument.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMappingArgument_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, ClientServerPrimitiveTypeMappingArgument.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMappingArgument_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, ClientServerPrimitiveTypeMappingArgument.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerPrimitiveTypeMappingArgument_Argument(), (EClassifier)thePortinterfacePackage.getArgumentPrototype(), null, "argument", null, 1, 1, ClientServerPrimitiveTypeMappingArgument.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientServerRecordElementMappingRecordElementEClass, ClientServerRecordElementMappingRecordElement.class, "ClientServerRecordElementMappingRecordElement", false, false, true);
        this.initEReference(this.getClientServerRecordElementMappingRecordElement_ClientServerRecordElementMapping(), (EClassifier)theDatamappingPackage.getClientServerRecordElementMapping(), theDatamappingPackage.getClientServerRecordElementMapping_RecordElement(), "clientServerRecordElementMapping", null, 0, 1, ClientServerRecordElementMappingRecordElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMappingRecordElement_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, ClientServerRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMappingRecordElement_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, ClientServerRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMappingRecordElement_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, ClientServerRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMappingRecordElement_ArgumentPrototype(), (EClassifier)thePortinterfacePackage.getArgumentPrototype(), null, "argumentPrototype", null, 0, 1, ClientServerRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMappingRecordElement_NestingDataPrototypes(), (EClassifier)this.getIndexedDataPrototype(), null, "nestingDataPrototypes", null, 0, -1, ClientServerRecordElementMappingRecordElement.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getClientServerRecordElementMappingRecordElement_RecordElement(), (EClassifier)theDatatypesPackage.getRecordElement(), null, "recordElement", null, 1, 1, ClientServerRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.clientServerToSignalGroupMappingMappedOperationEClass, ClientServerToSignalGroupMappingMappedOperation.class, "ClientServerToSignalGroupMappingMappedOperation", false, false, true);
        this.initEReference(this.getClientServerToSignalGroupMappingMappedOperation_ClientServerToSignalGroupMapping(), (EClassifier)theDatamappingPackage.getClientServerToSignalGroupMapping(), theDatamappingPackage.getClientServerToSignalGroupMapping_MappedOperation(), "clientServerToSignalGroupMapping", null, 0, 1, ClientServerToSignalGroupMappingMappedOperation.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "compositionPrototype", null, 0, 1, ClientServerToSignalGroupMappingMappedOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, ClientServerToSignalGroupMappingMappedOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMappingMappedOperation_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, ClientServerToSignalGroupMappingMappedOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getClientServerToSignalGroupMappingMappedOperation_Operation(), (EClassifier)thePortinterfacePackage.getOperationPrototype(), null, "operation", null, 1, 1, ClientServerToSignalGroupMappingMappedOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.senderRecArrayElementMappingArrayElementEClass, SenderRecArrayElementMappingArrayElement.class, "SenderRecArrayElementMappingArrayElement", false, false, true);
        this.initEReference(this.getSenderRecArrayElementMappingArrayElement_SenderRecArrayElementMapping(), (EClassifier)theDatamappingPackage.getSenderRecArrayElementMapping(), theDatamappingPackage.getSenderRecArrayElementMapping_ArrayElement(), "senderRecArrayElementMapping", null, 0, 1, SenderRecArrayElementMappingArrayElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMappingArrayElement_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, SenderRecArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMappingArrayElement_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, SenderRecArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMappingArrayElement_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, SenderRecArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMappingArrayElement_DataElementPrototype(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElementPrototype", null, 0, 1, SenderRecArrayElementMappingArrayElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMappingArrayElement_NestingDataPrototypes(), (EClassifier)this.getIndexedDataPrototype(), null, "nestingDataPrototypes", null, 0, -1, SenderRecArrayElementMappingArrayElement.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderRecArrayElementMappingArrayElement_ArrayElement(), (EClassifier)this.getIndexedArrayElement(), null, "arrayElement", null, 1, 1, SenderRecArrayElementMappingArrayElement.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.senderReceiverToSignalGroupMappingDataElementEClass, SenderReceiverToSignalGroupMappingDataElement.class, "SenderReceiverToSignalGroupMappingDataElement", false, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMappingDataElement_SenderReceiverToSignalGroupMapping(), (EClassifier)theDatamappingPackage.getSenderReceiverToSignalGroupMapping(), theDatamappingPackage.getSenderReceiverToSignalGroupMapping_DataElement(), "senderReceiverToSignalGroupMapping", null, 0, 1, SenderReceiverToSignalGroupMappingDataElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMappingDataElement_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, SenderReceiverToSignalGroupMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMappingDataElement_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, SenderReceiverToSignalGroupMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMappingDataElement_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, SenderReceiverToSignalGroupMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalGroupMappingDataElement_DataElement(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElement", null, 1, 1, SenderReceiverToSignalGroupMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.senderReceiverToSignalMappingDataElementEClass, SenderReceiverToSignalMappingDataElement.class, "SenderReceiverToSignalMappingDataElement", false, false, true);
        this.initEReference(this.getSenderReceiverToSignalMappingDataElement_SenderReceiverToSignalMapping(), (EClassifier)theDatamappingPackage.getSenderReceiverToSignalMapping(), theDatamappingPackage.getSenderReceiverToSignalMapping_DataElement(), "senderReceiverToSignalMapping", null, 0, 1, SenderReceiverToSignalMappingDataElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalMappingDataElement_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, SenderReceiverToSignalMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalMappingDataElement_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, SenderReceiverToSignalMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalMappingDataElement_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, SenderReceiverToSignalMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderReceiverToSignalMappingDataElement_DataElement(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElement", null, 1, 1, SenderReceiverToSignalMappingDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.senderRecRecordElementMappingRecordElementEClass, SenderRecRecordElementMappingRecordElement.class, "SenderRecRecordElementMappingRecordElement", false, false, true);
        this.initEReference(this.getSenderRecRecordElementMappingRecordElement_SenderRecRecordElementMapping(), (EClassifier)theDatamappingPackage.getSenderRecRecordElementMapping(), theDatamappingPackage.getSenderRecRecordElementMapping_RecordElement(), "senderRecRecordElementMapping", null, 0, 1, SenderRecRecordElementMappingRecordElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMappingRecordElement_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, SenderRecRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMappingRecordElement_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, SenderRecRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMappingRecordElement_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, SenderRecRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMappingRecordElement_DataElementPrototype(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElementPrototype", null, 0, 1, SenderRecRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMappingRecordElement_NestingDataPrototypes(), (EClassifier)this.getIndexedDataPrototype(), null, "nestingDataPrototypes", null, 0, -1, SenderRecRecordElementMappingRecordElement.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSenderRecRecordElementMappingRecordElement_RecordElement(), (EClassifier)theDatatypesPackage.getRecordElement(), null, "recordElement", null, 1, 1, SenderRecRecordElementMappingRecordElement.class, false, false, true, false, true, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "_instanceRef", "GUID", "{8E117F01-F375-40d6-8088-0D792A0D3DB7}", "Id", "682344395"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingArrayElementEClass, source, new String[]{"Name", "ClientServerArrayElementMapping_arrayElement", "Modified", "Wed Oct 04 15:44:23 CEST 2006", "Created", "Wed Oct 04 15:41:03 CEST 2006", "GUID", "{671029FB-4E4C-456d-9339-42AEEBEAEFD0}", "Id", "139535058"});
        this.addAnnotation((ENamedElement)this.indexedDataPrototypeEClass, source, new String[]{"Name", "IndexedDataPrototype", "Modified", "Wed Jan 24 13:56:21 CET 2007", "Created", "Wed Jan 24 13:50:10 CET 2007", "GUID", "{D4B10F71-7AFC-4c13-8C76-E6D223F11406}", "Id", "2141318404"});
        this.addAnnotation((ENamedElement)this.getIndexedDataPrototype_Index(), source, new String[]{"Name", "index", "GUID", "{3A86EE09-BFA5-416d-AEEA-FD24343AF014}", "Id", "1822173906"});
        this.addAnnotation((ENamedElement)this.indexedArrayElementEClass, source, new String[]{"Name", "IndexedArrayElement", "Modified", "Wed Jan 24 13:46:54 CET 2007", "Created", "Wed Jan 24 13:44:35 CET 2007", "GUID", "{F3EF9D6B-26E5-4d08-A660-6E86D57AB424}", "Id", "1169642675"});
        this.addAnnotation((ENamedElement)this.getIndexedArrayElement_Index(), source, new String[]{"Name", "index", "GUID", "{52179D1C-11AB-4130-87BF-4D533FAFF843}", "Id", "424916505"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingArgumentEClass, source, new String[]{"Name", "ClientServerPrimitiveTypeMapping_argument", "Modified", "Wed Oct 04 10:15:54 CEST 2006", "Created", "Wed Oct 04 10:14:12 CEST 2006", "GUID", "{2025EEDB-E1FA-42b2-8927-D1579438E2D6}", "Id", "-1372043795"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingRecordElementEClass, source, new String[]{"Name", "ClientServerRecordElementMapping_recordElement", "Modified", "Wed Oct 04 16:05:15 CEST 2006", "Created", "Wed Oct 04 16:04:36 CEST 2006", "GUID", "{BDAD44D8-F218-4aff-945B-9DBBF8B3D66E}", "Id", "976504996"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingMappedOperationEClass, source, new String[]{"Name", "ClientServerToSignalGroupMapping_mappedOperation", "Modified", "Wed Oct 04 10:03:56 CEST 2006", "Created", "Wed Oct 04 09:55:47 CEST 2006", "GUID", "{F549FB6F-A555-4df4-A808-5F150170C7FF}", "Id", "1822002970"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingArrayElementEClass, source, new String[]{"Name", "SenderRecArrayElementMapping_arrayElement", "Modified", "Wed Oct 04 14:45:32 CEST 2006", "Created", "Wed Oct 04 10:59:24 CEST 2006", "GUID", "{8939C063-5BC2-42a7-B96F-EB1C7DE14822}", "Id", "812202369"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingDataElementEClass, source, new String[]{"Name", "SenderReceiverToSignalGroupMapping_dataElement", "Modified", "Wed Oct 04 11:31:19 CEST 2006", "Created", "Wed Oct 04 11:30:52 CEST 2006", "GUID", "{460A3CEC-CF26-4668-9A7E-0674BE1B4168}", "Id", "-1924102720"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingDataElementEClass, source, new String[]{"Name", "SenderReceiverToSignalMapping_dataElement", "Modified", "Wed Oct 04 12:21:15 CEST 2006", "Created", "Wed Oct 04 12:19:26 CEST 2006", "GUID", "{F1AEC8FA-8BC3-40dd-AFDC-AE3FBAEFF8D4}", "Id", "-805360968"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingRecordElementEClass, source, new String[]{"Name", "SenderRecRecordElementMapping_recordElement", "Modified", "Wed Oct 04 16:24:54 CEST 2006", "Created", "Wed Oct 04 16:24:12 CEST 2006", "GUID", "{A8170970-3161-4bbf-B212-17575AC58D2B}", "Id", "-554313986"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "REF", "xml.namePlural", "REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingArrayElementEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype argumentPrototype nestingDataPrototype*\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype argumentPrototype nestingDataPrototype*", "xml.name", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING--ARRAY-ELEMENT-IREF", "xml.namePlural", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING-ARRAY-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ArgumentPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.name", "ARGUMENT-PROTOTYPE-REF", "xml.namePlural", "ARGUMENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_NestingDataPrototypes(), source, new String[]{"xml.tags", "xml.name=\"NESTING-DATA-PROTOTYPE-MREF\";xml.namePlural=\"NESTING-DATA-PROTOTYPE-MREFS\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\"", "xml.name", "NESTING-DATA-PROTOTYPE-MREF", "xml.namePlural", "NESTING-DATA-PROTOTYPE-MREFS", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.roleElement", "true", "xml.sequenceOffset", "4", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ArrayElement(), source, new String[]{"xml.tags", "xml.name=\"ARRAY-ELEMENT-MREF\";xml.namePlural=\"ARRAY-ELEMENT-MREFS\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\"", "xml.name", "ARRAY-ELEMENT-MREF", "xml.namePlural", "ARRAY-ELEMENT-MREFS", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.roleElement", "true", "xml.sequenceOffset", "5", "xml.enforceMinMultiplicity", "true", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.indexedDataPrototypeEClass, source, new String[]{"xml.name", "INDEXED-DATA-PROTOTYPE", "xml.namePlural", "INDEXED-DATA-PROTOTYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getIndexedDataPrototype_Index(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"-10000\"", "xml.sequenceOffset", "0", "xml.name", "INDEX", "xml.namePlural", "INDEXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIndexedDataPrototype_NestingDataPrototype(), source, new String[]{"xml.sequenceOffset", "1", "xml.name", "NESTING-DATA-PROTOTYPE-REF", "xml.namePlural", "NESTING-DATA-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.indexedArrayElementEClass, source, new String[]{"xml.name", "INDEXED-ARRAY-ELEMENT", "xml.namePlural", "INDEXED-ARRAY-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getIndexedArrayElement_Index(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"-10000\"", "xml.sequenceOffset", "0", "xml.name", "INDEX", "xml.namePlural", "INDEXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getIndexedArrayElement_ArrayElement(), source, new String[]{"xml.sequenceOffset", "1", "xml.name", "ARRAY-ELEMENT-REF", "xml.namePlural", "ARRAY-ELEMENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingArgumentEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype", "xml.name", "CLIENT-SERVER-PRIMITIVE-TYPE-MAPPING--ARGUMENT-IREF", "xml.namePlural", "CLIENT-SERVER-PRIMITIVE-TYPE-MAPPING-ARGUMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_Argument(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.enforceMinMultiplicity", "true", "xml.name", "ARGUMENT-REF", "xml.namePlural", "ARGUMENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingRecordElementEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype argumentPrototype nestingDataPrototype*\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype argumentPrototype nestingDataPrototype*", "xml.name", "CLIENT-SERVER-RECORD-ELEMENT-MAPPING--RECORD-ELEMENT-IREF", "xml.namePlural", "CLIENT-SERVER-RECORD-ELEMENT-MAPPING-RECORD-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_ArgumentPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.name", "ARGUMENT-PROTOTYPE-REF", "xml.namePlural", "ARGUMENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_NestingDataPrototypes(), source, new String[]{"xml.tags", "xml.name=\"NESTING-DATA-PROTOTYPE-MREF\";xml.namePlural=\"NESTING-DATA-PROTOTYPE-MREFS\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\"", "xml.name", "NESTING-DATA-PROTOTYPE-MREF", "xml.namePlural", "NESTING-DATA-PROTOTYPE-MREFS", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.roleElement", "true", "xml.sequenceOffset", "4", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_RecordElement(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "5", "xml.enforceMinMultiplicity", "true", "xml.name", "RECORD-ELEMENT-REF", "xml.namePlural", "RECORD-ELEMENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingMappedOperationEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype", "xml.name", "CLIENT-SERVER-TO-SIGNAL-GROUP-MAPPING--MAPPED-OPERATION-IREF", "xml.namePlural", "CLIENT-SERVER-TO-SIGNAL-GROUP-MAPPING-MAPPED-OPERATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "COMPOSITION-PROTOTYPE-REF", "xml.namePlural", "COMPOSITION-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_Operation(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.enforceMinMultiplicity", "true", "xml.name", "OPERATION-REF", "xml.namePlural", "OPERATION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingArrayElementEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype dataElementPrototype nestingDataPrototype*\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype dataElementPrototype nestingDataPrototype*", "xml.name", "SENDER-REC-ARRAY-ELEMENT-MAPPING--ARRAY-ELEMENT-IREF", "xml.namePlural", "SENDER-REC-ARRAY-ELEMENT-MAPPING-ARRAY-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_DataElementPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.name", "DATA-ELEMENT-PROTOTYPE-REF", "xml.namePlural", "DATA-ELEMENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_NestingDataPrototypes(), source, new String[]{"xml.tags", "xml.name=\"NESTING-DATA-PROTOTYPE-MREF\";xml.namePlural=\"NESTING-DATA-PROTOTYPE-MREFS\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\"", "xml.name", "NESTING-DATA-PROTOTYPE-MREF", "xml.namePlural", "NESTING-DATA-PROTOTYPE-MREFS", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.roleElement", "true", "xml.sequenceOffset", "4", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_ArrayElement(), source, new String[]{"xml.tags", "xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\";xml.name=\"ARRAY-ELEMENT-MREF\";xml.namePlural=\"ARRAY-ELEMENT-MREFS\";xml.typeElement=\"false\"", "xml.name", "ARRAY-ELEMENT-MREF", "xml.roleWrapperElement", "false", "xml.namePlural", "ARRAY-ELEMENT-MREFS", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.roleElement", "true", "xml.sequenceOffset", "5", "xml.enforceMinMultiplicity", "true", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingDataElementEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype", "xml.name", "SENDER-RECEIVER-TO-SIGNAL-GROUP-MAPPING--DATA-ELEMENT-IREF", "xml.namePlural", "SENDER-RECEIVER-TO-SIGNAL-GROUP-MAPPING-DATA-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_DataElement(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.enforceMinMultiplicity", "true", "xml.name", "DATA-ELEMENT-REF", "xml.namePlural", "DATA-ELEMENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingDataElementEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype", "xml.name", "SENDER-RECEIVER-TO-SIGNAL-MAPPING--DATA-ELEMENT-IREF", "xml.namePlural", "SENDER-RECEIVER-TO-SIGNAL-MAPPING-DATA-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_DataElement(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.enforceMinMultiplicity", "true", "xml.name", "DATA-ELEMENT-REF", "xml.namePlural", "DATA-ELEMENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingRecordElementEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype dataElementPrototype nestingDataPrototype*\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype dataElementPrototype nestingDataPrototype*", "xml.name", "SENDER-REC-RECORD-ELEMENT-MAPPING--RECORD-ELEMENT-IREF", "xml.namePlural", "SENDER-REC-RECORD-ELEMENT-MAPPING-RECORD-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_DataElementPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.name", "DATA-ELEMENT-PROTOTYPE-REF", "xml.namePlural", "DATA-ELEMENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_NestingDataPrototypes(), source, new String[]{"xml.tags", "xml.name=\"NESTING-DATA-PROTOTYPE-MREF\";xml.namePlural=\"NESTING-DATA-PROTOTYPE-MREFS\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.roleWrapperElement=\"false\"", "xml.name", "NESTING-DATA-PROTOTYPE-MREF", "xml.namePlural", "NESTING-DATA-PROTOTYPE-MREFS", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.roleElement", "true", "xml.sequenceOffset", "4", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_RecordElement(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "5", "xml.enforceMinMultiplicity", "true", "xml.name", "RECORD-ELEMENT-REF", "xml.namePlural", "RECORD-ELEMENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingArrayElementEClass, source, new String[]{"name", "CLIENT-SERVER-ARRAY-ELEMENT-MAPPING--ARRAY-ELEMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ArgumentPrototype(), source, new String[]{"name", "ARGUMENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_NestingDataPrototypes(), source, new String[]{"name", "NESTING-DATA-PROTOTYPE-MREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ArrayElement(), source, new String[]{"name", "ARRAY-ELEMENT-MREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.indexedDataPrototypeEClass, source, new String[]{"name", "INDEXED-DATA-PROTOTYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIndexedDataPrototype_Index(), source, new String[]{"name", "INDEX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIndexedDataPrototype_NestingDataPrototype(), source, new String[]{"name", "NESTING-DATA-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.indexedArrayElementEClass, source, new String[]{"name", "INDEXED-ARRAY-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIndexedArrayElement_Index(), source, new String[]{"name", "INDEX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIndexedArrayElement_ArrayElement(), source, new String[]{"name", "ARRAY-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingArgumentEClass, source, new String[]{"name", "CLIENT-SERVER-PRIMITIVE-TYPE-MAPPING--ARGUMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_Argument(), source, new String[]{"name", "ARGUMENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingRecordElementEClass, source, new String[]{"name", "CLIENT-SERVER-RECORD-ELEMENT-MAPPING--RECORD-ELEMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_ArgumentPrototype(), source, new String[]{"name", "ARGUMENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_NestingDataPrototypes(), source, new String[]{"name", "NESTING-DATA-PROTOTYPE-MREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_RecordElement(), source, new String[]{"name", "RECORD-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingMappedOperationEClass, source, new String[]{"name", "CLIENT-SERVER-TO-SIGNAL-GROUP-MAPPING--MAPPED-OPERATION-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype(), source, new String[]{"name", "COMPOSITION-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_Operation(), source, new String[]{"name", "OPERATION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingArrayElementEClass, source, new String[]{"name", "SENDER-REC-ARRAY-ELEMENT-MAPPING--ARRAY-ELEMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_DataElementPrototype(), source, new String[]{"name", "DATA-ELEMENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_NestingDataPrototypes(), source, new String[]{"name", "NESTING-DATA-PROTOTYPE-MREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_ArrayElement(), source, new String[]{"name", "ARRAY-ELEMENT-MREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingDataElementEClass, source, new String[]{"name", "SENDER-RECEIVER-TO-SIGNAL-GROUP-MAPPING--DATA-ELEMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_DataElement(), source, new String[]{"name", "DATA-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingDataElementEClass, source, new String[]{"name", "SENDER-RECEIVER-TO-SIGNAL-MAPPING--DATA-ELEMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_DataElement(), source, new String[]{"name", "DATA-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingRecordElementEClass, source, new String[]{"name", "SENDER-REC-RECORD-ELEMENT-MAPPING--RECORD-ELEMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_DataElementPrototype(), source, new String[]{"name", "DATA-ELEMENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_NestingDataPrototypes(), source, new String[]{"name", "NESTING-DATA-PROTOTYPE-MREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_RecordElement(), source, new String[]{"name", "RECORD-ELEMENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingArrayElementEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ArgumentPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_NestingDataPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerArrayElementMappingArrayElement_ArrayElement(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.indexedDataPrototypeEClass, source, new String[]{"Stereotype", "indexedRef"});
        this.addAnnotation((ENamedElement)this.indexedArrayElementEClass, source, new String[]{"Stereotype", "indexedRef"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingArgumentEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerPrimitiveTypeMappingArgument_Argument(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingRecordElementEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_ArgumentPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_NestingDataPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerRecordElementMappingRecordElement_RecordElement(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingMappedOperationEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_CompositionPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getClientServerToSignalGroupMappingMappedOperation_Operation(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingArrayElementEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_DataElementPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_NestingDataPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecArrayElementMappingArrayElement_ArrayElement(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingDataElementEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalGroupMappingDataElement_DataElement(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingDataElementEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderReceiverToSignalMappingDataElement_DataElement(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingRecordElementEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_DataElementPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_NestingDataPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSenderRecRecordElementMappingRecordElement_RecordElement(), source, new String[]{"Stereotype", "instanceRef.target"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.clientServerArrayElementMappingArrayElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.indexedDataPrototypeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.indexedArrayElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerPrimitiveTypeMappingArgumentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerRecordElementMappingRecordElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.clientServerToSignalGroupMappingMappedOperationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderRecArrayElementMappingArrayElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalGroupMappingDataElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderReceiverToSignalMappingDataElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.senderRecRecordElementMappingRecordElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

