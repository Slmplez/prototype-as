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
package autosar21.swcomponent.measurementandcalibration.auxillaryobjects.impl;

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
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsFactory;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsPackage;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwAddrMethod;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwCodeSyntax;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayout;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroup;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRecordLayoutV;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.SwRelatedConstrs;
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

public class AuxillaryobjectsPackageImpl
extends EPackageImpl
implements AuxillaryobjectsPackage {
    private EClass swAddrMethodEClass = null;
    private EClass swCodeSyntaxEClass = null;
    private EClass swRecordLayoutGroupEClass = null;
    private EClass swRecordLayoutGroupContentEClass = null;
    private EClass swRecordLayoutVEClass = null;
    private EClass swRelatedConstrsEClass = null;
    private EClass swRecordLayoutEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private AuxillaryobjectsPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/mac/ao", (EFactory)AuxillaryobjectsFactory.eINSTANCE);
    }

    public static AuxillaryobjectsPackage init() {
        if (isInited) {
            return (AuxillaryobjectsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ao");
        }
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/ao") : new AuxillaryobjectsPackageImpl());
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
        theAuxillaryobjectsPackage.createPackageContents();
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
        theAuxillaryobjectsPackage.initializePackageContents();
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
        theAuxillaryobjectsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/ao", (Object)theAuxillaryobjectsPackage);
        return theAuxillaryobjectsPackage;
    }

    public EClass getSwAddrMethod() {
        return this.swAddrMethodEClass;
    }

    public EClass getSwCodeSyntax() {
        return this.swCodeSyntaxEClass;
    }

    public EClass getSwRecordLayoutGroup() {
        return this.swRecordLayoutGroupEClass;
    }

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupAxis() {
        return (EAttribute)this.swRecordLayoutGroupEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupIndex() {
        return (EAttribute)this.swRecordLayoutGroupEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupFrom() {
        return (EAttribute)this.swRecordLayoutGroupEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupTo() {
        return (EAttribute)this.swRecordLayoutGroupEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutGroupStep() {
        return (EAttribute)this.swRecordLayoutGroupEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getSwRecordLayoutGroup_SwRecordLayoutComponent() {
        return (EAttribute)this.swRecordLayoutGroupEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSwRecordLayoutGroup_SwRecordLayoutGroupContentType() {
        return (EReference)this.swRecordLayoutGroupEClass.getEStructuralFeatures().get(6);
    }

    public EClass getSwRecordLayoutGroupContent() {
        return this.swRecordLayoutGroupContentEClass;
    }

    public EReference getSwRecordLayoutGroupContent_SwRecordLayoutGroup() {
        return (EReference)this.swRecordLayoutGroupContentEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwRecordLayoutGroupContent_SwRecordLayouts() {
        return (EReference)this.swRecordLayoutGroupContentEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwRecordLayoutGroupContent_SwRecordLayoutVs() {
        return (EReference)this.swRecordLayoutGroupContentEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwRecordLayoutGroupContent_SwRecordLayoutGroups() {
        return (EReference)this.swRecordLayoutGroupContentEClass.getEStructuralFeatures().get(3);
    }

    public EClass getSwRecordLayoutV() {
        return this.swRecordLayoutVEClass;
    }

    public EReference getSwRecordLayoutV_SwRecordLayoutGroupContent() {
        return (EReference)this.swRecordLayoutVEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwRecordLayoutV_BaseType() {
        return (EReference)this.swRecordLayoutVEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVAxis() {
        return (EAttribute)this.swRecordLayoutVEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVProp() {
        return (EAttribute)this.swRecordLayoutVEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVIndex() {
        return (EAttribute)this.swRecordLayoutVEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getSwRecordLayoutV_SwRecordLayoutVFixValue() {
        return (EAttribute)this.swRecordLayoutVEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSwRecordLayoutV_SwRecordLayout() {
        return (EReference)this.swRecordLayoutVEClass.getEStructuralFeatures().get(6);
    }

    public EClass getSwRelatedConstrs() {
        return this.swRelatedConstrsEClass;
    }

    public EClass getSwRecordLayout() {
        return this.swRecordLayoutEClass;
    }

    public EReference getSwRecordLayout_SwRecordLayoutGroups() {
        return (EReference)this.swRecordLayoutEClass.getEStructuralFeatures().get(0);
    }

    public AuxillaryobjectsFactory getAuxillaryobjectsFactory() {
        return (AuxillaryobjectsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.swAddrMethodEClass = this.createEClass(0);
        this.swCodeSyntaxEClass = this.createEClass(1);
        this.swRecordLayoutGroupEClass = this.createEClass(2);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 4);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 5);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 6);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 7);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 8);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 9);
        this.createEReference(this.swRecordLayoutGroupEClass, 10);
        this.swRecordLayoutGroupContentEClass = this.createEClass(3);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 4);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 5);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 6);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 7);
        this.swRecordLayoutVEClass = this.createEClass(4);
        this.createEReference(this.swRecordLayoutVEClass, 4);
        this.createEReference(this.swRecordLayoutVEClass, 5);
        this.createEAttribute(this.swRecordLayoutVEClass, 6);
        this.createEAttribute(this.swRecordLayoutVEClass, 7);
        this.createEAttribute(this.swRecordLayoutVEClass, 8);
        this.createEAttribute(this.swRecordLayoutVEClass, 9);
        this.createEReference(this.swRecordLayoutVEClass, 10);
        this.swRelatedConstrsEClass = this.createEClass(5);
        this.swRecordLayoutEClass = this.createEClass(6);
        this.createEReference(this.swRecordLayoutEClass, 18);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("auxillaryobjects");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/mac/ao");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        BasetypesPackage theBasetypesPackage = (BasetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/bt");
        this.swAddrMethodEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.swCodeSyntaxEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.swRecordLayoutGroupEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swRecordLayoutGroupContentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swRecordLayoutVEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swRelatedConstrsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swRecordLayoutEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.initEClass(this.swAddrMethodEClass, SwAddrMethod.class, "SwAddrMethod", false, false, true);
        this.initEClass(this.swCodeSyntaxEClass, SwCodeSyntax.class, "SwCodeSyntax", false, false, true);
        this.initEClass(this.swRecordLayoutGroupEClass, SwRecordLayoutGroup.class, "SwRecordLayoutGroup", false, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutGroupAxis", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutGroupIndex", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutGroupFrom", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutGroupTo", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutGroupStep", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutComponent", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), (EClassifier)this.getSwRecordLayoutGroupContent(), this.getSwRecordLayoutGroupContent_SwRecordLayoutGroup(), "swRecordLayoutGroupContentType", null, 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swRecordLayoutGroupContentEClass, SwRecordLayoutGroupContent.class, "SwRecordLayoutGroupContent", false, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayoutGroup(), (EClassifier)this.getSwRecordLayoutGroup(), this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), "swRecordLayoutGroup", null, 0, 1, SwRecordLayoutGroupContent.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayouts(), (EClassifier)this.getSwRecordLayout(), null, "swRecordLayouts", null, 0, -1, SwRecordLayoutGroupContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), (EClassifier)this.getSwRecordLayoutV(), this.getSwRecordLayoutV_SwRecordLayoutGroupContent(), "swRecordLayoutVs", null, 0, -1, SwRecordLayoutGroupContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), (EClassifier)this.getSwRecordLayoutGroup(), null, "swRecordLayoutGroups", null, 0, -1, SwRecordLayoutGroupContent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swRecordLayoutVEClass, SwRecordLayoutV.class, "SwRecordLayoutV", false, false, true);
        this.initEReference(this.getSwRecordLayoutV_SwRecordLayoutGroupContent(), (EClassifier)this.getSwRecordLayoutGroupContent(), this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), "swRecordLayoutGroupContent", null, 0, 1, SwRecordLayoutV.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutV_BaseType(), (EClassifier)theBasetypesPackage.getSwBaseType(), null, "baseType", null, 0, 1, SwRecordLayoutV.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVAxis(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutVAxis", "", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVProp(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutVProp", "", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVIndex(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutVIndex", "", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutVFixValue", "", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutV_SwRecordLayout(), (EClassifier)this.getSwRecordLayout(), null, "swRecordLayout", null, 0, 1, SwRecordLayoutV.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.swRelatedConstrsEClass, SwRelatedConstrs.class, "SwRelatedConstrs", false, false, true);
        this.initEClass(this.swRecordLayoutEClass, SwRecordLayout.class, "SwRecordLayout", false, false, true);
        this.initEReference(this.getSwRecordLayout_SwRecordLayoutGroups(), (EClassifier)this.getSwRecordLayoutGroup(), null, "swRecordLayoutGroups", null, 0, -1, SwRecordLayout.class, false, false, true, true, false, false, true, false, true);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/mac/ao");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "AuxillaryObjects", "GUID", "{0A1B32F8-6AC9-4509-95FE-7F7AA2265616}", "Id", "2120993615"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"Name", "SwAddrMethod", "Modified", "Fri Sep 01 13:58:10 CEST 2006", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "{284627DC-C5EE-400d-9185-34B92B04F752}", "Id", "-1920732166"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"Name", "SwCodeSyntax", "Modified", "Fri Sep 01 13:58:10 CEST 2006", "Created", "Fri Nov 25 19:53:05 CET 2005", "GUID", "{A158AA26-ADA6-4dd6-A647-14C0C593DCD2}", "Id", "2092624342"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"Name", "SwRecordLayoutGroup", "Modified", "Fri Sep 01 13:58:12 CEST 2006", "Created", "Fri Nov 25 19:53:11 CET 2005", "GUID", "{145DB7DF-B1C0-4b6e-8213-9AF50FE9E013}", "Id", "-1705265436"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"Name", "swRecordLayoutGroupAxis", "GUID", "{886751F0-B6FF-46a9-A198-5B234A236FD2}", "Id", "1978691437"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"Name", "swRecordLayoutGroupIndex", "GUID", "{DAF28E86-9221-4043-9D7E-F23D762DC23A}", "Id", "687462473"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"Name", "swRecordLayoutGroupFrom", "GUID", "{B6061A06-31E2-46fd-A145-68C25122E20A}", "Id", "-543791387"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"Name", "swRecordLayoutGroupTo", "GUID", "{003989B9-220A-4688-90FB-B98110ECEE7A}", "Id", "-927860927"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"Name", "swRecordLayoutGroupStep", "GUID", "{37546A1D-F9C3-498d-8A06-D3EE9CB8BA8B}", "Id", "479077725"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"Name", "swRecordLayoutComponent", "GUID", "{6D9110AC-7F35-402b-BF9D-FA2D482D3217}", "Id", "1268665657"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"Name", "SwRecordLayoutGroupContent", "Modified", "Fri Sep 01 13:29:10 CEST 2006", "Created", "Fri Nov 25 19:53:40 CET 2005", "GUID", "{7B080C19-32C1-4b46-A059-42409EA2FE61}", "Id", "1157145272"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"Name", "SwRecordLayoutV", "Modified", "Fri Sep 01 13:58:14 CEST 2006", "Created", "Fri Nov 25 19:53:12 CET 2005", "GUID", "{9CAA6AF8-4FD5-4e99-BE48-34F01ECA39B4}", "Id", "-1746539943"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"Name", "swRecordLayoutVAxis", "GUID", "{958B3927-C10D-4004-9D60-C329480A06B0}", "Id", "-1204107918"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"Name", "swRecordLayoutVProp", "GUID", "{5E134D77-0A6C-4450-8F59-006EA8F1B487}", "Id", "-1114586978"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"Name", "swRecordLayoutVIndex", "GUID", "{00464E00-5075-4b32-8485-65757ED2A549}", "Id", "1001006730"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"Name", "swRecordLayoutVFixValue", "GUID", "{F65CD830-7577-47fb-8127-9530196D343E}", "Id", "-1574362314"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"Name", "SwRelatedConstrs", "Modified", "Fri Sep 01 13:58:16 CEST 2006", "Created", "Fri Nov 25 19:53:12 CET 2005", "GUID", "{6971ADDE-8108-4960-8FA5-FA7AA328A29D}", "Id", "165969651"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"Name", "SwRecordLayout", "Modified", "Fri Sep 01 13:58:11 CEST 2006", "Created", "Fri Nov 25 19:53:12 CET 2005", "GUID", "{25DD8150-DBD6-4f9f-8FBF-C18CF0CE2F8C}", "Id", "1265356925"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "AUXILLARY-OBJECTS", "xml.namePlural", "AUXILLARY-OBJECTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-ADDR-METHOD_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-ADDR-METHOD_TYPE", "xml.name", "SW-ADDR-METHOD", "xml.namePlural", "SW-ADDR-METHODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-CODE-SYNTAX_TYPE\"", "msr.id", "type__SW-CODE-SYNTAX_TYPE", "xml.name", "SW-CODE-SYNTAX", "xml.namePlural", "SW-CODE-SYNTAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-RECORD-LAYOUT-GROUP_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-RECORD-LAYOUT-GROUP_TYPE", "xml.name", "SW-RECORD-LAYOUT-GROUP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-AXIS\";msr.tbdString=\"true\";xml.sequenceOffset=\"30\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-AXIS", "xml.name", "SW-RECORD-LAYOUT-GROUP-AXIS", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-AXISS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-INDEX\";msr.tbdString=\"true\";xml.sequenceOffset=\"40\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-INDEX", "xml.name", "SW-RECORD-LAYOUT-GROUP-INDEX", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-INDEXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-FROM\";msr.tbdString=\"true\";xml.sequenceOffset=\"60\"", "msr.tbdString", "true", "xml.sequenceOffset", "2", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-FROM", "xml.name", "SW-RECORD-LAYOUT-GROUP-FROM", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-FROMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-TO\";msr.tbdString=\"true\";xml.sequenceOffset=\"70\"", "msr.tbdString", "true", "xml.sequenceOffset", "3", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-TO", "xml.name", "SW-RECORD-LAYOUT-GROUP-TO", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-TOS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-STEP\";msr.tbdString=\"true\";xml.sequenceOffset=\"80\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-STEP", "xml.name", "SW-RECORD-LAYOUT-GROUP-STEP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-STEPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-COMPONENT\";msr.tbdString=\"true\";xml.sequenceOffset=\"90\"", "msr.tbdString", "true", "xml.sequenceOffset", "5", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-COMPONENT", "xml.name", "SW-RECORD-LAYOUT-COMPONENT", "xml.namePlural", "SW-RECORD-LAYOUT-COMPONENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"100\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP_content_TYPE\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "6", "xml.typeElement", "false", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP_content_TYPE", "xml.roleElement", "false", "xml.name", "SW-RECORD-LAYOUT-GROUP-CONTENT-TYPE", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-CONTENT-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__SW-RECORD-LAYOUT-GROUP_content_TYPE\";msr.isGroupOnly=\"true\"", "asam.useCase", "MDX", "msr.isGroupOnly", "true", "msr.id", "special__SW-RECORD-LAYOUT-GROUP_content_TYPE", "xml.name", "SW-RECORD-LAYOUT-GROUP-CONTENT", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-CONTENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayouts(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"110\";msr.id=\"SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-REF\"", "xml.sequenceOffset", "0", "msr.id", "SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-REF", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "SW-RECORD-LAYOUT-REF", "xml.namePlural", "SW-RECORD-LAYOUT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"120\";msr.id=\"SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-V\"", "xml.sequenceOffset", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-V", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "SW-RECORD-LAYOUT-V", "xml.namePlural", "SW-RECORD-LAYOUT-VS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"130\";msr.id=\"SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-GROUP\"", "xml.sequenceOffset", "2", "msr.id", "SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-GROUP", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "SW-RECORD-LAYOUT-GROUP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-RECORD-LAYOUT-V_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-RECORD-LAYOUT-V_TYPE", "xml.name", "SW-RECORD-LAYOUT-V", "xml.namePlural", "SW-RECORD-LAYOUT-VS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_BaseType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-RECORD-LAYOUT-V_TYPE__BASE-TYPE-REF\"", "xml.sequenceOffset", "0", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__BASE-TYPE-REF", "xml.name", "BASE-TYPE-REF", "xml.namePlural", "BASE-TYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-AXIS\";msr.tbdString=\"true\";xml.sequenceOffset=\"40\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-AXIS", "xml.name", "SW-RECORD-LAYOUT-V-AXIS", "xml.namePlural", "SW-RECORD-LAYOUT-V-AXISS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-PROP\";msr.tbdString=\"true\";xml.sequenceOffset=\"50\"", "msr.tbdString", "true", "xml.sequenceOffset", "2", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-PROP", "xml.name", "SW-RECORD-LAYOUT-V-PROP", "xml.namePlural", "SW-RECORD-LAYOUT-V-PROPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-INDEX\";msr.tbdString=\"true\";xml.sequenceOffset=\"60\"", "msr.tbdString", "true", "xml.sequenceOffset", "3", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-INDEX", "xml.name", "SW-RECORD-LAYOUT-V-INDEX", "xml.namePlural", "SW-RECORD-LAYOUT-V-INDEXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-FIX-VALUE\";msr.tbdString=\"true\";xml.sequenceOffset=\"80\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-FIX-VALUE", "xml.name", "SW-RECORD-LAYOUT-V-FIX-VALUE", "xml.namePlural", "SW-RECORD-LAYOUT-V-FIX-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayout(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-REF\"", "xml.sequenceOffset", "5", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-REF", "xml.name", "SW-RECORD-LAYOUT-REF", "xml.namePlural", "SW-RECORD-LAYOUT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-RELATED-CONSTRS_TYPE\"", "msr.id", "type__SW-RELATED-CONSTRS_TYPE", "xml.name", "SW-RELATED-CONSTRS", "xml.namePlural", "SW-RELATED-CONSTRSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-RECORD-LAYOUT_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-RECORD-LAYOUT_TYPE", "xml.name", "SW-RECORD-LAYOUT", "xml.namePlural", "SW-RECORD-LAYOUTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayout_SwRecordLayoutGroups(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.roleElement=\"true\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";msr.id=\"SW-RECORD-LAYOUT_TYPE__SW-RECORD-LAYOUT-GROUP\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "SW-RECORD-LAYOUT_TYPE__SW-RECORD-LAYOUT-GROUP", "xml.roleElement", "true", "xml.name", "SW-RECORD-LAYOUT-GROUP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUPS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"name", "SW-ADDR-METHOD", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"name", "SW-CODE-SYNTAX", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-AXIS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-INDEX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-FROM", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-TO", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-STEP", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"name", "SW-RECORD-LAYOUT-COMPONENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-CONTENT-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayouts(), source, new String[]{"name", "SW-RECORD-LAYOUT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), source, new String[]{"name", "SW-RECORD-LAYOUT-V", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"name", "SW-RECORD-LAYOUT-V", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_BaseType(), source, new String[]{"name", "BASE-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-AXIS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-PROP", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-INDEX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-FIX-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayout(), source, new String[]{"name", "SW-RECORD-LAYOUT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"name", "SW-RELATED-CONSTRS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"name", "SW-RECORD-LAYOUT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayout_SwRecordLayoutGroups(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"documentation", "An address schematic <swAddrMethod> describes how variables or parameters are addressed in the ECU. Address methods can take the form of direct addressing or indirect addressing using a vector.\r\n\r\nThe principle role of this element is the declaration of keywords (in the subelement <shortName>) for the address calculation process. The process itself is given a verbal description (in <swAddrMethodDesc>) rather than a formal one. However, a formal reference <swCpuMemSegRef> to the memory segment concerned is issued. In future versions further formal components may be added to this, if required. . This approach was adopted as the number of possible address schematics is relatively small. A complete formal description would create unnecessary work."});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"documentation", "Code syntax objects fix the representation of the variables and parameters in the program source file. These code syntax objects are defined centrally in <swCodeSyntaxes> and are connected to variables and parameters by means of <SwCodeSyntaxRef> .\r\n\r\nThe principle role of this element is the declaration of keywords (in the subelement <shortName>) for the code generation procedure. The process itself is given a verbal description (in <swCodeSyntaxDesc> ) rather than a formal one. This approach was adopted as the number of possible code syntax schematics is relatively small. A complete formal description would create unnecessary work.\r\n\r\nIt is possible however, to store a process-dependent micro syntax in <swCodeSyntaxDesc>, for example within <verbatim> and to label this through a suitable data assignment to the attribute SI ."});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"documentation", "Specifies how a record layout is set up. Using <swRecordLayoutGroup>, it recursively models iterations through axis values. The subelement <swRecordLayoutRef> may reference other <swRecordLayout>s. ** <swRecordLayoutRef>, <swRecordLayoutV> and <swRecordLayoutGroup> ** for the modeled record layout."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"documentation", "The contents of this element specifies the axis number within a record layout group <swRecordLayoutGroup>. The sister elements on the right-hand side of the tree next to <swRecordLayoutGroupAxis> refer exactly to this axis number."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"documentation", "This element attributes a symbolic name to the iterator of the superimposed record layout group <swRecordLayoutGroup>. This can be referenced as a loop index beneath superimposed or subsequent <swRecordLayoutV> elements."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"documentation", "This element specifies the iterator index for the point in the axis from which a record layout group <swRecordLayoutGroup> is commenced. Negative values are also possible, i.e. the value -4 counts from the fourth value from the end."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"documentation", "This element specifies the iterator index for a point in the axis up to which iteration for a record layout group takes place. Negative values are also possible, i.e. the value -4 counts up to the fourth value from the end."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"documentation", "This element specifies the step width for the iterator index, which is used for a record layout group <swRecordLayoutGroup> ."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"documentation", "This element is used to denote the component to which the group in question applies. Thus, the record layout supports structured objects. This secures independence from the sequence of components, because they can be referred to via name."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayouts(), source, new String[]{"documentation", "Defines how the data objects (variables, calibration parameters etc.) are to be stored in the ECU memory. As an example, this definition specifies the sequence of axis points in the ECU memory. Iterations through axis values are stored within the subelements <swRecordLayoutGroup> . These subelements might be stored embedded."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), source, new String[]{"documentation", "This element specifies which values are stored for the current <swRecordLayoutGroup>. If no <SW-BASE-TYPE-REF> is present, the <SW-BASE-TYPE> referenced initially in the father element <swRecordLayoutGroup> is valid. The specification of <swRecordLayoutVAxis> gives the axis of the values to be stored in accordance with the current record layout <swRecordLayoutGroup>. In <swRecordLayoutVProp> you are able to specify the type of values that are to be stored, e.g. number or value. Under <SW-RECORD-V-INDEX>, the symbolic values of the axes can be given, for which the value given under <swRecordLayoutVProp> is iterated. These symbolic values relate to the values given in <swRecordLayoutGroupIndex> ."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), source, new String[]{"documentation", "Specifies how a record layout is set up. Using <swRecordLayoutGroup>, it recursively models iterations through axis values. The subelement <swRecordLayoutRef> may reference other <swRecordLayout>s. ** <swRecordLayoutRef>, <swRecordLayoutV> and <swRecordLayoutGroup> ** for the modeled record layout."});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"documentation", "This element specifies which values are stored for the current <swRecordLayoutGroup>. If no <SW-BASE-TYPE-REF> is present, the <SW-BASE-TYPE> referenced initially in the father element <swRecordLayoutGroup> is valid. The specification of <swRecordLayoutVAxis> gives the axis of the values to be stored in accordance with the current record layout <swRecordLayoutGroup>. In <swRecordLayoutVProp> you are able to specify the type of values that are to be stored, e.g. number or value. Under <SW-RECORD-V-INDEX>, the symbolic values of the axes can be given, for which the value given under <swRecordLayoutVProp> is iterated. These symbolic values relate to the values given in <swRecordLayoutGroupIndex> ."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"documentation", "This element specifies the number of axes with values that are stored in the ECU. Refer to <swRecordLayoutV> for further details."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"documentation", "The contents of this element describes the type of values to be stored. The following are permitted:\r\n\r\n: \r\n: \r\n: \r\n: \r\n: \r\n: \r\n: \r\n: \r\n: \r\n: \r\n: \r\n:"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"documentation", "The symbolic value for iteration, or the symbolic values separated by white-spaces, refer to the symbolic values given in <swRecordLayoutGroupIndex> . The iterators are processed from left to right, in such a manner that they symbolize the loop index from the outside to the inside.\r\n\r\nAn error has occurred if a parameter references a record layout which contains a <swRecordLayoutVIndex> with more components than the number of parameter axes.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"documentation", "This element specifies the filler character for the current record layout, in the form of hex digits. The element present parallel to this <swRecordLayoutVProp> must therefore have the contents FILL."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayout(), source, new String[]{"documentation", "Defines how the data objects (variables, calibration parameters etc.) are to be stored in the ECU memory. As an example, this definition specifies the sequence of axis points in the ECU memory. Iterations through axis values are stored within the subelements <swRecordLayoutGroup> . These subelements might be stored embedded."});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"documentation", "This element describes plausibility rules that go beyond the individual data object. E.g. the overrun shut-off engine speed must not be higher than the maximum engine speed. This plausibility rule is defined in exactly the same way as the contexts and dependencies of virtual characteristic variables and variables."});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"documentation", "Defines how the data objects (variables, calibration parameters etc.) are to be stored in the ECU memory. As an example, this definition specifies the sequence of axis points in the ECU memory. Iterations through axis values are stored within the subelements <swRecordLayoutGroup> . These subelements might be stored embedded."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayout_SwRecordLayoutGroups(), source, new String[]{"documentation", "Specifies how a record layout is set up. Using <swRecordLayoutGroup>, it recursively models iterations through axis values. The subelement <swRecordLayoutRef> may reference other <swRecordLayout>s. ** <swRecordLayoutRef>, <swRecordLayoutV> and <swRecordLayoutGroup> ** for the modeled record layout."});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"Name", "", "GUID", "{D039DE34-D0F9-45d7-AF57-1618362A39BB}", "msr.id", "SW-ADDR-METHOD_TYPE_ARElement", "Id", "-1414338127", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"Name", "", "GUID", "{1719AE1A-B297-4430-8B84-27E842D7236C}", "msr.id", "SW-CODE-SYNTAX_TYPE_ARElement", "Id", "1147665012", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"Name", "", "GUID", "{FAC36F73-BA75-47e7-97B2-0E2FEB7325E6}", "msr.id", "SW-RECORD-LAYOUT_TYPE_ARElement", "Id", "1882525472", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

