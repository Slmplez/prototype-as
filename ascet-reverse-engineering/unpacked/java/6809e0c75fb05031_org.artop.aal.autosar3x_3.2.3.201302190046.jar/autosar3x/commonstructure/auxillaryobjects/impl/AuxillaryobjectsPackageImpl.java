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
package autosar3x.commonstructure.auxillaryobjects.impl;

import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.impl.BswbehaviorPackageImpl;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.bswmodule.bswimplementation.impl.BswimplementationPackageImpl;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswinterfaces.impl.BswinterfacesPackageImpl;
import autosar3x.bswmodule.bswoverview.BswoverviewPackage;
import autosar3x.bswmodule.bswoverview.impl.BswoverviewPackageImpl;
import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsFactory;
import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar3x.commonstructure.auxillaryobjects.SwCodeSyntax;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayout;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroup;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutGroupContent;
import autosar3x.commonstructure.auxillaryobjects.SwRecordLayoutV;
import autosar3x.commonstructure.auxillaryobjects.SwRelatedConstrs;
import autosar3x.commonstructure.axis.AxisPackage;
import autosar3x.commonstructure.axis.impl.AxisPackageImpl;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.basetypes.impl.BasetypesPackageImpl;
import autosar3x.commonstructure.byteorder.ByteorderPackage;
import autosar3x.commonstructure.byteorder.impl.ByteorderPackageImpl;
import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.calibrationparameter.impl.CalibrationparameterPackageImpl;
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadefproperties.impl.DatadefpropertiesPackageImpl;
import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar3x.commonstructure.datadictionaryproxies.impl.DatadictionaryproxiesPackageImpl;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.filter.impl.FilterPackageImpl;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.impl.GlobalconstraintsPackageImpl;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.implementation.impl.ImplementationPackageImpl;
import autosar3x.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar3x.commonstructure.internalbehavior.impl.InternalbehaviorPackageImpl;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.impl.ExecutiontimePackageImpl;
import autosar3x.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar3x.commonstructure.resourceconsumption.heapusage.impl.HeapusagePackageImpl;
import autosar3x.commonstructure.resourceconsumption.impl.ResourceconsumptionPackageImpl;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.impl.MemorysectionusagePackageImpl;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar3x.commonstructure.resourceconsumption.stackusage.impl.StackusagePackageImpl;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceneeds.impl.ServiceneedsPackageImpl;
import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.serviceprocesstask.impl.ServiceprocesstaskPackageImpl;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.commonstructure.swclass.impl.SwclassPackageImpl;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucdescription.impl.EcucdescriptionPackageImpl;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecucparameterdef.impl.EcucparameterdefPackageImpl;
import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.impl.BasicelementsPackageImpl;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.ecuelectronics.impl.EcuelectronicsPackageImpl;
import autosar3x.ecuresource.impl.EcuresourcePackageImpl;
import autosar3x.ecuresource.memory.MemoryPackage;
import autosar3x.ecuresource.memory.impl.MemoryPackageImpl;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.peripherals.impl.PeripheralsPackageImpl;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.processingunit.impl.ProcessingunitPackageImpl;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.ecuresource.sensoractuator.impl.SensoractuatorPackageImpl;
import autosar3x.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar3x.genericstructure.commonpatterns.admindata.impl.AdmindataPackageImpl;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.annotation.impl.AnnotationPackageImpl;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockPackage;
import autosar3x.genericstructure.commonpatterns.documentationblock.impl.DocumentationblockPackageImpl;
import autosar3x.genericstructure.commonpatterns.enumerations.EnumerationsPackage;
import autosar3x.genericstructure.commonpatterns.enumerations.impl.EnumerationsPackageImpl;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.impl.InlinetextmodelPackageImpl;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.InlinesPackageImpl;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.impl.LanguagedatamodelPackageImpl;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.impl.MultilanguagedataPackageImpl;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar3x.genericstructure.commonpatterns.primitivetypes.impl.PrimitivetypesPackageImpl;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.impl.SinglelanguagedataPackageImpl;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar3x.genericstructure.commonpatterns.specialdata.impl.SpecialdataPackageImpl;
import autosar3x.genericstructure.infrastructure.InfrastructurePackage;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.autosar.impl.AutosarPackageImpl;
import autosar3x.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiablePackageImpl;
import autosar3x.genericstructure.infrastructure.impl.InfrastructurePackageImpl;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.applicationattributes.impl.ApplicationattributesPackageImpl;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.communication.impl.CommunicationPackageImpl;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.components.impl.ComponentsPackageImpl;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.impl.CompositionPackageImpl;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.computationmethod.impl.ComputationmethodPackageImpl;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.constants.impl.ConstantsPackageImpl;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.datatypes.impl.DatatypesPackageImpl;
import autosar3x.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar3x.swcomponent.datatype.localconstraints.impl.LocalconstraintsPackageImpl;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
import autosar3x.swcomponent.datatype.units.impl.UnitsPackageImpl;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.datatype.valuemodel.impl.ValuemodelPackageImpl;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.impl.CharacteristicPackageImpl;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.impl.MeasurementpropertyPackageImpl;
import autosar3x.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar3x.swcomponent.modedeclaration.impl.ModedeclarationPackageImpl;
import autosar3x.swcomponent.modedeclaration.instanceref.InstancerefPackage;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.portinterface.impl.PortinterfacePackageImpl;
import autosar3x.swcomponent.services.ServicesPackage;
import autosar3x.swcomponent.services.impl.ServicesPackageImpl;
import autosar3x.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar3x.swcomponent.swcimplementation.impl.SwcimplementationPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.impl.ComponentlocalcalprmPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.impl.DataelementsPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.impl.SwcinternalbehaviorPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.impl.InterrunnablecommunicationPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModedeclarationgroupPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.impl.PerinstancememoryPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.impl.PortapioptionsPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RteeventsPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.impl.ServercallPackageImpl;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.impl.ServicemappingPackageImpl;
import autosar3x.system.SystemPackage;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.datamapping.impl.DatamappingPackageImpl;
import autosar3x.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar3x.system.ecuresourcemapping.impl.EcuresourcemappingPackageImpl;
import autosar3x.system.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.system.endtoendprotection.impl.EndtoendprotectionPackageImpl;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.impl.CancommunicationPackageImpl;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4can.cantopology.impl.CantopologyPackageImpl;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl.FlexraycommunicationPackageImpl;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.impl.FlexraytopologyPackageImpl;
import autosar3x.system.fibex.fibex4flexray.impl.Fibex4flexrayPackageImpl;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.impl.LincommunicationPackageImpl;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.impl.LintopologyPackageImpl;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibex4multiplatform.impl.Fibex4multiplatformPackageImpl;
import autosar3x.system.fibex.fibexcore.FibexcorePackage;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.CorecommunicationPackageImpl;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.impl.TimingPackageImpl;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CoretopologyPackageImpl;
import autosar3x.system.fibex.fibexcore.impl.FibexcorePackageImpl;
import autosar3x.system.impl.SystemPackageImpl;
import autosar3x.system.signalpaths.SignalpathsPackage;
import autosar3x.system.signalpaths.impl.SignalpathsPackageImpl;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.swmapping.impl.SwmappingPackageImpl;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.system.transportprotocols.impl.TransportprotocolsPackageImpl;
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
    private EClass swCodeSyntaxEClass = null;
    private EClass swRecordLayoutEClass = null;
    private EClass swRecordLayoutGroupEClass = null;
    private EClass swRelatedConstrsEClass = null;
    private EClass swRecordLayoutGroupContentEClass = null;
    private EClass swRecordLayoutVEClass = null;
    private EClass swAddrMethodEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private AuxillaryobjectsPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/cs/ao", (EFactory)AuxillaryobjectsFactory.eINSTANCE);
    }

    public static AuxillaryobjectsPackage init() {
        if (isInited) {
            return (AuxillaryobjectsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ao");
        }
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/cs/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/cs/ao") : new AuxillaryobjectsPackageImpl());
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
        EcuresourcePackageImpl theEcuresourcePackage = (EcuresourcePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur") instanceof EcuresourcePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur") : EcuresourcePackage.eINSTANCE);
        PeripheralsPackageImpl thePeripheralsPackage = (PeripheralsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/p") instanceof PeripheralsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/p") : PeripheralsPackage.eINSTANCE);
        EcuelectronicsPackageImpl theEcuelectronicsPackage = (EcuelectronicsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/ecue") instanceof EcuelectronicsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/ecue") : EcuelectronicsPackage.eINSTANCE);
        ProcessingunitPackageImpl theProcessingunitPackage = (ProcessingunitPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/pu") instanceof ProcessingunitPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/pu") : ProcessingunitPackage.eINSTANCE);
        MemoryPackageImpl theMemoryPackage = (MemoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/m") instanceof MemoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/m") : MemoryPackage.eINSTANCE);
        BasicelementsPackageImpl theBasicelementsPackage = (BasicelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/be") instanceof BasicelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/be") : BasicelementsPackage.eINSTANCE);
        SensoractuatorPackageImpl theSensoractuatorPackage = (SensoractuatorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/sa") instanceof SensoractuatorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/sa") : SensoractuatorPackage.eINSTANCE);
        InfrastructurePackageImpl theInfrastructurePackage = (InfrastructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i") instanceof InfrastructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i") : InfrastructurePackage.eINSTANCE);
        IdentifiablePackageImpl theIdentifiablePackage = (IdentifiablePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i") instanceof IdentifiablePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i") : IdentifiablePackage.eINSTANCE);
        AutosarPackageImpl theAutosarPackage = (AutosarPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/a") instanceof AutosarPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/a") : AutosarPackage.eINSTANCE);
        EnumerationsPackageImpl theEnumerationsPackage = (EnumerationsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/e") instanceof EnumerationsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/e") : EnumerationsPackage.eINSTANCE);
        InlinetextmodelPackageImpl theInlinetextmodelPackage = (InlinetextmodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm") instanceof InlinetextmodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm") : InlinetextmodelPackage.eINSTANCE);
        InlinesPackageImpl theInlinesPackage = (InlinesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm/i") instanceof InlinesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/itm/i") : InlinesPackage.eINSTANCE);
        MultilanguagedataPackageImpl theMultilanguagedataPackage = (MultilanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/md") instanceof MultilanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/md") : MultilanguagedataPackage.eINSTANCE);
        LanguagedatamodelPackageImpl theLanguagedatamodelPackage = (LanguagedatamodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ldm") instanceof LanguagedatamodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ldm") : LanguagedatamodelPackage.eINSTANCE);
        SinglelanguagedataPackageImpl theSinglelanguagedataPackage = (SinglelanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sld") instanceof SinglelanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sld") : SinglelanguagedataPackage.eINSTANCE);
        AdmindataPackageImpl theAdmindataPackage = (AdmindataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ad") instanceof AdmindataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/ad") : AdmindataPackage.eINSTANCE);
        SpecialdataPackageImpl theSpecialdataPackage = (SpecialdataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sd") instanceof SpecialdataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/sd") : SpecialdataPackage.eINSTANCE);
        DocumentationblockPackageImpl theDocumentationblockPackage = (DocumentationblockPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/db") instanceof DocumentationblockPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/db") : DocumentationblockPackage.eINSTANCE);
        AnnotationPackageImpl theAnnotationPackage = (AnnotationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/a") instanceof AnnotationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/a") : AnnotationPackage.eINSTANCE);
        PrimitivetypesPackageImpl thePrimitivetypesPackage = (PrimitivetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt") instanceof PrimitivetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt") : PrimitivetypesPackage.eINSTANCE);
        FilterPackageImpl theFilterPackage = (FilterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/f") instanceof FilterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/f") : FilterPackage.eINSTANCE);
        InternalbehaviorPackageImpl theInternalbehaviorPackage = (InternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ib") instanceof InternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ib") : InternalbehaviorPackage.eINSTANCE);
        ServiceneedsPackageImpl theServiceneedsPackage = (ServiceneedsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sn") instanceof ServiceneedsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sn") : ServiceneedsPackage.eINSTANCE);
        ImplementationPackageImpl theImplementationPackage = (ImplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/implementation") instanceof ImplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/implementation") : ImplementationPackage.eINSTANCE);
        ResourceconsumptionPackageImpl theResourceconsumptionPackage = (ResourceconsumptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc") instanceof ResourceconsumptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc") : ResourceconsumptionPackage.eINSTANCE);
        MemorysectionusagePackageImpl theMemorysectionusagePackage = (MemorysectionusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/msu") instanceof MemorysectionusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/msu") : MemorysectionusagePackage.eINSTANCE);
        StackusagePackageImpl theStackusagePackage = (StackusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/su") instanceof StackusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/su") : StackusagePackage.eINSTANCE);
        HeapusagePackageImpl theHeapusagePackage = (HeapusagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/hu") instanceof HeapusagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/hu") : HeapusagePackage.eINSTANCE);
        ExecutiontimePackageImpl theExecutiontimePackage = (ExecutiontimePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/et") instanceof ExecutiontimePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/rc/et") : ExecutiontimePackage.eINSTANCE);
        AxisPackageImpl theAxisPackage = (AxisPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/a") instanceof AxisPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/a") : AxisPackage.eINSTANCE);
        DatadictionaryproxiesPackageImpl theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/dp") instanceof DatadictionaryproxiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/dp") : DatadictionaryproxiesPackage.eINSTANCE);
        CalibrationparameterPackageImpl theCalibrationparameterPackage = (CalibrationparameterPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/cp") instanceof CalibrationparameterPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/cp") : CalibrationparameterPackage.eINSTANCE);
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ddp") : DatadefpropertiesPackage.eINSTANCE);
        SwclassPackageImpl theSwclassPackage = (SwclassPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sc") instanceof SwclassPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/sc") : SwclassPackage.eINSTANCE);
        ServiceprocesstaskPackageImpl theServiceprocesstaskPackage = (ServiceprocesstaskPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/spt") instanceof ServiceprocesstaskPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/spt") : ServiceprocesstaskPackage.eINSTANCE);
        GlobalconstraintsPackageImpl theGlobalconstraintsPackage = (GlobalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/gc") instanceof GlobalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/gc") : GlobalconstraintsPackage.eINSTANCE);
        BasetypesPackageImpl theBasetypesPackage = (BasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bt") instanceof BasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bt") : BasetypesPackage.eINSTANCE);
        ByteorderPackageImpl theByteorderPackage = (ByteorderPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bo") instanceof ByteorderPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bo") : ByteorderPackage.eINSTANCE);
        autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl theEndtoendprotectionPackage = (autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/etep") instanceof autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/etep") : autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage.eINSTANCE);
        CompositionPackageImpl theCompositionPackage = (CompositionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition") instanceof CompositionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition") : CompositionPackage.eINSTANCE);
        autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl theInstancerefPackage = (autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition/r") instanceof autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition/r") : autosar3x.swcomponent.composition.instanceref.InstancerefPackage.eINSTANCE);
        ComponentsPackageImpl theComponentsPackage = (ComponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components") instanceof ComponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components") : ComponentsPackage.eINSTANCE);
        autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_1 = (autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components/r") instanceof autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components/r") : autosar3x.swcomponent.components.instanceref.InstancerefPackage.eINSTANCE);
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/aa") : ApplicationattributesPackage.eINSTANCE);
        MeasurementpropertyPackageImpl theMeasurementpropertyPackage = (MeasurementpropertyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp") instanceof MeasurementpropertyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp") : MeasurementpropertyPackage.eINSTANCE);
        autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_2 = (autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp/r") instanceof autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp/r") : autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage.eINSTANCE);
        CharacteristicPackageImpl theCharacteristicPackage = (CharacteristicPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c") instanceof CharacteristicPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c") : CharacteristicPackage.eINSTANCE);
        autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_3 = (autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c/r") instanceof autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c/r") : autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage.eINSTANCE);
        PortinterfacePackageImpl thePortinterfacePackage = (PortinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi") instanceof PortinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi") : PortinterfacePackage.eINSTANCE);
        ModedeclarationPackageImpl theModedeclarationPackage = (ModedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md") instanceof ModedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md") : ModedeclarationPackage.eINSTANCE);
        autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_4 = (autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md/r") instanceof autosar3x.swcomponent.modedeclaration.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md/r") : InstancerefPackage.eINSTANCE);
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/communication") : CommunicationPackage.eINSTANCE);
        SwcinternalbehaviorPackageImpl theSwcinternalbehaviorPackage = (SwcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib") instanceof SwcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib") : SwcinternalbehaviorPackage.eINSTANCE);
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee") : RteeventsPackage.eINSTANCE);
        InstancerefPackageImpl theInstancerefPackage_5 = (InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r") instanceof InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r") : autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage.eINSTANCE);
        ModedeclarationgroupPackageImpl theModedeclarationgroupPackage = (ModedeclarationgroupPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg") instanceof ModedeclarationgroupPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg") : ModedeclarationgroupPackage.eINSTANCE);
        autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_6 = (autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg/r") instanceof autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg/r") : autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.InstancerefPackage.eINSTANCE);
        ServercallPackageImpl theServercallPackage = (ServercallPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc") instanceof ServercallPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc") : ServercallPackage.eINSTANCE);
        autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_7 = (autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc/r") instanceof autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sc/r") : autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.InstancerefPackage.eINSTANCE);
        DataelementsPackageImpl theDataelementsPackage = (DataelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de") instanceof DataelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de") : DataelementsPackage.eINSTANCE);
        autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_8 = (autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de/r") instanceof autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/de/r") : autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefPackage.eINSTANCE);
        InterrunnablecommunicationPackageImpl theInterrunnablecommunicationPackage = (InterrunnablecommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/irc") instanceof InterrunnablecommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/irc") : InterrunnablecommunicationPackage.eINSTANCE);
        PerinstancememoryPackageImpl thePerinstancememoryPackage = (PerinstancememoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/pim") instanceof PerinstancememoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/pim") : PerinstancememoryPackage.eINSTANCE);
        PortapioptionsPackageImpl thePortapioptionsPackage = (PortapioptionsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/papio") instanceof PortapioptionsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/papio") : PortapioptionsPackage.eINSTANCE);
        ServicemappingPackageImpl theServicemappingPackage = (ServicemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sm") instanceof ServicemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/sm") : ServicemappingPackage.eINSTANCE);
        ComponentlocalcalprmPackageImpl theComponentlocalcalprmPackage = (ComponentlocalcalprmPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/clc") instanceof ComponentlocalcalprmPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/clc") : ComponentlocalcalprmPackage.eINSTANCE);
        ServicesPackageImpl theServicesPackage = (ServicesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/s") instanceof ServicesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/s") : ServicesPackage.eINSTANCE);
        SwcimplementationPackageImpl theSwcimplementationPackage = (SwcimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/si") instanceof SwcimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/si") : SwcimplementationPackage.eINSTANCE);
        ConstantsPackageImpl theConstantsPackage = (ConstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c") instanceof ConstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/c") : ConstantsPackage.eINSTANCE);
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/d") : DatatypesPackage.eINSTANCE);
        LocalconstraintsPackageImpl theLocalconstraintsPackage = (LocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc") instanceof LocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc") : LocalconstraintsPackage.eINSTANCE);
        UnitsPackageImpl theUnitsPackage = (UnitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u") instanceof UnitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u") : UnitsPackage.eINSTANCE);
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/cm") : ComputationmethodPackage.eINSTANCE);
        ValuemodelPackageImpl theValuemodelPackage = (ValuemodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm") instanceof ValuemodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/vm") : ValuemodelPackage.eINSTANCE);
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_9 = (autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd/r") instanceof autosar3x.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucd/r") : autosar3x.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        BswimplementationPackageImpl theBswimplementationPackage = (BswimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bimplementation") instanceof BswimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bimplementation") : BswimplementationPackage.eINSTANCE);
        BswoverviewPackageImpl theBswoverviewPackage = (BswoverviewPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bo") instanceof BswoverviewPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bo") : BswoverviewPackage.eINSTANCE);
        BswinterfacesPackageImpl theBswinterfacesPackage = (BswinterfacesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/binterfaces") instanceof BswinterfacesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/binterfaces") : BswinterfacesPackage.eINSTANCE);
        BswbehaviorPackageImpl theBswbehaviorPackage = (BswbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bb") instanceof BswbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/bm/bb") : BswbehaviorPackage.eINSTANCE);
        SystemPackageImpl theSystemPackage = (SystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s") instanceof SystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s") : SystemPackage.eINSTANCE);
        SwmappingPackageImpl theSwmappingPackage = (SwmappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw") instanceof SwmappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw") : SwmappingPackage.eINSTANCE);
        autosar3x.system.swmapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_10 = (autosar3x.system.swmapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw/r") instanceof autosar3x.system.swmapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sw/r") : autosar3x.system.swmapping.instanceref.InstancerefPackage.eINSTANCE);
        CancommunicationPackageImpl theCancommunicationPackage = (CancommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/cc") instanceof CancommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/cc") : CancommunicationPackage.eINSTANCE);
        CantopologyPackageImpl theCantopologyPackage = (CantopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/ct") instanceof CantopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcan/ct") : CantopologyPackage.eINSTANCE);
        Fibex4flexrayPackageImpl theFibex4flexrayPackage = (Fibex4flexrayPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff") instanceof Fibex4flexrayPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff") : Fibex4flexrayPackage.eINSTANCE);
        FlexraycommunicationPackageImpl theFlexraycommunicationPackage = (FlexraycommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/fc") instanceof FlexraycommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/fc") : FlexraycommunicationPackage.eINSTANCE);
        FlexraytopologyPackageImpl theFlexraytopologyPackage = (FlexraytopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/ft") instanceof FlexraytopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/ff/ft") : FlexraytopologyPackage.eINSTANCE);
        LincommunicationPackageImpl theLincommunicationPackage = (LincommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lc") instanceof LincommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lc") : LincommunicationPackage.eINSTANCE);
        LintopologyPackageImpl theLintopologyPackage = (LintopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lt") instanceof LintopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fl/lt") : LintopologyPackage.eINSTANCE);
        Fibex4multiplatformPackageImpl theFibex4multiplatformPackage = (Fibex4multiplatformPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fm") instanceof Fibex4multiplatformPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fm") : Fibex4multiplatformPackage.eINSTANCE);
        FibexcorePackageImpl theFibexcorePackage = (FibexcorePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore") instanceof FibexcorePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore") : FibexcorePackage.eINSTANCE);
        CorecommunicationPackageImpl theCorecommunicationPackage = (CorecommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc") instanceof CorecommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc") : CorecommunicationPackage.eINSTANCE);
        TimingPackageImpl theTimingPackage = (TimingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc/t") instanceof TimingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/cc/t") : TimingPackage.eINSTANCE);
        CoretopologyPackageImpl theCoretopologyPackage = (CoretopologyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/ct") instanceof CoretopologyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/f/fcore/ct") : CoretopologyPackage.eINSTANCE);
        TransportprotocolsPackageImpl theTransportprotocolsPackage = (TransportprotocolsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/tp") instanceof TransportprotocolsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/tp") : TransportprotocolsPackage.eINSTANCE);
        EcuresourcemappingPackageImpl theEcuresourcemappingPackage = (EcuresourcemappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/ecurm") instanceof EcuresourcemappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/ecurm") : EcuresourcemappingPackage.eINSTANCE);
        DatamappingPackageImpl theDatamappingPackage = (DatamappingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm") instanceof DatamappingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm") : DatamappingPackage.eINSTANCE);
        autosar3x.system.datamapping.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_11 = (autosar3x.system.datamapping.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm/r") instanceof autosar3x.system.datamapping.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/dm/r") : autosar3x.system.datamapping.instanceref.InstancerefPackage.eINSTANCE);
        SignalpathsPackageImpl theSignalpathsPackage = (SignalpathsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp") instanceof SignalpathsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp") : SignalpathsPackage.eINSTANCE);
        autosar3x.system.signalpaths.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_12 = (autosar3x.system.signalpaths.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp/r") instanceof autosar3x.system.signalpaths.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/sp/r") : autosar3x.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE);
        EndtoendprotectionPackageImpl theEndtoendprotectionPackage_1 = (EndtoendprotectionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/etep") instanceof EndtoendprotectionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/s/etep") : EndtoendprotectionPackage.eINSTANCE);
        theAuxillaryobjectsPackage.createPackageContents();
        theEcuresourcePackage.createPackageContents();
        thePeripheralsPackage.createPackageContents();
        theEcuelectronicsPackage.createPackageContents();
        theProcessingunitPackage.createPackageContents();
        theMemoryPackage.createPackageContents();
        theBasicelementsPackage.createPackageContents();
        theSensoractuatorPackage.createPackageContents();
        theInfrastructurePackage.createPackageContents();
        theIdentifiablePackage.createPackageContents();
        theAutosarPackage.createPackageContents();
        theEnumerationsPackage.createPackageContents();
        theInlinetextmodelPackage.createPackageContents();
        theInlinesPackage.createPackageContents();
        theMultilanguagedataPackage.createPackageContents();
        theLanguagedatamodelPackage.createPackageContents();
        theSinglelanguagedataPackage.createPackageContents();
        theAdmindataPackage.createPackageContents();
        theSpecialdataPackage.createPackageContents();
        theDocumentationblockPackage.createPackageContents();
        theAnnotationPackage.createPackageContents();
        thePrimitivetypesPackage.createPackageContents();
        theFilterPackage.createPackageContents();
        theInternalbehaviorPackage.createPackageContents();
        theServiceneedsPackage.createPackageContents();
        theImplementationPackage.createPackageContents();
        theResourceconsumptionPackage.createPackageContents();
        theMemorysectionusagePackage.createPackageContents();
        theStackusagePackage.createPackageContents();
        theHeapusagePackage.createPackageContents();
        theExecutiontimePackage.createPackageContents();
        theAxisPackage.createPackageContents();
        theDatadictionaryproxiesPackage.createPackageContents();
        theCalibrationparameterPackage.createPackageContents();
        theDatadefpropertiesPackage.createPackageContents();
        theSwclassPackage.createPackageContents();
        theServiceprocesstaskPackage.createPackageContents();
        theGlobalconstraintsPackage.createPackageContents();
        theBasetypesPackage.createPackageContents();
        theByteorderPackage.createPackageContents();
        theEndtoendprotectionPackage.createPackageContents();
        theCompositionPackage.createPackageContents();
        theInstancerefPackage.createPackageContents();
        theComponentsPackage.createPackageContents();
        theInstancerefPackage_1.createPackageContents();
        theApplicationattributesPackage.createPackageContents();
        theMeasurementpropertyPackage.createPackageContents();
        theInstancerefPackage_2.createPackageContents();
        theCharacteristicPackage.createPackageContents();
        theInstancerefPackage_3.createPackageContents();
        thePortinterfacePackage.createPackageContents();
        theModedeclarationPackage.createPackageContents();
        theInstancerefPackage_4.createPackageContents();
        theCommunicationPackage.createPackageContents();
        theSwcinternalbehaviorPackage.createPackageContents();
        theRteeventsPackage.createPackageContents();
        theInstancerefPackage_5.createPackageContents();
        theModedeclarationgroupPackage.createPackageContents();
        theInstancerefPackage_6.createPackageContents();
        theServercallPackage.createPackageContents();
        theInstancerefPackage_7.createPackageContents();
        theDataelementsPackage.createPackageContents();
        theInstancerefPackage_8.createPackageContents();
        theInterrunnablecommunicationPackage.createPackageContents();
        thePerinstancememoryPackage.createPackageContents();
        thePortapioptionsPackage.createPackageContents();
        theServicemappingPackage.createPackageContents();
        theComponentlocalcalprmPackage.createPackageContents();
        theServicesPackage.createPackageContents();
        theSwcimplementationPackage.createPackageContents();
        theConstantsPackage.createPackageContents();
        theDatatypesPackage.createPackageContents();
        theLocalconstraintsPackage.createPackageContents();
        theUnitsPackage.createPackageContents();
        theComputationmethodPackage.createPackageContents();
        theValuemodelPackage.createPackageContents();
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_9.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theBswimplementationPackage.createPackageContents();
        theBswoverviewPackage.createPackageContents();
        theBswinterfacesPackage.createPackageContents();
        theBswbehaviorPackage.createPackageContents();
        theSystemPackage.createPackageContents();
        theSwmappingPackage.createPackageContents();
        theInstancerefPackage_10.createPackageContents();
        theCancommunicationPackage.createPackageContents();
        theCantopologyPackage.createPackageContents();
        theFibex4flexrayPackage.createPackageContents();
        theFlexraycommunicationPackage.createPackageContents();
        theFlexraytopologyPackage.createPackageContents();
        theLincommunicationPackage.createPackageContents();
        theLintopologyPackage.createPackageContents();
        theFibex4multiplatformPackage.createPackageContents();
        theFibexcorePackage.createPackageContents();
        theCorecommunicationPackage.createPackageContents();
        theTimingPackage.createPackageContents();
        theCoretopologyPackage.createPackageContents();
        theTransportprotocolsPackage.createPackageContents();
        theEcuresourcemappingPackage.createPackageContents();
        theDatamappingPackage.createPackageContents();
        theInstancerefPackage_11.createPackageContents();
        theSignalpathsPackage.createPackageContents();
        theInstancerefPackage_12.createPackageContents();
        theEndtoendprotectionPackage_1.createPackageContents();
        theAuxillaryobjectsPackage.initializePackageContents();
        theEcuresourcePackage.initializePackageContents();
        thePeripheralsPackage.initializePackageContents();
        theEcuelectronicsPackage.initializePackageContents();
        theProcessingunitPackage.initializePackageContents();
        theMemoryPackage.initializePackageContents();
        theBasicelementsPackage.initializePackageContents();
        theSensoractuatorPackage.initializePackageContents();
        theInfrastructurePackage.initializePackageContents();
        theIdentifiablePackage.initializePackageContents();
        theAutosarPackage.initializePackageContents();
        theEnumerationsPackage.initializePackageContents();
        theInlinetextmodelPackage.initializePackageContents();
        theInlinesPackage.initializePackageContents();
        theMultilanguagedataPackage.initializePackageContents();
        theLanguagedatamodelPackage.initializePackageContents();
        theSinglelanguagedataPackage.initializePackageContents();
        theAdmindataPackage.initializePackageContents();
        theSpecialdataPackage.initializePackageContents();
        theDocumentationblockPackage.initializePackageContents();
        theAnnotationPackage.initializePackageContents();
        thePrimitivetypesPackage.initializePackageContents();
        theFilterPackage.initializePackageContents();
        theInternalbehaviorPackage.initializePackageContents();
        theServiceneedsPackage.initializePackageContents();
        theImplementationPackage.initializePackageContents();
        theResourceconsumptionPackage.initializePackageContents();
        theMemorysectionusagePackage.initializePackageContents();
        theStackusagePackage.initializePackageContents();
        theHeapusagePackage.initializePackageContents();
        theExecutiontimePackage.initializePackageContents();
        theAxisPackage.initializePackageContents();
        theDatadictionaryproxiesPackage.initializePackageContents();
        theCalibrationparameterPackage.initializePackageContents();
        theDatadefpropertiesPackage.initializePackageContents();
        theSwclassPackage.initializePackageContents();
        theServiceprocesstaskPackage.initializePackageContents();
        theGlobalconstraintsPackage.initializePackageContents();
        theBasetypesPackage.initializePackageContents();
        theByteorderPackage.initializePackageContents();
        theEndtoendprotectionPackage.initializePackageContents();
        theCompositionPackage.initializePackageContents();
        theInstancerefPackage.initializePackageContents();
        theComponentsPackage.initializePackageContents();
        theInstancerefPackage_1.initializePackageContents();
        theApplicationattributesPackage.initializePackageContents();
        theMeasurementpropertyPackage.initializePackageContents();
        theInstancerefPackage_2.initializePackageContents();
        theCharacteristicPackage.initializePackageContents();
        theInstancerefPackage_3.initializePackageContents();
        thePortinterfacePackage.initializePackageContents();
        theModedeclarationPackage.initializePackageContents();
        theInstancerefPackage_4.initializePackageContents();
        theCommunicationPackage.initializePackageContents();
        theSwcinternalbehaviorPackage.initializePackageContents();
        theRteeventsPackage.initializePackageContents();
        theInstancerefPackage_5.initializePackageContents();
        theModedeclarationgroupPackage.initializePackageContents();
        theInstancerefPackage_6.initializePackageContents();
        theServercallPackage.initializePackageContents();
        theInstancerefPackage_7.initializePackageContents();
        theDataelementsPackage.initializePackageContents();
        theInstancerefPackage_8.initializePackageContents();
        theInterrunnablecommunicationPackage.initializePackageContents();
        thePerinstancememoryPackage.initializePackageContents();
        thePortapioptionsPackage.initializePackageContents();
        theServicemappingPackage.initializePackageContents();
        theComponentlocalcalprmPackage.initializePackageContents();
        theServicesPackage.initializePackageContents();
        theSwcimplementationPackage.initializePackageContents();
        theConstantsPackage.initializePackageContents();
        theDatatypesPackage.initializePackageContents();
        theLocalconstraintsPackage.initializePackageContents();
        theUnitsPackage.initializePackageContents();
        theComputationmethodPackage.initializePackageContents();
        theValuemodelPackage.initializePackageContents();
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_9.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theBswimplementationPackage.initializePackageContents();
        theBswoverviewPackage.initializePackageContents();
        theBswinterfacesPackage.initializePackageContents();
        theBswbehaviorPackage.initializePackageContents();
        theSystemPackage.initializePackageContents();
        theSwmappingPackage.initializePackageContents();
        theInstancerefPackage_10.initializePackageContents();
        theCancommunicationPackage.initializePackageContents();
        theCantopologyPackage.initializePackageContents();
        theFibex4flexrayPackage.initializePackageContents();
        theFlexraycommunicationPackage.initializePackageContents();
        theFlexraytopologyPackage.initializePackageContents();
        theLincommunicationPackage.initializePackageContents();
        theLintopologyPackage.initializePackageContents();
        theFibex4multiplatformPackage.initializePackageContents();
        theFibexcorePackage.initializePackageContents();
        theCorecommunicationPackage.initializePackageContents();
        theTimingPackage.initializePackageContents();
        theCoretopologyPackage.initializePackageContents();
        theTransportprotocolsPackage.initializePackageContents();
        theEcuresourcemappingPackage.initializePackageContents();
        theDatamappingPackage.initializePackageContents();
        theInstancerefPackage_11.initializePackageContents();
        theSignalpathsPackage.initializePackageContents();
        theInstancerefPackage_12.initializePackageContents();
        theEndtoendprotectionPackage_1.initializePackageContents();
        theAuxillaryobjectsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/cs/ao", (Object)theAuxillaryobjectsPackage);
        return theAuxillaryobjectsPackage;
    }

    public EClass getSwCodeSyntax() {
        return this.swCodeSyntaxEClass;
    }

    public EClass getSwRecordLayout() {
        return this.swRecordLayoutEClass;
    }

    public EReference getSwRecordLayout_SwRecordLayoutGroups() {
        return (EReference)this.swRecordLayoutEClass.getEStructuralFeatures().get(0);
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

    public EClass getSwRelatedConstrs() {
        return this.swRelatedConstrsEClass;
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

    public EClass getSwAddrMethod() {
        return this.swAddrMethodEClass;
    }

    public AuxillaryobjectsFactory getAuxillaryobjectsFactory() {
        return (AuxillaryobjectsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.swCodeSyntaxEClass = this.createEClass(0);
        this.swRecordLayoutEClass = this.createEClass(1);
        this.createEReference(this.swRecordLayoutEClass, 19);
        this.swRecordLayoutGroupEClass = this.createEClass(2);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 4);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 5);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 6);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 7);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 8);
        this.createEAttribute(this.swRecordLayoutGroupEClass, 9);
        this.createEReference(this.swRecordLayoutGroupEClass, 10);
        this.swRelatedConstrsEClass = this.createEClass(3);
        this.swRecordLayoutGroupContentEClass = this.createEClass(4);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 4);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 5);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 6);
        this.createEReference(this.swRecordLayoutGroupContentEClass, 7);
        this.swRecordLayoutVEClass = this.createEClass(5);
        this.createEReference(this.swRecordLayoutVEClass, 4);
        this.createEReference(this.swRecordLayoutVEClass, 5);
        this.createEAttribute(this.swRecordLayoutVEClass, 6);
        this.createEAttribute(this.swRecordLayoutVEClass, 7);
        this.createEAttribute(this.swRecordLayoutVEClass, 8);
        this.createEAttribute(this.swRecordLayoutVEClass, 9);
        this.createEReference(this.swRecordLayoutVEClass, 10);
        this.swAddrMethodEClass = this.createEClass(6);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("auxillaryobjects");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/cs/ao");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        BasetypesPackage theBasetypesPackage = (BasetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/bt");
        this.swCodeSyntaxEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.swRecordLayoutEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.swRecordLayoutGroupEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swRelatedConstrsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swRecordLayoutGroupContentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swRecordLayoutVEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swAddrMethodEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.initEClass(this.swCodeSyntaxEClass, SwCodeSyntax.class, "SwCodeSyntax", false, false, true);
        this.initEClass(this.swRecordLayoutEClass, SwRecordLayout.class, "SwRecordLayout", false, false, true);
        this.initEReference(this.getSwRecordLayout_SwRecordLayoutGroups(), (EClassifier)this.getSwRecordLayoutGroup(), null, "swRecordLayoutGroups", null, 0, -1, SwRecordLayout.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swRecordLayoutGroupEClass, SwRecordLayoutGroup.class, "SwRecordLayoutGroup", false, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutGroupAxis", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "swRecordLayoutGroupIndex", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), (EClassifier)thePrimitivetypesPackage.getInteger(), "swRecordLayoutGroupFrom", "0", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), (EClassifier)thePrimitivetypesPackage.getInteger(), "swRecordLayoutGroupTo", "0", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), (EClassifier)thePrimitivetypesPackage.getInteger(), "swRecordLayoutGroupStep", "0", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "swRecordLayoutComponent", "", 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), (EClassifier)this.getSwRecordLayoutGroupContent(), this.getSwRecordLayoutGroupContent_SwRecordLayoutGroup(), "swRecordLayoutGroupContentType", null, 0, 1, SwRecordLayoutGroup.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swRelatedConstrsEClass, SwRelatedConstrs.class, "SwRelatedConstrs", false, false, true);
        this.initEClass(this.swRecordLayoutGroupContentEClass, SwRecordLayoutGroupContent.class, "SwRecordLayoutGroupContent", false, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayoutGroup(), (EClassifier)this.getSwRecordLayoutGroup(), this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), "swRecordLayoutGroup", null, 0, 1, SwRecordLayoutGroupContent.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayouts(), (EClassifier)this.getSwRecordLayout(), null, "swRecordLayouts", null, 0, -1, SwRecordLayoutGroupContent.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), (EClassifier)this.getSwRecordLayoutV(), this.getSwRecordLayoutV_SwRecordLayoutGroupContent(), "swRecordLayoutVs", null, 0, -1, SwRecordLayoutGroupContent.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), (EClassifier)this.getSwRecordLayoutGroup(), null, "swRecordLayoutGroups", null, 0, -1, SwRecordLayoutGroupContent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swRecordLayoutVEClass, SwRecordLayoutV.class, "SwRecordLayoutV", false, false, true);
        this.initEReference(this.getSwRecordLayoutV_SwRecordLayoutGroupContent(), (EClassifier)this.getSwRecordLayoutGroupContent(), this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), "swRecordLayoutGroupContent", null, 0, 1, SwRecordLayoutV.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutV_BaseType(), (EClassifier)theBasetypesPackage.getSwBaseType(), null, "baseType", null, 0, 1, SwRecordLayoutV.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVAxis(), (EClassifier)thePrimitivetypesPackage.getString(), "swRecordLayoutVAxis", "", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVProp(), (EClassifier)thePrimitivetypesPackage.getNameToken(), "swRecordLayoutVProp", "", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVIndex(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "swRecordLayoutVIndex", "", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), (EClassifier)thePrimitivetypesPackage.getInteger(), "swRecordLayoutVFixValue", "0", 0, 1, SwRecordLayoutV.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwRecordLayoutV_SwRecordLayout(), (EClassifier)this.getSwRecordLayout(), null, "swRecordLayout", null, 0, 1, SwRecordLayoutV.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.swAddrMethodEClass, SwAddrMethod.class, "SwAddrMethod", false, false, true);
        this.createResource("http://autosar.org/3.2.1/autosar3x/cs/ao");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createStereotypeAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "0A1B32F8-6AC9-4509-95FE-7F7AA2265616", "Created", "Fri Dec 02 18:21:28 CET 2005", "Modified", "Tue Feb 28 16:04:45 CET 2006", "Id", "-1068600177", "Name", "AuxillaryObjects"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"GUID", "A158AA26-ADA6-4dd6-A647-14C0C593DCD2", "Created", "Fri Nov 25 19:53:05 CET 2005", "Modified", "Mon Aug 27 14:01:43 CEST 2007", "Id", "1011740579", "Name", "SwCodeSyntax"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"GUID", "25DD8150-DBD6-4f9f-8FBF-C18CF0CE2F8C", "Created", "Fri Nov 25 19:53:12 CET 2005", "Modified", "Tue Aug 28 16:12:10 CEST 2007", "Id", "-592276436", "Name", "SwRecordLayout"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"GUID", "145DB7DF-B1C0-4b6e-8213-9AF50FE9E013", "Created", "Fri Nov 25 19:53:11 CET 2005", "Modified", "Mon Aug 27 14:04:50 CEST 2007", "Id", "-1705265436", "Name", "SwRecordLayoutGroup"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"GUID", "886751F0-B6FF-46a9-A198-5B234A236FD2", "Id", "746258800", "Name", "swRecordLayoutGroupAxis"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"GUID", "DAF28E86-9221-4043-9D7E-F23D762DC23A", "Id", "857159752", "Name", "swRecordLayoutGroupIndex"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"GUID", "B6061A06-31E2-46fd-A145-68C25122E20A", "Id", "1678682236", "Name", "swRecordLayoutGroupFrom"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"GUID", "003989B9-220A-4688-90FB-B98110ECEE7A", "Id", "821559840", "Name", "swRecordLayoutGroupTo"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"GUID", "37546A1D-F9C3-498d-8A06-D3EE9CB8BA8B", "Id", "1161477332", "Name", "swRecordLayoutGroupStep"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"GUID", "6D9110AC-7F35-402b-BF9D-FA2D482D3217", "Id", "-482150620", "Name", "swRecordLayoutComponent"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"GUID", "6971ADDE-8108-4960-8FA5-FA7AA328A29D", "Created", "Fri Nov 25 19:53:12 CET 2005", "Modified", "Fri Sep 01 13:58:16 CEST 2006", "Id", "165969651", "Name", "SwRelatedConstrs"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"GUID", "7B080C19-32C1-4b46-A059-42409EA2FE61", "Created", "Fri Nov 25 19:53:40 CET 2005", "Modified", "Tue Aug 28 16:07:47 CEST 2007", "Id", "454870586", "Name", "SwRecordLayoutGroupContent"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"GUID", "9CAA6AF8-4FD5-4e99-BE48-34F01ECA39B4", "Created", "Fri Nov 25 19:53:12 CET 2005", "Modified", "Mon Aug 27 14:20:42 CEST 2007", "Id", "-1746539943", "Name", "SwRecordLayoutV"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"GUID", "958B3927-C10D-4004-9D60-C329480A06B0", "Id", "-1968769997", "Name", "swRecordLayoutVAxis"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"GUID", "5E134D77-0A6C-4450-8F59-006EA8F1B487", "Id", "-1489254617", "Name", "swRecordLayoutVProp"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"GUID", "00464E00-5075-4b32-8485-65757ED2A549", "Id", "-1580907925", "Name", "swRecordLayoutVIndex"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"GUID", "F65CD830-7577-47fb-8127-9530196D343E", "Id", "-1176345233", "Name", "swRecordLayoutVFixValue"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"GUID", "284627DC-C5EE-400d-9185-34B92B04F752", "Created", "Fri Nov 25 19:53:03 CET 2005", "Modified", "Wed Sep 26 17:52:07 CEST 2007", "Id", "1803785149", "Name", "SwAddrMethod"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "AUXILLARY-OBJECTS", "xml.namePlural", "AUXILLARY-OBJECTSS"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"mmt.qualifiedName", "SwCodeSyntax", "xml.tags", "msr.id=\"type__SW-CODE-SYNTAX_TYPE\";mmt.qualifiedName=\"SwCodeSyntax\"", "msr.id", "type__SW-CODE-SYNTAX_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-CODE-SYNTAX", "xml.namePlural", "SW-CODE-SYNTAXS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"mmt.qualifiedName", "SwRecordLayout", "msr.id", "type__SW-RECORD-LAYOUT_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-RECORD-LAYOUT_TYPE\";mmt.qualifiedName=\"SwRecordLayout\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-RECORD-LAYOUT", "xml.namePlural", "SW-RECORD-LAYOUTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayout_SwRecordLayoutGroups(), source, new String[]{"mmt.qualifiedName", "SwRecordLayout.swRecordLayoutGroup", "xml.tags", "xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.roleElement=\"true\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";msr.id=\"SW-RECORD-LAYOUT_TYPE__SW-RECORD-LAYOUT-GROUP\";mmt.qualifiedName=\"SwRecordLayout.swRecordLayoutGroup\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "pureMM.minOccurs", "0", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "0", "msr.id", "SW-RECORD-LAYOUT_TYPE__SW-RECORD-LAYOUT-GROUP", "xml.name", "SW-RECORD-LAYOUT-GROUP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUPS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup", "msr.id", "type__SW-RECORD-LAYOUT-GROUP_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-RECORD-LAYOUT-GROUP_TYPE\";mmt.qualifiedName=\"SwRecordLayoutGroup\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-RECORD-LAYOUT-GROUP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUPS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup.swRecordLayoutGroupAxis", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-AXIS\";msr.tbdString=\"true\";xml.sequenceOffset=\"30\";mmt.qualifiedName=\"SwRecordLayoutGroup.swRecordLayoutGroupAxis\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-AXIS", "xml.name", "SW-RECORD-LAYOUT-GROUP-AXIS", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-AXISS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup.swRecordLayoutGroupIndex", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-INDEX\";msr.tbdString=\"true\";xml.sequenceOffset=\"40\";mmt.qualifiedName=\"SwRecordLayoutGroup.swRecordLayoutGroupIndex\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-INDEX", "xml.name", "SW-RECORD-LAYOUT-GROUP-INDEX", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-INDEXS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup.swRecordLayoutGroupFrom", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-FROM\";msr.tbdString=\"true\";xml.sequenceOffset=\"60\";mmt.qualifiedName=\"SwRecordLayoutGroup.swRecordLayoutGroupFrom\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "2", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-FROM", "xml.name", "SW-RECORD-LAYOUT-GROUP-FROM", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-FROMS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup.swRecordLayoutGroupTo", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-TO\";msr.tbdString=\"true\";xml.sequenceOffset=\"70\";mmt.qualifiedName=\"SwRecordLayoutGroup.swRecordLayoutGroupTo\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "3", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-TO", "xml.name", "SW-RECORD-LAYOUT-GROUP-TO", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-TOS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup.swRecordLayoutGroupStep", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-STEP\";msr.tbdString=\"true\";xml.sequenceOffset=\"80\";mmt.qualifiedName=\"SwRecordLayoutGroup.swRecordLayoutGroupStep\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP-STEP", "xml.name", "SW-RECORD-LAYOUT-GROUP-STEP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-STEPS", "internal-xml-sequenceOffset", "80", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup.swRecordLayoutComponent", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-COMPONENT\";msr.tbdString=\"true\";xml.sequenceOffset=\"90\";mmt.qualifiedName=\"SwRecordLayoutGroup.swRecordLayoutComponent\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "5", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-COMPONENT", "xml.name", "SW-RECORD-LAYOUT-COMPONENT", "xml.namePlural", "SW-RECORD-LAYOUT-COMPONENTS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroup.swRecordLayoutGroupContentType", "xml.tags", "xml.sequenceOffset=\"100\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";msr.id=\"SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP_content_TYPE\";mmt.qualifiedName=\"SwRecordLayoutGroup.swRecordLayoutGroupContentType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.roleElement", "false", "xml.roleWrapperElement", "false", "pureMM.minOccurs", "0", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "6", "msr.id", "SW-RECORD-LAYOUT-GROUP_TYPE__SW-RECORD-LAYOUT-GROUP_content_TYPE", "xml.name", "SW-RECORD-LAYOUT-GROUP-CONTENT-TYPE", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-CONTENT-TYPES", "internal-xml-sequenceOffset", "100", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"mmt.qualifiedName", "SwRelatedConstrs", "xml.tags", "msr.id=\"type__SW-RELATED-CONSTRS_TYPE\";mmt.qualifiedName=\"SwRelatedConstrs\"", "msr.id", "type__SW-RELATED-CONSTRS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-RELATED-CONSTRS", "xml.namePlural", "SW-RELATED-CONSTRSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroupContent", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__SW-RECORD-LAYOUT-GROUP_content_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"SwRecordLayoutGroupContent\"", "asam.useCase", "MDX", "msr.isGroupOnly", "true", "msr.id", "special__SW-RECORD-LAYOUT-GROUP_content_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-RECORD-LAYOUT-GROUP-CONTENT", "xml.namePlural", "SW-RECORD-LAYOUT-GROUP-CONTENTS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayouts(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroupContent.swRecordLayout", "msr.id", "SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-REF", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"110\";msr.id=\"SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-REF\";mmt.qualifiedName=\"SwRecordLayoutGroupContent.swRecordLayout\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-RECORD-LAYOUT-REF", "xml.namePlural", "SW-RECORD-LAYOUT-REFS", "internal-xml-sequenceOffset", "110", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroupContent.swRecordLayoutV", "msr.id", "SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-V", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"120\";msr.id=\"SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-V\";mmt.qualifiedName=\"SwRecordLayoutGroupContent.swRecordLayoutV\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-RECORD-LAYOUT-V", "xml.namePlural", "SW-RECORD-LAYOUT-VS", "internal-xml-sequenceOffset", "120", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutGroupContent.swRecordLayoutGroup", "msr.id", "SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-GROUP", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "2", "xml.tags", "xml.sequenceOffset=\"130\";msr.id=\"SW-RECORD-LAYOUT-GROUP_content_TYPE__SW-RECORD-LAYOUT-GROUP\";mmt.qualifiedName=\"SwRecordLayoutGroupContent.swRecordLayoutGroup\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-RECORD-LAYOUT-GROUP", "xml.namePlural", "SW-RECORD-LAYOUT-GROUPS", "internal-xml-sequenceOffset", "130", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"mmt.qualifiedName", "SwRecordLayoutV", "msr.id", "type__SW-RECORD-LAYOUT-V_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-RECORD-LAYOUT-V_TYPE\";mmt.qualifiedName=\"SwRecordLayoutV\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-RECORD-LAYOUT-V", "xml.namePlural", "SW-RECORD-LAYOUT-VS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_BaseType(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutV.baseType", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__BASE-TYPE-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-RECORD-LAYOUT-V_TYPE__BASE-TYPE-REF\";mmt.qualifiedName=\"SwRecordLayoutV.baseType\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "BASE-TYPE-REF", "xml.namePlural", "BASE-TYPE-REFS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutV.swRecordLayoutVAxis", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-AXIS\";msr.tbdString=\"true\";xml.sequenceOffset=\"40\";mmt.qualifiedName=\"SwRecordLayoutV.swRecordLayoutVAxis\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-AXIS", "xml.name", "SW-RECORD-LAYOUT-V-AXIS", "xml.namePlural", "SW-RECORD-LAYOUT-V-AXISS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutV.swRecordLayoutVProp", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-PROP\";msr.tbdString=\"true\";xml.sequenceOffset=\"50\";mmt.qualifiedName=\"SwRecordLayoutV.swRecordLayoutVProp\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "2", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-PROP", "xml.name", "SW-RECORD-LAYOUT-V-PROP", "xml.namePlural", "SW-RECORD-LAYOUT-V-PROPS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutV.swRecordLayoutVIndex", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-INDEX\";msr.tbdString=\"true\";xml.sequenceOffset=\"60\";mmt.qualifiedName=\"SwRecordLayoutV.swRecordLayoutVIndex\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "3", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-INDEX", "xml.name", "SW-RECORD-LAYOUT-V-INDEX", "xml.namePlural", "SW-RECORD-LAYOUT-V-INDEXS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutV.swRecordLayoutVFixValue", "xml.tags", "msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-FIX-VALUE\";msr.tbdString=\"true\";xml.sequenceOffset=\"80\";mmt.qualifiedName=\"SwRecordLayoutV.swRecordLayoutVFixValue\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-V-FIX-VALUE", "xml.name", "SW-RECORD-LAYOUT-V-FIX-VALUE", "xml.namePlural", "SW-RECORD-LAYOUT-V-FIX-VALUES", "internal-xml-sequenceOffset", "80", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayout(), source, new String[]{"mmt.qualifiedName", "SwRecordLayoutV.swRecordLayout", "msr.id", "SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "5", "xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"SW-RECORD-LAYOUT-V_TYPE__SW-RECORD-LAYOUT-REF\";mmt.qualifiedName=\"SwRecordLayoutV.swRecordLayout\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "SW-RECORD-LAYOUT-REF", "xml.namePlural", "SW-RECORD-LAYOUT-REFS", "internal-xml-sequenceOffset", "90", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"mmt.qualifiedName", "SwAddrMethod", "msr.id", "type__SW-ADDR-METHOD_TYPE", "asam.useCase", "MDX", "xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-ADDR-METHOD_TYPE\";mmt.qualifiedName=\"SwAddrMethod\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-ADDR-METHOD", "xml.namePlural", "SW-ADDR-METHODS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"name", "SW-CODE-SYNTAX", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"name", "SW-RECORD-LAYOUT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayout_SwRecordLayoutGroups(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-AXIS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-INDEX", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-FROM", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-TO", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-STEP", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"name", "SW-RECORD-LAYOUT-COMPONENT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-CONTENT-TYPE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"name", "SW-RELATED-CONSTRS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayouts(), source, new String[]{"name", "SW-RECORD-LAYOUT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), source, new String[]{"name", "SW-RECORD-LAYOUT-V", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), source, new String[]{"name", "SW-RECORD-LAYOUT-GROUP", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"name", "SW-RECORD-LAYOUT-V", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_BaseType(), source, new String[]{"name", "BASE-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-AXIS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-PROP", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-INDEX", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"name", "SW-RECORD-LAYOUT-V-FIX-VALUE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayout(), source, new String[]{"name", "SW-RECORD-LAYOUT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"name", "SW-ADDR-METHOD", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"documentation", "SwCodeSyntax objects fix the representation of data objects, e.g. variables and parameters, in the program source file. These code syntax objects are defined centrally in SwCodeSyntaxes and are connected to data objects by means of SwCodeSyntaxRef.\r\n\r\nThe principle role of this element is the declaration of keywords (in the subelement ShortName) for the code generation procedure. The process itself is given a verbal description (in SwCodeSyntaxDesc) rather than a formal one. This approach was adopted as the number of possible code syntax schematics is relatively small. A complete formal description would create unnecessary work."});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"documentation", "Defines how the data objects (variables, calibration parameters etc.) are to be stored in the ECU memory. As an example, this definition specifies the sequence of axis points in the ECU memory. Iterations through axis values are stored within the subelements swRecordLayoutGroup . These subelements might be stored nested to support multidimensional data objects."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayout_SwRecordLayoutGroups(), source, new String[]{"documentation", "Set up for the record layout of axis values."});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"documentation", "Specifies how a record layout is set up. Using SwRecordLayoutGroup it recursively models iterations through axis values. The subelement swRecordLayoutGroupContentType may reference other SwRecordLayouts, SwRecordLayoutVs and SwRecordLayoutGroups for the modeled record layout."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupAxis(), source, new String[]{"documentation", "The contents of this element specifies the axis number within a record layout group."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupIndex(), source, new String[]{"documentation", "This element attributes a symbolic name to the iterator of the superimposed record layout group. This can be referenced as a loop index beneath superimposed or subsequent SwRecordLayoutV elements."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupFrom(), source, new String[]{"documentation", "This element specifies the iterator index for the point in the axis from which a record layout group is commenced. Negative values are also possible, i.e. the value -4 counts from the fourth value from the end."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupTo(), source, new String[]{"documentation", "This element specifies the iterator index for a point in the axis up to which iteration for a record layout group takes place. Negative values are also possible, i.e. the value -4 counts up to the fourth value from the end."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupStep(), source, new String[]{"documentation", "This element specifies the step width for the iterator index, which is used for a record layout group ."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutComponent(), source, new String[]{"documentation", "This element is used to denote the component to which the group in question applies. Thus, the record layout supports structured objects. This secures independence from the sequence of components, because they can be referred to via name."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroup_SwRecordLayoutGroupContentType(), source, new String[]{"documentation", "this is the contents of the recordLayout which is produces for every step of iteration."});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"documentation", "This element describes plausibility rules that go beyond the individual data object. E.g. the overrun shut-off engine speed must not be higher than the maximum engine speed. This plausibility rule is defined in exactly the same way as the contexts and dependencies of virtual characteristic variables and variables."});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"documentation", "This is the contents of a RecordLaoyut which is inserted for every iteration. Note that since this is atpMixed, multiple properties can be inserted for each iteration."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayouts(), source, new String[]{"documentation", "this association allows to support reusable \"sub\"-record layouts. In particluar, the contents of the referenced record layout must be used here. So semantically it would be equivalent to replace the particluar association with the swRecordLayoutGroups of the referred SwRecordLayout."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutVs(), source, new String[]{"documentation", "Particular Value specification for this record layout group."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutGroupContent_SwRecordLayoutGroups(), source, new String[]{"documentation", "This aggregation provides support for nested iterations. For example if a map is to be handled, then we might have two nested SwRecordLayoutGroups, one for the x-axis and one for the y-axis. The inner iteration runs faster. "});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"documentation", "This element specifies which values are stored for the current SwRecordLayoutGroup. If no baseType is present, the SwBaseType referenced initially in the father element SwRecordLayoutGroup is valid. The specification of swRecordLayoutVAxis gives the axis of the values to be stored in accordance with the current record layout SwRecordLayoutGroup. In swRecordLayoutVProp you are able to specify the type of values that are to be stored, e.g. number or value. Under swRecordLayoutVIndex, the symbolic values of the axes can be given, for which the value given under swRecordLayoutVProp is iterated. These symbolic values relate to the values given in swRecordLayoutGroupIndex."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_BaseType(), source, new String[]{"documentation", "SwBaseType to be used for the values within this SwRecordLayoutV."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVAxis(), source, new String[]{"documentation", "This attribute specifies the axis from which the value properties are used."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVProp(), source, new String[]{"documentation", "The contents of this attribute describes the type of values to be stored in the record."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVIndex(), source, new String[]{"documentation", "The symbolic value for iteration, or the symbolic values separated by white-spaces, refer to the symbolic values given in swRecordLayoutGroupIndex . The iterators are processed from left to right, in such a manner that they symbolize the loop index from the outside to the inside.\r\n\r\nAn error has occurred if a parameter references a record layout which contains an swRecordLayoutVIndex with more components than the number of parameter axes."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayoutVFixValue(), source, new String[]{"documentation", "This attribute specifies the filler character for the current record layout, in the form of hex digits. The element present parallel to this in swRecordLayoutVProp must therefore have the contents FILL."});
        this.addAnnotation((ENamedElement)this.getSwRecordLayoutV_SwRecordLayout(), source, new String[]{"documentation", "tbd: I (bernhard Weichel) ar not sure if this association is superfluous ..."});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"documentation", "Describes how variables or parameters are addressed in the ECU. It contains a description of the addressing process and a reference to the concerned CPU memory segment. "});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.swCodeSyntaxEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwCodeSyntax->arelement", "GUID", "1719AE1A-B297-4430-8B84-27E842D7236C", "msr.id", "SW-CODE-SYNTAX_TYPE_ARElement", "Id", "-1280088154", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwRecordLayout->arelement", "GUID", "FAC36F73-BA75-47e7-97B2-0E2FEB7325E6", "msr.id", "SW-RECORD-LAYOUT_TYPE_ARElement", "Id", "1288111218", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swAddrMethodEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "SwAddrMethod->arelement", "GUID", "D039DE34-D0F9-45d7-AF57-1618362A39BB", "msr.id", "SW-ADDR-METHOD_TYPE_ARElement", "Id", "514322075", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRelatedConstrsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swRecordLayoutVEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.swRecordLayoutGroupContentEClass, source, new String[]{"Stereotype", "atpMixed"});
    }
}

