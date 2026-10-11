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
package autosar21.ecuresource.processingunit.impl;

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
import autosar21.ecuresource.processingunit.InterruptConsumeHWPort;
import autosar21.ecuresource.processingunit.InterruptHWPort;
import autosar21.ecuresource.processingunit.InterruptProduceHWPort;
import autosar21.ecuresource.processingunit.MPU;
import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.ProcessingUnitAddressingModesEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitArchitectureKindEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitArchitectureTypeEnum;
import autosar21.ecuresource.processingunit.ProcessingUnitSpecialOpcodesEnum;
import autosar21.ecuresource.processingunit.ProcessingunitFactory;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.Register;
import autosar21.ecuresource.processingunit.RegisterTypeEnum;
import autosar21.ecuresource.processingunit.SupportedDataType;
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

public class ProcessingunitPackageImpl
extends EPackageImpl
implements ProcessingunitPackage {
    private EClass interruptConsumeHWPortEClass = null;
    private EClass interruptHWPortEClass = null;
    private EClass mpuEClass = null;
    private EClass processingUnitEClass = null;
    private EClass registerEClass = null;
    private EClass supportedDataTypeEClass = null;
    private EClass interruptProduceHWPortEClass = null;
    private EEnum processingUnitArchitectureKindEnumEEnum = null;
    private EEnum processingUnitSpecialOpcodesEnumEEnum = null;
    private EEnum processingUnitAddressingModesEnumEEnum = null;
    private EEnum processingUnitArchitectureTypeEnumEEnum = null;
    private EEnum registerTypeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ProcessingunitPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecur/pu", (EFactory)ProcessingunitFactory.eINSTANCE);
    }

    public static ProcessingunitPackage init() {
        if (isInited) {
            return (ProcessingunitPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/pu");
        }
        ProcessingunitPackageImpl theProcessingunitPackage = (ProcessingunitPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/pu") instanceof ProcessingunitPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/pu") : new ProcessingunitPackageImpl());
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
        theProcessingunitPackage.createPackageContents();
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
        theProcessingunitPackage.initializePackageContents();
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
        theProcessingunitPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecur/pu", (Object)theProcessingunitPackage);
        return theProcessingunitPackage;
    }

    public EClass getInterruptConsumeHWPort() {
        return this.interruptConsumeHWPortEClass;
    }

    public EAttribute getInterruptConsumeHWPort_ActivationSource() {
        return (EAttribute)this.interruptConsumeHWPortEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getInterruptConsumeHWPort_Latency() {
        return (EAttribute)this.interruptConsumeHWPortEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getInterruptConsumeHWPort_Maskable() {
        return (EAttribute)this.interruptConsumeHWPortEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getInterruptConsumeHWPort_Priority() {
        return (EAttribute)this.interruptConsumeHWPortEClass.getEStructuralFeatures().get(3);
    }

    public EClass getInterruptHWPort() {
        return this.interruptHWPortEClass;
    }

    public EClass getMPU() {
        return this.mpuEClass;
    }

    public EReference getMPU_ProcessingUnit() {
        return (EReference)this.mpuEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getMPU_ChannelCount() {
        return (EAttribute)this.mpuEClass.getEStructuralFeatures().get(1);
    }

    public EReference getMPU_ProtectedMemoryHWPorts() {
        return (EReference)this.mpuEClass.getEStructuralFeatures().get(2);
    }

    public EReference getMPU_RaisedInterrupts() {
        return (EReference)this.mpuEClass.getEStructuralFeatures().get(3);
    }

    public EClass getProcessingUnit() {
        return this.processingUnitEClass;
    }

    public EAttribute getProcessingUnit_AddressingModes() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getProcessingUnit_ArchitectureKind() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getProcessingUnit_ArchitectureName() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getProcessingUnit_ArchitectureType() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(3);
    }

    public EReference getProcessingUnit_BootTime() {
        return (EReference)this.processingUnitEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getProcessingUnit_DmaChannelCount() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getProcessingUnit_ImplementationTechnology() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getProcessingUnit_MaxInterruptNestingLevels() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(7);
    }

    public EReference getProcessingUnit_Mpu() {
        return (EReference)this.processingUnitEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getProcessingUnit_NaturalDataSize() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getProcessingUnit_OpcodeSize() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(10);
    }

    public EReference getProcessingUnit_PuClock() {
        return (EReference)this.processingUnitEClass.getEStructuralFeatures().get(11);
    }

    public EReference getProcessingUnit_RegisterModels() {
        return (EReference)this.processingUnitEClass.getEStructuralFeatures().get(12);
    }

    public EAttribute getProcessingUnit_SpecialOpcodes() {
        return (EAttribute)this.processingUnitEClass.getEStructuralFeatures().get(13);
    }

    public EReference getProcessingUnit_SupportedDataTypes() {
        return (EReference)this.processingUnitEClass.getEStructuralFeatures().get(14);
    }

    public EClass getRegister() {
        return this.registerEClass;
    }

    public EReference getRegister_ProcessingUnit() {
        return (EReference)this.registerEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getRegister_Count() {
        return (EAttribute)this.registerEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getRegister_Type() {
        return (EAttribute)this.registerEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSupportedDataType() {
        return this.supportedDataTypeEClass;
    }

    public EReference getSupportedDataType_ProcessingUnit() {
        return (EReference)this.supportedDataTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSupportedDataType_SupportedDataSizes() {
        return (EAttribute)this.supportedDataTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getInterruptProduceHWPort() {
        return this.interruptProduceHWPortEClass;
    }

    public EReference getInterruptProduceHWPort_MPU() {
        return (EReference)this.interruptProduceHWPortEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getProcessingUnitArchitectureKindEnum() {
        return this.processingUnitArchitectureKindEnumEEnum;
    }

    public EEnum getProcessingUnitSpecialOpcodesEnum() {
        return this.processingUnitSpecialOpcodesEnumEEnum;
    }

    public EEnum getProcessingUnitAddressingModesEnum() {
        return this.processingUnitAddressingModesEnumEEnum;
    }

    public EEnum getProcessingUnitArchitectureTypeEnum() {
        return this.processingUnitArchitectureTypeEnumEEnum;
    }

    public EEnum getRegisterTypeEnum() {
        return this.registerTypeEnumEEnum;
    }

    public ProcessingunitFactory getProcessingunitFactory() {
        return (ProcessingunitFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.interruptConsumeHWPortEClass = this.createEClass(0);
        this.createEAttribute(this.interruptConsumeHWPortEClass, 19);
        this.createEAttribute(this.interruptConsumeHWPortEClass, 20);
        this.createEAttribute(this.interruptConsumeHWPortEClass, 21);
        this.createEAttribute(this.interruptConsumeHWPortEClass, 22);
        this.interruptHWPortEClass = this.createEClass(1);
        this.mpuEClass = this.createEClass(2);
        this.createEReference(this.mpuEClass, 4);
        this.createEAttribute(this.mpuEClass, 5);
        this.createEReference(this.mpuEClass, 6);
        this.createEReference(this.mpuEClass, 7);
        this.processingUnitEClass = this.createEClass(3);
        this.createEAttribute(this.processingUnitEClass, 25);
        this.createEAttribute(this.processingUnitEClass, 26);
        this.createEAttribute(this.processingUnitEClass, 27);
        this.createEAttribute(this.processingUnitEClass, 28);
        this.createEReference(this.processingUnitEClass, 29);
        this.createEAttribute(this.processingUnitEClass, 30);
        this.createEAttribute(this.processingUnitEClass, 31);
        this.createEAttribute(this.processingUnitEClass, 32);
        this.createEReference(this.processingUnitEClass, 33);
        this.createEAttribute(this.processingUnitEClass, 34);
        this.createEAttribute(this.processingUnitEClass, 35);
        this.createEReference(this.processingUnitEClass, 36);
        this.createEReference(this.processingUnitEClass, 37);
        this.createEAttribute(this.processingUnitEClass, 38);
        this.createEReference(this.processingUnitEClass, 39);
        this.registerEClass = this.createEClass(4);
        this.createEReference(this.registerEClass, 4);
        this.createEAttribute(this.registerEClass, 5);
        this.createEAttribute(this.registerEClass, 6);
        this.supportedDataTypeEClass = this.createEClass(5);
        this.createEReference(this.supportedDataTypeEClass, 16);
        this.createEAttribute(this.supportedDataTypeEClass, 17);
        this.interruptProduceHWPortEClass = this.createEClass(6);
        this.createEReference(this.interruptProduceHWPortEClass, 19);
        this.processingUnitArchitectureKindEnumEEnum = this.createEEnum(7);
        this.processingUnitSpecialOpcodesEnumEEnum = this.createEEnum(8);
        this.processingUnitAddressingModesEnumEEnum = this.createEEnum(9);
        this.processingUnitArchitectureTypeEnumEEnum = this.createEEnum(10);
        this.registerTypeEnumEEnum = this.createEEnum(11);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("processingunit");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecur/pu");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        MemoryPackage theMemoryPackage = (MemoryPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/m");
        BasicelementsPackage theBasicelementsPackage = (BasicelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be");
        EcuelectronicsPackage theEcuelectronicsPackage = (EcuelectronicsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/ecue");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        this.interruptConsumeHWPortEClass.getESuperTypes().add((Object)this.getInterruptHWPort());
        this.interruptHWPortEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWPort());
        this.mpuEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.processingUnitEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWElement());
        this.registerEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.supportedDataTypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.interruptProduceHWPortEClass.getESuperTypes().add((Object)this.getInterruptHWPort());
        this.initEClass(this.interruptConsumeHWPortEClass, InterruptConsumeHWPort.class, "InterruptConsumeHWPort", false, false, true);
        this.initEAttribute(this.getInterruptConsumeHWPort_ActivationSource(), (EClassifier)thePrimitivetypesPackage.getString(), "activationSource", "", 0, 1, InterruptConsumeHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInterruptConsumeHWPort_Latency(), (EClassifier)thePrimitivetypesPackage.getFloat(), "latency", "0.0", 0, 1, InterruptConsumeHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInterruptConsumeHWPort_Maskable(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "maskable", "false", 0, 1, InterruptConsumeHWPort.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInterruptConsumeHWPort_Priority(), (EClassifier)thePrimitivetypesPackage.getInteger(), "priority", "0", 0, 1, InterruptConsumeHWPort.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.interruptHWPortEClass, InterruptHWPort.class, "InterruptHWPort", true, false, true);
        this.initEClass(this.mpuEClass, MPU.class, "MPU", false, false, true);
        this.initEReference(this.getMPU_ProcessingUnit(), (EClassifier)this.getProcessingUnit(), this.getProcessingUnit_Mpu(), "processingUnit", null, 0, 1, MPU.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getMPU_ChannelCount(), (EClassifier)thePrimitivetypesPackage.getInteger(), "channelCount", "0", 0, 1, MPU.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getMPU_ProtectedMemoryHWPorts(), (EClassifier)theMemoryPackage.getMemoryMappedHWPort(), null, "protectedMemoryHWPorts", null, 0, -1, MPU.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getMPU_RaisedInterrupts(), (EClassifier)this.getInterruptProduceHWPort(), this.getInterruptProduceHWPort_MPU(), "raisedInterrupts", null, 0, -1, MPU.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.processingUnitEClass, ProcessingUnit.class, "ProcessingUnit", false, false, true);
        this.initEAttribute(this.getProcessingUnit_AddressingModes(), (EClassifier)this.getProcessingUnitAddressingModesEnum(), "addressingModes", "DIRECT", 0, -1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_ArchitectureKind(), (EClassifier)this.getProcessingUnitArchitectureKindEnum(), "architectureKind", "HARVARD", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_ArchitectureName(), (EClassifier)thePrimitivetypesPackage.getString(), "architectureName", "", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_ArchitectureType(), (EClassifier)this.getProcessingUnitArchitectureTypeEnum(), "architectureType", "RISC", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getProcessingUnit_BootTime(), (EClassifier)theBasicelementsPackage.getBootTime(), theBasicelementsPackage.getBootTime_ProcessingUnit(), "bootTime", null, 0, 1, ProcessingUnit.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_DmaChannelCount(), (EClassifier)thePrimitivetypesPackage.getInteger(), "dmaChannelCount", "0", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_ImplementationTechnology(), (EClassifier)thePrimitivetypesPackage.getString(), "implementationTechnology", "", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_MaxInterruptNestingLevels(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxInterruptNestingLevels", "0", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getProcessingUnit_Mpu(), (EClassifier)this.getMPU(), this.getMPU_ProcessingUnit(), "mpu", null, 0, 1, ProcessingUnit.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_NaturalDataSize(), (EClassifier)thePrimitivetypesPackage.getInteger(), "naturalDataSize", "0", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_OpcodeSize(), (EClassifier)thePrimitivetypesPackage.getString(), "opcodeSize", "", 0, 1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getProcessingUnit_PuClock(), (EClassifier)theEcuelectronicsPackage.getClock(), theEcuelectronicsPackage.getClock_ProcessingUnit(), "puClock", null, 0, 1, ProcessingUnit.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getProcessingUnit_RegisterModels(), (EClassifier)this.getRegister(), this.getRegister_ProcessingUnit(), "registerModels", null, 0, -1, ProcessingUnit.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getProcessingUnit_SpecialOpcodes(), (EClassifier)this.getProcessingUnitSpecialOpcodesEnum(), "specialOpcodes", "BIT-MANIPULATION", 0, -1, ProcessingUnit.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getProcessingUnit_SupportedDataTypes(), (EClassifier)this.getSupportedDataType(), this.getSupportedDataType_ProcessingUnit(), "supportedDataTypes", null, 0, -1, ProcessingUnit.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.registerEClass, Register.class, "Register", false, false, true);
        this.initEReference(this.getRegister_ProcessingUnit(), (EClassifier)this.getProcessingUnit(), this.getProcessingUnit_RegisterModels(), "processingUnit", null, 0, 1, Register.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getRegister_Count(), (EClassifier)thePrimitivetypesPackage.getInteger(), "count", "0", 0, 1, Register.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRegister_Type(), (EClassifier)this.getRegisterTypeEnum(), "type", "DATA", 0, 1, Register.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.supportedDataTypeEClass, SupportedDataType.class, "SupportedDataType", false, false, true);
        this.initEReference(this.getSupportedDataType_ProcessingUnit(), (EClassifier)this.getProcessingUnit(), this.getProcessingUnit_SupportedDataTypes(), "processingUnit", null, 0, 1, SupportedDataType.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getSupportedDataType_SupportedDataSizes(), (EClassifier)thePrimitivetypesPackage.getInteger(), "supportedDataSizes", "0", 0, -1, SupportedDataType.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.interruptProduceHWPortEClass, InterruptProduceHWPort.class, "InterruptProduceHWPort", false, false, true);
        this.initEReference(this.getInterruptProduceHWPort_MPU(), (EClassifier)this.getMPU(), this.getMPU_RaisedInterrupts(), "mPU", null, 0, 1, InterruptProduceHWPort.class, true, false, true, false, false, false, true, false, true);
        this.initEEnum(this.processingUnitArchitectureKindEnumEEnum, ProcessingUnitArchitectureKindEnum.class, "ProcessingUnitArchitectureKindEnum");
        this.addEEnumLiteral(this.processingUnitArchitectureKindEnumEEnum, ProcessingUnitArchitectureKindEnum.HARVARD);
        this.addEEnumLiteral(this.processingUnitArchitectureKindEnumEEnum, ProcessingUnitArchitectureKindEnum.VNEUMANN);
        this.initEEnum(this.processingUnitSpecialOpcodesEnumEEnum, ProcessingUnitSpecialOpcodesEnum.class, "ProcessingUnitSpecialOpcodesEnum");
        this.addEEnumLiteral(this.processingUnitSpecialOpcodesEnumEEnum, ProcessingUnitSpecialOpcodesEnum.BIT_MANIPULATION);
        this.addEEnumLiteral(this.processingUnitSpecialOpcodesEnumEEnum, ProcessingUnitSpecialOpcodesEnum.MUL);
        this.addEEnumLiteral(this.processingUnitSpecialOpcodesEnumEEnum, ProcessingUnitSpecialOpcodesEnum.DIV);
        this.addEEnumLiteral(this.processingUnitSpecialOpcodesEnumEEnum, ProcessingUnitSpecialOpcodesEnum.MAC);
        this.addEEnumLiteral(this.processingUnitSpecialOpcodesEnumEEnum, ProcessingUnitSpecialOpcodesEnum.FLOAT);
        this.initEEnum(this.processingUnitAddressingModesEnumEEnum, ProcessingUnitAddressingModesEnum.class, "ProcessingUnitAddressingModesEnum");
        this.addEEnumLiteral(this.processingUnitAddressingModesEnumEEnum, ProcessingUnitAddressingModesEnum.DIRECT);
        this.addEEnumLiteral(this.processingUnitAddressingModesEnumEEnum, ProcessingUnitAddressingModesEnum.INDIRECT);
        this.addEEnumLiteral(this.processingUnitAddressingModesEnumEEnum, ProcessingUnitAddressingModesEnum.INDEXED);
        this.initEEnum(this.processingUnitArchitectureTypeEnumEEnum, ProcessingUnitArchitectureTypeEnum.class, "ProcessingUnitArchitectureTypeEnum");
        this.addEEnumLiteral(this.processingUnitArchitectureTypeEnumEEnum, ProcessingUnitArchitectureTypeEnum.RISC);
        this.addEEnumLiteral(this.processingUnitArchitectureTypeEnumEEnum, ProcessingUnitArchitectureTypeEnum.CISC);
        this.addEEnumLiteral(this.processingUnitArchitectureTypeEnumEEnum, ProcessingUnitArchitectureTypeEnum.SIMD);
        this.addEEnumLiteral(this.processingUnitArchitectureTypeEnumEEnum, ProcessingUnitArchitectureTypeEnum.MIMD);
        this.initEEnum(this.registerTypeEnumEEnum, RegisterTypeEnum.class, "RegisterTypeEnum");
        this.addEEnumLiteral(this.registerTypeEnumEEnum, RegisterTypeEnum.DATA);
        this.addEEnumLiteral(this.registerTypeEnumEEnum, RegisterTypeEnum.ADDRESS);
        this.addEEnumLiteral(this.registerTypeEnumEEnum, RegisterTypeEnum.CONTROL);
        this.addEEnumLiteral(this.registerTypeEnumEEnum, RegisterTypeEnum.STATUS);
        this.addEEnumLiteral(this.registerTypeEnumEEnum, RegisterTypeEnum.STACK_POINTER);
        this.addEEnumLiteral(this.registerTypeEnumEEnum, RegisterTypeEnum.SPECIAL);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_InterruptHWPortAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_HWPortAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_HWElementAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ProcessingUnit", "GUID", "{323B5B58-4F43-4fce-ADB0-F412CE5A302D}", "Id", "553592317"});
        this.addAnnotation((ENamedElement)this.interruptConsumeHWPortEClass, source, new String[]{"Name", "InterruptConsumeHWPort", "Modified", "Tue Mar 22 21:32:42 CET 2005", "Created", "Sun Apr 04 19:07:36 CEST 2004", "GUID", "{A6A85098-7736-484d-A5CB-8C2D451C187F}", "Id", "259117257"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_ActivationSource(), source, new String[]{"Name", "activationSource", "GUID", "{009660CD-6016-4516-AE1B-9AFAAB00C5F6}", "Id", "1824712549"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Latency(), source, new String[]{"Name", "latency", "GUID", "{82EAC886-E1C9-421c-83D8-BA02DE7F7AB1}", "Id", "1275996191"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Maskable(), source, new String[]{"Name", "maskable", "GUID", "{FCDE69DC-31E9-46bc-B88E-1BB88B3C4D1E}", "Id", "-1018632332"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Priority(), source, new String[]{"Name", "priority", "GUID", "{02B417F6-7257-4162-BC6F-E13737136E1E}", "Id", "-36288170"});
        this.addAnnotation((ENamedElement)this.interruptHWPortEClass, source, new String[]{"Name", "InterruptHWPort", "Modified", "Tue Mar 22 20:34:22 CET 2005", "Created", "Tue Jan 25 20:44:19 CET 2005", "GUID", "{94C3E225-5361-49d3-9EB5-B1157A24BE06}", "Id", "1654364335"});
        this.addAnnotation((ENamedElement)this.mpuEClass, source, new String[]{"Name", "MPU", "Modified", "Thu Feb 17 09:40:57 CET 2005", "Created", "Fri Jul 09 09:35:40 CEST 2004", "GUID", "{891A380B-5EA7-41af-812C-14A0A2CA9719}", "Id", "1463483258"});
        this.addAnnotation((ENamedElement)this.getMPU_ChannelCount(), source, new String[]{"Name", "channelCount", "GUID", "{DC614270-E42C-4623-9BA8-2439DE23CCB5}", "Id", "1338888307"});
        this.addAnnotation((ENamedElement)this.processingUnitEClass, source, new String[]{"Name", "ProcessingUnit", "Modified", "Sun Mar 20 20:50:42 CET 2005", "Created", "Wed Mar 17 15:44:15 CET 2004", "GUID", "{D7758950-40CF-4eb0-A16B-1E8BF5538C38}", "Id", "238351928"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_AddressingModes(), source, new String[]{"Name", "addressingModes", "GUID", "{4FAE476A-AB0C-4c38-8C1C-EAD0CD54F1C0}", "Id", "-926302347"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureKind(), source, new String[]{"Name", "architectureKind", "GUID", "{0EFD58F1-A10C-4d46-B903-0963B34FA0FA}", "Id", "-1970956327"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureName(), source, new String[]{"Name", "architectureName", "GUID", "{DABF26AE-6C71-4597-A38A-E89DC2CCB803}", "Id", "1091427710"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureType(), source, new String[]{"Name", "architectureType", "GUID", "{10092A22-B7FE-4a3a-B888-36BAE7BC33CD}", "Id", "-651647194"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_DmaChannelCount(), source, new String[]{"Name", "dmaChannelCount", "GUID", "{29658D82-E0D1-4833-94FE-9A452EEB2004}", "Id", "1672359440"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ImplementationTechnology(), source, new String[]{"Name", "implementationTechnology", "GUID", "{ABEB26EA-55C6-4e65-9076-10844020905D}", "Id", "1037141423"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_MaxInterruptNestingLevels(), source, new String[]{"Name", "maxInterruptNestingLevels", "GUID", "{7F2BF16D-B1A8-4825-8C23-3376B0B562F7}", "Id", "126103399"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_NaturalDataSize(), source, new String[]{"Name", "naturalDataSize", "GUID", "{2B94F307-F66B-4ad5-9203-F45B411EB6D6}", "Id", "1555020228"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_OpcodeSize(), source, new String[]{"Name", "opcodeSize", "GUID", "{31F1E3B2-18A2-412d-B996-FD354F924C8F}", "Id", "-507918958"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_SpecialOpcodes(), source, new String[]{"Name", "specialOpcodes", "GUID", "{8690E5C0-E6C2-454a-BA5D-654A08709F71}", "Id", "-1616320853"});
        this.addAnnotation((ENamedElement)this.registerEClass, source, new String[]{"Name", "Register", "Modified", "Tue Feb 22 15:02:15 CET 2005", "Created", "Fri Jul 09 09:29:05 CEST 2004", "GUID", "{C2990EBD-AB1B-428c-BFE2-8C522ACFCB47}", "Id", "485693120"});
        this.addAnnotation((ENamedElement)this.getRegister_Count(), source, new String[]{"Name", "count", "GUID", "{B4C76F1A-9D91-4ed9-A13F-06EBE45F22F0}", "Id", "816634606"});
        this.addAnnotation((ENamedElement)this.getRegister_Type(), source, new String[]{"Name", "type", "GUID", "{60F10A3D-ABE8-44cf-8837-8A42D226B547}", "Id", "1831567297"});
        this.addAnnotation((ENamedElement)this.supportedDataTypeEClass, source, new String[]{"Name", "SupportedDataType", "Modified", "Mon Jan 31 21:03:57 CET 2005", "Created", "Fri Jul 09 09:16:52 CEST 2004", "GUID", "{44F34F04-EE1A-4e5a-9B1E-3AD7AF6C6B48}", "Id", "-630756670"});
        this.addAnnotation((ENamedElement)this.getSupportedDataType_SupportedDataSizes(), source, new String[]{"Name", "supportedDataSize", "GUID", "{EDC7A2B0-C1C0-437f-8A5A-D8C76872CCDA}", "Id", "-1265102821"});
        this.addAnnotation((ENamedElement)this.interruptProduceHWPortEClass, source, new String[]{"Name", "InterruptProduceHWPort", "Modified", "Tue Mar 22 21:41:52 CET 2005", "Created", "Tue Jan 25 20:45:28 CET 2005", "GUID", "{3FC1FB21-FEA6-4ecb-A6A8-7848C265DC6D}", "Id", "1948316944"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "PROCESSING-UNIT", "xml.namePlural", "PROCESSING-UNITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.interruptConsumeHWPortEClass, source, new String[]{"xml.name", "INTERRUPT-CONSUME-HW-PORT", "xml.namePlural", "INTERRUPT-CONSUME-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_ActivationSource(), source, new String[]{"xml.name", "ACTIVATION-SOURCE", "xml.namePlural", "ACTIVATION-SOURCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Latency(), source, new String[]{"xml.name", "LATENCY", "xml.namePlural", "LATENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Maskable(), source, new String[]{"xml.name", "MASKABLE", "xml.namePlural", "MASKABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Priority(), source, new String[]{"xml.name", "PRIORITY", "xml.namePlural", "PRIORITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.interruptHWPortEClass, source, new String[]{"xml.name", "INTERRUPT-HW-PORT", "xml.namePlural", "INTERRUPT-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.mpuEClass, source, new String[]{"xml.name", "MPU", "xml.namePlural", "MPUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMPU_ChannelCount(), source, new String[]{"xml.name", "CHANNEL-COUNT", "xml.namePlural", "CHANNEL-COUNTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMPU_ProtectedMemoryHWPorts(), source, new String[]{"xml.name", "PROTECTED-MEMORY-HW-PORT-REF", "xml.namePlural", "PROTECTED-MEMORY-HW-PORT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMPU_RaisedInterrupts(), source, new String[]{"xml.name", "RAISED-INTERRUPT", "xml.namePlural", "RAISED-INTERRUPTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.processingUnitEClass, source, new String[]{"xml.name", "PROCESSING-UNIT", "xml.namePlural", "PROCESSING-UNITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_AddressingModes(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "ADDRESSING-MODES", "xml.namePlural", "ADDRESSING-MODESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureKind(), source, new String[]{"xml.name", "ARCHITECTURE-KIND", "xml.namePlural", "ARCHITECTURE-KINDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureName(), source, new String[]{"xml.name", "ARCHITECTURE-NAME", "xml.namePlural", "ARCHITECTURE-NAMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureType(), source, new String[]{"xml.name", "ARCHITECTURE-TYPE", "xml.namePlural", "ARCHITECTURE-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_BootTime(), source, new String[]{"xml.name", "BOOT-TIME", "xml.namePlural", "BOOT-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_DmaChannelCount(), source, new String[]{"xml.name", "DMA-CHANNEL-COUNT", "xml.namePlural", "DMA-CHANNEL-COUNTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ImplementationTechnology(), source, new String[]{"xml.name", "IMPLEMENTATION-TECHNOLOGY", "xml.namePlural", "IMPLEMENTATION-TECHNOLOGYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_MaxInterruptNestingLevels(), source, new String[]{"xml.name", "MAX-INTERRUPT-NESTING-LEVELS", "xml.namePlural", "MAX-INTERRUPT-NESTING-LEVELSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_Mpu(), source, new String[]{"xml.name", "MPU", "xml.namePlural", "MPUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_NaturalDataSize(), source, new String[]{"xml.name", "NATURAL-DATA-SIZE", "xml.namePlural", "NATURAL-DATA-SIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_OpcodeSize(), source, new String[]{"xml.name", "OPCODE-SIZE", "xml.namePlural", "OPCODE-SIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_PuClock(), source, new String[]{"xml.name", "PU-CLOCK", "xml.namePlural", "PU-CLOCKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_RegisterModels(), source, new String[]{"xml.name", "REGISTER-MODEL", "xml.namePlural", "REGISTER-MODELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "12", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_SpecialOpcodes(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "SPECIAL-OPCODES", "xml.namePlural", "SPECIAL-OPCODESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "13", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_SupportedDataTypes(), source, new String[]{"xml.name", "SUPPORTED-DATA-TYPE", "xml.namePlural", "SUPPORTED-DATA-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "14", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureKindEnumEEnum, source, new String[]{"xml.name", "PROCESSING-UNIT-ARCHITECTURE-KIND-ENUM", "xml.namePlural", "PROCESSING-UNIT-ARCHITECTURE-KIND-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureKindEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "HARVARD", "xml.namePlural", "HARVARDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureKindEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "V-NEUMANN", "xml.namePlural", "V-NEUMANNS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitSpecialOpcodesEnumEEnum, source, new String[]{"xml.name", "PROCESSING-UNIT-SPECIAL-OPCODES-ENUM", "xml.namePlural", "PROCESSING-UNIT-SPECIAL-OPCODES-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitSpecialOpcodesEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "BIT-MANIPULATION", "xml.namePlural", "BIT-MANIPULATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitSpecialOpcodesEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "MUL", "xml.namePlural", "MULS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitSpecialOpcodesEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "DIV", "xml.namePlural", "DIVS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitSpecialOpcodesEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "MAC", "xml.namePlural", "MACS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitSpecialOpcodesEnumEEnum.getELiterals().get(4), source, new String[]{"xml.name", "FLOAT", "xml.namePlural", "FLOATS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitAddressingModesEnumEEnum, source, new String[]{"xml.name", "PROCESSING-UNIT-ADDRESSING-MODES-ENUM", "xml.namePlural", "PROCESSING-UNIT-ADDRESSING-MODES-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitAddressingModesEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "DIRECT", "xml.namePlural", "DIRECTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitAddressingModesEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "INDIRECT", "xml.namePlural", "INDIRECTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitAddressingModesEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "INDEXED", "xml.namePlural", "INDEXEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureTypeEnumEEnum, source, new String[]{"xml.name", "PROCESSING-UNIT-ARCHITECTURE-TYPE-ENUM", "xml.namePlural", "PROCESSING-UNIT-ARCHITECTURE-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "RISC", "xml.namePlural", "RISCS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "CISC", "xml.namePlural", "CISCS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "SIMD", "xml.namePlural", "SIMDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.processingUnitArchitectureTypeEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "MIMD", "xml.namePlural", "MIMDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.registerEClass, source, new String[]{"xml.name", "REGISTER", "xml.namePlural", "REGISTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRegister_Count(), source, new String[]{"xml.name", "COUNT", "xml.namePlural", "COUNTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRegister_Type(), source, new String[]{"xml.name", "TYPE", "xml.namePlural", "TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.registerTypeEnumEEnum, source, new String[]{"xml.name", "REGISTER-TYPE-ENUM", "xml.namePlural", "REGISTER-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.registerTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "DATA", "xml.namePlural", "DATAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.registerTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "ADDRESS", "xml.namePlural", "ADDRESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.registerTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "CONTROL", "xml.namePlural", "CONTROLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.registerTypeEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "STATUS", "xml.namePlural", "STATUSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.registerTypeEnumEEnum.getELiterals().get(4), source, new String[]{"xml.name", "STACK-POINTER", "xml.namePlural", "STACK-POINTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.registerTypeEnumEEnum.getELiterals().get(5), source, new String[]{"xml.name", "SPECIAL", "xml.namePlural", "SPECIALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.supportedDataTypeEClass, source, new String[]{"xml.name", "SUPPORTED-DATA-TYPE", "xml.namePlural", "SUPPORTED-DATA-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSupportedDataType_SupportedDataSizes(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "SUPPORTED-DATA-SIZE", "xml.namePlural", "SUPPORTED-DATA-SIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.interruptProduceHWPortEClass, source, new String[]{"xml.name", "INTERRUPT-PRODUCE-HW-PORT", "xml.namePlural", "INTERRUPT-PRODUCE-HW-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.interruptConsumeHWPortEClass, source, new String[]{"name", "INTERRUPT-CONSUME-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_ActivationSource(), source, new String[]{"name", "ACTIVATION-SOURCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Latency(), source, new String[]{"name", "LATENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Maskable(), source, new String[]{"name", "MASKABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Priority(), source, new String[]{"name", "PRIORITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.interruptHWPortEClass, source, new String[]{"name", "INTERRUPT-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.mpuEClass, source, new String[]{"name", "MPU", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMPU_ChannelCount(), source, new String[]{"name", "CHANNEL-COUNT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMPU_ProtectedMemoryHWPorts(), source, new String[]{"name", "PROTECTED-MEMORY-HW-PORT-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMPU_RaisedInterrupts(), source, new String[]{"name", "RAISED-INTERRUPTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.processingUnitEClass, source, new String[]{"name", "PROCESSING-UNIT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_AddressingModes(), source, new String[]{"name", "ADDRESSING-MODES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureKind(), source, new String[]{"name", "ARCHITECTURE-KIND", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureName(), source, new String[]{"name", "ARCHITECTURE-NAME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureType(), source, new String[]{"name", "ARCHITECTURE-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_BootTime(), source, new String[]{"name", "BOOT-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_DmaChannelCount(), source, new String[]{"name", "DMA-CHANNEL-COUNT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ImplementationTechnology(), source, new String[]{"name", "IMPLEMENTATION-TECHNOLOGY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_MaxInterruptNestingLevels(), source, new String[]{"name", "MAX-INTERRUPT-NESTING-LEVELS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_Mpu(), source, new String[]{"name", "MPU", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_NaturalDataSize(), source, new String[]{"name", "NATURAL-DATA-SIZE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_OpcodeSize(), source, new String[]{"name", "OPCODE-SIZE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_PuClock(), source, new String[]{"name", "PU-CLOCK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_RegisterModels(), source, new String[]{"name", "REGISTER-MODELS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_SpecialOpcodes(), source, new String[]{"name", "SPECIAL-OPCODES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_SupportedDataTypes(), source, new String[]{"name", "SUPPORTED-DATA-TYPES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.registerEClass, source, new String[]{"name", "REGISTER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRegister_Count(), source, new String[]{"name", "COUNT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRegister_Type(), source, new String[]{"name", "TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.supportedDataTypeEClass, source, new String[]{"name", "SUPPORTED-DATA-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSupportedDataType_SupportedDataSizes(), source, new String[]{"name", "SUPPORTED-DATA-SIZE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.interruptProduceHWPortEClass, source, new String[]{"name", "INTERRUPT-PRODUCE-HW-PORT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.interruptConsumeHWPortEClass, source, new String[]{"documentation", "This port represents the drain of an interrupt request, i.e. the HWElement (in the majority of cases this will be a ProcessingUnit) to which this HWPort is attached is capable of accepting interrupt requests."});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_ActivationSource(), source, new String[]{"documentation", "Defines which hardware resource activate the interrupt. Typically any peripheral HW Element  can activate an interrupt.  E.g. CAN, SCI, SPI, Timer, ADC. Even simple digital I/O can activate an interrupt. Some microC have in this context dedicatated pins which act only as activation for interrupt. The connection from the according HW Element is made by the HW Port."});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Latency(), source, new String[]{"documentation", "Interrupt Latency: time passed from the occurrence of the interrupt request until the interrupt service routine is entered\r\n- HW: Register organisation; operations are necessary for context save.\r\n- SW: As SW can control the enabling/disabling of the interrupt SW determines a great part of the according time.\r\n- System: several constraints define the min/max times allowed for software to enable / disable interrupts."});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Maskable(), source, new String[]{"documentation", "Defines if interrupts can be selected to be processed by the interrupt controller."});
        this.addAnnotation((ENamedElement)this.getInterruptConsumeHWPort_Priority(), source, new String[]{"documentation", "Some processing units offer different interrupt levels. It describes the priority in which the incoming interrupts are handled."});
        this.addAnnotation((ENamedElement)this.mpuEClass, source, new String[]{"documentation", "A MPU provides means where the memory access within a defined program flow of a PU is controlled. In case of a failure an exception routine e.g. interrupt is activated.\r\nA MPU is implemented as an independent hardware block in a device separate to the processing unit. A MPU does not perform any data manipulation, only in case of an error a change in the processor control flow is forced.\r\nThe number of individual checked memory ranges is limited to the registers available for specifying the memory ranges. One individual memory range is in the following referenced as MPU Channel.\r\nIn most cases the MPU consists of a set of registers, which do range checking of the addresses asserted by the program on the address bus as well as the access type to the according address. The checking of the address ranges is also coupled to the address range of the program, which runs under the control of the MPU.\r\nThe MPU also can be coupled with one of the different processing elements of a device like the PU itself, a DMA or a Coprocessor.\r\nIn order to have a broad usage of a MPU a specification of filter values is often allowed, so very user specific selection methods are possible.\r\nTypical use case for a MPU: A 3rd party software routine is allowed only to access a defined memory-area. Any access outside the defined memory area will be denied and control will be transferred to the supervising operating system. A error handling routine will be started."});
        this.addAnnotation((ENamedElement)this.getMPU_ChannelCount(), source, new String[]{"documentation", "Defines the number of individual MPU channels are available."});
        this.addAnnotation((ENamedElement)this.getMPU_ProtectedMemoryHWPorts(), source, new String[]{"documentation", "Describes which Memory Mapped HW Ports are obserable by this MPU. The actual configuration will be done by SW."});
        this.addAnnotation((ENamedElement)this.getMPU_RaisedInterrupts(), source, new String[]{"documentation", "Defines the interrupts this MPU can raise to indicate the violation of memory access."});
        this.addAnnotation((ENamedElement)this.processingUnitEClass, source, new String[]{"documentation", "A ProcessingUnit describes the plain processor core. The identifier provides the actual type name of the processing unit."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_AddressingModes(), source, new String[]{"documentation", "The addressing modes describe the options to access the data from the memory. There are several addressing modes possible. Typical attributes are:\r\n- Direct\r\n- Indirect\r\n- Absolute\r\n- Base + offset (relative)\r\n- Near / far\r\n- Pre/Post- Increment/decrement\r\nThe addressing modes take important influence to the performance index of a PU, but are not main topic of the software development, as far as high level programming languages are used, due to the fact that these are covered by compiler settings and compiler strategies. The main advantage is available at the level of assembler programming or compiler optimization.\r\nThe Enumeration is open."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureKind(), source, new String[]{"documentation", "There are two kinds of architectures:\r\n- Harvard: A computer architecture in which program instructions are stored in different memory from data. Each type of memory is accessed via a separate bus, allowing instructions and data to be fetched in parallel.\r\n- Von Neumann: A computer architecture in which each successive operation can read or write any memory location, independent of the location accessed by the previous operation."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureName(), source, new String[]{"documentation", "The name of the architecture (e.g. ARM, MIPS, PowerPC)."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ArchitectureType(), source, new String[]{"documentation", "The architecture type take influence to the performance index of a PU, but are not necessarily a main topic of software development, as some of the aspects are transparent  to the user as the are handled with in the compiler. The last two types are slightly different as they require a detailed planning during system design, how the data must be prepared in order to use the features of an SIMD or MIMD very efficiently. Application like video processing use in general this features by their data format, as every pixel information is formed by the three basic colours and intensity, thus each pixel is represented by four different values, which have to be processed simultaneously."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_BootTime(), source, new String[]{"documentation", "Provide information about the boot time of the PU."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_DmaChannelCount(), source, new String[]{"documentation", "Direct Memory Access is a mechanism for off-loading a PU and having transfer directly between memory and peripherals without involving the PU. \r\nIn most common PU the DMA mechanism is implemented with a specialised cell (DMA unit) that transfers data between a peripheral device and memory, independent of the processor. The DMA controller becomes the bus master and directs the reads or writes between itself and memory. A typical DMA transfer can be described in three steps:\r\n1. The PU sets up the DMA transfer by supplying the identity of the periphery module, the operation to perform on that device, the memory address that is the source or the destination of the data to be transferred, and the number of bytes to transfer. \r\n2. The DMA starts the operation on the periphery device and arbitrates for the bus. When the data is available, from the periphery device or memory, it transfers the data. The DMA unit supplies the memory address and initiates the next transfer. With this technique, a DMA unit can complete an entire transfer, which may be Kbytes of data, without bothering the PU. Many DMA units contain some memory to allow them to deal flexibly with delays either in transfer or those incurred while waiting to become bus master. \r\n3. Once the DMA transfer is complete, the DMA unit interrupts the processor, which can then determine by interrogating the DMA unit or examining memory whether the entire operation completed successfully. \r\nDuring an active DMA transfer the PU cannot access the involved resources concurrently."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_ImplementationTechnology(), source, new String[]{"documentation", "Name of the technology used to implement this PU."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_MaxInterruptNestingLevels(), source, new String[]{"documentation", "Defines how many interrupts are allowed to be activated at one time. This entry is mainly defined by the size of the according stack as the data saving mechanism during interrupts and the data passing mechanism during function calls use the stack."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_Mpu(), source, new String[]{"documentation", "Describes the Memory Protection Unit, if available."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_NaturalDataSize(), source, new String[]{"documentation", "The natural data size prvides information which data manipulations are optimized on this PU. The natural data size is typically the Data Register size. The PU is optimised for this data size.\r\nTypical natural data size is one of following (in bits): 8, 16, 32, 64, other (12, 20, 80)\r\n"});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_OpcodeSize(), source, new String[]{"documentation", "The attribute describes the typical length of the opcodes. In CISC machines the opcode size is variable due to the opcode itself. In RISC machines the opcode is by definition limited to a defined size.\r\nType definition is used if the PU has more than one opcode set is incorporated. E.g. at the ARM architecture there is the ARM opcode set (size of 32 bit) and the Thumb opcode set (size of 16 bit).\r\nCode compression is a technology where the opcodes are stored in a compressed form and are automatically decompressed before execution."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_PuClock(), source, new String[]{"documentation", "The clock source for the PU."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_RegisterModels(), source, new String[]{"documentation", "Describes the register model of the PU. For each register type availabe one 'Regsiter' element is used to give the number available."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_SpecialOpcodes(), source, new String[]{"documentation", "The following attributes are opcodes, which are not supported by all PUs. The support of this opcodes has an influence on the performance of the PU.\r\n- Bit-manipulation\r\n- Multiplication\r\n- Division\r\n- Multiply Accumulate\r\n- Floating-point Support\r\nIn the future further opcodes may be possible.\r\n\r\nThe special opcodes  take important influence to the performance index of a PU, but are not main topic of the software development, as far as high level programming languages are used, due to the fact that these are covered by compiler settings, compiler strategies and software libraries where the direct usage or a SW emulation is available for almost any general use case. For some of these opcodes the main advantage is available only at the level of assembler programming or compiler optimization."});
        this.addAnnotation((ENamedElement)this.getProcessingUnit_SupportedDataTypes(), source, new String[]{"documentation", "This element provides a list of all supported data types and its according data sizes of the described PU."});
        this.addAnnotation((ENamedElement)this.registerEClass, source, new String[]{"documentation", "The user available registers are a part of the programming model that consists of: Memory organisation and segmentation, Data types, Registers, Instruction format, Operand selection, Interrupts and exceptions.\r\nBasically the register model contains the registers that are interest to the applications programmer; these registers can be grouped into three basic categories:\r\n- General registers: These general-purpose registers are used primarily to contain operands for arithmetic and logical operations.\r\n- Segment registers: These special-purpose registers permit software designers to choose either a flat or segmented model of memory organisation. These registers determine, at any given time, which segments of memory are currently addressable.\r\n- Status and instruction registers: These special-purpose registers are used to record and alter certain aspects of the processor state.\r\n\r\nThe register model is only valuable data for low level programming, e.g assembler programming. The register model, along with the available OP codes takes influence on the performance of the PU. The most general impact of the register model to software is number of registers which have to be handled during interrupts or function calls."});
        this.addAnnotation((ENamedElement)this.getRegister_Count(), source, new String[]{"documentation", "Describes how many registers are available of the specified type."});
        this.addAnnotation((ENamedElement)this.getRegister_Type(), source, new String[]{"documentation", "Describes the kind of register."});
        this.addAnnotation((ENamedElement)this.supportedDataTypeEClass, source, new String[]{"documentation", "This element provides a list of all supported data types and its according data sizes of the described PU.\r\nExamples: Boolean (1, 8 bit), Bit String / Bit Field (x bit), Character (8, 16 bit), Signed / unsigned integer (8, 16, 24, 32, 48, 64 bit), Single / double float (56, 64 bit), Fixed point (24 bit), Fractional, Packed (two values handled in one register)"});
        this.addAnnotation((ENamedElement)this.getSupportedDataType_SupportedDataSizes(), source, new String[]{"documentation", "The size of the data type.\r\nUnit: Bit"});
        this.addAnnotation((ENamedElement)this.interruptProduceHWPortEClass, source, new String[]{"documentation", "This port represents the source of an interrupt request, i.e. the HWElement to which this port is attached is capable of raising interrupt requests."});
    }

    protected void createTaggedValuesOfGeneralization_InterruptHWPortAnnotations() {
        String source = "TaggedValuesOfGeneralization_InterruptHWPort";
        this.addAnnotation((ENamedElement)this.interruptConsumeHWPortEClass, source, new String[]{"Name", "", "GUID", "{11A8FBAF-3FDA-4b19-BE40-2CF701980E69}", "Id", "315763115", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.interruptProduceHWPortEClass, source, new String[]{"Name", "", "GUID", "{D174F980-DFC1-457d-B50A-91381D5C8054}", "Id", "1744311836", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.interruptConsumeHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.interruptHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.mpuEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.processingUnitEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.registerEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.supportedDataTypeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.interruptProduceHWPortEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_HWPortAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWPort";
        this.addAnnotation((ENamedElement)this.interruptHWPortEClass, source, new String[]{"Name", "", "GUID", "{88008BA0-CD13-40f6-875D-8FC73C7A7DA7}", "Id", "1839002770", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.mpuEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.registerEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_HWElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWElement";
        this.addAnnotation((ENamedElement)this.processingUnitEClass, source, new String[]{"Name", "", "GUID", "{31855651-97F4-412d-B742-E178FB669F4C}", "Id", "-157495184", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.supportedDataTypeEClass, source, new String[]{"Name", "", "GUID", "{8CA3AE1B-FDEE-4635-8C79-45DB4640F275}", "Id", "-740541324", "xml.sequenceOffset", "0"});
    }
}

