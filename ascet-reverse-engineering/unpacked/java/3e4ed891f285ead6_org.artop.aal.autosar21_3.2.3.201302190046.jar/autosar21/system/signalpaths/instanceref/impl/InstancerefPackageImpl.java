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
package autosar21.system.signalpaths.instanceref.impl;

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
import autosar21.system.impl.SystemPackageImpl;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.pdustructure.impl.PdustructurePackageImpl;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.signalpaths.impl.SignalpathsPackageImpl;
import autosar21.system.signalpaths.instanceref.ForbiddenSignalPathEcuCommunicationPort;
import autosar21.system.signalpaths.instanceref.InstancerefFactory;
import autosar21.system.signalpaths.instanceref.InstancerefPackage;
import autosar21.system.signalpaths.instanceref.PermissibleSignalPathEcuCommunicationPort;
import autosar21.system.signalpaths.instanceref.SwcToSwcOperationArgumentsOperation;
import autosar21.system.signalpaths.instanceref.SwcToSwcSignalDataElement;
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
    private EClass forbiddenSignalPathEcuCommunicationPortEClass = null;
    private EClass permissibleSignalPathEcuCommunicationPortEClass = null;
    private EClass swcToSwcOperationArgumentsOperationEClass = null;
    private EClass swcToSwcSignalDataElementEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private InstancerefPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/s/sp/r", (EFactory)InstancerefFactory.eINSTANCE);
    }

    public static InstancerefPackage init() {
        if (isInited) {
            return (InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp/r");
        }
        InstancerefPackageImpl theInstancerefPackage = (InstancerefPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/sp/r") instanceof InstancerefPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/s/sp/r") : new InstancerefPackageImpl());
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
        autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_15 = (autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") instanceof autosar21.system.datamapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/dm/r") : autosar21.system.datamapping.instanceref.InstancerefPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp") : SignalpathsPackage.eINSTANCE);
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
        theInstancerefPackage_15.createPackageContents();
        theSignalpathsPackage.createPackageContents();
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
        theInstancerefPackage_15.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theBswmodulePackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_16.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theInstancerefPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/s/sp/r", (Object)theInstancerefPackage);
        return theInstancerefPackage;
    }

    public EClass getForbiddenSignalPathEcuCommunicationPort() {
        return this.forbiddenSignalPathEcuCommunicationPortEClass;
    }

    public EReference getForbiddenSignalPathEcuCommunicationPort_ForbiddenSignalPath() {
        return (EReference)this.forbiddenSignalPathEcuCommunicationPortEClass.getEStructuralFeatures().get(0);
    }

    public EReference getForbiddenSignalPathEcuCommunicationPort_SystemTopologyInstance() {
        return (EReference)this.forbiddenSignalPathEcuCommunicationPortEClass.getEStructuralFeatures().get(1);
    }

    public EReference getForbiddenSignalPathEcuCommunicationPort_EcuCommunicationPort() {
        return (EReference)this.forbiddenSignalPathEcuCommunicationPortEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPermissibleSignalPathEcuCommunicationPort() {
        return this.permissibleSignalPathEcuCommunicationPortEClass;
    }

    public EReference getPermissibleSignalPathEcuCommunicationPort_PermissibleSignalPath() {
        return (EReference)this.permissibleSignalPathEcuCommunicationPortEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPermissibleSignalPathEcuCommunicationPort_SystemTopologyInstance() {
        return (EReference)this.permissibleSignalPathEcuCommunicationPortEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPermissibleSignalPathEcuCommunicationPort_EcuCommunicationPort() {
        return (EReference)this.permissibleSignalPathEcuCommunicationPortEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwcToSwcOperationArgumentsOperation() {
        return this.swcToSwcOperationArgumentsOperationEClass;
    }

    public EReference getSwcToSwcOperationArgumentsOperation_SwcToSwcOperationArguments() {
        return (EReference)this.swcToSwcOperationArgumentsOperationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwcToSwcOperationArgumentsOperation_SoftwareComposition() {
        return (EReference)this.swcToSwcOperationArgumentsOperationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwcToSwcOperationArgumentsOperation_ComponentPrototypes() {
        return (EReference)this.swcToSwcOperationArgumentsOperationEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwcToSwcOperationArgumentsOperation_PortPrototype() {
        return (EReference)this.swcToSwcOperationArgumentsOperationEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSwcToSwcOperationArgumentsOperation_OperationPrototype() {
        return (EReference)this.swcToSwcOperationArgumentsOperationEClass.getEStructuralFeatures().get(4);
    }

    public EClass getSwcToSwcSignalDataElement() {
        return this.swcToSwcSignalDataElementEClass;
    }

    public EReference getSwcToSwcSignalDataElement_SwcToSwcSignal() {
        return (EReference)this.swcToSwcSignalDataElementEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwcToSwcSignalDataElement_SoftwareComposition() {
        return (EReference)this.swcToSwcSignalDataElementEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwcToSwcSignalDataElement_ComponentPrototypes() {
        return (EReference)this.swcToSwcSignalDataElementEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwcToSwcSignalDataElement_PortPrototype() {
        return (EReference)this.swcToSwcSignalDataElementEClass.getEStructuralFeatures().get(3);
    }

    public EReference getSwcToSwcSignalDataElement_DataElementPrototype() {
        return (EReference)this.swcToSwcSignalDataElementEClass.getEStructuralFeatures().get(4);
    }

    public InstancerefFactory getInstancerefFactory() {
        return (InstancerefFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.forbiddenSignalPathEcuCommunicationPortEClass = this.createEClass(0);
        this.createEReference(this.forbiddenSignalPathEcuCommunicationPortEClass, 4);
        this.createEReference(this.forbiddenSignalPathEcuCommunicationPortEClass, 5);
        this.createEReference(this.forbiddenSignalPathEcuCommunicationPortEClass, 6);
        this.permissibleSignalPathEcuCommunicationPortEClass = this.createEClass(1);
        this.createEReference(this.permissibleSignalPathEcuCommunicationPortEClass, 4);
        this.createEReference(this.permissibleSignalPathEcuCommunicationPortEClass, 5);
        this.createEReference(this.permissibleSignalPathEcuCommunicationPortEClass, 6);
        this.swcToSwcOperationArgumentsOperationEClass = this.createEClass(2);
        this.createEReference(this.swcToSwcOperationArgumentsOperationEClass, 4);
        this.createEReference(this.swcToSwcOperationArgumentsOperationEClass, 5);
        this.createEReference(this.swcToSwcOperationArgumentsOperationEClass, 6);
        this.createEReference(this.swcToSwcOperationArgumentsOperationEClass, 7);
        this.createEReference(this.swcToSwcOperationArgumentsOperationEClass, 8);
        this.swcToSwcSignalDataElementEClass = this.createEClass(3);
        this.createEReference(this.swcToSwcSignalDataElementEClass, 4);
        this.createEReference(this.swcToSwcSignalDataElementEClass, 5);
        this.createEReference(this.swcToSwcSignalDataElementEClass, 6);
        this.createEReference(this.swcToSwcSignalDataElementEClass, 7);
        this.createEReference(this.swcToSwcSignalDataElementEClass, 8);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("instanceref");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/s/sp/r");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        SignalpathsPackage theSignalpathsPackage = (SignalpathsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/sp");
        SystemPackage theSystemPackage = (SystemPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s");
        TopologyPackage theTopologyPackage = (TopologyPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/t");
        CompositionPackage theCompositionPackage = (CompositionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/composition");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components");
        PortinterfacePackage thePortinterfacePackage = (PortinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/pi");
        this.forbiddenSignalPathEcuCommunicationPortEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.permissibleSignalPathEcuCommunicationPortEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swcToSwcOperationArgumentsOperationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swcToSwcSignalDataElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.forbiddenSignalPathEcuCommunicationPortEClass, ForbiddenSignalPathEcuCommunicationPort.class, "ForbiddenSignalPathEcuCommunicationPort", false, false, true);
        this.initEReference(this.getForbiddenSignalPathEcuCommunicationPort_ForbiddenSignalPath(), (EClassifier)theSignalpathsPackage.getForbiddenSignalPath(), theSignalpathsPackage.getForbiddenSignalPath_EcuCommunicationPorts(), "forbiddenSignalPath", null, 0, 1, ForbiddenSignalPathEcuCommunicationPort.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getForbiddenSignalPathEcuCommunicationPort_SystemTopologyInstance(), (EClassifier)theSystemPackage.getSystemTopologyInstance(), null, "systemTopologyInstance", null, 0, 1, ForbiddenSignalPathEcuCommunicationPort.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getForbiddenSignalPathEcuCommunicationPort_EcuCommunicationPort(), (EClassifier)theTopologyPackage.getECUCommunicationPortInstance(), null, "ecuCommunicationPort", null, 1, 1, ForbiddenSignalPathEcuCommunicationPort.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.permissibleSignalPathEcuCommunicationPortEClass, PermissibleSignalPathEcuCommunicationPort.class, "PermissibleSignalPathEcuCommunicationPort", false, false, true);
        this.initEReference(this.getPermissibleSignalPathEcuCommunicationPort_PermissibleSignalPath(), (EClassifier)theSignalpathsPackage.getPermissibleSignalPath(), theSignalpathsPackage.getPermissibleSignalPath_EcuCommunicationPorts(), "permissibleSignalPath", null, 0, 1, PermissibleSignalPathEcuCommunicationPort.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPermissibleSignalPathEcuCommunicationPort_SystemTopologyInstance(), (EClassifier)theSystemPackage.getSystemTopologyInstance(), null, "systemTopologyInstance", null, 0, 1, PermissibleSignalPathEcuCommunicationPort.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getPermissibleSignalPathEcuCommunicationPort_EcuCommunicationPort(), (EClassifier)theTopologyPackage.getECUCommunicationPortInstance(), null, "ecuCommunicationPort", null, 1, 1, PermissibleSignalPathEcuCommunicationPort.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.swcToSwcOperationArgumentsOperationEClass, SwcToSwcOperationArgumentsOperation.class, "SwcToSwcOperationArgumentsOperation", false, false, true);
        this.initEReference(this.getSwcToSwcOperationArgumentsOperation_SwcToSwcOperationArguments(), (EClassifier)theSignalpathsPackage.getSwcToSwcOperationArguments(), theSignalpathsPackage.getSwcToSwcOperationArguments_Operations(), "swcToSwcOperationArguments", null, 0, 1, SwcToSwcOperationArgumentsOperation.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwcToSwcOperationArgumentsOperation_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, SwcToSwcOperationArgumentsOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcToSwcOperationArgumentsOperation_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, SwcToSwcOperationArgumentsOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcToSwcOperationArgumentsOperation_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, SwcToSwcOperationArgumentsOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcToSwcOperationArgumentsOperation_OperationPrototype(), (EClassifier)thePortinterfacePackage.getOperationPrototype(), null, "operationPrototype", null, 1, 1, SwcToSwcOperationArgumentsOperation.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.swcToSwcSignalDataElementEClass, SwcToSwcSignalDataElement.class, "SwcToSwcSignalDataElement", false, false, true);
        this.initEReference(this.getSwcToSwcSignalDataElement_SwcToSwcSignal(), (EClassifier)theSignalpathsPackage.getSwcToSwcSignal(), theSignalpathsPackage.getSwcToSwcSignal_DataElements(), "swcToSwcSignal", null, 0, 1, SwcToSwcSignalDataElement.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwcToSwcSignalDataElement_SoftwareComposition(), (EClassifier)theSystemPackage.getSoftwareComposition(), null, "softwareComposition", null, 0, 1, SwcToSwcSignalDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcToSwcSignalDataElement_ComponentPrototypes(), (EClassifier)theCompositionPackage.getComponentPrototype(), null, "componentPrototypes", null, 0, -1, SwcToSwcSignalDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcToSwcSignalDataElement_PortPrototype(), (EClassifier)theComponentsPackage.getPortPrototype(), null, "portPrototype", null, 0, 1, SwcToSwcSignalDataElement.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwcToSwcSignalDataElement_DataElementPrototype(), (EClassifier)thePortinterfacePackage.getDataElementPrototype(), null, "dataElementPrototype", null, 1, 1, SwcToSwcSignalDataElement.class, false, false, true, false, true, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "_instanceRef", "GUID", "{F3C03A43-5B9E-448b-9ED1-6FE07C8791BC}", "Id", "-1125013885"});
        this.addAnnotation((ENamedElement)this.forbiddenSignalPathEcuCommunicationPortEClass, source, new String[]{"Name", "ForbiddenSignalPath_ecuCommunicationPort", "Modified", "Thu Sep 28 16:52:57 CEST 2006", "Created", "Thu Sep 28 16:52:18 CEST 2006", "GUID", "{58AD3021-03CC-4e4a-B384-8EB5C76AFC8E}", "Id", "-1742170288"});
        this.addAnnotation((ENamedElement)this.permissibleSignalPathEcuCommunicationPortEClass, source, new String[]{"Name", "PermissibleSignalPath_ecuCommunicationPort", "Modified", "Thu Sep 28 17:05:47 CEST 2006", "Created", "Thu Sep 28 17:05:00 CEST 2006", "GUID", "{8109E504-B09B-4821-80BB-DF1E8F81FB85}", "Id", "1747746017"});
        this.addAnnotation((ENamedElement)this.swcToSwcOperationArgumentsOperationEClass, source, new String[]{"Name", "SwcToSwcOperationArguments_operation", "Modified", "Wed Oct 04 10:42:32 CEST 2006", "Created", "Mon Jun 19 11:34:21 CEST 2006", "GUID", "{49C13685-50C3-415c-8251-92C95533CD12}", "Id", "-101772331"});
        this.addAnnotation((ENamedElement)this.swcToSwcSignalDataElementEClass, source, new String[]{"Name", "SwcToSwcSignal_dataElement", "Modified", "Wed Jun 07 15:59:44 CEST 2006", "Created", "Wed Jun 07 15:59:19 CEST 2006", "GUID", "{72C5056C-38A0-40f7-94C1-15020F1EB6A1}", "Id", "-757541770"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "REF", "xml.namePlural", "REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.forbiddenSignalPathEcuCommunicationPortEClass, source, new String[]{"xml.tags", "instanceRef.context=\"systemTopologyInstance\"", "instanceRef.context", "systemTopologyInstance", "xml.name", "FORBIDDEN-SIGNAL-PATH--ECU-COMMUNICATION-PORT-IREF", "xml.namePlural", "FORBIDDEN-SIGNAL-PATH-ECU-COMMUNICATION-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getForbiddenSignalPathEcuCommunicationPort_SystemTopologyInstance(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SYSTEM-TOPOLOGY-INSTANCE-REF", "xml.namePlural", "SYSTEM-TOPOLOGY-INSTANCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getForbiddenSignalPathEcuCommunicationPort_EcuCommunicationPort(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.enforceMinMultiplicity", "true", "xml.name", "ECU-COMMUNICATION-PORT-REF", "xml.namePlural", "ECU-COMMUNICATION-PORT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.permissibleSignalPathEcuCommunicationPortEClass, source, new String[]{"xml.tags", "instanceRef.context=\"systemTopologyInstance\"", "instanceRef.context", "systemTopologyInstance", "xml.name", "PERMISSIBLE-SIGNAL-PATH--ECU-COMMUNICATION-PORT-IREF", "xml.namePlural", "PERMISSIBLE-SIGNAL-PATH-ECU-COMMUNICATION-PORTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPermissibleSignalPathEcuCommunicationPort_SystemTopologyInstance(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SYSTEM-TOPOLOGY-INSTANCE-REF", "xml.namePlural", "SYSTEM-TOPOLOGY-INSTANCE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPermissibleSignalPathEcuCommunicationPort_EcuCommunicationPort(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.enforceMinMultiplicity", "true", "xml.name", "ECU-COMMUNICATION-PORT-REF", "xml.namePlural", "ECU-COMMUNICATION-PORT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcToSwcOperationArgumentsOperationEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype", "xml.name", "SWC-TO-SWC-OPERATION-ARGUMENTS--OPERATION-IREF", "xml.namePlural", "SWC-TO-SWC-OPERATION-ARGUMENTS-OPERATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_OperationPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.enforceMinMultiplicity", "true", "xml.name", "OPERATION-PROTOTYPE-REF", "xml.namePlural", "OPERATION-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swcToSwcSignalDataElementEClass, source, new String[]{"xml.tags", "instanceRef.context=\"softwareComposition componentPrototype+ portPrototype\"", "instanceRef.context", "softwareComposition componentPrototype+ portPrototype", "xml.name", "SWC-TO-SWC-SIGNAL--DATA-ELEMENT-IREF", "xml.namePlural", "SWC-TO-SWC-SIGNAL-DATA-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_SoftwareComposition(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "0", "xml.name", "SOFTWARE-COMPOSITION-REF", "xml.namePlural", "SOFTWARE-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_ComponentPrototypes(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "1", "xml.name", "COMPONENT-PROTOTYPE-REF", "xml.namePlural", "COMPONENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_PortPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "2", "xml.name", "PORT-PROTOTYPE-REF", "xml.namePlural", "PORT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_DataElementPrototype(), source, new String[]{"xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.sequenceOffset", "3", "xml.enforceMinMultiplicity", "true", "xml.name", "DATA-ELEMENT-PROTOTYPE-REF", "xml.namePlural", "DATA-ELEMENT-PROTOTYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.forbiddenSignalPathEcuCommunicationPortEClass, source, new String[]{"name", "FORBIDDEN-SIGNAL-PATH--ECU-COMMUNICATION-PORT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getForbiddenSignalPathEcuCommunicationPort_SystemTopologyInstance(), source, new String[]{"name", "SYSTEM-TOPOLOGY-INSTANCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getForbiddenSignalPathEcuCommunicationPort_EcuCommunicationPort(), source, new String[]{"name", "ECU-COMMUNICATION-PORT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.permissibleSignalPathEcuCommunicationPortEClass, source, new String[]{"name", "PERMISSIBLE-SIGNAL-PATH--ECU-COMMUNICATION-PORT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPermissibleSignalPathEcuCommunicationPort_SystemTopologyInstance(), source, new String[]{"name", "SYSTEM-TOPOLOGY-INSTANCE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPermissibleSignalPathEcuCommunicationPort_EcuCommunicationPort(), source, new String[]{"name", "ECU-COMMUNICATION-PORT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swcToSwcOperationArgumentsOperationEClass, source, new String[]{"name", "SWC-TO-SWC-OPERATION-ARGUMENTS--OPERATION-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_OperationPrototype(), source, new String[]{"name", "OPERATION-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swcToSwcSignalDataElementEClass, source, new String[]{"name", "SWC-TO-SWC-SIGNAL--DATA-ELEMENT-IREF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_SoftwareComposition(), source, new String[]{"name", "SOFTWARE-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_ComponentPrototypes(), source, new String[]{"name", "COMPONENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_PortPrototype(), source, new String[]{"name", "PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_DataElementPrototype(), source, new String[]{"name", "DATA-ELEMENT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.forbiddenSignalPathEcuCommunicationPortEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getForbiddenSignalPathEcuCommunicationPort_SystemTopologyInstance(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getForbiddenSignalPathEcuCommunicationPort_EcuCommunicationPort(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.permissibleSignalPathEcuCommunicationPortEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getPermissibleSignalPathEcuCommunicationPort_SystemTopologyInstance(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getPermissibleSignalPathEcuCommunicationPort_EcuCommunicationPort(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.swcToSwcOperationArgumentsOperationEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcOperationArgumentsOperation_OperationPrototype(), source, new String[]{"Stereotype", "instanceRef.target"});
        this.addAnnotation((ENamedElement)this.swcToSwcSignalDataElementEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_SoftwareComposition(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_ComponentPrototypes(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_PortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getSwcToSwcSignalDataElement_DataElementPrototype(), source, new String[]{"Stereotype", "instanceRef.target"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.forbiddenSignalPathEcuCommunicationPortEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.permissibleSignalPathEcuCommunicationPortEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swcToSwcOperationArgumentsOperationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swcToSwcSignalDataElementEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

