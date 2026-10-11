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
package autosar3x.swcomponent.modedeclaration.instanceref.impl;

import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.impl.BswbehaviorPackageImpl;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.bswmodule.bswimplementation.impl.BswimplementationPackageImpl;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswinterfaces.impl.BswinterfacesPackageImpl;
import autosar3x.bswmodule.bswoverview.BswoverviewPackage;
import autosar3x.bswmodule.bswoverview.impl.BswoverviewPackageImpl;
import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.auxillaryobjects.impl.AuxillaryobjectsPackageImpl;
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
import autosar3x.swcomponent.modedeclaration.instanceref.InstancerefFactory;
import autosar3x.swcomponent.modedeclaration.instanceref.InstancerefPackage;
import autosar3x.swcomponent.modedeclaration.instanceref.ModeDisablingDependencyDependentOnMode;
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
    private EClass modeDisablingDependencyDependentOnModeEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private InstancerefPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/swc/md/r", (EFactory)InstancerefFactory.eINSTANCE);
    }

    public static InstancerefPackage init() {
        if (isInited) {
            return (InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md/r");
        }
        InstancerefPackageImpl theInstancerefPackage = (InstancerefPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/md/r") instanceof InstancerefPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/swc/md/r") : new InstancerefPackageImpl());
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
        AuxillaryobjectsPackageImpl theAuxillaryobjectsPackage = (AuxillaryobjectsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ao") instanceof AuxillaryobjectsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/ao") : AuxillaryobjectsPackage.eINSTANCE);
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
        autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_1 = (autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition/r") instanceof autosar3x.swcomponent.composition.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/composition/r") : autosar3x.swcomponent.composition.instanceref.InstancerefPackage.eINSTANCE);
        ComponentsPackageImpl theComponentsPackage = (ComponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components") instanceof ComponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components") : ComponentsPackage.eINSTANCE);
        autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_2 = (autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components/r") instanceof autosar3x.swcomponent.components.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components/r") : autosar3x.swcomponent.components.instanceref.InstancerefPackage.eINSTANCE);
        ApplicationattributesPackageImpl theApplicationattributesPackage = (ApplicationattributesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/aa") instanceof ApplicationattributesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/aa") : ApplicationattributesPackage.eINSTANCE);
        MeasurementpropertyPackageImpl theMeasurementpropertyPackage = (MeasurementpropertyPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp") instanceof MeasurementpropertyPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp") : MeasurementpropertyPackage.eINSTANCE);
        autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_3 = (autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp/r") instanceof autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/mp/r") : autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage.eINSTANCE);
        CharacteristicPackageImpl theCharacteristicPackage = (CharacteristicPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c") instanceof CharacteristicPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c") : CharacteristicPackage.eINSTANCE);
        autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_4 = (autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c/r") instanceof autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/mac/c/r") : autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage.eINSTANCE);
        PortinterfacePackageImpl thePortinterfacePackage = (PortinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi") instanceof PortinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi") : PortinterfacePackage.eINSTANCE);
        ModedeclarationPackageImpl theModedeclarationPackage = (ModedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md") instanceof ModedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md") : ModedeclarationPackage.eINSTANCE);
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/communication") : CommunicationPackage.eINSTANCE);
        SwcinternalbehaviorPackageImpl theSwcinternalbehaviorPackage = (SwcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib") instanceof SwcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib") : SwcinternalbehaviorPackage.eINSTANCE);
        RteeventsPackageImpl theRteeventsPackage = (RteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee") instanceof RteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee") : RteeventsPackage.eINSTANCE);
        autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_5 = (autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r") instanceof autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/sib/rtee/r") : autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage.eINSTANCE);
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
        theInstancerefPackage.createPackageContents();
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
        theAuxillaryobjectsPackage.createPackageContents();
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
        theInstancerefPackage_1.createPackageContents();
        theComponentsPackage.createPackageContents();
        theInstancerefPackage_2.createPackageContents();
        theApplicationattributesPackage.createPackageContents();
        theMeasurementpropertyPackage.createPackageContents();
        theInstancerefPackage_3.createPackageContents();
        theCharacteristicPackage.createPackageContents();
        theInstancerefPackage_4.createPackageContents();
        thePortinterfacePackage.createPackageContents();
        theModedeclarationPackage.createPackageContents();
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
        theInstancerefPackage.initializePackageContents();
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
        theAuxillaryobjectsPackage.initializePackageContents();
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
        theInstancerefPackage_1.initializePackageContents();
        theComponentsPackage.initializePackageContents();
        theInstancerefPackage_2.initializePackageContents();
        theApplicationattributesPackage.initializePackageContents();
        theMeasurementpropertyPackage.initializePackageContents();
        theInstancerefPackage_3.initializePackageContents();
        theCharacteristicPackage.initializePackageContents();
        theInstancerefPackage_4.initializePackageContents();
        thePortinterfacePackage.initializePackageContents();
        theModedeclarationPackage.initializePackageContents();
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
        theInstancerefPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/swc/md/r", (Object)theInstancerefPackage);
        return theInstancerefPackage;
    }

    public EClass getModeDisablingDependencyDependentOnMode() {
        return this.modeDisablingDependencyDependentOnModeEClass;
    }

    public EReference getModeDisablingDependencyDependentOnMode_ModeDisablingDependency() {
        return (EReference)this.modeDisablingDependencyDependentOnModeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getModeDisablingDependencyDependentOnMode_RPortPrototype() {
        return (EReference)this.modeDisablingDependencyDependentOnModeEClass.getEStructuralFeatures().get(1);
    }

    public EReference getModeDisablingDependencyDependentOnMode_ModeDeclarationGroupPrototype() {
        return (EReference)this.modeDisablingDependencyDependentOnModeEClass.getEStructuralFeatures().get(2);
    }

    public EReference getModeDisablingDependencyDependentOnMode_ModeDeclaration() {
        return (EReference)this.modeDisablingDependencyDependentOnModeEClass.getEStructuralFeatures().get(3);
    }

    public InstancerefFactory getInstancerefFactory() {
        return (InstancerefFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.modeDisablingDependencyDependentOnModeEClass = this.createEClass(0);
        this.createEReference(this.modeDisablingDependencyDependentOnModeEClass, 4);
        this.createEReference(this.modeDisablingDependencyDependentOnModeEClass, 5);
        this.createEReference(this.modeDisablingDependencyDependentOnModeEClass, 6);
        this.createEReference(this.modeDisablingDependencyDependentOnModeEClass, 7);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("instanceref");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/swc/md/r");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        ModedeclarationPackage theModedeclarationPackage = (ModedeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/md");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/components");
        PortinterfacePackage thePortinterfacePackage = (PortinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/pi");
        this.modeDisablingDependencyDependentOnModeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.modeDisablingDependencyDependentOnModeEClass, ModeDisablingDependencyDependentOnMode.class, "ModeDisablingDependencyDependentOnMode", false, false, true);
        this.initEReference(this.getModeDisablingDependencyDependentOnMode_ModeDisablingDependency(), (EClassifier)theModedeclarationPackage.getModeDisablingDependency(), theModedeclarationPackage.getModeDisablingDependency_DependentOnModes(), "modeDisablingDependency", null, 0, 1, ModeDisablingDependencyDependentOnMode.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getModeDisablingDependencyDependentOnMode_RPortPrototype(), (EClassifier)theComponentsPackage.getRPortPrototype(), null, "rPortPrototype", null, 0, 1, ModeDisablingDependencyDependentOnMode.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getModeDisablingDependencyDependentOnMode_ModeDeclarationGroupPrototype(), (EClassifier)thePortinterfacePackage.getModeDeclarationGroupPrototype(), null, "modeDeclarationGroupPrototype", null, 0, 1, ModeDisablingDependencyDependentOnMode.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getModeDisablingDependencyDependentOnMode_ModeDeclaration(), (EClassifier)theModedeclarationPackage.getModeDeclaration(), null, "modeDeclaration", null, 1, 1, ModeDisablingDependencyDependentOnMode.class, false, false, true, false, true, false, true, false, true);
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "AAF7C8A1-0AF0-40f0-82B2-E934EBA664E0", "Created", "Fri Jun 23 18:12:44 CEST 2006", "Modified", "Fri Jun 23 18:12:44 CEST 2006", "Id", "168759247", "Name", "_instanceRef"});
        this.addAnnotation((ENamedElement)this.modeDisablingDependencyDependentOnModeEClass, source, new String[]{"GUID", "F78DBEEA-3232-4a90-9EDE-513944281BB2", "Created", "Fri Jun 23 18:14:03 CEST 2006", "Modified", "Fri Jun 23 18:14:09 CEST 2006", "Id", "788812491", "Name", "ModeDisablingDependency_dependentOnMode"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "-INSTANCE-REF", "xml.namePlural", "-INSTANCE-REFS"});
        this.addAnnotation((ENamedElement)this.modeDisablingDependencyDependentOnModeEClass, source, new String[]{"mmt.qualifiedName", "ModeDisablingDependency_dependentOnMode", "xml.tags", "mmt.qualifiedName=\"ModeDisablingDependency_dependentOnMode\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "MODE-DISABLING-DEPENDENCY--DEPENDENT-ON-MODE", "xml.namePlural", "MODE-DISABLING-DEPENDENCY--DEPENDENT-ON-MODES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_RPortPrototype(), source, new String[]{"xml.sequenceOffset", "0", "mmt.qualifiedName", "ModeDisablingDependency_dependentOnMode.rPortPrototype", "xml.tags", "xml.sequenceOffset=\"10\";mmt.qualifiedName=\"ModeDisablingDependency_dependentOnMode.rPortPrototype\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "R-PORT-PROTOTYPE-REF", "xml.namePlural", "R-PORT-PROTOTYPE-REFS", "internal-xml-sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_ModeDeclarationGroupPrototype(), source, new String[]{"xml.sequenceOffset", "1", "mmt.qualifiedName", "ModeDisablingDependency_dependentOnMode.modeDeclarationGroupPrototype", "xml.tags", "xml.sequenceOffset=\"20\";mmt.qualifiedName=\"ModeDisablingDependency_dependentOnMode.modeDeclarationGroupPrototype\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "MODE-DECLARATION-GROUP-PROTOTYPE-REF", "xml.namePlural", "MODE-DECLARATION-GROUP-PROTOTYPE-REFS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_ModeDeclaration(), source, new String[]{"xml.sequenceOffset", "2", "mmt.qualifiedName", "ModeDisablingDependency_dependentOnMode.modeDeclaration", "xml.tags", "xml.sequenceOffset=\"30\";mmt.qualifiedName=\"ModeDisablingDependency_dependentOnMode.modeDeclaration\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "pureMM.maxOccurs", "1", "xml.name", "MODE-DECLARATION-REF", "xml.namePlural", "MODE-DECLARATION-REFS", "xml.enforceMinMultiplicity", "true", "internal-xml-sequenceOffset", "9999", "xml.enforceMaxMultiplicity", "true", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.modeDisablingDependencyDependentOnModeEClass, source, new String[]{"name", "MODE-DISABLING-DEPENDENCY--DEPENDENT-ON-MODE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_RPortPrototype(), source, new String[]{"name", "R-PORT-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_ModeDeclarationGroupPrototype(), source, new String[]{"name", "MODE-DECLARATION-GROUP-PROTOTYPE-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_ModeDeclaration(), source, new String[]{"name", "MODE-DECLARATION-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.modeDisablingDependencyDependentOnModeEClass, source, new String[]{"Stereotype", "instanceRef"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_RPortPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_ModeDeclarationGroupPrototype(), source, new String[]{"Stereotype", "instanceRef.context"});
        this.addAnnotation((ENamedElement)this.getModeDisablingDependencyDependentOnMode_ModeDeclaration(), source, new String[]{"Stereotype", "instanceRef.target"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.modeDisablingDependencyDependentOnModeEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

