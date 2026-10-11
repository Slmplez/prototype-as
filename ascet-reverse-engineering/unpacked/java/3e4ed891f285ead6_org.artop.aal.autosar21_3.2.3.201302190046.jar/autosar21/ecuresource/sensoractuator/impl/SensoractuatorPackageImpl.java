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
package autosar21.ecuresource.sensoractuator.impl;

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
import autosar21.ecuresource.sensoractuator.ActuatorHW;
import autosar21.ecuresource.sensoractuator.ActuatorHWDefaultPositionTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWElectricalTypeEnum;
import autosar21.ecuresource.sensoractuator.ActuatorHWMovementEnum;
import autosar21.ecuresource.sensoractuator.DisplayHW;
import autosar21.ecuresource.sensoractuator.DisplayHWColourEnum;
import autosar21.ecuresource.sensoractuator.DisplayHWTypeOfCharactersEnum;
import autosar21.ecuresource.sensoractuator.SensorActuatorHW;
import autosar21.ecuresource.sensoractuator.SensorHW;
import autosar21.ecuresource.sensoractuator.SensorHWSignalQualityEnum;
import autosar21.ecuresource.sensoractuator.SensoractuatorFactory;
import autosar21.ecuresource.sensoractuator.SensoractuatorPackage;
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

public class SensoractuatorPackageImpl
extends EPackageImpl
implements SensoractuatorPackage {
    private EClass actuatorHWEClass = null;
    private EClass displayHWEClass = null;
    private EClass sensorHWEClass = null;
    private EClass sensorActuatorHWEClass = null;
    private EEnum actuatorHWElectricalTypeEnumEEnum = null;
    private EEnum actuatorHWMovementEnumEEnum = null;
    private EEnum actuatorHWDefaultPositionTypeEnumEEnum = null;
    private EEnum displayHWColourEnumEEnum = null;
    private EEnum displayHWTypeOfCharactersEnumEEnum = null;
    private EEnum sensorHWSignalQualityEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private SensoractuatorPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecur/sa", (EFactory)SensoractuatorFactory.eINSTANCE);
    }

    public static SensoractuatorPackage init() {
        if (isInited) {
            return (SensoractuatorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/sa");
        }
        SensoractuatorPackageImpl theSensoractuatorPackage = (SensoractuatorPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/sa") instanceof SensoractuatorPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecur/sa") : new SensoractuatorPackageImpl());
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
        theSensoractuatorPackage.createPackageContents();
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
        theSensoractuatorPackage.initializePackageContents();
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
        theSensoractuatorPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecur/sa", (Object)theSensoractuatorPackage);
        return theSensoractuatorPackage;
    }

    public EClass getActuatorHW() {
        return this.actuatorHWEClass;
    }

    public EAttribute getActuatorHW_DefaultPositionType() {
        return (EAttribute)this.actuatorHWEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getActuatorHW_DefaultPositionValue() {
        return (EAttribute)this.actuatorHWEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getActuatorHW_ElectricalType() {
        return (EAttribute)this.actuatorHWEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getActuatorHW_Endurance() {
        return (EAttribute)this.actuatorHWEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getActuatorHW_Movement() {
        return (EAttribute)this.actuatorHWEClass.getEStructuralFeatures().get(4);
    }

    public EClass getDisplayHW() {
        return this.displayHWEClass;
    }

    public EAttribute getDisplayHW_Backlight() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getDisplayHW_Brightness() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getDisplayHW_CharacterGenerator() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getDisplayHW_CharacterSet() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getDisplayHW_Colour() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getDisplayHW_ResolutionRation() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getDisplayHW_ResolutionX() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(6);
    }

    public EAttribute getDisplayHW_ResolutionY() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getDisplayHW_ResponseTime() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(8);
    }

    public EAttribute getDisplayHW_TypeOfCharacters() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getDisplayHW_ViewingAngle() {
        return (EAttribute)this.displayHWEClass.getEStructuralFeatures().get(10);
    }

    public EClass getSensorHW() {
        return this.sensorHWEClass;
    }

    public EAttribute getSensorHW_SignalQuality() {
        return (EAttribute)this.sensorHWEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSensorActuatorHW() {
        return this.sensorActuatorHWEClass;
    }

    public EAttribute getSensorActuatorHW_Accuracy() {
        return (EAttribute)this.sensorActuatorHWEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSensorActuatorHW_CycleTime() {
        return (EReference)this.sensorActuatorHWEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSensorActuatorHW_Resolution() {
        return (EAttribute)this.sensorActuatorHWEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getSensorActuatorHW_Type() {
        return (EAttribute)this.sensorActuatorHWEClass.getEStructuralFeatures().get(3);
    }

    public EEnum getActuatorHWElectricalTypeEnum() {
        return this.actuatorHWElectricalTypeEnumEEnum;
    }

    public EEnum getActuatorHWMovementEnum() {
        return this.actuatorHWMovementEnumEEnum;
    }

    public EEnum getActuatorHWDefaultPositionTypeEnum() {
        return this.actuatorHWDefaultPositionTypeEnumEEnum;
    }

    public EEnum getDisplayHWColourEnum() {
        return this.displayHWColourEnumEEnum;
    }

    public EEnum getDisplayHWTypeOfCharactersEnum() {
        return this.displayHWTypeOfCharactersEnumEEnum;
    }

    public EEnum getSensorHWSignalQualityEnum() {
        return this.sensorHWSignalQualityEnumEEnum;
    }

    public SensoractuatorFactory getSensoractuatorFactory() {
        return (SensoractuatorFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.actuatorHWEClass = this.createEClass(0);
        this.createEAttribute(this.actuatorHWEClass, 29);
        this.createEAttribute(this.actuatorHWEClass, 30);
        this.createEAttribute(this.actuatorHWEClass, 31);
        this.createEAttribute(this.actuatorHWEClass, 32);
        this.createEAttribute(this.actuatorHWEClass, 33);
        this.displayHWEClass = this.createEClass(1);
        this.createEAttribute(this.displayHWEClass, 29);
        this.createEAttribute(this.displayHWEClass, 30);
        this.createEAttribute(this.displayHWEClass, 31);
        this.createEAttribute(this.displayHWEClass, 32);
        this.createEAttribute(this.displayHWEClass, 33);
        this.createEAttribute(this.displayHWEClass, 34);
        this.createEAttribute(this.displayHWEClass, 35);
        this.createEAttribute(this.displayHWEClass, 36);
        this.createEAttribute(this.displayHWEClass, 37);
        this.createEAttribute(this.displayHWEClass, 38);
        this.createEAttribute(this.displayHWEClass, 39);
        this.sensorHWEClass = this.createEClass(2);
        this.createEAttribute(this.sensorHWEClass, 29);
        this.sensorActuatorHWEClass = this.createEClass(3);
        this.createEAttribute(this.sensorActuatorHWEClass, 25);
        this.createEReference(this.sensorActuatorHWEClass, 26);
        this.createEAttribute(this.sensorActuatorHWEClass, 27);
        this.createEAttribute(this.sensorActuatorHWEClass, 28);
        this.actuatorHWElectricalTypeEnumEEnum = this.createEEnum(4);
        this.actuatorHWMovementEnumEEnum = this.createEEnum(5);
        this.actuatorHWDefaultPositionTypeEnumEEnum = this.createEEnum(6);
        this.displayHWColourEnumEEnum = this.createEEnum(7);
        this.displayHWTypeOfCharactersEnumEEnum = this.createEEnum(8);
        this.sensorHWSignalQualityEnumEEnum = this.createEEnum(9);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("sensoractuator");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecur/sa");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur");
        BasicelementsPackage theBasicelementsPackage = (BasicelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecur/be");
        this.actuatorHWEClass.getESuperTypes().add((Object)this.getSensorActuatorHW());
        this.displayHWEClass.getESuperTypes().add((Object)this.getSensorActuatorHW());
        this.sensorHWEClass.getESuperTypes().add((Object)this.getSensorActuatorHW());
        this.sensorActuatorHWEClass.getESuperTypes().add((Object)theEcuresourcePackage.getHWElement());
        this.initEClass(this.actuatorHWEClass, ActuatorHW.class, "ActuatorHW", false, false, true);
        this.initEAttribute(this.getActuatorHW_DefaultPositionType(), (EClassifier)this.getActuatorHWDefaultPositionTypeEnum(), "defaultPositionType", "STABEL", 0, 1, ActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getActuatorHW_DefaultPositionValue(), (EClassifier)thePrimitivetypesPackage.getString(), "defaultPositionValue", "", 0, 1, ActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getActuatorHW_ElectricalType(), (EClassifier)this.getActuatorHWElectricalTypeEnum(), "electricalType", "RESISTIVE", 0, 1, ActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getActuatorHW_Endurance(), (EClassifier)thePrimitivetypesPackage.getInteger(), "endurance", "0", 0, 1, ActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getActuatorHW_Movement(), (EClassifier)this.getActuatorHWMovementEnum(), "movement", "UNIDIRECTIONAL", 0, 1, ActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.displayHWEClass, DisplayHW.class, "DisplayHW", false, false, true);
        this.initEAttribute(this.getDisplayHW_Backlight(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "backlight", "false", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_Brightness(), (EClassifier)thePrimitivetypesPackage.getFloat(), "brightness", "0.0", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_CharacterGenerator(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "characterGenerator", "false", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_CharacterSet(), (EClassifier)thePrimitivetypesPackage.getString(), "characterSet", "", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_Colour(), (EClassifier)this.getDisplayHWColourEnum(), "colour", "COLOUR", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_ResolutionRation(), (EClassifier)thePrimitivetypesPackage.getFloat(), "resolutionRation", "0.0", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_ResolutionX(), (EClassifier)thePrimitivetypesPackage.getInteger(), "resolutionX", "0", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_ResolutionY(), (EClassifier)thePrimitivetypesPackage.getInteger(), "resolutionY", "0", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_ResponseTime(), (EClassifier)thePrimitivetypesPackage.getFloat(), "responseTime", "0.0", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_TypeOfCharacters(), (EClassifier)this.getDisplayHWTypeOfCharactersEnum(), "typeOfCharacters", "NUMERICAL", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getDisplayHW_ViewingAngle(), (EClassifier)thePrimitivetypesPackage.getInteger(), "viewingAngle", "0", 0, 1, DisplayHW.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.sensorHWEClass, SensorHW.class, "SensorHW", false, false, true);
        this.initEAttribute(this.getSensorHW_SignalQuality(), (EClassifier)this.getSensorHWSignalQualityEnum(), "signalQuality", "RAW", 0, 1, SensorHW.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.sensorActuatorHWEClass, SensorActuatorHW.class, "SensorActuatorHW", true, false, true);
        this.initEAttribute(this.getSensorActuatorHW_Accuracy(), (EClassifier)thePrimitivetypesPackage.getFloat(), "accuracy", "0.0", 0, 1, SensorActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSensorActuatorHW_CycleTime(), (EClassifier)theBasicelementsPackage.getTimeRange(), null, "cycleTime", null, 0, 1, SensorActuatorHW.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSensorActuatorHW_Resolution(), (EClassifier)thePrimitivetypesPackage.getFloat(), "resolution", "0.0", 0, 1, SensorActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSensorActuatorHW_Type(), (EClassifier)thePrimitivetypesPackage.getString(), "type", "", 0, 1, SensorActuatorHW.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.actuatorHWElectricalTypeEnumEEnum, ActuatorHWElectricalTypeEnum.class, "ActuatorHWElectricalTypeEnum");
        this.addEEnumLiteral(this.actuatorHWElectricalTypeEnumEEnum, ActuatorHWElectricalTypeEnum.RESISTIVE);
        this.addEEnumLiteral(this.actuatorHWElectricalTypeEnumEEnum, ActuatorHWElectricalTypeEnum.CAPACITIVE);
        this.addEEnumLiteral(this.actuatorHWElectricalTypeEnumEEnum, ActuatorHWElectricalTypeEnum.INDUCTIVE);
        this.initEEnum(this.actuatorHWMovementEnumEEnum, ActuatorHWMovementEnum.class, "ActuatorHWMovementEnum");
        this.addEEnumLiteral(this.actuatorHWMovementEnumEEnum, ActuatorHWMovementEnum.UNIDIRECTIONAL);
        this.addEEnumLiteral(this.actuatorHWMovementEnumEEnum, ActuatorHWMovementEnum.BIDIRECTIONAL);
        this.addEEnumLiteral(this.actuatorHWMovementEnumEEnum, ActuatorHWMovementEnum.UNIDIRECTIONAL_WITH_AUTORESET);
        this.initEEnum(this.actuatorHWDefaultPositionTypeEnumEEnum, ActuatorHWDefaultPositionTypeEnum.class, "ActuatorHWDefaultPositionTypeEnum");
        this.addEEnumLiteral(this.actuatorHWDefaultPositionTypeEnumEEnum, ActuatorHWDefaultPositionTypeEnum.STABEL);
        this.addEEnumLiteral(this.actuatorHWDefaultPositionTypeEnumEEnum, ActuatorHWDefaultPositionTypeEnum.INSTABLE);
        this.addEEnumLiteral(this.actuatorHWDefaultPositionTypeEnumEEnum, ActuatorHWDefaultPositionTypeEnum.BI_STABLE);
        this.addEEnumLiteral(this.actuatorHWDefaultPositionTypeEnumEEnum, ActuatorHWDefaultPositionTypeEnum.MULTI_STABLE);
        this.initEEnum(this.displayHWColourEnumEEnum, DisplayHWColourEnum.class, "DisplayHWColourEnum");
        this.addEEnumLiteral(this.displayHWColourEnumEEnum, DisplayHWColourEnum.COLOUR);
        this.addEEnumLiteral(this.displayHWColourEnumEEnum, DisplayHWColourEnum.GREY);
        this.addEEnumLiteral(this.displayHWColourEnumEEnum, DisplayHWColourEnum.MONO);
        this.initEEnum(this.displayHWTypeOfCharactersEnumEEnum, DisplayHWTypeOfCharactersEnum.class, "DisplayHWTypeOfCharactersEnum");
        this.addEEnumLiteral(this.displayHWTypeOfCharactersEnumEEnum, DisplayHWTypeOfCharactersEnum.NUMERICAL);
        this.addEEnumLiteral(this.displayHWTypeOfCharactersEnumEEnum, DisplayHWTypeOfCharactersEnum.ALPHA_NUMERISAL);
        this.addEEnumLiteral(this.displayHWTypeOfCharactersEnumEEnum, DisplayHWTypeOfCharactersEnum.SEMI_GRAPHICAL);
        this.addEEnumLiteral(this.displayHWTypeOfCharactersEnumEEnum, DisplayHWTypeOfCharactersEnum.GRAPHICAL);
        this.initEEnum(this.sensorHWSignalQualityEnumEEnum, SensorHWSignalQualityEnum.class, "SensorHWSignalQualityEnum");
        this.addEEnumLiteral(this.sensorHWSignalQualityEnumEEnum, SensorHWSignalQualityEnum.RAW);
        this.addEEnumLiteral(this.sensorHWSignalQualityEnumEEnum, SensorHWSignalQualityEnum.FILTERED);
        this.addEEnumLiteral(this.sensorHWSignalQualityEnumEEnum, SensorHWSignalQualityEnum.DEBOUNCED);
        this.addEEnumLiteral(this.sensorHWSignalQualityEnumEEnum, SensorHWSignalQualityEnum.CODED);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_SensorActuatorHWAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_HWElementAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Sensor Actuator", "GUID", "{A0ECC61C-DA90-4c4b-BCEC-4D9488F489BA}", "Id", "-1852924115"});
        this.addAnnotation((ENamedElement)this.actuatorHWEClass, source, new String[]{"Name", "ActuatorHW", "Modified", "Fri Apr 01 15:59:26 CEST 2005", "Created", "Wed Jul 14 13:05:59 CEST 2004", "GUID", "{7F26316F-D57D-4019-9D24-A71CEFEEDA8E}", "Id", "1068902623"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionType(), source, new String[]{"Name", "defaultPositionType", "GUID", "{AA03BA82-B6A1-4446-9A8B-92CCC4D1503B}", "Id", "1229028727"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionValue(), source, new String[]{"Name", "defaultPositionValue", "GUID", "{CA4BCDB7-E433-437a-BBED-1A572B2CD059}", "Id", "33290220"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_ElectricalType(), source, new String[]{"Name", "electricalType", "GUID", "{9F3B6878-894A-403b-B22D-0B2770871A06}", "Id", "-1916085151"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Endurance(), source, new String[]{"Name", "endurance", "GUID", "{E777E85F-597C-424d-9001-CB2478FBDF35}", "Id", "419994749"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Movement(), source, new String[]{"Name", "movement", "GUID", "{D80AE99F-E8DA-4223-83B3-49D449AFE9B2}", "Id", "568845070"});
        this.addAnnotation((ENamedElement)this.displayHWEClass, source, new String[]{"Name", "DisplayHW", "Modified", "Fri Apr 01 15:59:26 CEST 2005", "Created", "Mon Sep 27 10:30:40 CEST 2004", "GUID", "{8BB471A1-E8F9-421d-8CFD-9D976E42B04A}", "Id", "1096273839"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Backlight(), source, new String[]{"Name", "backlight", "GUID", "{15D5A28A-C311-4b3f-A218-3D256235FDEF}", "Id", "-46915300"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Brightness(), source, new String[]{"Name", "brightness", "GUID", "{C20AA1D5-F434-43d5-BF17-B6138A3F0656}", "Id", "624489662"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterGenerator(), source, new String[]{"Name", "characterGenerator", "GUID", "{8FCA54C3-9D2E-4c50-809D-E6B9610F92EA}", "Id", "-1387428381"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterSet(), source, new String[]{"Name", "characterSet", "GUID", "{30269A75-EF09-471e-A339-3C43CBC67A33}", "Id", "1035918506"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Colour(), source, new String[]{"Name", "colour", "GUID", "{897D50B0-10E4-4a7f-82C6-3CD3DE2102B4}", "Id", "-1335510681"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionRation(), source, new String[]{"Name", "resolutionRation", "GUID", "{8D445614-64FE-410c-8B97-6512C5655621}", "Id", "2118733840"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionX(), source, new String[]{"Name", "resolutionX", "GUID", "{E7678E88-A63D-437c-A890-C24231DAA750}", "Id", "-1838114926"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionY(), source, new String[]{"Name", "resolutionY", "GUID", "{530ED120-4643-4afa-A4B2-F52CA55CE14D}", "Id", "1886900395"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResponseTime(), source, new String[]{"Name", "responseTime", "GUID", "{9F7D21FF-4D63-440b-B304-F247E2F3C4E4}", "Id", "1722448616"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_TypeOfCharacters(), source, new String[]{"Name", "typeOfCharacters", "GUID", "{1E080BB4-BD69-49b0-AF39-B58FC56B7380}", "Id", "317258221"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ViewingAngle(), source, new String[]{"Name", "viewingAngle", "GUID", "{011E0D5C-3297-4637-B3D1-57965667EE11}", "Id", "-992906543"});
        this.addAnnotation((ENamedElement)this.sensorHWEClass, source, new String[]{"Name", "SensorHW", "Modified", "Fri Apr 01 15:59:26 CEST 2005", "Created", "Wed Jul 14 13:05:45 CEST 2004", "GUID", "{FE94EEC2-1FD6-4175-8117-9C885BAF9B77}", "Id", "1089803145"});
        this.addAnnotation((ENamedElement)this.getSensorHW_SignalQuality(), source, new String[]{"Name", "signalQuality", "GUID", "{C624939B-482E-43a4-9439-2662D4588DD8}", "Id", "-1046648352"});
        this.addAnnotation((ENamedElement)this.sensorActuatorHWEClass, source, new String[]{"Name", "SensorActuatorHW", "Modified", "Thu Jun 30 07:44:21 CEST 2005", "Created", "Mon Jun 28 09:44:41 CEST 2004", "GUID", "{2078B789-5610-4a13-B300-077ABAF4F01A}", "Id", "1666476266"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Accuracy(), source, new String[]{"Name", "accuracy", "GUID", "{494EA809-2C3D-4c14-9E2C-A4E86A8ACBE8}", "Id", "647889343"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Resolution(), source, new String[]{"Name", "resolution", "GUID", "{6C7580F0-455E-4fa0-8AFB-A5A80CBE9C37}", "Id", "-1678365322"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Type(), source, new String[]{"Name", "type", "GUID", "{DDECE26D-EF88-4814-8EC5-C9D7379F58F0}", "Id", "-1266623871"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "SENSOR-ACTUATOR", "xml.namePlural", "SENSOR-ACTUATORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWEClass, source, new String[]{"xml.name", "ACTUATOR-HW", "xml.namePlural", "ACTUATOR-HWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionType(), source, new String[]{"xml.name", "DEFAULT-POSITION-TYPE", "xml.namePlural", "DEFAULT-POSITION-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionValue(), source, new String[]{"xml.name", "DEFAULT-POSITION-VALUE", "xml.namePlural", "DEFAULT-POSITION-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_ElectricalType(), source, new String[]{"xml.name", "ELECTRICAL-TYPE", "xml.namePlural", "ELECTRICAL-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Endurance(), source, new String[]{"xml.name", "ENDURANCE", "xml.namePlural", "ENDURANCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Movement(), source, new String[]{"xml.name", "MOVEMENT", "xml.namePlural", "MOVEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.actuatorHWElectricalTypeEnumEEnum, source, new String[]{"xml.name", "ACTUATOR-HW-ELECTRICAL-TYPE-ENUM", "xml.namePlural", "ACTUATOR-HW-ELECTRICAL-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWElectricalTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "RESISTIVE", "xml.namePlural", "RESISTIVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWElectricalTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "CAPACITIVE", "xml.namePlural", "CAPACITIVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWElectricalTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "INDUCTIVE", "xml.namePlural", "INDUCTIVES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWMovementEnumEEnum, source, new String[]{"xml.name", "ACTUATOR-HW-MOVEMENT-ENUM", "xml.namePlural", "ACTUATOR-HW-MOVEMENT-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWMovementEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "UNIDIRECTIONAL", "xml.namePlural", "UNIDIRECTIONALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWMovementEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "BIDIRECTIONAL", "xml.namePlural", "BIDIRECTIONALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWMovementEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "UNIDIRECTIONAL-WITH-AUTORESET", "xml.namePlural", "UNIDIRECTIONAL-WITH-AUTORESETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWDefaultPositionTypeEnumEEnum, source, new String[]{"xml.name", "ACTUATOR-HW-DEFAULT-POSITION-TYPE-ENUM", "xml.namePlural", "ACTUATOR-HW-DEFAULT-POSITION-TYPE-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWDefaultPositionTypeEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "STABEL", "xml.namePlural", "STABELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWDefaultPositionTypeEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "INSTABLE", "xml.namePlural", "INSTABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWDefaultPositionTypeEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "BI-STABLE", "xml.namePlural", "BI-STABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.actuatorHWDefaultPositionTypeEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "MULTI-STABLE", "xml.namePlural", "MULTI-STABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWEClass, source, new String[]{"xml.name", "DISPLAY-HW", "xml.namePlural", "DISPLAY-HWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Backlight(), source, new String[]{"xml.name", "BACKLIGHT", "xml.namePlural", "BACKLIGHTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Brightness(), source, new String[]{"xml.name", "BRIGHTNESS", "xml.namePlural", "BRIGHTNESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterGenerator(), source, new String[]{"xml.name", "CHARACTER-GENERATOR", "xml.namePlural", "CHARACTER-GENERATORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterSet(), source, new String[]{"xml.name", "CHARACTER-SET", "xml.namePlural", "CHARACTER-SETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Colour(), source, new String[]{"xml.name", "COLOUR", "xml.namePlural", "COLOURS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionRation(), source, new String[]{"xml.name", "RESOLUTION-RATION", "xml.namePlural", "RESOLUTION-RATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionX(), source, new String[]{"xml.name", "RESOLUTION-X", "xml.namePlural", "RESOLUTION-XS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionY(), source, new String[]{"xml.name", "RESOLUTION-Y", "xml.namePlural", "RESOLUTION-YS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResponseTime(), source, new String[]{"xml.name", "RESPONSE-TIME", "xml.namePlural", "RESPONSE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_TypeOfCharacters(), source, new String[]{"xml.name", "TYPE-OF-CHARACTERS", "xml.namePlural", "TYPE-OF-CHARACTERSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ViewingAngle(), source, new String[]{"xml.name", "VIEWING-ANGLE", "xml.namePlural", "VIEWING-ANGLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.displayHWColourEnumEEnum, source, new String[]{"xml.name", "DISPLAY-HW-COLOUR-ENUM", "xml.namePlural", "DISPLAY-HW-COLOUR-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWColourEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "COLOUR", "xml.namePlural", "COLOURS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWColourEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "GREY", "xml.namePlural", "GREYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWColourEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "MONO", "xml.namePlural", "MONOS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWTypeOfCharactersEnumEEnum, source, new String[]{"xml.name", "DISPLAY-HW-TYPE-OF-CHARACTERS-ENUM", "xml.namePlural", "DISPLAY-HW-TYPE-OF-CHARACTERS-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWTypeOfCharactersEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "NUMERICAL", "xml.namePlural", "NUMERICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWTypeOfCharactersEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "ALPHA-NUMERISAL", "xml.namePlural", "ALPHA-NUMERISALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWTypeOfCharactersEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "SEMI-GRAPHICAL", "xml.namePlural", "SEMI-GRAPHICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.displayHWTypeOfCharactersEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "GRAPHICAL", "xml.namePlural", "GRAPHICALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.sensorHWEClass, source, new String[]{"xml.name", "SENSOR-HW", "xml.namePlural", "SENSOR-HWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSensorHW_SignalQuality(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SIGNAL-QUALITY", "xml.namePlural", "SIGNAL-QUALITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.sensorHWSignalQualityEnumEEnum, source, new String[]{"xml.name", "SENSOR-HW-SIGNAL-QUALITY-ENUM", "xml.namePlural", "SENSOR-HW-SIGNAL-QUALITY-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.sensorHWSignalQualityEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "RAW", "xml.namePlural", "RAWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.sensorHWSignalQualityEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "FILTERED", "xml.namePlural", "FILTEREDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.sensorHWSignalQualityEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "DEBOUNCED", "xml.namePlural", "DEBOUNCEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.sensorHWSignalQualityEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "CODED", "xml.namePlural", "CODEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.sensorActuatorHWEClass, source, new String[]{"xml.name", "SENSOR-ACTUATOR-HW", "xml.namePlural", "SENSOR-ACTUATOR-HWS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Accuracy(), source, new String[]{"xml.name", "ACCURACY", "xml.namePlural", "ACCURACYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_CycleTime(), source, new String[]{"xml.name", "CYCLE-TIME", "xml.namePlural", "CYCLE-TIMES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Resolution(), source, new String[]{"xml.name", "RESOLUTION", "xml.namePlural", "RESOLUTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Type(), source, new String[]{"xml.name", "TYPE", "xml.namePlural", "TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.actuatorHWEClass, source, new String[]{"name", "ACTUATOR-HW", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionType(), source, new String[]{"name", "DEFAULT-POSITION-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionValue(), source, new String[]{"name", "DEFAULT-POSITION-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_ElectricalType(), source, new String[]{"name", "ELECTRICAL-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Endurance(), source, new String[]{"name", "ENDURANCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Movement(), source, new String[]{"name", "MOVEMENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.displayHWEClass, source, new String[]{"name", "DISPLAY-HW", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Backlight(), source, new String[]{"name", "BACKLIGHT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Brightness(), source, new String[]{"name", "BRIGHTNESS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterGenerator(), source, new String[]{"name", "CHARACTER-GENERATOR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterSet(), source, new String[]{"name", "CHARACTER-SET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Colour(), source, new String[]{"name", "COLOUR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionRation(), source, new String[]{"name", "RESOLUTION-RATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionX(), source, new String[]{"name", "RESOLUTION-X", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionY(), source, new String[]{"name", "RESOLUTION-Y", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResponseTime(), source, new String[]{"name", "RESPONSE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_TypeOfCharacters(), source, new String[]{"name", "TYPE-OF-CHARACTERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ViewingAngle(), source, new String[]{"name", "VIEWING-ANGLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.sensorHWEClass, source, new String[]{"name", "SENSOR-HW", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSensorHW_SignalQuality(), source, new String[]{"name", "SIGNAL-QUALITY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.sensorActuatorHWEClass, source, new String[]{"name", "SENSOR-ACTUATOR-HW", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Accuracy(), source, new String[]{"name", "ACCURACY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_CycleTime(), source, new String[]{"name", "CYCLE-TIME", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Resolution(), source, new String[]{"name", "RESOLUTION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Type(), source, new String[]{"name", "TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.actuatorHWEClass, source, new String[]{"documentation", "HW Element Actuator definition."});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionType(), source, new String[]{"documentation", "Defines the way the actuator is seen after power on. On Bi-Stable or Multistable actuators the software has to know the status of this device after reset or Power On.\r\nEach actuator has a control input that determines its behaviour\r\n- Stable: The actuator has a unique defined position after a reset or power down. E.g. a spring force the actuator back into a start position or there are means which give a position feedback like a potentiometer or switch.\r\n- Instable: The position of the actuator can not be specified after power on or reset or the position of the actuator can be changed by other means\r\n- Bi-stable: The actuator has two possible, defined positions after a reset or power down. E.g. the actuator is in one of the two possible end positions. Only one of them is signalled by a feedback, e.g. a switch. The second end position is simply to be determined as the inversion of the feedback.\r\n- Multi-stable: The actuator has more possible, defined positions after a reset or power down and they are signalled by appropriate feedback E.g. a door latch might consist of different stable states: pre-locked, locked, double locked, released, open from outside, open from inside, All this states are covered by a feedback, and the states can change in random manner after the wake-up or power-up of a car."});
        this.addAnnotation((ENamedElement)this.getActuatorHW_DefaultPositionValue(), source, new String[]{"documentation", "If there is a specific default value is available. E.g. Valve status = off;"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_ElectricalType(), source, new String[]{"documentation", "Defines the most typical electrical behaviour of the system. This information is necessary for the ECU generation process and for tools which check for later interaction of the different component. (avoid resonance's, planning of the ECU power management).\r\n- Resistive: Heater, Lamp\r\n- Inductive: Coils, Motor\r\n- Capacitive: Extra SuperCAPS for bordnet stability"});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Endurance(), source, new String[]{"documentation", "Number of activation cycles the actuator is designed for."});
        this.addAnnotation((ENamedElement)this.getActuatorHW_Movement(), source, new String[]{"documentation", "Defines the way the movement is controlled by AUTOSAR. Positional feedback can be provided by the actuator by the conglomeration of the requisite actuator and sensor primitives.\r\n- Unidirectional: The actuator is only forced in one direction by SW. e.g. eject of a tape. The user or a other mechanical system is needed to chance the status of the actuator. Other example is a motor which has a circular movement always in one direction. SW can not alter this behaviour e.g. fan, wiper.\r\n- Bidirectional: The actuator can be moved forward and backward by software, e.g. window lift\r\n- Unidirectional with autoreset: The actuator is controlled only one direction by electrical means and SW. Bringing the actuator in to the default position other means are available. E.g. unlock of the trunk or gasoline flap with a motor which is brought into the initial position with a spring; a relay or a valve use the same mechanism."});
        this.addAnnotation((ENamedElement)this.displayHWEClass, source, new String[]{"documentation", "The Display HW element derives from HW Sensor Actuator and can be connected to a PU via a serial or parallel interface.\r\nFor the parallel mode the display can be connected to the data bus and address bus of a PU or to a peripheral.\r\nThe most common serial interface for displays are:\r\n- I2C\r\n- SPI\r\nThe most common physical interface for high resolution displays are the LVDS interface (Low Voltage Differential Signalling). This interface has three different lines for colours (RGB) and additional lines for control signals."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Backlight(), source, new String[]{"documentation", "Defines whether the display has a background lighting. This eases the readability of the displays during bad daylight conditions."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Brightness(), source, new String[]{"documentation", "Defines the visibility of the display."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterGenerator(), source, new String[]{"documentation", "If the display has an in-built character generator."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_CharacterSet(), source, new String[]{"documentation", "Defines which character set that can be handled by the display. There is a number of standardised character sets like ISO-8859-1 or Unicode."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_Colour(), source, new String[]{"documentation", "If the display can show objects in monochrome, grey scale or in colour."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionRation(), source, new String[]{"documentation", "Defines the ratio of the display resolution in horizontal versus vertical direction (e.g. 16 to 9)."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionX(), source, new String[]{"documentation", "Defines the number of the smallest graphical elements which can be displayed in horizontal direction."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResolutionY(), source, new String[]{"documentation", "Defines the number of the smallest graphical elements which can be displayed in vertical direction."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ResponseTime(), source, new String[]{"documentation", "Defines how long it takes for the display to show a changed element at -20 degree C."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_TypeOfCharacters(), source, new String[]{"documentation", "If the display can present numerical, alpha-numerical, semi-graphical or graphical objects."});
        this.addAnnotation((ENamedElement)this.getDisplayHW_ViewingAngle(), source, new String[]{"documentation", "Defines the angle range where the display can be observed."});
        this.addAnnotation((ENamedElement)this.sensorHWEClass, source, new String[]{"documentation", "HW Element Sensor definition."});
        this.addAnnotation((ENamedElement)this.getSensorHW_SignalQuality(), source, new String[]{"documentation", "Defines the quality of the data received from a sensor. Depending on this information later processing on the signal has to be done in HW or SW.\r\n- Raw: The information are transferred without any signal processing from the sensor to the according electronic. Possible spikes and noise is present on the line. In order to use this signal an appropriate signal processing have to be performed.\r\n- Filtered: The information passed some filter mechanism in order to remove noise and spikes from the signal.  The signal can be in a discrete form, At least the limit e.g. the -3dB limit, must be available to the software if this limit is close to the used bandwidth, needed for the planed application.  If more complex filter like bandpasses or notch filter are used the filter characteristic must be modelled and imported for the according SW-Component as well.\r\n- Debounced: The information was already processed by some electronics in order to get a clear and unique representation of the information. Debouncing is a sort of filter which suppress the noises and spikes which are generated by the bouncing when a switch is opened or closed. Debouncing is similar to Filtered, but the input is only represented by digital values instead of analogue values.\r\nTypical debouncing electronics are mono- flops or sampling , plus a majority encoder to represent a more stable signal.\r\n- Coded: The information is filtered and debounced, but furthermore represented in a digital encoded form.\r\nExamples are sensor connected via a serial communication bus like LIN to the ECU.\r\nIt must be noted that the complexity of the ECU will have a concomitant effect on the complexity of the corresponding ECU SW abstraction. Generally the more complex the ECU electronics, the more complex the abstract interfaces will be for the user to configure."});
        this.addAnnotation((ENamedElement)this.sensorActuatorHWEClass, source, new String[]{"documentation", "The common attributes for sensors and actuators.\r\nThe sensor and actuators can be connected via a Peripheral HW Port, a Communication HW Port or a Power Driver HW Port."});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Accuracy(), source, new String[]{"documentation", "Defines the error in the representation of the Technical Signal in the data format\r\nThis applies only if the Technical Signal is encoded before it is transferred to the ECU Electronics (e.g. via Communication Transceiver HW Port)."});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_CycleTime(), source, new String[]{"documentation", "The time the sensor/actuator must be accessed for correct information. It is possible to give a minimum, a maximum and a typical cycle time."});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Resolution(), source, new String[]{"documentation", "Defines the granularity of the representation of the Technical Signal in the data format.\r\nThis applies only if the Technical Signal is encoded before it is transferred to the ECU Electronics (e.g. via Communication Transceiver HW Port)."});
        this.addAnnotation((ENamedElement)this.getSensorActuatorHW_Type(), source, new String[]{"documentation", "Defines the general type of the sensor/actuator type is a most common naming for a sensor/actuator and is an open list and is not restricted to the following items. Several sets of types exist. Type is mandatory for the usage of the template\r\n- Sensor: Temperature, Pressure, Distance, Hall\r\n- Actuator: DC Motor, Valve, Relay, Display"});
    }

    protected void createTaggedValuesOfGeneralization_SensorActuatorHWAnnotations() {
        String source = "TaggedValuesOfGeneralization_SensorActuatorHW";
        this.addAnnotation((ENamedElement)this.actuatorHWEClass, source, new String[]{"Name", "", "GUID", "{B3C601EF-04C8-4ba6-861D-0D2D76C3D838}", "Id", "2109465218", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.displayHWEClass, source, new String[]{"Name", "", "GUID", "{76413A14-EC8A-4830-8BFD-816560A48ECE}", "Id", "-1717495435", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.sensorHWEClass, source, new String[]{"Name", "", "GUID", "{9D47768C-B032-432a-B462-6E1CA71DD5BF}", "Id", "-1068116443", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.actuatorHWEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.displayHWEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.sensorHWEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.sensorActuatorHWEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_HWElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_HWElement";
        this.addAnnotation((ENamedElement)this.sensorActuatorHWEClass, source, new String[]{"Name", "", "GUID", "{3CF9CEB9-95E7-4175-95CE-4B6ACECFAE00}", "Id", "-1792348533", "xml.sequenceOffset", "0"});
    }
}

