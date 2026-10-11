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
package autosar21.ecuresource.basicelements.impl;

import autosar21.bswmodule.BswmodulePackage;
import autosar21.bswmodule.impl.BswmodulePackageImpl;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.impl.EcucdescriptionPackageImpl;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecucparameterdef.impl.EcucparameterdefPackageImpl;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.basicelements.BasicelementsFactory;
import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.basicelements.BootTime;
import autosar21.ecuresource.basicelements.ElectricalRange;
import autosar21.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar21.ecuresource.basicelements.FrequencyRange;
import autosar21.ecuresource.basicelements.MemoryAccess;
import autosar21.ecuresource.basicelements.MemoryAccessAccessTypeEnum;
import autosar21.ecuresource.basicelements.SupportsSafety;
import autosar21.ecuresource.basicelements.SupportsSecurity;
import autosar21.ecuresource.basicelements.Temperature;
import autosar21.ecuresource.basicelements.TimeRange;
import autosar21.ecuresource.basicelements.util.BasicelementsValidator;
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

public class BasicelementsPackageImpl
extends EPackageImpl
implements BasicelementsPackage {
    private EClass bootTimeEClass = null;
    private EClass electricalRangeEClass = null;
    private EClass errorDetectionCorrectionEClass = null;
    private EClass frequencyRangeEClass = null;
    private EClass memoryAccessEClass = null;
    private EClass timeRangeEClass = null;
    private EClass supportsSafetyEClass = null;
    private EClass supportsSecurityEClass = null;
    private EClass temperatureEClass = null;
    private EEnum memoryAccessAccessTypeEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private BasicelementsPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecur/be", (EFactory)BasicelementsFactory.eINSTANCE);
    }

    public static BasicelementsPackage init() {
        if (isInited) {
            return (BasicelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be");
        }
        BasicelementsPackageImpl theBasicelementsPackage = (BasicelementsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/be") instanceof BasicelementsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/be") : new BasicelementsPackageImpl());
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
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm") : DatamappingPackage.eINSTANCE);
        autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_14 = (autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") instanceof autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") : autosar21.system.datamapping.instanceref.InstancerefPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") : SignalpathsPackage.eINSTANCE);
        autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_15 = (autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") instanceof autosar21.system.signalpaths.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r") : autosar21.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE);
        BswmodulePackageImpl theBswmodulePackage = (BswmodulePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") instanceof BswmodulePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm") : BswmodulePackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_16 = (autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") instanceof autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") : autosar21.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        theBasicelementsPackage.createPackageContents();
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
        theDatamappingPackage.createPackageContents();
        theInstancerefPackage_14.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theInstancerefPackage_15.createPackageContents();
        theBswmodulePackage.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_16.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theBasicelementsPackage.initializePackageContents();
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
        theDatamappingPackage.initializePackageContents();
        theInstancerefPackage_14.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theInstancerefPackage_15.initializePackageContents();
        theBswmodulePackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_16.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        EValidator.Registry.INSTANCE.put((Object)theBasicelementsPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return BasicelementsValidator.INSTANCE;
            }
        });
        theBasicelementsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecur/be", (Object)theBasicelementsPackage);
        return theBasicelementsPackage;
    }

    public EClass getBootTime() {
        return this.bootTimeEClass;
    }

    public EReference getBootTime_ProcessingUnit() {
        return (EReference)this.bootTimeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getBootTime_ColdStartTime() {
        return (EAttribute)this.bootTimeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getBootTime_ResetTime() {
        return (EAttribute)this.bootTimeEClass.getEStructuralFeatures().get(2);
    }

    public EClass getElectricalRange() {
        return this.electricalRangeEClass;
    }

    public EAttribute getElectricalRange_MaxCurrent() {
        return (EAttribute)this.electricalRangeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getElectricalRange_MaxVoltage() {
        return (EAttribute)this.electricalRangeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getElectricalRange_MinCurrent() {
        return (EAttribute)this.electricalRangeEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getElectricalRange_MinVoltage() {
        return (EAttribute)this.electricalRangeEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getElectricalRange_TypicalCurrent() {
        return (EAttribute)this.electricalRangeEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getElectricalRange_TypicalVoltage() {
        return (EAttribute)this.electricalRangeEClass.getEStructuralFeatures().get(5);
    }

    public EClass getErrorDetectionCorrection() {
        return this.errorDetectionCorrectionEClass;
    }

    public EAttribute getErrorDetectionCorrection_CorrectedBits() {
        return (EAttribute)this.errorDetectionCorrectionEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getErrorDetectionCorrection_DetectedBits() {
        return (EAttribute)this.errorDetectionCorrectionEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getErrorDetectionCorrection_ExtraBits() {
        return (EAttribute)this.errorDetectionCorrectionEClass.getEStructuralFeatures().get(2);
    }

    public EClass getFrequencyRange() {
        return this.frequencyRangeEClass;
    }

    public EAttribute getFrequencyRange_MaxFrequency() {
        return (EAttribute)this.frequencyRangeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getFrequencyRange_MinFrequency() {
        return (EAttribute)this.frequencyRangeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getFrequencyRange_TypicalFrequency() {
        return (EAttribute)this.frequencyRangeEClass.getEStructuralFeatures().get(2);
    }

    public EClass getMemoryAccess() {
        return this.memoryAccessEClass;
    }

    public EReference getMemoryAccess_MemoryMappedAssemblyHWConnection() {
        return (EReference)this.memoryAccessEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getMemoryAccess_AccessType() {
        return (EAttribute)this.memoryAccessEClass.getEStructuralFeatures().get(1);
    }

    public EReference getMemoryAccess_Time() {
        return (EReference)this.memoryAccessEClass.getEStructuralFeatures().get(2);
    }

    public EClass getTimeRange() {
        return this.timeRangeEClass;
    }

    public EAttribute getTimeRange_Max() {
        return (EAttribute)this.timeRangeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getTimeRange_Min() {
        return (EAttribute)this.timeRangeEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getTimeRange_Typical() {
        return (EAttribute)this.timeRangeEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSupportsSafety() {
        return this.supportsSafetyEClass;
    }

    public EReference getSupportsSafety_HWElement() {
        return (EReference)this.supportsSafetyEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSupportsSecurity() {
        return this.supportsSecurityEClass;
    }

    public EReference getSupportsSecurity_HWElement() {
        return (EReference)this.supportsSecurityEClass.getEStructuralFeatures().get(0);
    }

    public EClass getTemperature() {
        return this.temperatureEClass;
    }

    public EReference getTemperature_HWElement() {
        return (EReference)this.temperatureEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getTemperature_NeedsCooling() {
        return (EAttribute)this.temperatureEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getTemperature_NeedsHeating() {
        return (EAttribute)this.temperatureEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getTemperature_OperationMax() {
        return (EAttribute)this.temperatureEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getTemperature_OperationMin() {
        return (EAttribute)this.temperatureEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getTemperature_OperationTypical() {
        return (EAttribute)this.temperatureEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getTemperature_StorageMax() {
        return (EAttribute)this.temperatureEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getTemperature_StorageMin() {
        return (EAttribute)this.temperatureEClass.getEStructuralFeatures().get(7);
    }

    public EEnum getMemoryAccessAccessTypeEnum() {
        return this.memoryAccessAccessTypeEnumEEnum;
    }

    public BasicelementsFactory getBasicelementsFactory() {
        return (BasicelementsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.bootTimeEClass = this.createEClass(0);
        this.createEReference(this.bootTimeEClass, 4);
        this.createEAttribute(this.bootTimeEClass, 5);
        this.createEAttribute(this.bootTimeEClass, 6);
        this.electricalRangeEClass = this.createEClass(1);
        this.createEAttribute(this.electricalRangeEClass, 4);
        this.createEAttribute(this.electricalRangeEClass, 5);
        this.createEAttribute(this.electricalRangeEClass, 6);
        this.createEAttribute(this.electricalRangeEClass, 7);
        this.createEAttribute(this.electricalRangeEClass, 8);
        this.createEAttribute(this.electricalRangeEClass, 9);
        this.errorDetectionCorrectionEClass = this.createEClass(2);
        this.createEAttribute(this.errorDetectionCorrectionEClass, 4);
        this.createEAttribute(this.errorDetectionCorrectionEClass, 5);
        this.createEAttribute(this.errorDetectionCorrectionEClass, 6);
        this.frequencyRangeEClass = this.createEClass(3);
        this.createEAttribute(this.frequencyRangeEClass, 4);
        this.createEAttribute(this.frequencyRangeEClass, 5);
        this.createEAttribute(this.frequencyRangeEClass, 6);
        this.memoryAccessEClass = this.createEClass(4);
        this.createEReference(this.memoryAccessEClass, 4);
        this.createEAttribute(this.memoryAccessEClass, 5);
        this.createEReference(this.memoryAccessEClass, 6);
        this.timeRangeEClass = this.createEClass(5);
        this.createEAttribute(this.timeRangeEClass, 4);
        this.createEAttribute(this.timeRangeEClass, 5);
        this.createEAttribute(this.timeRangeEClass, 6);
        this.supportsSafetyEClass = this.createEClass(6);
        this.createEReference(this.supportsSafetyEClass, 4);
        this.supportsSecurityEClass = this.createEClass(7);
        this.createEReference(this.supportsSecurityEClass, 4);
        this.temperatureEClass = this.createEClass(8);
        this.createEReference(this.temperatureEClass, 4);
        this.createEAttribute(this.temperatureEClass, 5);
        this.createEAttribute(this.temperatureEClass, 6);
        this.createEAttribute(this.temperatureEClass, 7);
        this.createEAttribute(this.temperatureEClass, 8);
        this.createEAttribute(this.temperatureEClass, 9);
        this.createEAttribute(this.temperatureEClass, 10);
        this.createEAttribute(this.temperatureEClass, 11);
        this.memoryAccessAccessTypeEnumEEnum = this.createEEnum(9);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("basicelements");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecur/be");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        ProcessingunitPackage theProcessingunitPackage = (ProcessingunitPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/pu");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        MemoryPackage theMemoryPackage = (MemoryPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/m");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        this.bootTimeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.electricalRangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.errorDetectionCorrectionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.frequencyRangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.memoryAccessEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.timeRangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.supportsSafetyEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.supportsSecurityEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.temperatureEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.bootTimeEClass, BootTime.class, "BootTime", false, false, true);
        this.initEReference(this.getBootTime_ProcessingUnit(), (EClassifier)theProcessingunitPackage.getProcessingUnit(), theProcessingunitPackage.getProcessingUnit_BootTime(), "processingUnit", null, 0, 1, BootTime.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getBootTime_ColdStartTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "coldStartTime", "0.0", 0, 1, BootTime.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getBootTime_ResetTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "resetTime", "0.0", 0, 1, BootTime.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.electricalRangeEClass, ElectricalRange.class, "ElectricalRange", false, false, true);
        this.initEAttribute(this.getElectricalRange_MaxCurrent(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxCurrent", "0.0", 0, 1, ElectricalRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElectricalRange_MaxVoltage(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxVoltage", "0.0", 0, 1, ElectricalRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElectricalRange_MinCurrent(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minCurrent", "0.0", 0, 1, ElectricalRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElectricalRange_MinVoltage(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minVoltage", "0.0", 0, 1, ElectricalRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElectricalRange_TypicalCurrent(), (EClassifier)thePrimitivetypesPackage.getFloat(), "typicalCurrent", "0.0", 0, 1, ElectricalRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getElectricalRange_TypicalVoltage(), (EClassifier)thePrimitivetypesPackage.getFloat(), "typicalVoltage", "0.0", 0, 1, ElectricalRange.class, false, false, true, true, false, true, false, true);
        EOperation op = this.addEOperation(this.electricalRangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_minCurrenttypicalCurrentandtypicalCurrentmaxCurrent", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        EGenericType g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        op = this.addEOperation(this.electricalRangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_minVoltagetypicalVoltageandtypicalVoltagemaxVoltage", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.errorDetectionCorrectionEClass, ErrorDetectionCorrection.class, "ErrorDetectionCorrection", false, false, true);
        this.initEAttribute(this.getErrorDetectionCorrection_CorrectedBits(), (EClassifier)thePrimitivetypesPackage.getInteger(), "correctedBits", "0", 0, 1, ErrorDetectionCorrection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getErrorDetectionCorrection_DetectedBits(), (EClassifier)thePrimitivetypesPackage.getInteger(), "detectedBits", "0", 0, 1, ErrorDetectionCorrection.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getErrorDetectionCorrection_ExtraBits(), (EClassifier)thePrimitivetypesPackage.getInteger(), "extraBits", "0", 0, 1, ErrorDetectionCorrection.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.frequencyRangeEClass, FrequencyRange.class, "FrequencyRange", false, false, true);
        this.initEAttribute(this.getFrequencyRange_MaxFrequency(), (EClassifier)thePrimitivetypesPackage.getFloat(), "maxFrequency", "0.0", 0, 1, FrequencyRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFrequencyRange_MinFrequency(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minFrequency", "0.0", 0, 1, FrequencyRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getFrequencyRange_TypicalFrequency(), (EClassifier)thePrimitivetypesPackage.getFloat(), "typicalFrequency", "0.0", 0, 1, FrequencyRange.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.frequencyRangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_minFrequencytypicalFrequencyandtypicalFrequencymaxFrequency", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.memoryAccessEClass, MemoryAccess.class, "MemoryAccess", false, false, true);
        this.initEReference(this.getMemoryAccess_MemoryMappedAssemblyHWConnection(), (EClassifier)theMemoryPackage.getMemoryMappedAssemblyHWConnection(), theMemoryPackage.getMemoryMappedAssemblyHWConnection_HwConnectionAccess(), "memoryMappedAssemblyHWConnection", null, 0, 1, MemoryAccess.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getMemoryAccess_AccessType(), (EClassifier)this.getMemoryAccessAccessTypeEnum(), "accessType", "READ", 0, 1, MemoryAccess.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getMemoryAccess_Time(), (EClassifier)this.getTimeRange(), null, "time", null, 0, 1, MemoryAccess.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.timeRangeEClass, TimeRange.class, "TimeRange", false, false, true);
        this.initEAttribute(this.getTimeRange_Max(), (EClassifier)thePrimitivetypesPackage.getFloat(), "max", "0.0", 0, 1, TimeRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTimeRange_Min(), (EClassifier)thePrimitivetypesPackage.getFloat(), "min", "0.0", 0, 1, TimeRange.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTimeRange_Typical(), (EClassifier)thePrimitivetypesPackage.getFloat(), "typical", "0.0", 0, 1, TimeRange.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.timeRangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_mintypicalandtypicalmax", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.supportsSafetyEClass, SupportsSafety.class, "SupportsSafety", false, false, true);
        this.initEReference(this.getSupportsSafety_HWElement(), (EClassifier)theEcuresourcePackage.getHWElement(), theEcuresourcePackage.getHWElement_SupportsSafety(), "hWElement", null, 0, 1, SupportsSafety.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.supportsSecurityEClass, SupportsSecurity.class, "SupportsSecurity", false, false, true);
        this.initEReference(this.getSupportsSecurity_HWElement(), (EClassifier)theEcuresourcePackage.getHWElement(), theEcuresourcePackage.getHWElement_SupportsSecurity(), "hWElement", null, 0, 1, SupportsSecurity.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.temperatureEClass, Temperature.class, "Temperature", false, false, true);
        this.initEReference(this.getTemperature_HWElement(), (EClassifier)theEcuresourcePackage.getHWElement(), theEcuresourcePackage.getHWElement_HwElementTemperature(), "hWElement", null, 0, 1, Temperature.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getTemperature_NeedsCooling(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "needsCooling", "false", 0, 1, Temperature.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTemperature_NeedsHeating(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "needsHeating", "false", 0, 1, Temperature.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTemperature_OperationMax(), (EClassifier)thePrimitivetypesPackage.getInteger(), "operationMax", "0", 0, 1, Temperature.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTemperature_OperationMin(), (EClassifier)thePrimitivetypesPackage.getInteger(), "operationMin", "0", 0, 1, Temperature.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTemperature_OperationTypical(), (EClassifier)thePrimitivetypesPackage.getInteger(), "operationTypical", "0", 0, 1, Temperature.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTemperature_StorageMax(), (EClassifier)thePrimitivetypesPackage.getInteger(), "storageMax", "0", 0, 1, Temperature.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getTemperature_StorageMin(), (EClassifier)thePrimitivetypesPackage.getInteger(), "storageMin", "0", 0, 1, Temperature.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.temperatureEClass, (EClassifier)this.ecorePackage.getEBoolean(), "_operationMinoperationTypicalandoperationTypicaloperationMax", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        op = this.addEOperation(this.temperatureEClass, (EClassifier)this.ecorePackage.getEBoolean(), "storageMinstorageMax", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEEnum(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.class, "MemoryAccessAccessTypeEnum");
        this.addEEnumLiteral(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.READ);
        this.addEEnumLiteral(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.WRITE);
        this.addEEnumLiteral(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.ERASE);
        this.addEEnumLiteral(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.PROGRAMM);
        this.addEEnumLiteral(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.RANDOM);
        this.addEEnumLiteral(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.SEQUENCE);
        this.addEEnumLiteral(this.memoryAccessAccessTypeEnumEEnum, MemoryAccessAccessTypeEnum.BURST);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Basic Elements", "GUID", "{7CEFFD04-D7D6-42fc-B50C-73AE5648EF66}", "Id", "1420490132"});
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"Name", "BootTime", "Modified", "Mon Jan 31 21:03:57 CET 2005", "Created", "Tue May 11 11:29:32 CEST 2004", "GUID", "{16D14B27-7B25-44ab-9FEC-9294EDD101C4}", "Id", "182596795"});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"Name", "coldStartTime", "GUID", "{4DE48098-019E-4448-8517-76EEA9BC5106}", "Id", "-320649504"});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"Name", "resetTime", "GUID", "{7C9A1E64-933C-4289-9EA9-32B99E077386}", "Id", "765506913"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"Name", "ElectricalRange", "Modified", "Fri Apr 15 20:37:33 CEST 2005", "Created", "Fri Jul 09 11:33:50 CEST 2004", "GUID", "{8F85BD23-60EF-416a-AF87-EB1776639A97}", "Id", "-1641862865"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxCurrent(), source, new String[]{"Name", "maxCurrent", "GUID", "{37ED818C-F1FF-47d4-BE85-0DD1B2E3E009}", "Id", "213894032"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxVoltage(), source, new String[]{"Name", "maxVoltage", "GUID", "{58FDD020-6B02-43bf-8B8E-5D7E968F35B0}", "Id", "1829900021"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinCurrent(), source, new String[]{"Name", "minCurrent", "GUID", "{79A83D6E-F513-4f22-9F25-F791E9413DBD}", "Id", "-906509781"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinVoltage(), source, new String[]{"Name", "minVoltage", "GUID", "{13E4E189-1487-4eb3-8F78-DD3F1E1A0C7D}", "Id", "65959748"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalCurrent(), source, new String[]{"Name", "typicalCurrent", "GUID", "{068C11B8-9D02-4083-B43A-1B2A9CD13B4C}", "Id", "-1687633839"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalVoltage(), source, new String[]{"Name", "typicalVoltage", "GUID", "{004022A8-FBD3-4d4a-8BDC-9B01CFB73CDF}", "Id", "433897234"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"Name", "ErrorDetectionCorrection", "Modified", "Thu Apr 14 08:35:44 CEST 2005", "Created", "Tue May 11 11:57:56 CEST 2004", "GUID", "{A2A5C4AD-1DB4-4547-8A02-B3EFFE8FF634}", "Id", "-437664937"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_CorrectedBits(), source, new String[]{"Name", "correctedBits", "GUID", "{3B954DC5-48C2-4acd-B28F-684581777E3D}", "Id", "1243090778"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_DetectedBits(), source, new String[]{"Name", "detectedBits", "GUID", "{3C2CDA2C-7756-4268-9E64-CAA31571C890}", "Id", "765842781"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_ExtraBits(), source, new String[]{"Name", "extraBits", "GUID", "{220F66E7-CFBD-4f48-8E31-524DD402A1C2}", "Id", "-766017460"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"Name", "FrequencyRange", "Modified", "Fri Apr 15 21:28:20 CEST 2005", "Created", "Fri Jul 09 11:43:32 CEST 2004", "GUID", "{F659ABBE-73DE-4b14-A2A9-895A4BD36E7C}", "Id", "-93471757"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"Name", "maxFrequency", "GUID", "{8072B279-52E8-4bfa-BA90-79BF9D5D7D23}", "Id", "-639275175"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"Name", "minFrequency", "GUID", "{DBEF63B3-FE36-4c16-A8B2-3CB08A81FE87}", "Id", "434527160"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"Name", "typicalFrequency", "GUID", "{A1484057-D0DC-4db0-9731-D648F4BFF114}", "Id", "1218349222"});
        this.addAnnotation((ENamedElement)this.memoryAccessEClass, source, new String[]{"Name", "MemoryAccess", "Modified", "Thu Mar 10 11:42:55 CET 2005", "Created", "Thu Jul 08 18:34:37 CEST 2004", "GUID", "{2EB549DA-5C31-4551-BAF4-2E2D7D86F978}", "Id", "-669725540"});
        this.addAnnotation((ENamedElement)this.getMemoryAccess_AccessType(), source, new String[]{"Name", "accessType", "GUID", "{9AE262EB-37C2-4544-BFFB-E3CB400E6B01}", "Id", "-964944019"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"Name", "TimeRange", "Modified", "Fri Apr 15 20:42:19 CEST 2005", "Created", "Thu Jul 08 18:36:42 CEST 2004", "GUID", "{94FE5F96-FDAC-4f7e-9DBF-BC0490417A9D}", "Id", "-498240470"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Max(), source, new String[]{"Name", "max", "GUID", "{9498DA7E-A128-4fcf-81BD-81813BAC0012}", "Id", "-1027023256"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Min(), source, new String[]{"Name", "min", "GUID", "{BC1A4667-429E-4e63-A6CB-3B2EC79454D1}", "Id", "377169763"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Typical(), source, new String[]{"Name", "typical", "GUID", "{6E99AB3A-AE94-4335-92D3-267AB82E02BB}", "Id", "1193314377"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"Name", "SupportsSafety", "Modified", "Tue Feb 01 16:26:08 CET 2005", "Created", "Fri Sep 17 07:46:57 CEST 2004", "GUID", "{C8DBDCE1-2432-4659-896D-A631D81D5C22}", "Id", "1038958232"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"Name", "SupportsSecurity", "Modified", "Tue Feb 01 16:26:08 CET 2005", "Created", "Fri Sep 17 07:47:08 CEST 2004", "GUID", "{2C141AB3-09E5-4c44-82FA-12AAB26902B6}", "Id", "-1225748295"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"Name", "Temperature", "Modified", "Fri Apr 15 20:41:33 CEST 2005", "Created", "Tue Apr 27 12:48:24 CEST 2004", "GUID", "{C3C19C2C-782D-4eeb-BB01-A97A0260B886}", "Id", "543787734"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"Name", "needsCooling", "GUID", "{FEEF780D-BDC9-4cea-BFAA-B65EFCB0D4F4}", "Id", "-1318646720"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"Name", "needsHeating", "GUID", "{48191A9A-CB09-4adb-B286-BC999B7FBDE2}", "Id", "-1809930431"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"Name", "operationMax", "GUID", "{3852330C-64C4-49f6-98CC-E3546387EB82}", "Id", "-60553996"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"Name", "operationMin", "GUID", "{6862567C-AD2D-47f6-8CD1-4BB944F02C98}", "Id", "-1932940385"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"Name", "operationTypical", "GUID", "{B4B0BA1B-5A93-4cb2-A807-A9A2AC183958}", "Id", "-1291315483"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"Name", "storageMax", "GUID", "{1BB8C892-3A21-4647-88A1-3B1D5A4AAB8F}", "Id", "145673115"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"Name", "storageMin", "GUID", "{570BEF48-5C9A-4566-A9ED-221D802043C0}", "Id", "-1120025534"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "BASIC-ELEMENTS", "xml.namePlural", "BASIC-ELEMENTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"xml.name", "BOOT-TIME", "xml.namePlural", "BOOT-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"xml.name", "COLD-START-TIME", "xml.namePlural", "COLD-START-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"xml.name", "RESET-TIME", "xml.namePlural", "RESET-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"xml.name", "ELECTRICAL-RANGE", "xml.namePlural", "ELECTRICAL-RANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxCurrent(), source, new String[]{"xml.name", "MAX-CURRENT", "xml.namePlural", "MAX-CURRENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxVoltage(), source, new String[]{"xml.name", "MAX-VOLTAGE", "xml.namePlural", "MAX-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinCurrent(), source, new String[]{"xml.name", "MIN-CURRENT", "xml.namePlural", "MIN-CURRENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinVoltage(), source, new String[]{"xml.name", "MIN-VOLTAGE", "xml.namePlural", "MIN-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalCurrent(), source, new String[]{"xml.name", "TYPICAL-CURRENT", "xml.namePlural", "TYPICAL-CURRENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalVoltage(), source, new String[]{"xml.name", "TYPICAL-VOLTAGE", "xml.namePlural", "TYPICAL-VOLTAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"xml.name", "ERROR-DETECTION-CORRECTION", "xml.namePlural", "ERROR-DETECTION-CORRECTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_CorrectedBits(), source, new String[]{"xml.name", "CORRECTED-BITS", "xml.namePlural", "CORRECTED-BITSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_DetectedBits(), source, new String[]{"xml.name", "DETECTED-BITS", "xml.namePlural", "DETECTED-BITSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_ExtraBits(), source, new String[]{"xml.name", "EXTRA-BITS", "xml.namePlural", "EXTRA-BITSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"xml.name", "FREQUENCY-RANGE", "xml.namePlural", "FREQUENCY-RANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"xml.name", "MAX-FREQUENCY", "xml.namePlural", "MAX-FREQUENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"xml.name", "MIN-FREQUENCY", "xml.namePlural", "MIN-FREQUENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"xml.name", "TYPICAL-FREQUENCY", "xml.namePlural", "TYPICAL-FREQUENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.memoryAccessEClass, source, new String[]{"xml.name", "MEMORY-ACCESS", "xml.namePlural", "MEMORY-ACCESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryAccess_AccessType(), source, new String[]{"xml.name", "ACCESS-TYPE", "xml.namePlural", "ACCESS-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMemoryAccess_Time(), source, new String[]{"xml.name", "TIME", "xml.namePlural", "TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum, source, new String[]{"xml.name", "MEMORY-ACCESS-ACCESS-TYPE-ENUM", "xml.namePlural", "MEMORY-ACCESS-ACCESS-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "READ", "xml.namePlural", "READS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "WRITE", "xml.namePlural", "WRITES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "ERASE", "xml.namePlural", "ERASES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "PROGRAMM", "xml.namePlural", "PROGRAMMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum.getELiterals().get(4), source, new String[]{"xml.name", "RANDOM", "xml.namePlural", "RANDOMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum.getELiterals().get(5), source, new String[]{"xml.name", "SEQUENCE", "xml.namePlural", "SEQUENCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.memoryAccessAccessTypeEnumEEnum.getELiterals().get(6), source, new String[]{"xml.name", "BURST", "xml.namePlural", "BURSTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"xml.name", "TIME-RANGE", "xml.namePlural", "TIME-RANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Max(), source, new String[]{"xml.name", "MAX", "xml.namePlural", "MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Min(), source, new String[]{"xml.name", "MIN", "xml.namePlural", "MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Typical(), source, new String[]{"xml.name", "TYPICAL", "xml.namePlural", "TYPICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"xml.name", "SUPPORTS-SAFETY", "xml.namePlural", "SUPPORTS-SAFETYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"xml.name", "SUPPORTS-SECURITY", "xml.namePlural", "SUPPORTS-SECURITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"xml.name", "TEMPERATURE", "xml.namePlural", "TEMPERATURES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"xml.name", "NEEDS-COOLING", "xml.namePlural", "NEEDS-COOLINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"xml.name", "NEEDS-HEATING", "xml.namePlural", "NEEDS-HEATINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"xml.name", "OPERATION-MAX", "xml.namePlural", "OPERATION-MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"xml.name", "OPERATION-MIN", "xml.namePlural", "OPERATION-MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"xml.name", "OPERATION-TYPICAL", "xml.namePlural", "OPERATION-TYPICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"xml.name", "STORAGE-MAX", "xml.namePlural", "STORAGE-MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"xml.name", "STORAGE-MIN", "xml.namePlural", "STORAGE-MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"name", "BOOT-TIME", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"name", "COLD-START-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"name", "RESET-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"name", "ELECTRICAL-RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxCurrent(), source, new String[]{"name", "MAX-CURRENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxVoltage(), source, new String[]{"name", "MAX-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinCurrent(), source, new String[]{"name", "MIN-CURRENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinVoltage(), source, new String[]{"name", "MIN-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalCurrent(), source, new String[]{"name", "TYPICAL-CURRENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalVoltage(), source, new String[]{"name", "TYPICAL-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"name", "ERROR-DETECTION-CORRECTION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_CorrectedBits(), source, new String[]{"name", "CORRECTED-BITS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_DetectedBits(), source, new String[]{"name", "DETECTED-BITS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_ExtraBits(), source, new String[]{"name", "EXTRA-BITS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"name", "FREQUENCY-RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"name", "MAX-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"name", "MIN-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"name", "TYPICAL-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.memoryAccessEClass, source, new String[]{"name", "MEMORY-ACCESS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryAccess_AccessType(), source, new String[]{"name", "ACCESS-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMemoryAccess_Time(), source, new String[]{"name", "TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"name", "TIME-RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Typical(), source, new String[]{"name", "TYPICAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"name", "SUPPORTS-SAFETY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"name", "SUPPORTS-SECURITY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"name", "TEMPERATURE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"name", "NEEDS-COOLING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"name", "NEEDS-HEATING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"name", "OPERATION-MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"name", "OPERATION-MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"name", "OPERATION-TYPICAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"name", "STORAGE-MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"name", "STORAGE-MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"documentation", "Time information for ECU and PU startup."});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"documentation", "Time it takes to come from a completely powered down state to the HWInit state in seconds."});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"documentation", "Time it takes from the reset initiation to the HWInit state in seconds."});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"documentation", "Specifies electrical ranges for different applications within the ECU Resource Template."});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass.getEOperations().get(0), source, new String[]{"documentation", "minCurrent <= typicalCurrent <= maxCurrent"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass.getEOperations().get(1), source, new String[]{"documentation", "minVoltage <= typicalVoltage <= maxVoltage "});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxCurrent(), source, new String[]{"documentation", "Maximum Current\r\nUnit: A"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxVoltage(), source, new String[]{"documentation", "Maximum voltage\r\nUnit: V"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinCurrent(), source, new String[]{"documentation", "Minimum Current\r\nUnit: A"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinVoltage(), source, new String[]{"documentation", "Minimum voltage\r\nUnit: V"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalCurrent(), source, new String[]{"documentation", "Typical Current\r\nUnit: A"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalVoltage(), source, new String[]{"documentation", "Typical voltage\r\nUnit: V"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"documentation", "Provides information on what extra bits are used for error detection and correction."});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_CorrectedBits(), source, new String[]{"documentation", "How many error bits can be corrected.\r\nUnit: Bit"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_DetectedBits(), source, new String[]{"documentation", "How many bit errors can be reconginsed.\r\nUnit: Bit"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_ExtraBits(), source, new String[]{"documentation", "How many extra bits are used for ensuring error detection and correction.\r\nUnit: Bit"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"documentation", "Class describing minimum, maximum and typical frequencies."});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass.getEOperations().get(0), source, new String[]{"documentation", "minFrequency <= typicalFrequency <= maxFrequency"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"documentation", "Maximum frequency.\r\nUnit: Herz"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"documentation", "Minimum frequency.\r\nUnit: Herz"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"documentation", "Typical frequency.\r\nUnit: Herz"});
        this.addAnnotation((ENamedElement)this.memoryAccessEClass, source, new String[]{"documentation", "Describes the different possible kinds of access to the memory and the time these access takes."});
        this.addAnnotation((ENamedElement)this.getMemoryAccess_AccessType(), source, new String[]{"documentation", "The element access type describes the different possible kinds of access to the memory. \r\n- Read Access: Read Access is available to all memory by default. The data is copied from the memory to another location. \r\n- Write Access: Possible only with RAM devices. Data is copied to the memory. \r\n- Erase Access: Data stored in specific memory areas is erased and the memory is transferred to a defined initial-state. The erase access is a complex process. The erase access is in many cases prerequisite of a program access. Used on EPROM, EEPROM and Flash. \r\n- Program Access: The transfer of data to PROM, EPROM, EEPROM or Flash. In the difference to write access the program access takes more time and is a more complex process to transfer the data. Data is copied to the memory. \r\n- Random Access: Data access is not sequenced in memory. Time restrictions are valid in order to address the appropriate memory location and getting the right to access this location with single access. The access time of single data is the important characteristic. \r\n- Sequenced Access: The wanted data can only be achieved by reading a defined sequence of data in advance. Typical examples are tapes, certain EEPROM or hardware implemented stacks. \r\n- Burst-Mode: A group of data is accessed. The data is stored in continuous addresses and is copied in continuous set of data transfer without an interruption. Access time for the overall data transfer is minimised. For the set-up of a burst mode time restrictions are valid in order to address the appropriate memory location and getting the right to access this location in burst-mode. Set-up time for burst-mode, transfer time of first byte, transfer time of last byte, transfer time for intermediate bytes of a burst and the number of bytes per burst-access are the characteristics of burst-mode access. \r\nBurst-mode is used to transfer great amount of data e.g. from a memory with slow access times to a memory with fast access time. \r\nNote: The access is denied during erasure and programming of Flash and EEPROM as some technologies do not allow a simultaneous read access to that specific memory area.\r\nAlso during the simultaneous access of different subscribers on the same memory, array or byte the access is either denied or at least delayed. For example if the CPU and the DMA write to the same memory block."});
        this.addAnnotation((ENamedElement)this.getMemoryAccess_Time(), source, new String[]{"documentation", "Access time is the timing characteristic for each access type. Access time at the Memory Mapped HW Port is only theoretical. The actual Access time is given in the Memory Mapped HW Connection."});
        this.addAnnotation((ENamedElement)this.timeRangeEClass.getEOperations().get(0), source, new String[]{"documentation", "min <= typical <= max"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"documentation", "In the current version of the ECU Resource Template the element SupportsSafety is optional. A HW Element uses this element if it provides a safety mechanism, otherwise this element is missing in the description of the HW Element."});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"documentation", "The ECU Resource Template provides the element SupportsSecurity storing the information about the supported security mechanism.\r\nIn the current version of the ECU Resource Template the element SupportsSecurity is optional. A HW Element uses this element if it provides a security mechanism otherwise this element is missing in the description of the HW Element.\r\n"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"documentation", "General element to describe temperature ranges and need for cooling/heating."});
        this.addAnnotation((ENamedElement)this.temperatureEClass.getEOperations().get(0), source, new String[]{"documentation", "operationMin <= operationTypical <= operationMax"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"documentation", "These attributes describe that there is an active cooling system required for this HW Element."});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"documentation", "These attributes describe that there is an active heating system required for this HW Element."});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"documentation", "It describes the temperature range (max) in which the HW Element can be operated.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"documentation", "It describes the temperature range (min) in which the HW Element can be operated.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"documentation", "It describes the temperature range (typical) in which the HW Element can be operated.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"documentation", "The storage temperature defines maximum temperature the device is allowed to be stored. The HW Element is not in an operational state.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"documentation", "The storage temperature defines minimum temperature the device is allowed to be stored. The HW Element is not in an operational state.\r\nUnit: Kelvin (K)"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.memoryAccessEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.memoryAccessEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

