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
package autosar21.swcomponent.measurementandcalibration.axis.impl;

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
import autosar21.swcomponent.measurementandcalibration.axis.AxisFactory;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGeneric;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisGrouped;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisIndividual;
import autosar21.swcomponent.measurementandcalibration.axis.SwAxisType;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParam;
import autosar21.swcomponent.measurementandcalibration.axis.SwGenericAxisParamType;
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
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class AxisPackageImpl
extends EPackageImpl
implements AxisPackage {
    private EClass swAxisGenericEClass = null;
    private EClass swGenericAxisParamEClass = null;
    private EClass swGenericAxisParamTypeEClass = null;
    private EClass swAxisTypeEClass = null;
    private EClass swAxisIndividualEClass = null;
    private EClass swAxisGroupedEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private AxisPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/mac/a", (EFactory)AxisFactory.eINSTANCE);
    }

    public static AxisPackage init() {
        if (isInited) {
            return (AxisPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/a");
        }
        AxisPackageImpl theAxisPackage = (AxisPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/a") instanceof AxisPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/a") : new AxisPackageImpl());
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
        theAxisPackage.createPackageContents();
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
        theAxisPackage.initializePackageContents();
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
        theAxisPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/a", (Object)theAxisPackage);
        return theAxisPackage;
    }

    public EClass getSwAxisGeneric() {
        return this.swAxisGenericEClass;
    }

    public EReference getSwAxisGeneric_SwAxisIndividual() {
        return (EReference)this.swAxisGenericEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwAxisGeneric_SwAxisType() {
        return (EReference)this.swAxisGenericEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwAxisGeneric_SwGenericAxisParams() {
        return (EReference)this.swAxisGenericEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwGenericAxisParam() {
        return this.swGenericAxisParamEClass;
    }

    public EReference getSwGenericAxisParam_SwAxisGeneric() {
        return (EReference)this.swGenericAxisParamEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwGenericAxisParam_SwGenericAxisParamType() {
        return (EReference)this.swGenericAxisParamEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwGenericAxisParam_SwGenericAxisParamValue() {
        return (EReference)this.swGenericAxisParamEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwGenericAxisParamType() {
        return this.swGenericAxisParamTypeEClass;
    }

    public EReference getSwGenericAxisParamType_SwAxisType() {
        return (EReference)this.swGenericAxisParamTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwAxisType() {
        return this.swAxisTypeEClass;
    }

    public EReference getSwAxisType_SwGenericAxisParamTypes() {
        return (EReference)this.swAxisTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwAxisIndividual() {
        return this.swAxisIndividualEClass;
    }

    public EReference getSwAxisIndividual_SwCalprmAxisIndividualAxis() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwAxisIndividual_SwVariableRefs() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwAxisIndividual_CompuMethod() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwAxisIndividual_Unit() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSwAxisIndividual_SwMaxAxisPoints() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(4);
    }

    public EReference getSwAxisIndividual_SwMinAxisPoints() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSwAxisIndividual_DataConstr() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(6);
    }

    public EReference getSwAxisIndividual_SwAxisGeneric() {
        return (EReference)this.swAxisIndividualEClass.getEStructuralFeatures().get(7);
    }

    public EClass getSwAxisGrouped() {
        return this.swAxisGroupedEClass;
    }

    public EReference getSwAxisGrouped_SwCalprmAxisCommonAxis() {
        return (EReference)this.swAxisGroupedEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwAxisGrouped_SwCalprm() {
        return (EReference)this.swAxisGroupedEClass.getEStructuralFeatures().get(1);
    }

    public AxisFactory getAxisFactory() {
        return (AxisFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.swAxisGenericEClass = this.createEClass(0);
        this.createEReference(this.swAxisGenericEClass, 4);
        this.createEReference(this.swAxisGenericEClass, 5);
        this.createEReference(this.swAxisGenericEClass, 6);
        this.swGenericAxisParamEClass = this.createEClass(1);
        this.createEReference(this.swGenericAxisParamEClass, 4);
        this.createEReference(this.swGenericAxisParamEClass, 5);
        this.createEReference(this.swGenericAxisParamEClass, 6);
        this.swGenericAxisParamTypeEClass = this.createEClass(2);
        this.createEReference(this.swGenericAxisParamTypeEClass, 16);
        this.swAxisTypeEClass = this.createEClass(3);
        this.createEReference(this.swAxisTypeEClass, 18);
        this.swAxisIndividualEClass = this.createEClass(4);
        this.createEReference(this.swAxisIndividualEClass, 4);
        this.createEReference(this.swAxisIndividualEClass, 5);
        this.createEReference(this.swAxisIndividualEClass, 6);
        this.createEReference(this.swAxisIndividualEClass, 7);
        this.createEReference(this.swAxisIndividualEClass, 8);
        this.createEReference(this.swAxisIndividualEClass, 9);
        this.createEReference(this.swAxisIndividualEClass, 10);
        this.createEReference(this.swAxisIndividualEClass, 11);
        this.swAxisGroupedEClass = this.createEClass(5);
        this.createEReference(this.swAxisGroupedEClass, 4);
        this.createEReference(this.swAxisGroupedEClass, 5);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("axis");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/mac/a");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        DatadefpropertiesPackage theDatadefpropertiesPackage = (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ddp");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        CalibrationparameterPackage theCalibrationparameterPackage = (CalibrationparameterPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/cp");
        DatadictionaryproxiesPackage theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/dp");
        ComputationmethodPackage theComputationmethodPackage = (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/cm");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/u");
        ValuemodelPackage theValuemodelPackage = (ValuemodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/vm");
        GlobalconstraintsPackage theGlobalconstraintsPackage = (GlobalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/gc");
        this.swAxisGenericEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swGenericAxisParamEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swGenericAxisParamTypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.swAxisTypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.swAxisIndividualEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swAxisGroupedEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.swAxisGenericEClass, SwAxisGeneric.class, "SwAxisGeneric", false, false, true);
        this.initEReference(this.getSwAxisGeneric_SwAxisIndividual(), (EClassifier)this.getSwAxisIndividual(), this.getSwAxisIndividual_SwAxisGeneric(), "swAxisIndividual", null, 0, 1, SwAxisGeneric.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwAxisGeneric_SwAxisType(), (EClassifier)this.getSwAxisType(), null, "swAxisType", null, 0, 1, SwAxisGeneric.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwAxisGeneric_SwGenericAxisParams(), (EClassifier)this.getSwGenericAxisParam(), this.getSwGenericAxisParam_SwAxisGeneric(), "swGenericAxisParams", null, 0, -1, SwAxisGeneric.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swGenericAxisParamEClass, SwGenericAxisParam.class, "SwGenericAxisParam", false, false, true);
        this.initEReference(this.getSwGenericAxisParam_SwAxisGeneric(), (EClassifier)this.getSwAxisGeneric(), this.getSwAxisGeneric_SwGenericAxisParams(), "swAxisGeneric", null, 0, 1, SwGenericAxisParam.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwGenericAxisParam_SwGenericAxisParamType(), (EClassifier)this.getSwGenericAxisParamType(), null, "swGenericAxisParamType", null, 0, 1, SwGenericAxisParam.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwGenericAxisParam_SwGenericAxisParamValue(), (EClassifier)theDatadefpropertiesPackage.getSwGenericAxisParamValue(), theDatadefpropertiesPackage.getSwGenericAxisParamValue_SwGenericAxisParam(), "swGenericAxisParamValue", null, 0, 1, SwGenericAxisParam.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swGenericAxisParamTypeEClass, SwGenericAxisParamType.class, "SwGenericAxisParamType", false, false, true);
        this.initEReference(this.getSwGenericAxisParamType_SwAxisType(), (EClassifier)this.getSwAxisType(), this.getSwAxisType_SwGenericAxisParamTypes(), "swAxisType", null, 0, 1, SwGenericAxisParamType.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.swAxisTypeEClass, SwAxisType.class, "SwAxisType", false, false, true);
        this.initEReference(this.getSwAxisType_SwGenericAxisParamTypes(), (EClassifier)this.getSwGenericAxisParamType(), this.getSwGenericAxisParamType_SwAxisType(), "swGenericAxisParamTypes", null, 0, -1, SwAxisType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swAxisIndividualEClass, SwAxisIndividual.class, "SwAxisIndividual", false, false, true);
        this.initEReference(this.getSwAxisIndividual_SwCalprmAxisIndividualAxis(), (EClassifier)theCalibrationparameterPackage.getSwCalprmAxisIndividualAxis(), theCalibrationparameterPackage.getSwCalprmAxisIndividualAxis_SwAxisIndividual(), "swCalprmAxisIndividualAxis", null, 0, 1, SwAxisIndividual.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwAxisIndividual_SwVariableRefs(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRefs", null, 0, -1, SwAxisIndividual.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwAxisIndividual_CompuMethod(), (EClassifier)theComputationmethodPackage.getCompuMethod(), null, "compuMethod", null, 0, 1, SwAxisIndividual.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwAxisIndividual_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, SwAxisIndividual.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwAxisIndividual_SwMaxAxisPoints(), (EClassifier)theValuemodelPackage.getVf(), null, "swMaxAxisPoints", null, 0, 1, SwAxisIndividual.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwAxisIndividual_SwMinAxisPoints(), (EClassifier)theValuemodelPackage.getVf(), null, "swMinAxisPoints", null, 0, 1, SwAxisIndividual.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwAxisIndividual_DataConstr(), (EClassifier)theGlobalconstraintsPackage.getDataConstr(), null, "dataConstr", null, 0, 1, SwAxisIndividual.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwAxisIndividual_SwAxisGeneric(), (EClassifier)this.getSwAxisGeneric(), this.getSwAxisGeneric_SwAxisIndividual(), "swAxisGeneric", null, 0, 1, SwAxisIndividual.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swAxisGroupedEClass, SwAxisGrouped.class, "SwAxisGrouped", false, false, true);
        this.initEReference(this.getSwAxisGrouped_SwCalprmAxisCommonAxis(), (EClassifier)theCalibrationparameterPackage.getSwCalprmAxisCommonAxis(), theCalibrationparameterPackage.getSwCalprmAxisCommonAxis_SwAxisGrouped(), "swCalprmAxisCommonAxis", null, 0, 1, SwAxisGrouped.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwAxisGrouped_SwCalprm(), (EClassifier)theDatadictionaryproxiesPackage.getSwCalprmRefProxy(), null, "swCalprm", null, 0, 1, SwAxisGrouped.class, false, false, true, true, false, false, true, false, true);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/mac/a");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Axis", "GUID", "{9D7E90F7-E860-4f6b-A929-497BD26119CA}", "Id", "-1569628513"});
        this.addAnnotation((ENamedElement)this.swAxisGenericEClass, source, new String[]{"Name", "SwAxisGeneric", "Modified", "Fri Sep 01 13:58:17 CEST 2006", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "{34D5E496-6856-4279-ABA9-280D799E9837}", "Id", "-1654975678"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamEClass, source, new String[]{"Name", "SwGenericAxisParam", "Modified", "Fri Sep 01 13:58:20 CEST 2006", "Created", "Fri Nov 25 19:53:08 CET 2005", "GUID", "{7FCEDC46-897D-4921-9C4C-2F1D2B996484}", "Id", "-2100318565"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamTypeEClass, source, new String[]{"Name", "SwGenericAxisParamType", "Modified", "Fri Sep 01 13:58:21 CEST 2006", "Created", "Fri Nov 25 19:53:08 CET 2005", "GUID", "{10065D0F-24AC-41bc-9E0F-BAC76D134E8D}", "Id", "900758516"});
        this.addAnnotation((ENamedElement)this.swAxisTypeEClass, source, new String[]{"Name", "SwAxisType", "Modified", "Fri Sep 01 13:58:20 CEST 2006", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "{AFD8CE83-81FB-402e-8EC3-7A37FC6F6E87}", "Id", "1868898397"});
        this.addAnnotation((ENamedElement)this.swAxisIndividualEClass, source, new String[]{"Name", "SwAxisIndividual", "Modified", "Fri Nov 10 12:26:33 CET 2006", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "{29C6EE7A-37EB-4a7f-9617-34B60E9521E8}", "Id", "946012645"});
        this.addAnnotation((ENamedElement)this.swAxisGroupedEClass, source, new String[]{"Name", "SwAxisGrouped", "Modified", "Fri Sep 01 13:58:18 CEST 2006", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "{A052EEC4-9EC4-4cf9-8E81-4E94AA0E17F1}", "Id", "1965093696"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "AXIS", "xml.namePlural", "AXISS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swAxisGenericEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-AXIS-GENERIC_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-AXIS-GENERIC_TYPE", "xml.name", "SW-AXIS-GENERIC", "xml.namePlural", "SW-AXIS-GENERICS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisGeneric_SwAxisType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"SW-AXIS-GENERIC_TYPE__SW-AXIS-TYPE-REF\"", "xml.sequenceOffset", "0", "msr.id", "SW-AXIS-GENERIC_TYPE__SW-AXIS-TYPE-REF", "xml.name", "SW-AXIS-TYPE-REF", "xml.namePlural", "SW-AXIS-TYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisGeneric_SwGenericAxisParams(), source, new String[]{"xml.tags", "xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.roleWrapperElement=\"true\";xml.sequenceOffset=\"40\";msr.id=\"SW-AXIS-GENERIC_TYPE__SW-GENERIC-AXIS-PARAMS\"", "xml.roleWrapperElement", "true", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "1", "xml.typeElement", "false", "msr.id", "SW-AXIS-GENERIC_TYPE__SW-GENERIC-AXIS-PARAMS", "xml.roleElement", "true", "xml.name", "SW-GENERIC-AXIS-PARAM", "xml.namePlural", "SW-GENERIC-AXIS-PARAMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-GENERIC-AXIS-PARAM_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-GENERIC-AXIS-PARAM_TYPE", "xml.name", "SW-GENERIC-AXIS-PARAM", "xml.namePlural", "SW-GENERIC-AXIS-PARAMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParam_SwGenericAxisParamType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"SW-GENERIC-AXIS-PARAM_TYPE__SW-GENERIC-AXIS-PARAM-TYPE-REF\"", "xml.sequenceOffset", "0", "msr.id", "SW-GENERIC-AXIS-PARAM_TYPE__SW-GENERIC-AXIS-PARAM-TYPE-REF", "xml.name", "SW-GENERIC-AXIS-PARAM-TYPE-REF", "xml.namePlural", "SW-GENERIC-AXIS-PARAM-TYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParam_SwGenericAxisParamValue(), source, new String[]{"xml.tags", "xml.typeWrapperElement=\"false\";xml.roleElement=\"false\";xml.typeElement=\"false\";xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"30\";msr.id=\"SW-GENERIC-AXIS-PARAM_TYPE__SW-GENERIC-AXIS-PARAM-VALUE\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "1", "xml.typeElement", "false", "msr.id", "SW-GENERIC-AXIS-PARAM_TYPE__SW-GENERIC-AXIS-PARAM-VALUE", "xml.roleElement", "false", "xml.name", "SW-GENERIC-AXIS-PARAM-VALUE", "xml.namePlural", "SW-GENERIC-AXIS-PARAM-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamTypeEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-GENERIC-AXIS-PARAM-TYPE_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-GENERIC-AXIS-PARAM-TYPE_TYPE", "xml.name", "SW-GENERIC-AXIS-PARAM-TYPE", "xml.namePlural", "SW-GENERIC-AXIS-PARAM-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swAxisTypeEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-AXIS-TYPE_TYPE\";msr.isNamespace=\" TeamMembe SwGenericAxisPara\"", "asam.useCase", "MDX", "msr.isNamespace", " TeamMembe SwGenericAxisPara", "msr.id", "type__SW-AXIS-TYPE_TYPE", "xml.name", "SW-AXIS-TYPE", "xml.namePlural", "SW-AXIS-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisType_SwGenericAxisParamTypes(), source, new String[]{"xml.tags", "xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"true\";xml.roleElement=\"true\";xml.typeElement=\"false\";xml.sequenceOffset=\"30\";msr.id=\"SW-AXIS-TYPE_TYPE__SW-GENERIC-AXIS-PARAM-TYPES\"", "xml.roleWrapperElement", "true", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "SW-AXIS-TYPE_TYPE__SW-GENERIC-AXIS-PARAM-TYPES", "xml.roleElement", "true", "xml.name", "SW-GENERIC-AXIS-PARAM-TYPE", "xml.namePlural", "SW-GENERIC-AXIS-PARAM-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swAxisIndividualEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-AXIS-INDIVIDUAL_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-AXIS-INDIVIDUAL_TYPE", "xml.name", "SW-AXIS-INDIVIDUAL", "xml.namePlural", "SW-AXIS-INDIVIDUALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwVariableRefs(), source, new String[]{"xml.roleWrapperElement", "true", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleWrapperElement=\"true\";xml.typeElement=\"false\";xml.sequenceOffset=\"20\";xml.roleElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.sequenceOffset", "0", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_CompuMethod(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-AXIS-INDIVIDUAL_TYPE__COMPU-METHOD-REF\"", "xml.sequenceOffset", "1", "msr.id", "SW-AXIS-INDIVIDUAL_TYPE__COMPU-METHOD-REF", "xml.name", "COMPU-METHOD-REF", "xml.namePlural", "COMPU-METHOD-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_Unit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"SW-AXIS-INDIVIDUAL_TYPE__UNIT-REF\"", "xml.sequenceOffset", "2", "msr.id", "SW-AXIS-INDIVIDUAL_TYPE__UNIT-REF", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwMaxAxisPoints(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"60\";msr.id=\"SW-AXIS-INDIVIDUAL_TYPE__SW-MAX-AXIS-POINTS\"", "xml.sequenceOffset", "3", "msr.id", "SW-AXIS-INDIVIDUAL_TYPE__SW-MAX-AXIS-POINTS", "xml.name", "SW-MAX-AXIS-POINTS", "xml.namePlural", "SW-MAX-AXIS-POINTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwMinAxisPoints(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"70\";msr.id=\"SW-AXIS-INDIVIDUAL_TYPE__SW-MIN-AXIS-POINTS\"", "xml.sequenceOffset", "4", "msr.id", "SW-AXIS-INDIVIDUAL_TYPE__SW-MIN-AXIS-POINTS", "xml.name", "SW-MIN-AXIS-POINTS", "xml.namePlural", "SW-MIN-AXIS-POINTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_DataConstr(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"80\";msr.id=\"SW-AXIS-INDIVIDUAL_TYPE__DATA-CONSTR-REF\"", "xml.sequenceOffset", "5", "msr.id", "SW-AXIS-INDIVIDUAL_TYPE__DATA-CONSTR-REF", "xml.name", "DATA-CONSTR-REF", "xml.namePlural", "DATA-CONSTR-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwAxisGeneric(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"SW-AXIS-INDIVIDUAL_TYPE__SW-AXIS-GENERIC\"", "xml.sequenceOffset", "6", "msr.id", "SW-AXIS-INDIVIDUAL_TYPE__SW-AXIS-GENERIC", "xml.name", "SW-AXIS-GENERIC", "xml.namePlural", "SW-AXIS-GENERICS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swAxisGroupedEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-AXIS-GROUPED_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-AXIS-GROUPED_TYPE", "xml.name", "SW-AXIS-GROUPED", "xml.namePlural", "SW-AXIS-GROUPEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwAxisGrouped_SwCalprm(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"30\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "xml.name", "SW-CALPRM", "xml.namePlural", "SW-CALPRMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.swAxisGenericEClass, source, new String[]{"name", "SW-AXIS-GENERIC", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisGeneric_SwAxisType(), source, new String[]{"name", "SW-AXIS-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisGeneric_SwGenericAxisParams(), source, new String[]{"name", "SW-GENERIC-AXIS-PARAMS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamEClass, source, new String[]{"name", "SW-GENERIC-AXIS-PARAM", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParam_SwGenericAxisParamType(), source, new String[]{"name", "SW-GENERIC-AXIS-PARAM-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParam_SwGenericAxisParamValue(), source, new String[]{"name", "SW-GENERIC-AXIS-PARAM-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamTypeEClass, source, new String[]{"name", "SW-GENERIC-AXIS-PARAM-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swAxisTypeEClass, source, new String[]{"name", "SW-AXIS-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisType_SwGenericAxisParamTypes(), source, new String[]{"name", "SW-GENERIC-AXIS-PARAM-TYPES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swAxisIndividualEClass, source, new String[]{"name", "SW-AXIS-INDIVIDUAL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwVariableRefs(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_CompuMethod(), source, new String[]{"name", "COMPU-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwMaxAxisPoints(), source, new String[]{"name", "SW-MAX-AXIS-POINTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwMinAxisPoints(), source, new String[]{"name", "SW-MIN-AXIS-POINTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_DataConstr(), source, new String[]{"name", "DATA-CONSTR-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwAxisGeneric(), source, new String[]{"name", "SW-AXIS-GENERIC", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swAxisGroupedEClass, source, new String[]{"name", "SW-AXIS-GROUPED", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwAxisGrouped_SwCalprm(), source, new String[]{"name", "SW-CALPRM", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.swAxisGenericEClass, source, new String[]{"documentation", "This element defines an axis for the base points calculated in the ECU. The ECU is equipped with a fixed calculation algorithm. Parameters for the algorithm can be stored in the data component of the ECU. The following is valid:\r\n\r\n* The algorithm to be used is specified as <swAxisType> in the data dictionary ** (reservation of keyword and specification of parameters). Thus when forming an axis, the algorithm is given through the appropriate reference ( <swAxisTypeRef> ).\r\n\r\n* The number of base points to be calculated is defined in <SW-NUMER-OF-AXIS-POINTS>. This element exists to enable the number of axis points to be stored explicitly, although it could also be described as <swGenericAxisParam> .\r\n\r\n* The calculated base points can be stored on a physical level in the element <swValuesPhys> , which means that it is not necessary for the required calculation algorithm to be implemented in every MCD system.\r\n\r\n* The calculated base points can be stored on a standardized level in the element <swValuesCoded> , which means that it is not necessary for the required calculation algorithm to be implemented in every MCD system."});
        this.addAnnotation((ENamedElement)this.getSwAxisGeneric_SwAxisType(), source, new String[]{"documentation", "Reserves names for specific axis calculation strategies. No formal specification is given, due to the fact that it is possible to use arbitrary algorithms for calculating axis-points. Instead, the algorithm is described verbally; the parameters ( <swGenericAxisParamTypes>) are specified formally with respect to their names and constraints. As a result, <swAxisType> mainly reserves appropriate keywords."});
        this.addAnnotation((ENamedElement)this.getSwAxisGeneric_SwGenericAxisParams(), source, new String[]{"documentation", "This element describes a specific parameter of a generic axis. For this parameter, the following must be specified:\r\n\r\n* The name of the parameter; implemented here through a reference ( <swGenericAxisParamTypeRef>) to a parameter defined on a corresponding axis type. This is contained in the sister element <swAxisTypeRef> of the corresponding <swGenericAxisParams> element.\r\n\r\nReferences can only be made to axis parameters, defined within the referenced axis type.\r\n\r\n\r\n\r\n* The value of the parameter, specified in the element <vf> ."});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamEClass, source, new String[]{"documentation", "This element describes a specific parameter of a generic axis. For this parameter, the following must be specified:\r\n\r\n* The name of the parameter; implemented here through a reference ( <swGenericAxisParamTypeRef>) to a parameter defined on a corresponding axis type. This is contained in the sister element <swAxisTypeRef> of the corresponding <swGenericAxisParams> element.\r\n\r\nReferences can only be made to axis parameters, defined within the referenced axis type.\r\n\r\n\r\n\r\n* The value of the parameter, specified in the element <vf> ."});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParam_SwGenericAxisParamType(), source, new String[]{"documentation", "This element describes a generic axis type which contains:\r\n\r\n* Plausibility checks can be specified ( <SW-DATA-CONSTR-REF> ).\r\n\r\n* Textual description ( <desc> ), as a formal description is not of any use, due to the large variety of possibilities.\r\n\r\n* If this parameter contains structures, these can be simulated through the recursive use of <swGenericAxisParamTypes> ."});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamTypeEClass, source, new String[]{"documentation", "This element describes a generic axis type which contains:\r\n\r\n* Plausibility checks can be specified ( <SW-DATA-CONSTR-REF> ).\r\n\r\n* Textual description ( <desc> ), as a formal description is not of any use, due to the large variety of possibilities.\r\n\r\n* If this parameter contains structures, these can be simulated through the recursive use of <swGenericAxisParamTypes> ."});
        this.addAnnotation((ENamedElement)this.swAxisTypeEClass, source, new String[]{"documentation", "Reserves names for specific axis calculation strategies. No formal specification is given, due to the fact that it is possible to use arbitrary algorithms for calculating axis-points. Instead, the algorithm is described verbally; the parameters ( <swGenericAxisParamTypes>) are specified formally with respect to their names and constraints. As a result, <swAxisType> mainly reserves appropriate keywords."});
        this.addAnnotation((ENamedElement)this.getSwAxisType_SwGenericAxisParamTypes(), source, new String[]{"documentation", "This element describes a generic axis type which contains:\r\n\r\n* Plausibility checks can be specified ( <SW-DATA-CONSTR-REF> ).\r\n\r\n* Textual description ( <desc> ), as a formal description is not of any use, due to the large variety of possibilities.\r\n\r\n* If this parameter contains structures, these can be simulated through the recursive use of <swGenericAxisParamTypes> ."});
        this.addAnnotation((ENamedElement)this.swAxisIndividualEClass, source, new String[]{"documentation", "This element describes an axis integrated into a parameter (field etc.). The integration makes this individual to each parameter. The so-called group axis represents the counterpart to this. It is conceived as an independent parameter and is referenced by the respective parameters used ( <swCalprmRef> within <swAxisGrouped> ).\r\n\r\nThe specification of this axis incorporates:\r\n\r\n* Possible input variables for the axis ( <swVariableRefs> ).\r\n\r\nIt is possible to specify more than one variable. Here the following is valid:\r\n\r\n* The variable with the highest priority must be given first. It is used in the generation of the code and is also displayed first in the application system.\r\n\r\n* All variables referenced must be of the same physical nature. This is usually detected in that the conversion formulae affected refer back to the same ( <SI-UNIT> s).\r\n\r\n* This multiple referencing allows a base point distribution for more than one input variable to be used. One example of this are the temperature curves, which can depend both on the induction air temperature and the engine temperature.\r\n\r\nThese variables can be displayed simultaneously by MCD systems (adjustment systems), enabling operating points to be shown in the curves.\r\n\r\n* a conversion formula ( <SW-COMPU-METHOD-REF> )\r\n\r\n* a measuring unit ( <SW-UNIT-REF> )\r\n\r\n* a bit representation ( <swBitRepresentation> )\r\n\r\n* Maximum and minimum number of axis base points ( <swMaxAxisPoints>, <swMinAxisPoints> )\r\n\r\n* Plausibility checks ( <SW-DATA-CONSTR-REF> )\r\n\r\n* Generic axis characteristics ( <swAxisGeneric> ), in the event that such an axis is involved.\r\n\r\nThe specifications <swVariableRefs>, <SW-COMPU-METHOD-REF>, <SW-UNIT-REF> can exist in parallel, although physically speaking, only one is practical. This parallelism introduces flexibility into the development process, as axes can be described purely physically, without a conversion formula being available.\r\n\r\nThe following priority exists:\r\n\r\n* <swVariableRefs>\r\n\r\n* <SW-COMPU-METHOD-REF>\r\n\r\n* <SW-UNIT-REF>"});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwVariableRefs(), source, new String[]{"documentation", "This element references <swVariable> ."});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_Unit(), source, new String[]{"documentation", "Use <unit> to enter the unit of a parameter."});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwMaxAxisPoints(), source, new String[]{"documentation", "Maximum number of base points contained in the axis of a map or curve."});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwMinAxisPoints(), source, new String[]{"documentation", "This element specifies the minimum number of base points on the current axis of a map or curve."});
        this.addAnnotation((ENamedElement)this.getSwAxisIndividual_SwAxisGeneric(), source, new String[]{"documentation", "This element defines an axis for the base points calculated in the ECU. The ECU is equipped with a fixed calculation algorithm. Parameters for the algorithm can be stored in the data component of the ECU. The following is valid:\r\n\r\n* The algorithm to be used is specified as <swAxisType> in the data dictionary ** (reservation of keyword and specification of parameters). Thus when forming an axis, the algorithm is given through the appropriate reference ( <swAxisTypeRef> ).\r\n\r\n* The number of base points to be calculated is defined in <SW-NUMER-OF-AXIS-POINTS>. This element exists to enable the number of axis points to be stored explicitly, although it could also be described as <swGenericAxisParam> .\r\n\r\n* The calculated base points can be stored on a physical level in the element <swValuesPhys> , which means that it is not necessary for the required calculation algorithm to be implemented in every MCD system.\r\n\r\n* The calculated base points can be stored on a standardized level in the element <swValuesCoded> , which means that it is not necessary for the required calculation algorithm to be implemented in every MCD system."});
        this.addAnnotation((ENamedElement)this.swAxisGroupedEClass, source, new String[]{"documentation", "A group axis is described in <swAxisGrouped>, as an alternative to <swAxisIndividual> . A group axis is specified using\r\n\r\n* the reference ( <swCalprmRef> ) to the parameter from which an axis should be imported, which is then to serve as a group axis\r\n\r\n* the index of the axis to be used ( <swAxisIndex>). This index should only be specified if the parameter under <swCalprmRef> contains more than one axis. It is standard practise for the axis index of parameters with more than one axis, to be set to 1, if data has not been assigned to <swAxisIndex> .\r\n\r\n* If SW-AXIS-INDEX is equal to 0, the interpolation result of the referenced parameter is used as a base point index. This means that the keyword CURVE_AXIS_REF can be supported."});
        this.addAnnotation((ENamedElement)this.getSwAxisGrouped_SwCalprm(), source, new String[]{"documentation", "This element specifies the characteristics of calibration parameters in the ECU. Calibration parameters are objects that are not adapted to the run time of the vehicle. Instead, they calibrated to a greater extent in the application phase. Variables are quite the opposite ( <swVariable> s), being objects that are manipulated during the run time of the software.\r\n\r\nFor the most part, calibration parameters consist of:\r\n\r\n* Long and short names ( <longName>, <shortName> )\r\n\r\n* Short description ( <desc> )\r\n\r\n* Category ( <category> ), describing the basic structure of the parameter\r\n\r\n* Field parameter ( <swArraysize> ), in case the parameter an array\r\n\r\n* The technical characteristics ( <swDataDefProps>) These are identical to the technical characteristics of variables\r\n\r\n* Sub-structures simulated through the integration of <swCalprms> .\r\n\r\n* Comments ( <annotations> ), enabling notes to be passed on from one stage to the next, throughout the development process.\r\n\r\n* Additional information ( <addInfo>) in verbal form. Here, formal components can also be accommodated when SI -attributes are used.\r\n\r\nAllocation of <category>\r\n\r\n\r\n\r\nValue Conforms to ASAP\r\n\r\n* Meaning\r\n\r\n** Remark\r\n\r\nVALUE\r\n\r\n* Characteristic value\r\n\r\n** This represents a single value.\r\n\r\nCURVE_INDIVIDUAL\r\n\r\n* Characteristic\r\n\r\n** This represents a curve with an embedded axis.\r\n\r\nMAP_INDIVIDUAL\r\n\r\n* Map\r\n\r\n** This represents a map with embedded axes.\r\n\r\nCURVE_FIXED\r\n\r\n* Fixed characteristic\r\n\r\n** This indicates a curve where the axes are calculated by the ECU program. The algorithm is fixed and therefore the axis-points can not be calibrated. The parameters of the algorithm may in some cases be specified by applying <swAxisGeneric> .\r\n\r\nMAP_FIXED\r\n\r\n* Fixed map\r\n\r\n** This indicates a map where the axes are calculated by the ECU program. The algorithm is fixed and therefore the axis-points can not be calibrated. The parameters of the algorithm may in some cases be specified by applying <swAxisGeneric> .\r\n\r\nCURVE_GROUPED\r\n\r\n* Group characteristic\r\n\r\n** This indicates a curve which uses the axis-points of another calibration parameter which is then referred to by <swCalprmRef> in <swAxisGrouped> .\r\n\r\nMAP_GROUPED\r\n\r\n* Group map\r\n\r\n** This indicates a map which uses the axis-points of another calibration parameter which is then referred to by <swCalprmRef> in <swAxisGrouped> .\r\n\r\nASCII\r\n\r\n* Characteristic text\r\n\r\n** This indicates a parameter in text form (e.g. a message).\r\n\r\nSTRUCTURE\r\n\r\n* Parameter structure\r\n\r\n** This indicates a structure of calibration parameters. In this case, an embedded <swCalprm> should exist.\r\n\r\nVALUE_BLOCK\r\n\r\n* Characteristic values block\r\n\r\n** This indicates a homogeneous parameter set which is handled as a block. Unlike structures or arrays, the components of a value block appear in the instance tree within one <swInstance> .\r\n\r\nAXIS_VALUES\r\n\r\n* Group datapoints\r\n\r\n** This indicates the axis points of a calibration parameter, which are referenced in <SW-AXIS-GROUP> by a calibration parameter of the category MAP_GROUPED or CURVE_GROUPED ."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.swAxisGenericEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamTypeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.swAxisTypeEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.swAxisIndividualEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swAxisGroupedEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.swAxisGenericEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swAxisIndividualEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swAxisGroupedEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.swGenericAxisParamTypeEClass, source, new String[]{"Name", "", "GUID", "{5E5245B0-A7D6-49e6-B945-EA1174104755}", "msr.id", "SW-GENERIC-AXIS-PARAM-TYPE_TYPE__Identifiable", "Id", "1305106037", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.swAxisTypeEClass, source, new String[]{"Name", "", "GUID", "{17339A02-16B5-4e5b-A99B-9BA69C401CF2}", "msr.id", "SW-AXIS-TYPE_TYPE_ARElement", "Id", "-1776428395", "xml.sequenceOffset", "0"});
    }
}

