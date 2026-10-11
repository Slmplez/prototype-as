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
package autosar21.ecuresource.memory.impl;

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
import autosar21.ecuresource.memory.MemoryFactory;
import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnection;
import autosar21.ecuresource.memory.MemoryMappedAssemblyHWConnectionSegmentUsageEnum;
import autosar21.ecuresource.memory.MemoryMappedDelegationHWConnection;
import autosar21.ecuresource.memory.MemoryMappedHWPort;
import autosar21.ecuresource.memory.MemoryMappedHWPortHwPortTypeEnum;
import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.memory.ProvidedMemorySegment;
import autosar21.ecuresource.memory.ProvidedNVMemorySegment;
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
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class MemoryPackageImpl
extends EPackageImpl
implements MemoryPackage {
    private EClass memoryMappedAssemblyHWConnectionEClass = null;
    private EClass memoryMappedDelegationHWConnectionEClass = null;
    private EClass providedMemorySegmentEClass = null;
    private EClass providedNVMemorySegmentEClass = null;
    private EClass memoryMappedHWPortEClass = null;
    private EEnum memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum = null;
    private EEnum memoryMappedHWPortHwPortTypeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private MemoryPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecur/m", (EFactory)MemoryFactory.eINSTANCE);
    }

    public static MemoryPackage init() {
        if (isInited) {
            return (MemoryPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/m");
        }
        MemoryPackageImpl theMemoryPackage = (MemoryPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/m") instanceof MemoryPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/m") : new MemoryPackageImpl());
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
        theMemoryPackage.createPackageContents();
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
        theMemoryPackage.initializePackageContents();
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
        theMemoryPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecur/m", (Object)theMemoryPackage);
        return theMemoryPackage;
    }

    public EClass getMemoryMappedAssemblyHWConnection() {
        return this.memoryMappedAssemblyHWConnectionEClass;
    }

    public EAttribute getMemoryMappedAssemblyHWConnection_BaseAddress() {
        return (EAttribute)this.memoryMappedAssemblyHWConnectionEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getMemoryMappedAssemblyHWConnection_ByteOrder() {
        return (EAttribute)this.memoryMappedAssemblyHWConnectionEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getMemoryMappedAssemblyHWConnection_Cachable() {
        return (EAttribute)this.memoryMappedAssemblyHWConnectionEClass.getEStructuralFeatures().get(2);
    }

    public EReference getMemoryMappedAssemblyHWConnection_HwConnectionAccess() {
        return (EReference)this.memoryMappedAssemblyHWConnectionEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getMemoryMappedAssemblyHWConnection_SegmentUsages() {
        return (EAttribute)this.memoryMappedAssemblyHWConnectionEClass.getEStructuralFeatures().get(4);
    }

    public EClass getMemoryMappedDelegationHWConnection() {
        return this.memoryMappedDelegationHWConnectionEClass;
    }

    public EClass getProvidedMemorySegment() {
        return this.providedMemorySegmentEClass;
    }

    public EAttribute getProvidedMemorySegment_Alignment() {
        return (EAttribute)this.providedMemorySegmentEClass.getEStructuralFeatures().get(0);
    }

    public EReference getProvidedMemorySegment_ArchitecturalQuality() {
        return (EReference)this.providedMemorySegmentEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getProvidedMemorySegment_ManufacturingQuality() {
        return (EAttribute)this.providedMemorySegmentEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getProvidedMemorySegment_SegmentSize() {
        return (EAttribute)this.providedMemorySegmentEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getProvidedMemorySegment_Separate() {
        return (EAttribute)this.providedMemorySegmentEClass.getEStructuralFeatures().get(4);
    }

    public EClass getProvidedNVMemorySegment() {
        return this.providedNVMemorySegmentEClass;
    }

    public EAttribute getProvidedNVMemorySegment_DataEndurance() {
        return (EAttribute)this.providedNVMemorySegmentEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getProvidedNVMemorySegment_DataRetention() {
        return (EAttribute)this.providedNVMemorySegmentEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getProvidedNVMemorySegment_MarginReadAvailable() {
        return (EAttribute)this.providedNVMemorySegmentEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getProvidedNVMemorySegment_SegmentSizeErase() {
        return (EAttribute)this.providedNVMemorySegmentEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getProvidedNVMemorySegment_SegmentSizeWrite() {
        return (EAttribute)this.providedNVMemorySegmentEClass.getEStructuralFeatures().get(4);
    }

    public EClass getMemoryMappedHWPort() {
        return this.memoryMappedHWPortEClass;
    }

    public EAttribute getMemoryMappedHWPort_DataInterfaceWidth() {
        return (EAttribute)this.memoryMappedHWPortEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getMemoryMappedHWPort_HwPortType() {
        return (EAttribute)this.memoryMappedHWPortEClass.getEStructuralFeatures().get(1);
    }

    public EEnum getMemoryMappedAssemblyHWConnectionSegmentUsageEnum() {
        return this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum;
    }

    public EEnum getMemoryMappedHWPortHwPortTypeEnum() {
        return this.memoryMappedHWPortHwPortTypeEnumEEnum;
    }

    public MemoryFactory getMemoryFactory() {
        return (MemoryFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.memoryMappedAssemblyHWConnectionEClass = this.createEClass(0);
        this.createEAttribute(this.memoryMappedAssemblyHWConnectionEClass, 19);
        this.createEAttribute(this.memoryMappedAssemblyHWConnectionEClass, 20);
        this.createEAttribute(this.memoryMappedAssemblyHWConnectionEClass, 21);
        this.createEReference(this.memoryMappedAssemblyHWConnectionEClass, 22);
        this.createEAttribute(this.memoryMappedAssemblyHWConnectionEClass, 23);
        this.memoryMappedDelegationHWConnectionEClass = this.createEClass(1);
        this.providedMemorySegmentEClass = this.createEClass(2);
        this.createEAttribute(this.providedMemorySegmentEClass, 25);
        this.createEReference(this.providedMemorySegmentEClass, 26);
        this.createEAttribute(this.providedMemorySegmentEClass, 27);
        this.createEAttribute(this.providedMemorySegmentEClass, 28);
        this.createEAttribute(this.providedMemorySegmentEClass, 29);
        this.providedNVMemorySegmentEClass = this.createEClass(3);
        this.createEAttribute(this.providedNVMemorySegmentEClass, 30);
        this.createEAttribute(this.providedNVMemorySegmentEClass, 31);
        this.createEAttribute(this.providedNVMemorySegmentEClass, 32);
        this.createEAttribute(this.providedNVMemorySegmentEClass, 33);
        this.createEAttribute(this.providedNVMemorySegmentEClass, 34);
        this.memoryMappedHWPortEClass = this.createEClass(4);
        this.createEAttribute(this.memoryMappedHWPortEClass, 19);
        this.createEAttribute(this.memoryMappedHWPortEClass, 20);
        this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum = this.createEEnum(5);
        this.memoryMappedHWPortHwPortTypeEnumEEnum = this.createEEnum(6);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("memory");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecur/m");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        EnumerationsPackage theEnumerationsPackage = (EnumerationsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/e");
        BasicelementsPackage theBasicelementsPackage = (BasicelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be");
        this.memoryMappedAssemblyHWConnectionEClass.getESuperTypes().add((Object)theEcuresourcePackage.getAssemblyHWConnection());
        this.memoryMappedDelegationHWConnectionEClass.getESuperTypes().add((Object)theEcuresourcePackage.getDelegationHWConnection());
        this.providedMemorySegmentEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWElement());
        this.providedNVMemorySegmentEClass.getESuperTypes().add((Object)this.getProvidedMemorySegment());
        this.memoryMappedHWPortEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWPort());
        this.initEClass(this.memoryMappedAssemblyHWConnectionEClass, MemoryMappedAssemblyHWConnection.class, "MemoryMappedAssemblyHWConnection", false, false, true);
        this.initEAttribute(this.getMemoryMappedAssemblyHWConnection_BaseAddress(), (EClassifier)thePrimitivetypesPackage.getInteger(), "baseAddress", "0", 0, 1, MemoryMappedAssemblyHWConnection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMemoryMappedAssemblyHWConnection_ByteOrder(), (EClassifier)theEnumerationsPackage.getByteOrderEnum(), "byteOrder", "MOST-SIGNIFICANT-BYTE-LAST", 0, 1, MemoryMappedAssemblyHWConnection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMemoryMappedAssemblyHWConnection_Cachable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "cachable", "false", 0, 1, MemoryMappedAssemblyHWConnection.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getMemoryMappedAssemblyHWConnection_HwConnectionAccess(), (EClassifier)theBasicelementsPackage.getMemoryAccess(), theBasicelementsPackage.getMemoryAccess_MemoryMappedAssemblyHWConnection(), "hwConnectionAccess", null, 0, -1, MemoryMappedAssemblyHWConnection.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getMemoryMappedAssemblyHWConnection_SegmentUsages(), (EClassifier)this.getMemoryMappedAssemblyHWConnectionSegmentUsageEnum(), "segmentUsages", "CODE", 0, -1, MemoryMappedAssemblyHWConnection.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.memoryMappedDelegationHWConnectionEClass, MemoryMappedDelegationHWConnection.class, "MemoryMappedDelegationHWConnection", false, false, true);
        this.initEClass(this.providedMemorySegmentEClass, ProvidedMemorySegment.class, "ProvidedMemorySegment", false, false, true);
        this.initEAttribute(this.getProvidedMemorySegment_Alignment(), (EClassifier)thePrimitivetypesPackage.getInteger(), "alignment", "0", 0, 1, ProvidedMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getProvidedMemorySegment_ArchitecturalQuality(), (EClassifier)theBasicelementsPackage.getErrorDetectionCorrection(), null, "architecturalQuality", null, 0, 1, ProvidedMemorySegment.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getProvidedMemorySegment_ManufacturingQuality(), (EClassifier)thePrimitivetypesPackage.getFloat(), "manufacturingQuality", "0.0", 0, 1, ProvidedMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProvidedMemorySegment_SegmentSize(), (EClassifier)thePrimitivetypesPackage.getInteger(), "segmentSize", "0", 0, 1, ProvidedMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProvidedMemorySegment_Separate(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "separate", "false", 0, 1, ProvidedMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.providedNVMemorySegmentEClass, ProvidedNVMemorySegment.class, "ProvidedNVMemorySegment", false, false, true);
        this.initEAttribute(this.getProvidedNVMemorySegment_DataEndurance(), (EClassifier)thePrimitivetypesPackage.getInteger(), "dataEndurance", "0", 0, 1, ProvidedNVMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProvidedNVMemorySegment_DataRetention(), (EClassifier)thePrimitivetypesPackage.getFloat(), "dataRetention", "0.0", 0, 1, ProvidedNVMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProvidedNVMemorySegment_MarginReadAvailable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "marginReadAvailable", "false", 0, 1, ProvidedNVMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProvidedNVMemorySegment_SegmentSizeErase(), (EClassifier)thePrimitivetypesPackage.getInteger(), "segmentSizeErase", "0", 0, 1, ProvidedNVMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProvidedNVMemorySegment_SegmentSizeWrite(), (EClassifier)thePrimitivetypesPackage.getInteger(), "segmentSizeWrite", "0", 0, 1, ProvidedNVMemorySegment.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.memoryMappedHWPortEClass, MemoryMappedHWPort.class, "MemoryMappedHWPort", false, false, true);
        this.initEAttribute(this.getMemoryMappedHWPort_DataInterfaceWidth(), (EClassifier)thePrimitivetypesPackage.getInteger(), "dataInterfaceWidth", "0", 0, 1, MemoryMappedHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMemoryMappedHWPort_HwPortType(), (EClassifier)this.getMemoryMappedHWPortHwPortTypeEnum(), "hwPortType", "UNSPECIFIED", 0, 1, MemoryMappedHWPort.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum, MemoryMappedAssemblyHWConnectionSegmentUsageEnum.class, "MemoryMappedAssemblyHWConnectionSegmentUsageEnum");
        this.addEEnumLiteral(this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum, MemoryMappedAssemblyHWConnectionSegmentUsageEnum.CODE);
        this.addEEnumLiteral(this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum, MemoryMappedAssemblyHWConnectionSegmentUsageEnum.DATA);
        this.addEEnumLiteral(this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum, MemoryMappedAssemblyHWConnectionSegmentUsageEnum.STACK);
        this.addEEnumLiteral(this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum, MemoryMappedAssemblyHWConnectionSegmentUsageEnum.BOOT);
        this.initEEnum(this.memoryMappedHWPortHwPortTypeEnumEEnum, MemoryMappedHWPortHwPortTypeEnum.class, "MemoryMappedHWPortHwPortTypeEnum");
        this.addEEnumLiteral(this.memoryMappedHWPortHwPortTypeEnumEEnum, MemoryMappedHWPortHwPortTypeEnum.UNSPECIFIED);
        this.addEEnumLiteral(this.memoryMappedHWPortHwPortTypeEnumEEnum, MemoryMappedHWPortHwPortTypeEnum.DATA);
        this.addEEnumLiteral(this.memoryMappedHWPortHwPortTypeEnumEEnum, MemoryMappedHWPortHwPortTypeEnum.CONTROL);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_AssemblyHWConnectionAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_DelegationHWConnectionAnnotations();
        this.createTaggedValuesOfGeneralization_HWElementAnnotations();
        this.createTaggedValuesOfGeneralization_ProvidedMemorySegmentAnnotations();
        this.createTaggedValuesOfGeneralization_HWPortAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Memory", "GUID", "{C25368B6-8DE3-4f16-BE32-4D5EB881CF45}", "Id", "-555234194"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionEClass, source, new String[]{"Name", "MemoryMappedAssemblyHWConnection", "Modified", "Thu Jun 23 15:42:48 CEST 2005", "Created", "Thu Jul 08 18:30:57 CEST 2004", "GUID", "{E7C5B6F6-9DBA-451c-9070-ABB6568648F9}", "Id", "28745380"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_BaseAddress(), source, new String[]{"Name", "baseAddress", "GUID", "{F6244A42-B05F-424b-BB1E-BEB62E1A6053}", "Id", "-727631147"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_ByteOrder(), source, new String[]{"Name", "byteOrder", "GUID", "{FF3C3790-C49D-41ac-8277-6ADF05D8C015}", "Id", "-2136059637"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_Cachable(), source, new String[]{"Name", "cachable", "GUID", "{065B8DD0-CE07-4345-AA39-72DD23BB8554}", "Id", "353742830"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_SegmentUsages(), source, new String[]{"Name", "segmentUsage", "GUID", "{C20F6E58-B1FD-457f-975F-582F09FF7DEC}", "Id", "-2022525582"});
        this.addAnnotation((ENamedElement)this.memoryMappedDelegationHWConnectionEClass, source, new String[]{"Name", "MemoryMappedDelegationHWConnection", "Modified", "Tue Mar 22 22:15:57 CET 2005", "Created", "Fri Mar 11 16:28:00 CET 2005", "GUID", "{BCEB4805-5223-44d7-B10B-DEF9E9720704}", "Id", "-1701780009"});
        this.addAnnotation((ENamedElement)this.providedMemorySegmentEClass, source, new String[]{"Name", "ProvidedMemorySegment", "Modified", "Wed Apr 13 08:15:26 CEST 2005", "Created", "Tue Apr 27 12:36:54 CEST 2004", "GUID", "{D9AB727C-23C8-4aab-99BE-3EF3EDAC89B1}", "Id", "-2026626832"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Alignment(), source, new String[]{"Name", "alignment", "GUID", "{C70616F9-1990-4865-B3E2-C065E29F84FC}", "Id", "-1079529314"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_ManufacturingQuality(), source, new String[]{"Name", "manufacturingQuality", "GUID", "{48EE7738-47DC-42bc-87AC-02370EDC5EC9}", "Id", "-517855411"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_SegmentSize(), source, new String[]{"Name", "segmentSize", "GUID", "{6BB3A6C7-0437-448f-A4E4-BC13DA94BC5B}", "Id", "633432625"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Separate(), source, new String[]{"Name", "separate", "GUID", "{02099935-F0BE-4884-9B21-FDFCD5AFB034}", "Id", "2115289084"});
        this.addAnnotation((ENamedElement)this.providedNVMemorySegmentEClass, source, new String[]{"Name", "ProvidedNVMemorySegment", "Modified", "Thu Mar 10 11:38:00 CET 2005", "Created", "Tue Apr 27 12:58:18 CEST 2004", "GUID", "{60417049-5656-44d0-BB04-C961A1CDBCAC}", "Id", "948276947"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataEndurance(), source, new String[]{"Name", "dataEndurance", "GUID", "{C3C4227F-A7B8-4764-AAAD-24BF654DD20A}", "Id", "-1424949959"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataRetention(), source, new String[]{"Name", "dataRetention", "GUID", "{1DB87B94-7662-4c5c-ABE3-6AB3A6C55024}", "Id", "-1014256360"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_MarginReadAvailable(), source, new String[]{"Name", "marginReadAvailable", "GUID", "{A1C734B0-5CC6-4692-8C0E-6E7E449DE5E6}", "Id", "-2028672497"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeErase(), source, new String[]{"Name", "segmentSizeErase", "GUID", "{F2291788-6222-4754-9638-ADE98533D23C}", "Id", "-1483452555"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeWrite(), source, new String[]{"Name", "segmentSizeWrite", "GUID", "{A851F45B-4536-4ca7-AEF0-C716149C47EB}", "Id", "1095666116"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortEClass, source, new String[]{"Name", "MemoryMappedHWPort", "Modified", "Thu Mar 10 11:38:00 CET 2005", "Created", "Thu Jul 08 18:16:32 CEST 2004", "GUID", "{F935FB07-2324-48a8-83B7-713BFBA1F1F2}", "Id", "1418729098"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_DataInterfaceWidth(), source, new String[]{"Name", "dataInterfaceWidth", "GUID", "{FC3896F1-6646-4849-9B30-E7AA9EC2F6A5}", "Id", "-1038880189"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_HwPortType(), source, new String[]{"Name", "hwPortType", "GUID", "{D9B33476-56BF-4412-8890-2A90D6828AC0}", "Id", "-860334654"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "MEMORY", "xml.namePlural", "MEMORYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionEClass, source, new String[]{"xml.name", "MEMORY-MAPPED-ASSEMBLY-HW-CONNECTION", "xml.namePlural", "MEMORY-MAPPED-ASSEMBLY-HW-CONNECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_BaseAddress(), source, new String[]{"xml.name", "BASE-ADDRESS", "xml.namePlural", "BASE-ADDRESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_ByteOrder(), source, new String[]{"xml.name", "BYTE-ORDER", "xml.namePlural", "BYTE-ORDERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_Cachable(), source, new String[]{"xml.name", "CACHABLE", "xml.namePlural", "CACHABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_HwConnectionAccess(), source, new String[]{"xml.name", "HW-CONNECTION-ACCESS", "xml.namePlural", "HW-CONNECTION-ACCESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_SegmentUsages(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "SEGMENT-USAGE", "xml.namePlural", "SEGMENT-USAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum, source, new String[]{"xml.name", "MEMORY-MAPPED-ASSEMBLY-HW-CONNECTION-SEGMENT-USAGE-ENUM", "xml.namePlural", "MEMORY-MAPPED-ASSEMBLY-HW-CONNECTION-SEGMENT-USAGE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "CODE", "xml.namePlural", "CODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "DATA", "xml.namePlural", "DATAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "STACK", "xml.namePlural", "STACKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionSegmentUsageEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "BOOT", "xml.namePlural", "BOOTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedDelegationHWConnectionEClass, source, new String[]{"xml.name", "MEMORY-MAPPED-DELEGATION-HW-CONNECTION", "xml.namePlural", "MEMORY-MAPPED-DELEGATION-HW-CONNECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.providedMemorySegmentEClass, source, new String[]{"xml.name", "PROVIDED-MEMORY-SEGMENT", "xml.namePlural", "PROVIDED-MEMORY-SEGMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Alignment(), source, new String[]{"xml.name", "ALIGNMENT", "xml.namePlural", "ALIGNMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_ArchitecturalQuality(), source, new String[]{"xml.name", "ARCHITECTURAL-QUALITY", "xml.namePlural", "ARCHITECTURAL-QUALITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_ManufacturingQuality(), source, new String[]{"xml.name", "MANUFACTURING-QUALITY", "xml.namePlural", "MANUFACTURING-QUALITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_SegmentSize(), source, new String[]{"xml.name", "SEGMENT-SIZE", "xml.namePlural", "SEGMENT-SIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Separate(), source, new String[]{"xml.name", "SEPARATE", "xml.namePlural", "SEPARATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.providedNVMemorySegmentEClass, source, new String[]{"xml.name", "PROVIDED-NV-MEMORY-SEGMENT", "xml.namePlural", "PROVIDED-NV-MEMORY-SEGMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataEndurance(), source, new String[]{"xml.name", "DATA-ENDURANCE", "xml.namePlural", "DATA-ENDURANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataRetention(), source, new String[]{"xml.name", "DATA-RETENTION", "xml.namePlural", "DATA-RETENTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_MarginReadAvailable(), source, new String[]{"xml.name", "MARGIN-READ-AVAILABLE", "xml.namePlural", "MARGIN-READ-AVAILABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeErase(), source, new String[]{"xml.name", "SEGMENT-SIZE-ERASE", "xml.namePlural", "SEGMENT-SIZE-ERASES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeWrite(), source, new String[]{"xml.name", "SEGMENT-SIZE-WRITE", "xml.namePlural", "SEGMENT-SIZE-WRITES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortHwPortTypeEnumEEnum, source, new String[]{"xml.name", "MEMORY-MAPPED-HW-PORT-HW-PORT-TYPE-ENUM", "xml.namePlural", "MEMORY-MAPPED-HW-PORT-HW-PORT-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortHwPortTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "UNSPECIFIED", "xml.namePlural", "UNSPECIFIEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortHwPortTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "DATA", "xml.namePlural", "DATAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortHwPortTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "CONTROL", "xml.namePlural", "CONTROLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortEClass, source, new String[]{"xml.name", "MEMORY-MAPPED-HW-PORT", "xml.namePlural", "MEMORY-MAPPED-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_DataInterfaceWidth(), source, new String[]{"xml.name", "DATA-INTERFACE-WIDTH", "xml.namePlural", "DATA-INTERFACE-WIDTHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_HwPortType(), source, new String[]{"xml.name", "HW-PORT-TYPE", "xml.namePlural", "HW-PORT-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionEClass, source, new String[]{"name", "MEMORY-MAPPED-ASSEMBLY-HW-CONNECTION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_BaseAddress(), source, new String[]{"name", "BASE-ADDRESS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_ByteOrder(), source, new String[]{"name", "BYTE-ORDER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_Cachable(), source, new String[]{"name", "CACHABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_HwConnectionAccess(), source, new String[]{"name", "HW-CONNECTION-ACCESSS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_SegmentUsages(), source, new String[]{"name", "SEGMENT-USAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.memoryMappedDelegationHWConnectionEClass, source, new String[]{"name", "MEMORY-MAPPED-DELEGATION-HW-CONNECTION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.providedMemorySegmentEClass, source, new String[]{"name", "PROVIDED-MEMORY-SEGMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Alignment(), source, new String[]{"name", "ALIGNMENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_ArchitecturalQuality(), source, new String[]{"name", "ARCHITECTURAL-QUALITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_ManufacturingQuality(), source, new String[]{"name", "MANUFACTURING-QUALITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_SegmentSize(), source, new String[]{"name", "SEGMENT-SIZE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Separate(), source, new String[]{"name", "SEPARATE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.providedNVMemorySegmentEClass, source, new String[]{"name", "PROVIDED-NV-MEMORY-SEGMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataEndurance(), source, new String[]{"name", "DATA-ENDURANCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataRetention(), source, new String[]{"name", "DATA-RETENTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_MarginReadAvailable(), source, new String[]{"name", "MARGIN-READ-AVAILABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeErase(), source, new String[]{"name", "SEGMENT-SIZE-ERASE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeWrite(), source, new String[]{"name", "SEGMENT-SIZE-WRITE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortEClass, source, new String[]{"name", "MEMORY-MAPPED-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_DataInterfaceWidth(), source, new String[]{"name", "DATA-INTERFACE-WIDTH", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_HwPortType(), source, new String[]{"name", "HW-PORT-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionEClass, source, new String[]{"documentation", "This connection is used to connect Memory HWPort on the same hierarchical level (inside one HW Container)."});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_BaseAddress(), source, new String[]{"documentation", "Defines the base address of the memory within the ECU template.\r\nThe same base address might be defined multiple times according to the access type and the architecture. A base address is uniquely bound to a defined memory segment."});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_ByteOrder(), source, new String[]{"documentation", "When a PU stores data in a memory the ordering of the bytes can be done in two different ways. This storing scheme is normally fixed in the PU when more than one byte is stored in the memory. When the least significant byte is stored at the lowest address this architecture is called \"mostSignificantByteLast\" (aka little endian) and when the most significant byte is stored at the lowest address this is called \"mostSignificantByteFirst\" (aka big endian). Some CPU architectures like ARM and PowerPC can be configured to handle both little and big endian. This is called bi-endian. ByteOrder is very important when you communicate between different PUs or ECUs."});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_Cachable(), source, new String[]{"documentation", "A memory segment may be cacheable. This has to be defined in the description of the segment connection."});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_HwConnectionAccess(), source, new String[]{"documentation", "Access time is the timing characteristic for each access type. Access time at the Memory Mapped HW Port is only theoretical. The actual Access time is given in the Memory Mapped HW Connection."});
        this.addAnnotation((ENamedElement)this.getMemoryMappedAssemblyHWConnection_SegmentUsages(), source, new String[]{"documentation", "The segment usage is defined in the linker memory map. Usually it is fixed within an operation mode but different operations modes have different memory usage.\r\nThe element segment usage contains the following attributes. \r\n- Data: The attribute data is used for all kind of data: constant, variable, calibration, system initialisation, system configuration, etc. \r\n- Code: The attribute code is used for the program code itself. \r\n- Stack: Memory usable for a system or software stack is in some cases only available on limited number of segments within a PU. \r\n- Boot: The boot memory is used to store program and data for the start up or test of an ECU. Within the boot program the basic ECU initialisation is performed. Furthermore some system maintenance programs, like the set-up for flash programming or loading of data via communication interface, can be part of the boot program. \r\nBoot memory is in general not a subject of AUTOSAR SW. \r\n-- Boot sector: Boot sector is the location in memory, preferable Flash or ROM, where the boot program is stored. The location of the boot sector might be dependant on the PU architecture as reset and interrupt vectors must be accessible during boot. The boot sector should be separated from other user accessible Flash or implemented as ROM. In Flash the boot sector should have the appropriate array size, some few kilobyte and provide protection mechanism against unintended erasure or system manipulation.\r\nA system may have different boot sectors, one accessible only for testing the PU during the manufacturing and configuration of the PU, in factory test mode or some initial program mode, and a user boot mode. \r\n-- Mapping of boot sector: Mapping of the boot sector is useful to enhance the boot sequence and the release of the used resources during the boot phase at the later user mode, e.g. the use of reset vector and interrupt vector can be improved."});
        this.addAnnotation((ENamedElement)this.memoryMappedDelegationHWConnectionEClass, source, new String[]{"documentation", "This connection is used to delegate a Memory HW Port to the outside of a HW Container. Typically this will used internally of a micro-controller."});
        this.addAnnotation((ENamedElement)this.providedMemorySegmentEClass, source, new String[]{"documentation", "Describes one volatile memory segment."});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Alignment(), source, new String[]{"documentation", "Some memory architectures are organised for bigger natural data size than accessed by the PU. In this case memory might not be used completely and some memory locations are left blank due to misalignment. The overall memory size is not used by code or data.\r\nMisalignment may be recovered by special mechanisms provided by hardware or software. In this case the access time will be increased. Certain PU architectures do not allow misalignment in code or data generally.\r\nUnit: Byte"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_ArchitecturalQuality(), source, new String[]{"documentation", "The error detection and error correction facilities provided by the memory segment itself."});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_ManufacturingQuality(), source, new String[]{"documentation", "As memory holds the executable program as well as the according data, memory needs a level of quality and reliability according to the purpose of the ECU. In most applications today memory is the biggest homogeneous hardware block; therefore quality and reliability of memory have the biggest impact on ECU performance and availability.\r\nWith the introduction of non-volatile memory and the use of huge DRAM memories the aspect of quality and reliability gains more importance.\r\nDespite all Zero-defect programs of the semiconductor suppliers a defect rate in the range of 1 to 5 ppm must be considered as given even for critical applications.\r\nSeparate quality data for Endurance and Data retention can be available also. The biggest value for ppm rates is used as a quality factor.\r\nUnit: ppm"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_SegmentSize(), source, new String[]{"documentation", "A value that determines the amount of bytes within the memory segment.\r\nAn ECU for AUTOSAR always contains at least one memory segment.\r\nWithin a single ECU different memory types and access types can be used simultaneously.\r\nAn ECU may consist of different parts that carry one or more memories.\r\nSegment size is defined in the terms of Bytes. \r\nThe overall amount of memory is the sum of all available memory segments. For different types of memory only the sum of the same type gives a useful overall sum.\r\nUnit: Byte"});
        this.addAnnotation((ENamedElement)this.getProvidedMemorySegment_Separate(), source, new String[]{"documentation", "Separate memories are required for safety-relevant functions and redundancy requirements."});
        this.addAnnotation((ENamedElement)this.providedNVMemorySegmentEClass, source, new String[]{"documentation", "Describes one non-volatile memory segment."});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataEndurance(), source, new String[]{"documentation", "Program and erase cycles are a stress to the memory cell, therefore endurance is characterised by the number of erase/program cycles the memory can survive exceeding the prescribed failure rate.\r\nUnit: No of cycles."});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_DataRetention(), source, new String[]{"documentation", "Data retention time is the time between programming a sample of non-volatile memory and the observation of a prescribed failure rate when verifying the programmed pattern. The time is dependent on the chosen technology for the integrated memory cell.\r\nUnit: Years"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_MarginReadAvailable(), source, new String[]{"documentation", "Additional to verify, all data are read back with a different set-up of the threshold of the sense amplifier of the programmed cell. With this method besides the logical correctness, the sufficient amount of electrical charges, which represents the stored data is checked. Furthermore the content of the memory and the correctness and the quality of the programming tools can be verified. Performing the margin read allow the prediction of the data retention. The feature of margin read is a characteristic of a memory, which is not available at all devices. Margin read is available for flash technology only."});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeErase(), source, new String[]{"documentation", "For an erasable memory it's usually the same size of the segment as for the segment size which can be erased at a time. If the size of an erasable segment is different shall the size of the erasable segment be entered in the table.\r\nUnit: Byte"});
        this.addAnnotation((ENamedElement)this.getProvidedNVMemorySegment_SegmentSizeWrite(), source, new String[]{"documentation", "Some memory types have not the same segment size as in the case when data is written to the memory. For example, a specific flash memory you must write 128 bytes once even if the segment size is 16 kBytes.\r\nUnit: Byte"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_DataInterfaceWidth(), source, new String[]{"documentation", "The element defines the number of bits that can be transferred from the PU to the memory device or vice versa. The width of data bus are important characteristics. All technical characteristics of the memory are covered by the access time.\r\nUnit: Bit"});
        this.addAnnotation((ENamedElement)this.getMemoryMappedHWPort_HwPortType(), source, new String[]{"documentation", "The HW Port Type of a HW Port can be one of the following attributes \r\n- unspecified: The attribute is used as a placeholder in the iterative process or if a detailed specification of the HW Port is not required, for example a low-level driver supplied by the semiconductor manufacturer. \r\n- Data: Data is the part of the information processed later in the SW Application. \r\n- Control: Control is needed by the hardware and the basic SW Routines to manage the overall operation. \r\n\r\nThe attributes Data and Control are defined in the HIS Specification."});
    }

    protected void createTaggedValuesOfGeneralization_AssemblyHWConnectionAnnotations() {
        String source = "TaggedValuesOfGeneralization_AssemblyHWConnection";
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionEClass, source, new String[]{"Name", "", "GUID", "{B508A489-47D6-419b-A1A8-AB09D7E5E588}", "Id", "966478782", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.memoryMappedAssemblyHWConnectionEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.memoryMappedDelegationHWConnectionEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.providedMemorySegmentEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.providedNVMemorySegmentEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_DelegationHWConnectionAnnotations() {
        String source = "TaggedValuesOfGeneralization_DelegationHWConnection";
        this.addAnnotation((ENamedElement)this.memoryMappedDelegationHWConnectionEClass, source, new String[]{"Name", "", "GUID", "{56437716-BC4F-480d-8995-D710AF125D2D}", "Id", "-279200803", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_HWElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWElement";
        this.addAnnotation((ENamedElement)this.providedMemorySegmentEClass, source, new String[]{"Name", "", "GUID", "{2A604413-67D6-49c7-B862-94E17B9E3C29}", "Id", "685065137", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ProvidedMemorySegmentAnnotations() {
        String source = "TaggedValuesOfGeneralization_ProvidedMemorySegment";
        this.addAnnotation((ENamedElement)this.providedNVMemorySegmentEClass, source, new String[]{"Name", "", "GUID", "{90DB88A0-3DDD-4e12-8235-0AE45967E385}", "Id", "-639813788", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_HWPortAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWPort";
        this.addAnnotation((ENamedElement)this.memoryMappedHWPortEClass, source, new String[]{"Name", "", "GUID", "{AA42E850-37F5-4f95-BAE5-178B272B840C}", "Id", "-900775263", "xml.sequenceOffset", "0"});
    }
}

