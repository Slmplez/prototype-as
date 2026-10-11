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
package autosar21.swcomponent.resources.executiontime.impl;

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
import autosar21.swcomponent.resources.executiontime.ECUPrototype;
import autosar21.swcomponent.resources.executiontime.ExecutionTime;
import autosar21.swcomponent.resources.executiontime.ExecutiontimeFactory;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.executiontime.HardwareConfiguration;
import autosar21.swcomponent.resources.executiontime.MeasuredExecutionTime;
import autosar21.swcomponent.resources.executiontime.MemorySectionLocation;
import autosar21.swcomponent.resources.executiontime.RoughEstimateOfExecutionTime;
import autosar21.swcomponent.resources.executiontime.SimulatedExecutionTime;
import autosar21.swcomponent.resources.executiontime.SoftwareContext;
import autosar21.swcomponent.resources.executiontime.WorstCaseExecutionTime;
import autosar21.swcomponent.resources.executiontime.util.ExecutiontimeValidator;
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
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class ExecutiontimePackageImpl
extends EPackageImpl
implements ExecutiontimePackage {
    private EClass ecuPrototypeEClass = null;
    private EClass executionTimeEClass = null;
    private EClass memorySectionLocationEClass = null;
    private EClass softwareContextEClass = null;
    private EClass measuredExecutionTimeEClass = null;
    private EClass roughEstimateOfExecutionTimeEClass = null;
    private EClass simulatedExecutionTimeEClass = null;
    private EClass worstCaseExecutionTimeEClass = null;
    private EClass hardwareConfigurationEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ExecutiontimePackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/r/et", (EFactory)ExecutiontimeFactory.eINSTANCE);
    }

    public static ExecutiontimePackage init() {
        if (isInited) {
            return (ExecutiontimePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/et");
        }
        ExecutiontimePackageImpl theExecutiontimePackage = (ExecutiontimePackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/r/et") instanceof ExecutiontimePackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/r/et") : new ExecutiontimePackageImpl());
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
        theExecutiontimePackage.createPackageContents();
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
        theExecutiontimePackage.initializePackageContents();
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
        EValidator.Registry.INSTANCE.put((Object)theExecutiontimePackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return ExecutiontimeValidator.INSTANCE;
            }
        });
        theExecutiontimePackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/r/et", (Object)theExecutiontimePackage);
        return theExecutiontimePackage;
    }

    public EClass getECUPrototype() {
        return this.ecuPrototypeEClass;
    }

    public EReference getECUPrototype_ExecutionTime() {
        return (EReference)this.ecuPrototypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getECUPrototype_ECU() {
        return (EReference)this.ecuPrototypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getExecutionTime() {
        return this.executionTimeEClass;
    }

    public EReference getExecutionTime_ResourceConsumption() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getExecutionTime_Ecu() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(1);
    }

    public EReference getExecutionTime_ExclusiveAreaSection() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(2);
    }

    public EReference getExecutionTime_ExternalLibraries() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(3);
    }

    public EReference getExecutionTime_HardwareConfiguration() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(4);
    }

    public EReference getExecutionTime_MemorySectionLocations() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(5);
    }

    public EReference getExecutionTime_Runnable() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(6);
    }

    public EReference getExecutionTime_SoftwareContext() {
        return (EReference)this.executionTimeEClass.getEStructuralFeatures().get(7);
    }

    public EClass getMemorySectionLocation() {
        return this.memorySectionLocationEClass;
    }

    public EReference getMemorySectionLocation_ExecutionTime() {
        return (EReference)this.memorySectionLocationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getMemorySectionLocation_ProvidedMemory() {
        return (EReference)this.memorySectionLocationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getMemorySectionLocation_SoftwareMemorySection() {
        return (EReference)this.memorySectionLocationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSoftwareContext() {
        return this.softwareContextEClass;
    }

    public EAttribute getSoftwareContext_Input() {
        return (EAttribute)this.softwareContextEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSoftwareContext_State() {
        return (EAttribute)this.softwareContextEClass.getEStructuralFeatures().get(1);
    }

    public EClass getMeasuredExecutionTime() {
        return this.measuredExecutionTimeEClass;
    }

    public EAttribute getMeasuredExecutionTime_AverageExecutionTime() {
        return (EAttribute)this.measuredExecutionTimeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getMeasuredExecutionTime_MaximalExecutionTime() {
        return (EAttribute)this.measuredExecutionTimeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getMeasuredExecutionTime_MinimalExecutionTime() {
        return (EAttribute)this.measuredExecutionTimeEClass.getEStructuralFeatures().get(2);
    }

    public EClass getRoughEstimateOfExecutionTime() {
        return this.roughEstimateOfExecutionTimeEClass;
    }

    public EAttribute getRoughEstimateOfExecutionTime_Description() {
        return (EAttribute)this.roughEstimateOfExecutionTimeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSimulatedExecutionTime() {
        return this.simulatedExecutionTimeEClass;
    }

    public EAttribute getSimulatedExecutionTime_AverageExecutionTime() {
        return (EAttribute)this.simulatedExecutionTimeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSimulatedExecutionTime_MaximalExecutionTime() {
        return (EAttribute)this.simulatedExecutionTimeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSimulatedExecutionTime_MinimalExecutionTime() {
        return (EAttribute)this.simulatedExecutionTimeEClass.getEStructuralFeatures().get(2);
    }

    public EClass getWorstCaseExecutionTime() {
        return this.worstCaseExecutionTimeEClass;
    }

    public EAttribute getWorstCaseExecutionTime_MaximalExecutionTime() {
        return (EAttribute)this.worstCaseExecutionTimeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getWorstCaseExecutionTime_MinimalExecutionTime() {
        return (EAttribute)this.worstCaseExecutionTimeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getHardwareConfiguration() {
        return this.hardwareConfigurationEClass;
    }

    public EAttribute getHardwareConfiguration_AdditionalInformation() {
        return (EAttribute)this.hardwareConfigurationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getHardwareConfiguration_ProcessorMode() {
        return (EAttribute)this.hardwareConfigurationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getHardwareConfiguration_ProcessorSpeed() {
        return (EAttribute)this.hardwareConfigurationEClass.getEStructuralFeatures().get(2);
    }

    public ExecutiontimeFactory getExecutiontimeFactory() {
        return (ExecutiontimeFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.ecuPrototypeEClass = this.createEClass(0);
        this.createEReference(this.ecuPrototypeEClass, 4);
        this.createEReference(this.ecuPrototypeEClass, 5);
        this.executionTimeEClass = this.createEClass(1);
        this.createEReference(this.executionTimeEClass, 16);
        this.createEReference(this.executionTimeEClass, 17);
        this.createEReference(this.executionTimeEClass, 18);
        this.createEReference(this.executionTimeEClass, 19);
        this.createEReference(this.executionTimeEClass, 20);
        this.createEReference(this.executionTimeEClass, 21);
        this.createEReference(this.executionTimeEClass, 22);
        this.createEReference(this.executionTimeEClass, 23);
        this.memorySectionLocationEClass = this.createEClass(2);
        this.createEReference(this.memorySectionLocationEClass, 4);
        this.createEReference(this.memorySectionLocationEClass, 5);
        this.createEReference(this.memorySectionLocationEClass, 6);
        this.softwareContextEClass = this.createEClass(3);
        this.createEAttribute(this.softwareContextEClass, 4);
        this.createEAttribute(this.softwareContextEClass, 5);
        this.measuredExecutionTimeEClass = this.createEClass(4);
        this.createEAttribute(this.measuredExecutionTimeEClass, 24);
        this.createEAttribute(this.measuredExecutionTimeEClass, 25);
        this.createEAttribute(this.measuredExecutionTimeEClass, 26);
        this.roughEstimateOfExecutionTimeEClass = this.createEClass(5);
        this.createEAttribute(this.roughEstimateOfExecutionTimeEClass, 24);
        this.simulatedExecutionTimeEClass = this.createEClass(6);
        this.createEAttribute(this.simulatedExecutionTimeEClass, 24);
        this.createEAttribute(this.simulatedExecutionTimeEClass, 25);
        this.createEAttribute(this.simulatedExecutionTimeEClass, 26);
        this.worstCaseExecutionTimeEClass = this.createEClass(7);
        this.createEAttribute(this.worstCaseExecutionTimeEClass, 24);
        this.createEAttribute(this.worstCaseExecutionTimeEClass, 25);
        this.hardwareConfigurationEClass = this.createEClass(8);
        this.createEAttribute(this.hardwareConfigurationEClass, 4);
        this.createEAttribute(this.hardwareConfigurationEClass, 5);
        this.createEAttribute(this.hardwareConfigurationEClass, 6);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("executiontime");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/r/et");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        ResourcesPackage theResourcesPackage = (ResourcesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r");
        ExclusiveareaPackage theExclusiveareaPackage = (ExclusiveareaPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/ea");
        ImplementationPackage theImplementationPackage = (ImplementationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/i");
        InternalbehaviorPackage theInternalbehaviorPackage = (InternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib");
        MemoryPackage theMemoryPackage = (MemoryPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/m");
        ObjectfilesectionPackage theObjectfilesectionPackage = (ObjectfilesectionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/r/ofs");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        this.ecuPrototypeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.executionTimeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.memorySectionLocationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.softwareContextEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.measuredExecutionTimeEClass.getESuperTypes().add((Object)this.getExecutionTime());
        this.roughEstimateOfExecutionTimeEClass.getESuperTypes().add((Object)this.getExecutionTime());
        this.simulatedExecutionTimeEClass.getESuperTypes().add((Object)this.getExecutionTime());
        this.worstCaseExecutionTimeEClass.getESuperTypes().add((Object)this.getExecutionTime());
        this.hardwareConfigurationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.ecuPrototypeEClass, ECUPrototype.class, "ECUPrototype", false, false, true);
        this.initEReference(this.getECUPrototype_ExecutionTime(), (EClassifier)this.getExecutionTime(), this.getExecutionTime_Ecu(), "executionTime", null, 0, 1, ECUPrototype.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getECUPrototype_ECU(), (EClassifier)theEcuresourcePackage.getECU(), null, "eCU", null, 0, 1, ECUPrototype.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.executionTimeEClass, ExecutionTime.class, "ExecutionTime", false, false, true);
        this.initEReference(this.getExecutionTime_ResourceConsumption(), (EClassifier)theResourcesPackage.getResourceConsumption(), theResourcesPackage.getResourceConsumption_ExecutionTimes(), "resourceConsumption", null, 0, 1, ExecutionTime.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getExecutionTime_Ecu(), (EClassifier)this.getECUPrototype(), this.getECUPrototype_ExecutionTime(), "ecu", null, 0, 1, ExecutionTime.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getExecutionTime_ExclusiveAreaSection(), (EClassifier)theExclusiveareaPackage.getRunnableEntityCanEnterExclusiveArea(), null, "exclusiveAreaSection", null, 0, 1, ExecutionTime.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getExecutionTime_ExternalLibraries(), (EClassifier)theImplementationPackage.getDependencyOnLibrary(), null, "externalLibraries", null, 0, -1, ExecutionTime.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getExecutionTime_HardwareConfiguration(), (EClassifier)this.getHardwareConfiguration(), null, "hardwareConfiguration", null, 0, 1, ExecutionTime.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getExecutionTime_MemorySectionLocations(), (EClassifier)this.getMemorySectionLocation(), this.getMemorySectionLocation_ExecutionTime(), "memorySectionLocations", null, 0, -1, ExecutionTime.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getExecutionTime_Runnable(), (EClassifier)theInternalbehaviorPackage.getRunnableEntity(), null, "runnable", null, 0, 1, ExecutionTime.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getExecutionTime_SoftwareContext(), (EClassifier)this.getSoftwareContext(), null, "softwareContext", null, 0, 1, ExecutionTime.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.memorySectionLocationEClass, MemorySectionLocation.class, "MemorySectionLocation", false, false, true);
        this.initEReference(this.getMemorySectionLocation_ExecutionTime(), (EClassifier)this.getExecutionTime(), this.getExecutionTime_MemorySectionLocations(), "executionTime", null, 0, 1, MemorySectionLocation.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getMemorySectionLocation_ProvidedMemory(), (EClassifier)theMemoryPackage.getProvidedMemorySegment(), null, "providedMemory", null, 0, 1, MemorySectionLocation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getMemorySectionLocation_SoftwareMemorySection(), (EClassifier)theObjectfilesectionPackage.getObjectFileSection(), null, "softwareMemorySection", null, 0, 1, MemorySectionLocation.class, false, false, true, false, true, false, true, false, true);
        EOperation op = this.addEOperation(this.memorySectionLocationEClass, (EClassifier)this.ecorePackage.getEBoolean(), "extimeecuhardwareMemorySectionecu", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        EGenericType g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.softwareContextEClass, SoftwareContext.class, "SoftwareContext", false, false, true);
        this.initEAttribute(this.getSoftwareContext_Input(), (EClassifier)thePrimitivetypesPackage.getString(), "input", "", 0, 1, SoftwareContext.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSoftwareContext_State(), (EClassifier)thePrimitivetypesPackage.getString(), "state", "", 0, 1, SoftwareContext.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.measuredExecutionTimeEClass, MeasuredExecutionTime.class, "MeasuredExecutionTime", false, false, true);
        this.initEAttribute(this.getMeasuredExecutionTime_AverageExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "averageExecutionTime", "0.0", 0, 1, MeasuredExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMeasuredExecutionTime_MaximalExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maximalExecutionTime", "0.0", 0, 1, MeasuredExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMeasuredExecutionTime_MinimalExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minimalExecutionTime", "0.0", 0, 1, MeasuredExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.roughEstimateOfExecutionTimeEClass, RoughEstimateOfExecutionTime.class, "RoughEstimateOfExecutionTime", false, false, true);
        this.initEAttribute(this.getRoughEstimateOfExecutionTime_Description(), (EClassifier)thePrimitivetypesPackage.getString(), "description", "", 0, 1, RoughEstimateOfExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.simulatedExecutionTimeEClass, SimulatedExecutionTime.class, "SimulatedExecutionTime", false, false, true);
        this.initEAttribute(this.getSimulatedExecutionTime_AverageExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "averageExecutionTime", "0.0", 0, 1, SimulatedExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSimulatedExecutionTime_MaximalExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maximalExecutionTime", "0.0", 0, 1, SimulatedExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSimulatedExecutionTime_MinimalExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minimalExecutionTime", "0.0", 0, 1, SimulatedExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.worstCaseExecutionTimeEClass, WorstCaseExecutionTime.class, "WorstCaseExecutionTime", false, false, true);
        this.initEAttribute(this.getWorstCaseExecutionTime_MaximalExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maximalExecutionTime", "0.0", 0, 1, WorstCaseExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getWorstCaseExecutionTime_MinimalExecutionTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minimalExecutionTime", "0.0", 0, 1, WorstCaseExecutionTime.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.hardwareConfigurationEClass, HardwareConfiguration.class, "HardwareConfiguration", false, false, true);
        this.initEAttribute(this.getHardwareConfiguration_AdditionalInformation(), (EClassifier)thePrimitivetypesPackage.getString(), "additionalInformation", "", 0, 1, HardwareConfiguration.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getHardwareConfiguration_ProcessorMode(), (EClassifier)thePrimitivetypesPackage.getString(), "processorMode", "", 0, 1, HardwareConfiguration.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getHardwareConfiguration_ProcessorSpeed(), (EClassifier)thePrimitivetypesPackage.getString(), "processorSpeed", "", 0, 1, HardwareConfiguration.class, false, false, true, true, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ExecutionTimeAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ExecutionTime", "GUID", "{37146FEF-F1E2-40f4-8F4F-B784866B44F7}", "Id", "1480784035"});
        this.addAnnotation((ENamedElement)this.ecuPrototypeEClass, source, new String[]{"Name", "ECUPrototype", "Modified", "Wed Nov 03 10:48:36 CET 2004", "Created", "Tue May 11 17:58:32 CEST 2004", "GUID", "{F575764B-7197-4b43-85A3-F2E3BEABE356}", "Id", "-116764364"});
        this.addAnnotation((ENamedElement)this.executionTimeEClass, source, new String[]{"Name", "ExecutionTime", "Modified", "Wed Mar 08 07:19:52 CET 2006", "Created", "Wed Feb 18 15:36:15 CET 2004", "GUID", "{5FB662ED-5D3C-4fda-AF0B-D29708153292}", "Id", "1422196261"});
        this.addAnnotation((ENamedElement)this.memorySectionLocationEClass, source, new String[]{"Name", "MemorySectionLocation", "Modified", "Fri Apr 15 21:32:53 CEST 2005", "Created", "Mon Feb 23 01:02:16 CET 2004", "GUID", "{733F3E32-B70C-4804-B676-2AC9FD35AD48}", "Id", "-1479312668"});
        this.addAnnotation((ENamedElement)this.softwareContextEClass, source, new String[]{"Name", "SoftwareContext", "Modified", "Wed Nov 03 10:48:36 CET 2004", "Created", "Wed Feb 18 15:50:24 CET 2004", "GUID", "{B8CD2E82-8AD8-429c-915F-6507107725C5}", "Id", "699294780"});
        this.addAnnotation((ENamedElement)this.getSoftwareContext_Input(), source, new String[]{"Name", "input", "GUID", "{2BFFEBDE-C201-4056-BEE6-4F254F890756}", "Id", "-318024502"});
        this.addAnnotation((ENamedElement)this.getSoftwareContext_State(), source, new String[]{"Name", "state", "GUID", "{0C23354D-04FB-4270-BF6F-3684594753C6}", "Id", "-457865587"});
        this.addAnnotation((ENamedElement)this.measuredExecutionTimeEClass, source, new String[]{"Name", "MeasuredExecutionTime", "Modified", "Wed Nov 03 10:59:32 CET 2004", "Created", "Wed Feb 18 16:04:42 CET 2004", "GUID", "{F96CC1E1-0AB4-48ac-80A2-E52A762A1087}", "Id", "-980061675"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_AverageExecutionTime(), source, new String[]{"Name", "averageExecutionTime", "GUID", "{0E11FCFA-B914-441e-AF39-E0BE49C32946}", "Id", "-1753661136"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_MaximalExecutionTime(), source, new String[]{"Name", "maximalExecutionTime", "GUID", "{FB05F0E5-1EF7-4911-AFBF-1C47D969C595}", "Id", "619862603"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_MinimalExecutionTime(), source, new String[]{"Name", "minimalExecutionTime", "GUID", "{70AD8EC9-23A1-457c-B5F2-DFB9A38CF1B9}", "Id", "-603722830"});
        this.addAnnotation((ENamedElement)this.roughEstimateOfExecutionTimeEClass, source, new String[]{"Name", "RoughEstimateOfExecutionTime", "Modified", "Wed Nov 03 10:59:32 CET 2004", "Created", "Wed Feb 18 16:02:06 CET 2004", "GUID", "{0A7404AC-5B79-407e-AF7F-712360A2C5A5}", "Id", "-910210234"});
        this.addAnnotation((ENamedElement)this.getRoughEstimateOfExecutionTime_Description(), source, new String[]{"Name", "description", "GUID", "{D4345149-A3A1-4664-9F88-E172E9B5FDEB}", "Id", "1203838799"});
        this.addAnnotation((ENamedElement)this.simulatedExecutionTimeEClass, source, new String[]{"Name", "SimulatedExecutionTime", "Modified", "Wed Nov 03 10:59:32 CET 2004", "Created", "Wed Feb 18 16:04:57 CET 2004", "GUID", "{168C6886-6341-4cd7-8421-97AE73A855B6}", "Id", "-1383603043"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_AverageExecutionTime(), source, new String[]{"Name", "averageExecutionTime", "GUID", "{C78AE6F7-B82A-4f96-BECC-D18836725D0D}", "Id", "464029016"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_MaximalExecutionTime(), source, new String[]{"Name", "maximalExecutionTime", "GUID", "{3925A72C-B122-480f-AFEB-BF6869429900}", "Id", "1854422426"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_MinimalExecutionTime(), source, new String[]{"Name", "minimalExecutionTime", "GUID", "{E4518BFE-DBC9-4ff8-B487-FFFF960C68E5}", "Id", "-1177866221"});
        this.addAnnotation((ENamedElement)this.worstCaseExecutionTimeEClass, source, new String[]{"Name", "WorstCaseExecutionTime", "Modified", "Wed Nov 03 10:59:32 CET 2004", "Created", "Wed Feb 18 16:00:34 CET 2004", "GUID", "{F9F966B1-D272-4476-861F-050BA8ECA18D}", "Id", "1932913282"});
        this.addAnnotation((ENamedElement)this.getWorstCaseExecutionTime_MaximalExecutionTime(), source, new String[]{"Name", "maximalExecutionTime", "GUID", "{970FE50B-C1A5-499a-A184-60811EF534A6}", "Id", "1865194624"});
        this.addAnnotation((ENamedElement)this.getWorstCaseExecutionTime_MinimalExecutionTime(), source, new String[]{"Name", "minimalExecutionTime", "GUID", "{4BAD36D7-53E4-41cc-AF29-B8418D02E3C4}", "Id", "1202390235"});
        this.addAnnotation((ENamedElement)this.hardwareConfigurationEClass, source, new String[]{"Name", "HardwareConfiguration", "Modified", "Wed Nov 03 10:48:36 CET 2004", "Created", "Wed Feb 18 15:45:36 CET 2004", "GUID", "{7F57594D-6E81-45e8-A190-14454696E998}", "Id", "1064469121"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_AdditionalInformation(), source, new String[]{"Name", "additionalInformation", "GUID", "{0DCAF3D3-A165-4af7-91CE-723BBA401278}", "Id", "-1747413876"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_ProcessorMode(), source, new String[]{"Name", "processorMode", "GUID", "{789F7C27-514A-44f0-990D-23F3B11A3110}", "Id", "1235619991"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_ProcessorSpeed(), source, new String[]{"Name", "processorSpeed", "GUID", "{A5B52928-557F-467c-8947-F1EF519271BA}", "Id", "-475998546"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "EXECUTION-TIME", "xml.namePlural", "EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.ecuPrototypeEClass, source, new String[]{"xml.name", "ECU-PROTOTYPE", "xml.namePlural", "ECU-PROTOTYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getECUPrototype_ECU(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "E-CU-TREF", "xml.namePlural", "E-CU-TREFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.executionTimeEClass, source, new String[]{"xml.name", "EXECUTION-TIME", "xml.namePlural", "EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_Ecu(), source, new String[]{"xml.name", "ECU", "xml.namePlural", "ECUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_ExclusiveAreaSection(), source, new String[]{"xml.name", "EXCLUSIVE-AREA-SECTION-REF", "xml.namePlural", "EXCLUSIVE-AREA-SECTION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_ExternalLibraries(), source, new String[]{"xml.name", "EXTERNAL-LIBRARY-REF", "xml.namePlural", "EXTERNAL-LIBRARY-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_HardwareConfiguration(), source, new String[]{"xml.name", "HARDWARE-CONFIGURATION", "xml.namePlural", "HARDWARE-CONFIGURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_MemorySectionLocations(), source, new String[]{"xml.name", "MEMORY-SECTION-LOCATION", "xml.namePlural", "MEMORY-SECTION-LOCATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_Runnable(), source, new String[]{"xml.name", "RUNNABLE-REF", "xml.namePlural", "RUNNABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_SoftwareContext(), source, new String[]{"xml.name", "SOFTWARE-CONTEXT", "xml.namePlural", "SOFTWARE-CONTEXTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.memorySectionLocationEClass, source, new String[]{"xml.name", "MEMORY-SECTION-LOCATION", "xml.namePlural", "MEMORY-SECTION-LOCATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMemorySectionLocation_ProvidedMemory(), source, new String[]{"xml.name", "PROVIDED-MEMORY-REF", "xml.namePlural", "PROVIDED-MEMORY-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMemorySectionLocation_SoftwareMemorySection(), source, new String[]{"xml.name", "SOFTWARE-MEMORY-SECTION-REF", "xml.namePlural", "SOFTWARE-MEMORY-SECTION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.softwareContextEClass, source, new String[]{"xml.name", "SOFTWARE-CONTEXT", "xml.namePlural", "SOFTWARE-CONTEXTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSoftwareContext_Input(), source, new String[]{"xml.name", "INPUT", "xml.namePlural", "INPUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSoftwareContext_State(), source, new String[]{"xml.name", "STATE", "xml.namePlural", "STATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.measuredExecutionTimeEClass, source, new String[]{"xml.name", "MEASURED-EXECUTION-TIME", "xml.namePlural", "MEASURED-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_AverageExecutionTime(), source, new String[]{"xml.name", "AVERAGE-EXECUTION-TIME", "xml.namePlural", "AVERAGE-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_MaximalExecutionTime(), source, new String[]{"xml.name", "MAXIMAL-EXECUTION-TIME", "xml.namePlural", "MAXIMAL-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_MinimalExecutionTime(), source, new String[]{"xml.name", "MINIMAL-EXECUTION-TIME", "xml.namePlural", "MINIMAL-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.roughEstimateOfExecutionTimeEClass, source, new String[]{"xml.name", "ROUGH-ESTIMATE-OF-EXECUTION-TIME", "xml.namePlural", "ROUGH-ESTIMATE-OF-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRoughEstimateOfExecutionTime_Description(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "DESCRIPTION", "xml.namePlural", "DESCRIPTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.simulatedExecutionTimeEClass, source, new String[]{"xml.name", "SIMULATED-EXECUTION-TIME", "xml.namePlural", "SIMULATED-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_AverageExecutionTime(), source, new String[]{"xml.name", "AVERAGE-EXECUTION-TIME", "xml.namePlural", "AVERAGE-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_MaximalExecutionTime(), source, new String[]{"xml.name", "MAXIMAL-EXECUTION-TIME", "xml.namePlural", "MAXIMAL-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_MinimalExecutionTime(), source, new String[]{"xml.name", "MINIMAL-EXECUTION-TIME", "xml.namePlural", "MINIMAL-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.worstCaseExecutionTimeEClass, source, new String[]{"xml.name", "WORST-CASE-EXECUTION-TIME", "xml.namePlural", "WORST-CASE-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getWorstCaseExecutionTime_MaximalExecutionTime(), source, new String[]{"xml.name", "MAXIMAL-EXECUTION-TIME", "xml.namePlural", "MAXIMAL-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getWorstCaseExecutionTime_MinimalExecutionTime(), source, new String[]{"xml.name", "MINIMAL-EXECUTION-TIME", "xml.namePlural", "MINIMAL-EXECUTION-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.hardwareConfigurationEClass, source, new String[]{"xml.name", "HARDWARE-CONFIGURATION", "xml.namePlural", "HARDWARE-CONFIGURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_AdditionalInformation(), source, new String[]{"xml.name", "ADDITIONAL-INFORMATION", "xml.namePlural", "ADDITIONAL-INFORMATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_ProcessorMode(), source, new String[]{"xml.name", "PROCESSOR-MODE", "xml.namePlural", "PROCESSOR-MODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_ProcessorSpeed(), source, new String[]{"xml.name", "PROCESSOR-SPEED", "xml.namePlural", "PROCESSOR-SPEEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.ecuPrototypeEClass, source, new String[]{"name", "ECU-PROTOTYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getECUPrototype_ECU(), source, new String[]{"name", "E-CU-TREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.executionTimeEClass, source, new String[]{"name", "EXECUTION-TIME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_Ecu(), source, new String[]{"name", "ECU", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_ExclusiveAreaSection(), source, new String[]{"name", "EXCLUSIVE-AREA-SECTION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_ExternalLibraries(), source, new String[]{"name", "EXTERNAL-LIBRARY-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_HardwareConfiguration(), source, new String[]{"name", "HARDWARE-CONFIGURATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_MemorySectionLocations(), source, new String[]{"name", "MEMORY-SECTION-LOCATIONS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_Runnable(), source, new String[]{"name", "RUNNABLE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getExecutionTime_SoftwareContext(), source, new String[]{"name", "SOFTWARE-CONTEXT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.memorySectionLocationEClass, source, new String[]{"name", "MEMORY-SECTION-LOCATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemorySectionLocation_ProvidedMemory(), source, new String[]{"name", "PROVIDED-MEMORY-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemorySectionLocation_SoftwareMemorySection(), source, new String[]{"name", "SOFTWARE-MEMORY-SECTION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.softwareContextEClass, source, new String[]{"name", "SOFTWARE-CONTEXT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSoftwareContext_Input(), source, new String[]{"name", "INPUT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSoftwareContext_State(), source, new String[]{"name", "STATE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.measuredExecutionTimeEClass, source, new String[]{"name", "MEASURED-EXECUTION-TIME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_AverageExecutionTime(), source, new String[]{"name", "AVERAGE-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_MaximalExecutionTime(), source, new String[]{"name", "MAXIMAL-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMeasuredExecutionTime_MinimalExecutionTime(), source, new String[]{"name", "MINIMAL-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.roughEstimateOfExecutionTimeEClass, source, new String[]{"name", "ROUGH-ESTIMATE-OF-EXECUTION-TIME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRoughEstimateOfExecutionTime_Description(), source, new String[]{"name", "DESCRIPTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.simulatedExecutionTimeEClass, source, new String[]{"name", "SIMULATED-EXECUTION-TIME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_AverageExecutionTime(), source, new String[]{"name", "AVERAGE-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_MaximalExecutionTime(), source, new String[]{"name", "MAXIMAL-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSimulatedExecutionTime_MinimalExecutionTime(), source, new String[]{"name", "MINIMAL-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.worstCaseExecutionTimeEClass, source, new String[]{"name", "WORST-CASE-EXECUTION-TIME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getWorstCaseExecutionTime_MaximalExecutionTime(), source, new String[]{"name", "MAXIMAL-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getWorstCaseExecutionTime_MinimalExecutionTime(), source, new String[]{"name", "MINIMAL-EXECUTION-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.hardwareConfigurationEClass, source, new String[]{"name", "HARDWARE-CONFIGURATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_AdditionalInformation(), source, new String[]{"name", "ADDITIONAL-INFORMATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_ProcessorMode(), source, new String[]{"name", "PROCESSOR-MODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getHardwareConfiguration_ProcessorSpeed(), source, new String[]{"name", "PROCESSOR-SPEED", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.ecuPrototypeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.getECUPrototype_ECU(), source, new String[]{"Stereotype", "isOfType"});
        this.addAnnotation((ENamedElement)this.executionTimeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.memorySectionLocationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.softwareContextEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.measuredExecutionTimeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.roughEstimateOfExecutionTimeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.simulatedExecutionTimeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.worstCaseExecutionTimeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.hardwareConfigurationEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.ecuPrototypeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.memorySectionLocationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.softwareContextEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.hardwareConfigurationEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.executionTimeEClass, source, new String[]{"Name", "", "GUID", "{40401A2E-DC02-48c2-A0DB-A11A917DEA94}", "Id", "-1136573287", "xml.sequenceOffset", "0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.getExecutionTime_ExclusiveAreaSection(), source, new String[]{"documentation", "Reference to the RunnbaleEntityCanEnterExclusiveArea this execution time is provided for."});
        this.addAnnotation((ENamedElement)this.getExecutionTime_ExternalLibraries(), source, new String[]{"documentation", "If this dependency is specified, the execution time of the library code is included in the execution time data for the runnable."});
        this.addAnnotation((ENamedElement)this.getExecutionTime_Runnable(), source, new String[]{"documentation", "Reference to the runnable this execution time is provided for."});
    }

    protected void createTaggedValuesOfGeneralization_ExecutionTimeAnnotations() {
        String source = "TaggedValuesOfGeneralization_ExecutionTime";
        this.addAnnotation((ENamedElement)this.measuredExecutionTimeEClass, source, new String[]{"Name", "", "GUID", "{7A25641F-16D3-459c-89FE-0666594949F6}", "Id", "-305580278", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.roughEstimateOfExecutionTimeEClass, source, new String[]{"Name", "", "GUID", "{387A14AB-B954-443a-828D-FB01BDB63C43}", "Id", "1402235049", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.simulatedExecutionTimeEClass, source, new String[]{"Name", "", "GUID", "{1FB94759-23A1-4c81-948F-72A3B876C0D2}", "Id", "-1537328202", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.worstCaseExecutionTimeEClass, source, new String[]{"Name", "", "GUID", "{E38B2368-3078-40bb-95AF-731A7910C038}", "Id", "-1283257220", "xml.sequenceOffset", "0"});
    }
}

