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
package autosar3x.commonstructure.globalconstraints.impl;

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
import autosar3x.commonstructure.globalconstraints.DataConstr;
import autosar3x.commonstructure.globalconstraints.DataConstrRule;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsFactory;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.globalconstraints.InternalConstrs;
import autosar3x.commonstructure.globalconstraints.PhysConstrs;
import autosar3x.commonstructure.globalconstraints.ScaleConstr;
import autosar3x.commonstructure.globalconstraints.ScaleConstrValidityEnum;
import autosar3x.commonstructure.globalconstraints.ScaleConstrs;
import autosar3x.commonstructure.globalconstraints.SwConstrObjects;
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
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class GlobalconstraintsPackageImpl
extends EPackageImpl
implements GlobalconstraintsPackage {
    private EClass dataConstrEClass = null;
    private EClass swConstrObjectsEClass = null;
    private EClass dataConstrRuleEClass = null;
    private EClass physConstrsEClass = null;
    private EClass scaleConstrEClass = null;
    private EClass internalConstrsEClass = null;
    private EClass scaleConstrsEClass = null;
    private EEnum scaleConstrValidityEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private GlobalconstraintsPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/cs/gc", (EFactory)GlobalconstraintsFactory.eINSTANCE);
    }

    public static GlobalconstraintsPackage init() {
        if (isInited) {
            return (GlobalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/cs/gc");
        }
        GlobalconstraintsPackageImpl theGlobalconstraintsPackage = (GlobalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/cs/gc") instanceof GlobalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/cs/gc") : new GlobalconstraintsPackageImpl());
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
        theGlobalconstraintsPackage.createPackageContents();
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
        theGlobalconstraintsPackage.initializePackageContents();
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
        theGlobalconstraintsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/cs/gc", (Object)theGlobalconstraintsPackage);
        return theGlobalconstraintsPackage;
    }

    public EClass getDataConstr() {
        return this.dataConstrEClass;
    }

    public EReference getDataConstr_DataConstrRules() {
        return (EReference)this.dataConstrEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwConstrObjects() {
        return this.swConstrObjectsEClass;
    }

    public EClass getDataConstrRule() {
        return this.dataConstrRuleEClass;
    }

    public EReference getDataConstrRule_DataConstr() {
        return (EReference)this.dataConstrRuleEClass.getEStructuralFeatures().get(0);
    }

    public EReference getDataConstrRule_PhysConstrs() {
        return (EReference)this.dataConstrRuleEClass.getEStructuralFeatures().get(1);
    }

    public EReference getDataConstrRule_InternalConstrs() {
        return (EReference)this.dataConstrRuleEClass.getEStructuralFeatures().get(2);
    }

    public EClass getPhysConstrs() {
        return this.physConstrsEClass;
    }

    public EReference getPhysConstrs_DataConstrRule() {
        return (EReference)this.physConstrsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getPhysConstrs_LowerLimit() {
        return (EReference)this.physConstrsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getPhysConstrs_UpperLimit() {
        return (EReference)this.physConstrsEClass.getEStructuralFeatures().get(2);
    }

    public EReference getPhysConstrs_ScaleConstrs() {
        return (EReference)this.physConstrsEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getPhysConstrs_MaxGradient() {
        return (EAttribute)this.physConstrsEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getPhysConstrs_MaxDiff() {
        return (EAttribute)this.physConstrsEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getPhysConstrs_Monotony() {
        return (EAttribute)this.physConstrsEClass.getEStructuralFeatures().get(6);
    }

    public EReference getPhysConstrs_Unit() {
        return (EReference)this.physConstrsEClass.getEStructuralFeatures().get(7);
    }

    public EClass getScaleConstr() {
        return this.scaleConstrEClass;
    }

    public EAttribute getScaleConstr_Validity() {
        return (EAttribute)this.scaleConstrEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getScaleConstr_ShortLabel() {
        return (EAttribute)this.scaleConstrEClass.getEStructuralFeatures().get(1);
    }

    public EReference getScaleConstr_Desc() {
        return (EReference)this.scaleConstrEClass.getEStructuralFeatures().get(2);
    }

    public EReference getScaleConstr_LowerLimit() {
        return (EReference)this.scaleConstrEClass.getEStructuralFeatures().get(3);
    }

    public EReference getScaleConstr_UpperLimit() {
        return (EReference)this.scaleConstrEClass.getEStructuralFeatures().get(4);
    }

    public EClass getInternalConstrs() {
        return this.internalConstrsEClass;
    }

    public EReference getInternalConstrs_DataConstrRule() {
        return (EReference)this.internalConstrsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getInternalConstrs_LowerLimit() {
        return (EReference)this.internalConstrsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getInternalConstrs_UpperLimit() {
        return (EReference)this.internalConstrsEClass.getEStructuralFeatures().get(2);
    }

    public EReference getInternalConstrs_ScaleConstrs() {
        return (EReference)this.internalConstrsEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getInternalConstrs_MaxGradient() {
        return (EAttribute)this.internalConstrsEClass.getEStructuralFeatures().get(4);
    }

    public EAttribute getInternalConstrs_MaxDiff() {
        return (EAttribute)this.internalConstrsEClass.getEStructuralFeatures().get(5);
    }

    public EAttribute getInternalConstrs_Monotony() {
        return (EAttribute)this.internalConstrsEClass.getEStructuralFeatures().get(6);
    }

    public EClass getScaleConstrs() {
        return this.scaleConstrsEClass;
    }

    public EReference getScaleConstrs_ScaleConstrs() {
        return (EReference)this.scaleConstrsEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getScaleConstrValidityEnum() {
        return this.scaleConstrValidityEnumEEnum;
    }

    public GlobalconstraintsFactory getGlobalconstraintsFactory() {
        return (GlobalconstraintsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.dataConstrEClass = this.createEClass(0);
        this.createEReference(this.dataConstrEClass, 19);
        this.swConstrObjectsEClass = this.createEClass(1);
        this.dataConstrRuleEClass = this.createEClass(2);
        this.createEReference(this.dataConstrRuleEClass, 4);
        this.createEReference(this.dataConstrRuleEClass, 5);
        this.createEReference(this.dataConstrRuleEClass, 6);
        this.physConstrsEClass = this.createEClass(3);
        this.createEReference(this.physConstrsEClass, 4);
        this.createEReference(this.physConstrsEClass, 5);
        this.createEReference(this.physConstrsEClass, 6);
        this.createEReference(this.physConstrsEClass, 7);
        this.createEAttribute(this.physConstrsEClass, 8);
        this.createEAttribute(this.physConstrsEClass, 9);
        this.createEAttribute(this.physConstrsEClass, 10);
        this.createEReference(this.physConstrsEClass, 11);
        this.scaleConstrEClass = this.createEClass(4);
        this.createEAttribute(this.scaleConstrEClass, 4);
        this.createEAttribute(this.scaleConstrEClass, 5);
        this.createEReference(this.scaleConstrEClass, 6);
        this.createEReference(this.scaleConstrEClass, 7);
        this.createEReference(this.scaleConstrEClass, 8);
        this.internalConstrsEClass = this.createEClass(5);
        this.createEReference(this.internalConstrsEClass, 4);
        this.createEReference(this.internalConstrsEClass, 5);
        this.createEReference(this.internalConstrsEClass, 6);
        this.createEReference(this.internalConstrsEClass, 7);
        this.createEAttribute(this.internalConstrsEClass, 8);
        this.createEAttribute(this.internalConstrsEClass, 9);
        this.createEAttribute(this.internalConstrsEClass, 10);
        this.scaleConstrsEClass = this.createEClass(6);
        this.createEReference(this.scaleConstrsEClass, 4);
        this.scaleConstrValidityEnumEEnum = this.createEEnum(7);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("globalconstraints");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/cs/gc");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i/i");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        LocalconstraintsPackage theLocalconstraintsPackage = (LocalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/lc");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        EnumerationsPackage theEnumerationsPackage = (EnumerationsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/e");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/swc/d/u");
        MultilanguagedataPackage theMultilanguagedataPackage = (MultilanguagedataPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/md");
        this.dataConstrEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.swConstrObjectsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.dataConstrRuleEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.physConstrsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.scaleConstrEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.internalConstrsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.scaleConstrsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.dataConstrEClass, DataConstr.class, "DataConstr", false, false, true);
        this.initEReference(this.getDataConstr_DataConstrRules(), (EClassifier)this.getDataConstrRule(), this.getDataConstrRule_DataConstr(), "dataConstrRules", null, 0, -1, DataConstr.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swConstrObjectsEClass, SwConstrObjects.class, "SwConstrObjects", false, false, true);
        this.initEClass(this.dataConstrRuleEClass, DataConstrRule.class, "DataConstrRule", false, false, true);
        this.initEReference(this.getDataConstrRule_DataConstr(), (EClassifier)this.getDataConstr(), this.getDataConstr_DataConstrRules(), "dataConstr", null, 0, 1, DataConstrRule.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getDataConstrRule_PhysConstrs(), (EClassifier)this.getPhysConstrs(), this.getPhysConstrs_DataConstrRule(), "physConstrs", null, 0, 1, DataConstrRule.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataConstrRule_InternalConstrs(), (EClassifier)this.getInternalConstrs(), this.getInternalConstrs_DataConstrRule(), "internalConstrs", null, 0, 1, DataConstrRule.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.physConstrsEClass, PhysConstrs.class, "PhysConstrs", false, false, true);
        this.initEReference(this.getPhysConstrs_DataConstrRule(), (EClassifier)this.getDataConstrRule(), this.getDataConstrRule_PhysConstrs(), "dataConstrRule", null, 0, 1, PhysConstrs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getPhysConstrs_LowerLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "lowerLimit", null, 0, 1, PhysConstrs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPhysConstrs_UpperLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "upperLimit", null, 0, 1, PhysConstrs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getPhysConstrs_ScaleConstrs(), (EClassifier)this.getScaleConstr(), null, "scaleConstrs", null, 0, -1, PhysConstrs.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getPhysConstrs_MaxGradient(), (EClassifier)thePrimitivetypesPackage.getString(), "maxGradient", "", 0, 1, PhysConstrs.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPhysConstrs_MaxDiff(), (EClassifier)thePrimitivetypesPackage.getString(), "maxDiff", "", 0, 1, PhysConstrs.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getPhysConstrs_Monotony(), (EClassifier)theEnumerationsPackage.getMonotonyEnum(), "monotony", "INCREASING", 0, 1, PhysConstrs.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getPhysConstrs_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, PhysConstrs.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.scaleConstrEClass, ScaleConstr.class, "ScaleConstr", false, false, true);
        this.initEAttribute(this.getScaleConstr_Validity(), (EClassifier)this.getScaleConstrValidityEnum(), "validity", "VALID", 0, 1, ScaleConstr.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getScaleConstr_ShortLabel(), (EClassifier)thePrimitivetypesPackage.getIdentifier(), "shortLabel", "", 0, 1, ScaleConstr.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getScaleConstr_Desc(), (EClassifier)theMultilanguagedataPackage.getMlData2(), null, "desc", null, 0, 1, ScaleConstr.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScaleConstr_LowerLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "lowerLimit", null, 0, 1, ScaleConstr.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getScaleConstr_UpperLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "upperLimit", null, 0, 1, ScaleConstr.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.internalConstrsEClass, InternalConstrs.class, "InternalConstrs", false, false, true);
        this.initEReference(this.getInternalConstrs_DataConstrRule(), (EClassifier)this.getDataConstrRule(), this.getDataConstrRule_InternalConstrs(), "dataConstrRule", null, 0, 1, InternalConstrs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getInternalConstrs_LowerLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "lowerLimit", null, 0, 1, InternalConstrs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalConstrs_UpperLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "upperLimit", null, 0, 1, InternalConstrs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalConstrs_ScaleConstrs(), (EClassifier)this.getScaleConstr(), null, "scaleConstrs", null, 0, -1, InternalConstrs.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getInternalConstrs_MaxGradient(), (EClassifier)thePrimitivetypesPackage.getString(), "maxGradient", "", 0, 1, InternalConstrs.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInternalConstrs_MaxDiff(), (EClassifier)thePrimitivetypesPackage.getString(), "maxDiff", "", 0, 1, InternalConstrs.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getInternalConstrs_Monotony(), (EClassifier)theEnumerationsPackage.getMonotonyEnum(), "monotony", "INCREASING", 0, 1, InternalConstrs.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.scaleConstrsEClass, ScaleConstrs.class, "ScaleConstrs", false, false, true);
        this.initEReference(this.getScaleConstrs_ScaleConstrs(), (EClassifier)this.getScaleConstr(), null, "scaleConstrs", null, 0, -1, ScaleConstrs.class, false, false, true, true, false, false, true, false, true);
        this.initEEnum(this.scaleConstrValidityEnumEEnum, ScaleConstrValidityEnum.class, "ScaleConstrValidityEnum");
        this.addEEnumLiteral(this.scaleConstrValidityEnumEEnum, ScaleConstrValidityEnum.VALID);
        this.addEEnumLiteral(this.scaleConstrValidityEnumEEnum, ScaleConstrValidityEnum.NOT_AVAILABLE);
        this.addEEnumLiteral(this.scaleConstrValidityEnumEEnum, ScaleConstrValidityEnum.NOT_DEFINED);
        this.addEEnumLiteral(this.scaleConstrValidityEnumEEnum, ScaleConstrValidityEnum.NOT_VALID);
        this.createResource("http://autosar.org/3.2.1/autosar3x/cs/gc");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "3F76812B-A560-49d7-9032-E9C587477273", "Created", "Thu Feb 02 11:17:06 CET 2006", "Modified", "Thu Feb 02 11:32:39 CET 2006", "Id", "766516012", "Name", "GlobalConstraints"});
        this.addAnnotation((ENamedElement)this.dataConstrEClass, source, new String[]{"GUID", "5E794FCD-5B75-4df3-8A65-53A8A3268426", "Created", "Fri Nov 25 19:52:52 CET 2005", "Modified", "Fri Mar 18 13:20:24 CET 2011", "Id", "-765111884", "Name", "DataConstr"});
        this.addAnnotation((ENamedElement)this.swConstrObjectsEClass, source, new String[]{"GUID", "4423A29F-5DFD-4a88-8F33-AAB833753503", "Created", "Fri Nov 25 19:53:06 CET 2005", "Modified", "Fri Sep 01 14:01:27 CEST 2006", "Id", "-1850147710", "Name", "SwConstrObjects"});
        this.addAnnotation((ENamedElement)this.dataConstrRuleEClass, source, new String[]{"GUID", "A2B6E624-9C68-4837-9E31-13732117C96F", "Created", "Fri Nov 25 19:52:52 CET 2005", "Modified", "Fri Sep 01 13:27:35 CEST 2006", "Id", "-331934555", "Name", "DataConstrRule"});
        this.addAnnotation((ENamedElement)this.physConstrsEClass, source, new String[]{"GUID", "35E8158F-BF46-41b8-ADF6-A45DD4909E24", "Created", "Fri Nov 25 19:52:59 CET 2005", "Modified", "Fri Sep 01 13:27:49 CEST 2006", "Id", "-1620103391", "Name", "PhysConstrs"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxGradient(), source, new String[]{"GUID", "9CFB2B7E-645B-48a4-A0DA-AB034B79F999", "Id", "-1716597607", "Name", "maxGradient"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxDiff(), source, new String[]{"GUID", "E3B1D3DD-16AB-45a4-BB4A-04CD3736F6A0", "Id", "794709693", "Name", "maxDiff"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_Monotony(), source, new String[]{"GUID", "E6E12A0A-C6AA-4c7d-A4D3-5C3F2A304657", "Id", "2111160373", "Name", "monotony"});
        this.addAnnotation((ENamedElement)this.scaleConstrEClass, source, new String[]{"GUID", "DA90AD4C-D05E-4651-8C57-6CE42A931D6B", "Created", "Fri Nov 25 19:53:30 CET 2005", "Modified", "Fri Sep 01 13:28:49 CEST 2006", "Id", "-1262549941", "Name", "ScaleConstr"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_Validity(), source, new String[]{"GUID", "4FE991B9-4785-4e5e-A3DA-B82CA90983BE", "Id", "-1516870084", "Name", "validity"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_ShortLabel(), source, new String[]{"GUID", "41B2AE9F-6258-4753-B69B-3FA23CFCE27A", "Id", "1060053808", "Name", "shortLabel"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum, source, new String[]{"GUID", "C05516BB-8649-4ece-AFFB-1A42F3ED3EFF", "Created", "Mon Mar 20 20:17:42 CET 2006", "Modified", "Thu Apr 06 20:17:44 CEST 2006", "Id", "-1168592105", "Name", "ScaleConstrValidityEnum"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(0), source, new String[]{"GUID", "502B9C8F-89EF-49cd-ADD0-FDC0837CEC8D", "Id", "-73843484", "Name", "valid"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(1), source, new String[]{"GUID", "72C82A17-8CE5-42a9-8710-5AE25023CF63", "Id", "1877138071", "Name", "notAvailable"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(2), source, new String[]{"GUID", "100262AD-5D9B-4258-AB82-FEC5EAB8F37E", "Id", "-664301670", "Name", "notDefined"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(3), source, new String[]{"GUID", "979B9EC2-D9B5-472a-AB01-E9EB3B9CD279", "Id", "511703673", "Name", "notValid"});
        this.addAnnotation((ENamedElement)this.internalConstrsEClass, source, new String[]{"GUID", "3C79E59B-150A-4e22-8D42-D20559BB8DFC", "Created", "Fri Nov 25 19:52:55 CET 2005", "Modified", "Fri Sep 01 13:27:40 CEST 2006", "Id", "-1072429679", "Name", "InternalConstrs"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxGradient(), source, new String[]{"GUID", "A1AFE59F-361B-4a21-A1DA-60478C02C854", "Id", "-1136302998", "Name", "maxGradient"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxDiff(), source, new String[]{"GUID", "69F8F7A2-8FE9-4cca-B965-87486D62372F", "Id", "264585342", "Name", "maxDiff"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_Monotony(), source, new String[]{"GUID", "43DB8B5E-62D3-40ea-98C3-FEE32C365FF9", "Id", "1560477462", "Name", "monotony"});
        this.addAnnotation((ENamedElement)this.scaleConstrsEClass, source, new String[]{"GUID", "A4BBA286-F188-4835-94F8-C1D4A3FE54CD", "Created", "Fri Nov 25 19:53:30 CET 2005", "Modified", "Fri Sep 01 13:28:48 CEST 2006", "Id", "474092334", "Name", "ScaleConstrs"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "GLOBAL-CONSTRAINTS", "xml.namePlural", "GLOBAL-CONSTRAINTSS"});
        this.addAnnotation((ENamedElement)this.dataConstrEClass, source, new String[]{"mmt.qualifiedName", "DataConstr", "xml.tags", "asam.harmonizedObject=\"ASAM-DATA-CONSTR\";asam.useCase=\"MDX\";msr.id=\"type__DATA-CONSTR_TYPE\";mmt.qualifiedName=\"DataConstr\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-DATA-CONSTR", "msr.id", "type__DATA-CONSTR_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DATA-CONSTR", "xml.namePlural", "DATA-CONSTRS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDataConstr_DataConstrRules(), source, new String[]{"mmt.qualifiedName", "DataConstr.dataConstrRule", "xml.tags", "xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"true\";xml.roleElement=\"true\";xml.sequenceOffset=\"30\";xml.typeElement=\"false\";msr.id=\"DATA-CONSTR_TYPE__DATA-CONSTR-RULES\";mmt.qualifiedName=\"DataConstr.dataConstrRule\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "pureMM.minOccurs", "0", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "0", "msr.id", "DATA-CONSTR_TYPE__DATA-CONSTR-RULES", "xml.name", "DATA-CONSTR-RULE", "xml.namePlural", "DATA-CONSTR-RULES", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swConstrObjectsEClass, source, new String[]{"mmt.qualifiedName", "SwConstrObjects", "msr.id", "type__SW-CONSTR-OBJECTS_TYPE", "msr.isGroupOnly", "true", "xml.tags", "msr.id=\"type__SW-CONSTR-OBJECTS_TYPE\";msr.isGroupOnly=\"true\";mmt.qualifiedName=\"SwConstrObjects\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SW-CONSTR-OBJECTS", "xml.namePlural", "SW-CONSTR-OBJECTSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.dataConstrRuleEClass, source, new String[]{"mmt.qualifiedName", "DataConstrRule", "xml.tags", "asam.harmonizedObject=\"ASAM-DATA-CONSTR-RULE\";asam.useCase=\"MDX\";msr.id=\"type__DATA-CONSTR-RULE_TYPE\";mmt.qualifiedName=\"DataConstrRule\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-DATA-CONSTR-RULE", "msr.id", "type__DATA-CONSTR-RULE_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "DATA-CONSTR-RULE", "xml.namePlural", "DATA-CONSTR-RULES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getDataConstrRule_PhysConstrs(), source, new String[]{"mmt.qualifiedName", "DataConstrRule.physConstrs", "msr.id", "DATA-CONSTR-RULE_TYPE__PHYS-CONSTRS", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"DATA-CONSTR-RULE_TYPE__PHYS-CONSTRS\";mmt.qualifiedName=\"DataConstrRule.physConstrs\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "PHYS-CONSTRS", "xml.namePlural", "PHYS-CONSTRSS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDataConstrRule_InternalConstrs(), source, new String[]{"mmt.qualifiedName", "DataConstrRule.internalConstrs", "msr.id", "DATA-CONSTR-RULE_TYPE__INTERNAL-CONSTRS", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"DATA-CONSTR-RULE_TYPE__INTERNAL-CONSTRS\";mmt.qualifiedName=\"DataConstrRule.internalConstrs\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "INTERNAL-CONSTRS", "xml.namePlural", "INTERNAL-CONSTRSS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.physConstrsEClass, source, new String[]{"mmt.qualifiedName", "PhysConstrs", "xml.tags", "asam.harmonizedObject=\"ASAM-PHYS-CONSTRS\";asam.useCase=\"MDX\";msr.id=\"type__PHYS-CONSTRS_TYPE\";mmt.qualifiedName=\"PhysConstrs\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-PHYS-CONSTRS", "msr.id", "type__PHYS-CONSTRS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "PHYS-CONSTRS", "xml.namePlural", "PHYS-CONSTRSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_LowerLimit(), source, new String[]{"mmt.qualifiedName", "PhysConstrs.lowerLimit", "msr.id", "PHYS-CONSTRS_TYPE__LOWER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"PHYS-CONSTRS_TYPE__LOWER-LIMIT\";mmt.qualifiedName=\"PhysConstrs.lowerLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_UpperLimit(), source, new String[]{"mmt.qualifiedName", "PhysConstrs.upperLimit", "msr.id", "PHYS-CONSTRS_TYPE__UPPER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"PHYS-CONSTRS_TYPE__UPPER-LIMIT\";mmt.qualifiedName=\"PhysConstrs.upperLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_ScaleConstrs(), source, new String[]{"mmt.qualifiedName", "PhysConstrs.scaleConstr", "xml.tags", "xml.sequenceOffset=\"40\";xml.roleWrapperElement=\"true\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";msr.id=\"PHYS-CONSTRS_TYPE__SCALE-CONSTRS\";mmt.qualifiedName=\"PhysConstrs.scaleConstr\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "pureMM.minOccurs", "0", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "2", "msr.id", "PHYS-CONSTRS_TYPE__SCALE-CONSTRS", "xml.name", "SCALE-CONSTR", "xml.namePlural", "SCALE-CONSTRS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxGradient(), source, new String[]{"mmt.qualifiedName", "PhysConstrs.maxGradient", "xml.tags", "msr.id=\"PHYS-CONSTRS_TYPE__MAX-GRADIENT\";msr.tbdString=\"true\";xml.sequenceOffset=\"50\";mmt.qualifiedName=\"PhysConstrs.maxGradient\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "3", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "PHYS-CONSTRS_TYPE__MAX-GRADIENT", "xml.name", "MAX-GRADIENT", "xml.namePlural", "MAX-GRADIENTS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxDiff(), source, new String[]{"mmt.qualifiedName", "PhysConstrs.maxDiff", "xml.tags", "msr.id=\"PHYS-CONSTRS_TYPE__MAX-DIFF\";msr.tbdString=\"true\";xml.sequenceOffset=\"60\";mmt.qualifiedName=\"PhysConstrs.maxDiff\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "PHYS-CONSTRS_TYPE__MAX-DIFF", "xml.name", "MAX-DIFF", "xml.namePlural", "MAX-DIFFS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_Monotony(), source, new String[]{"mmt.qualifiedName", "PhysConstrs.monotony", "xml.tags", "msr.id=\"PHYS-CONSTRS_TYPE__MONOTONY\";msr.tbdString=\"true\";xml.sequenceOffset=\"70\";mmt.qualifiedName=\"PhysConstrs.monotony\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "5", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "PHYS-CONSTRS_TYPE__MONOTONY", "xml.name", "MONOTONY", "xml.namePlural", "MONOTONYS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_Unit(), source, new String[]{"mmt.qualifiedName", "PhysConstrs.unit", "msr.id", "PHYS-CONSTRS_TYPE__UNIT-REF", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "6", "xml.tags", "xml.sequenceOffset=\"80\";msr.id=\"PHYS-CONSTRS_TYPE__UNIT-REF\";mmt.qualifiedName=\"PhysConstrs.unit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "internal-xml-sequenceOffset", "80", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.scaleConstrEClass, source, new String[]{"mmt.qualifiedName", "ScaleConstr", "msr.id", "type__SCALE-CONSTR_TYPE", "asam.harmonizedObject", "ASAM-SCALE-CONSTR", "xml.tags", "asam.harmonizedObject=\"ASAM-SCALE-CONSTR\";msr.id=\"type__SCALE-CONSTR_TYPE\";mmt.qualifiedName=\"ScaleConstr\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SCALE-CONSTR", "xml.namePlural", "SCALE-CONSTRS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_Validity(), source, new String[]{"xml.attribute", "true", "mmt.qualifiedName", "ScaleConstr.validity", "msr.id", "SCALE-CONSTR_TYPE__SCALE-CONSTR_TYPE__VALIDITY", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.tags", "msr.id=\"SCALE-CONSTR_TYPE__SCALE-CONSTR_TYPE__VALIDITY\";xml.attribute=\"true\";mmt.qualifiedName=\"ScaleConstr.validity\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "VALIDITY", "xml.namePlural", "VALIDITYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_ShortLabel(), source, new String[]{"mmt.qualifiedName", "ScaleConstr.shortLabel", "xml.tags", "msr.id=\"SCALE-CONSTR_TYPE__SHORT-LABEL\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\";mmt.qualifiedName=\"ScaleConstr.shortLabel\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "SCALE-CONSTR_TYPE__SHORT-LABEL", "xml.name", "SHORT-LABEL", "xml.namePlural", "SHORT-LABELS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_Desc(), source, new String[]{"mmt.qualifiedName", "ScaleConstr.desc", "msr.id", "SCALE-CONSTR_TYPE__DESC", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "2", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SCALE-CONSTR_TYPE__DESC\";mmt.qualifiedName=\"ScaleConstr.desc\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "DESC", "xml.namePlural", "DESCS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_LowerLimit(), source, new String[]{"mmt.qualifiedName", "ScaleConstr.lowerLimit", "msr.id", "SCALE-CONSTR_TYPE__LOWER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "3", "xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"SCALE-CONSTR_TYPE__LOWER-LIMIT\";mmt.qualifiedName=\"ScaleConstr.lowerLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_UpperLimit(), source, new String[]{"mmt.qualifiedName", "ScaleConstr.upperLimit", "msr.id", "SCALE-CONSTR_TYPE__UPPER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "4", "xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"SCALE-CONSTR_TYPE__UPPER-LIMIT\";mmt.qualifiedName=\"ScaleConstr.upperLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum, source, new String[]{"mmt.qualifiedName", "ScaleConstrValidityEnum", "xml.tags", "msr.id=\"SCALE-CONSTR-VALIDITY_enum\";mmt.qualifiedName=\"ScaleConstrValidityEnum\"", "msr.id", "SCALE-CONSTR-VALIDITY_enum", "mmt-intern.basetypes", "AUTOSAR Root::M2::AUTOSAR Templates::GenericStructure::Infrastructure::ARObject", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SCALE-CONSTR-VALIDITY-ENUM", "xml.namePlural", "SCALE-CONSTR-VALIDITY-ENUMS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(0), source, new String[]{"xml.attribute", "true", "mmt.qualifiedName", "ScaleConstrValidityEnum.valid", "msr.id", "SCALE-CONSTR-VALIDITY_enum_xx__VALID", "xml.tags", "msr.id=\"SCALE-CONSTR-VALIDITY_enum_xx__VALID\";xml.attribute=\"true\";mmt.qualifiedName=\"ScaleConstrValidityEnum.valid\"", "xml.name", "VALID", "xml.namePlural", "VALIDS"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(1), source, new String[]{"xml.attribute", "true", "mmt.qualifiedName", "ScaleConstrValidityEnum.notAvailable", "msr.id", "SCALE-CONSTR-VALIDITY_enum_xx__NOT-AVAILABLE", "xml.tags", "msr.id=\"SCALE-CONSTR-VALIDITY_enum_xx__NOT-AVAILABLE\";xml.attribute=\"true\";mmt.qualifiedName=\"ScaleConstrValidityEnum.notAvailable\"", "xml.name", "NOT-AVAILABLE", "xml.namePlural", "NOT-AVAILABLES"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(2), source, new String[]{"xml.attribute", "true", "mmt.qualifiedName", "ScaleConstrValidityEnum.notDefined", "msr.id", "SCALE-CONSTR-VALIDITY_enum_xx__NOT-DEFINED", "xml.tags", "msr.id=\"SCALE-CONSTR-VALIDITY_enum_xx__NOT-DEFINED\";xml.attribute=\"true\";mmt.qualifiedName=\"ScaleConstrValidityEnum.notDefined\"", "xml.name", "NOT-DEFINED", "xml.namePlural", "NOT-DEFINEDS"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum.getELiterals().get(3), source, new String[]{"xml.attribute", "true", "mmt.qualifiedName", "ScaleConstrValidityEnum.notValid", "msr.id", "SCALE-CONSTR-VALIDITY_enum_xx__NOT-VALID", "xml.tags", "msr.id=\"SCALE-CONSTR-VALIDITY_enum_xx__NOT-VALID\";xml.attribute=\"true\";mmt.qualifiedName=\"ScaleConstrValidityEnum.notValid\"", "xml.name", "NOT-VALID", "xml.namePlural", "NOT-VALIDS"});
        this.addAnnotation((ENamedElement)this.internalConstrsEClass, source, new String[]{"mmt.qualifiedName", "InternalConstrs", "xml.tags", "asam.harmonizedObject=\"ASAM-INTERNAL-CONSTRS\";asam.useCase=\"MDX\";msr.id=\"type__INTERNAL-CONSTRS_TYPE\";mmt.qualifiedName=\"InternalConstrs\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-INTERNAL-CONSTRS", "msr.id", "type__INTERNAL-CONSTRS_TYPE", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "INTERNAL-CONSTRS", "xml.namePlural", "INTERNAL-CONSTRSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_LowerLimit(), source, new String[]{"mmt.qualifiedName", "InternalConstrs.lowerLimit", "msr.id", "INTERNAL-CONSTRS_TYPE__LOWER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "0", "xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"INTERNAL-CONSTRS_TYPE__LOWER-LIMIT\";mmt.qualifiedName=\"InternalConstrs.lowerLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_UpperLimit(), source, new String[]{"mmt.qualifiedName", "InternalConstrs.upperLimit", "msr.id", "INTERNAL-CONSTRS_TYPE__UPPER-LIMIT", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "xml.sequenceOffset", "1", "xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"INTERNAL-CONSTRS_TYPE__UPPER-LIMIT\";mmt.qualifiedName=\"InternalConstrs.upperLimit\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "internal-xml-sequenceOffset", "30", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_ScaleConstrs(), source, new String[]{"mmt.qualifiedName", "InternalConstrs.scaleConstr", "xml.tags", "xml.typeElement=\"false\";xml.sequenceOffset=\"40\";xml.roleElement=\"true\";xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"true\";msr.id=\"INTERNAL-CONSTRS_TYPE__SCALE-CONSTRS\";mmt.qualifiedName=\"InternalConstrs.scaleConstr\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "pureMM.minOccurs", "0", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "2", "msr.id", "INTERNAL-CONSTRS_TYPE__SCALE-CONSTRS", "xml.name", "SCALE-CONSTR", "xml.namePlural", "SCALE-CONSTRS", "internal-xml-sequenceOffset", "40", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxGradient(), source, new String[]{"mmt.qualifiedName", "InternalConstrs.maxGradient", "xml.tags", "msr.id=\"INTERNAL-CONSTRS_TYPE__MAX-GRADIENT\";msr.tbdString=\"true\";xml.sequenceOffset=\"50\";mmt.qualifiedName=\"InternalConstrs.maxGradient\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "3", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "INTERNAL-CONSTRS_TYPE__MAX-GRADIENT", "xml.name", "MAX-GRADIENT", "xml.namePlural", "MAX-GRADIENTS", "internal-xml-sequenceOffset", "50", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxDiff(), source, new String[]{"mmt.qualifiedName", "InternalConstrs.maxDiff", "xml.tags", "msr.id=\"INTERNAL-CONSTRS_TYPE__MAX-DIFF\";msr.tbdString=\"true\";xml.sequenceOffset=\"60\";mmt.qualifiedName=\"InternalConstrs.maxDiff\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "INTERNAL-CONSTRS_TYPE__MAX-DIFF", "xml.name", "MAX-DIFF", "xml.namePlural", "MAX-DIFFS", "internal-xml-sequenceOffset", "60", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_Monotony(), source, new String[]{"mmt.qualifiedName", "InternalConstrs.monotony", "xml.tags", "msr.id=\"INTERNAL-CONSTRS_TYPE__MONOTONY\";msr.tbdString=\"true\";xml.sequenceOffset=\"70\";mmt.qualifiedName=\"InternalConstrs.monotony\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "msr.tbdString", "true", "xml.sequenceOffset", "5", "pureMM.minOccurs", "0", "pureMM.maxOccurs", "1", "msr.id", "INTERNAL-CONSTRS_TYPE__MONOTONY", "xml.name", "MONOTONY", "xml.namePlural", "MONOTONYS", "internal-xml-sequenceOffset", "70", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.scaleConstrsEClass, source, new String[]{"mmt.qualifiedName", "ScaleConstrs", "msr.id", "type__SCALE-CONSTRS_TYPE", "asam.harmonizedObject", "ASAM-SCALE-CONSTRS", "xml.tags", "asam.harmonizedObject=\"ASAM-SCALE-CONSTRS\";msr.id=\"type__SCALE-CONSTRS_TYPE\";mmt.qualifiedName=\"ScaleConstrs\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SCALE-CONSTRS", "xml.namePlural", "SCALE-CONSTRSS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getScaleConstrs_ScaleConstrs(), source, new String[]{"mmt.qualifiedName", "ScaleConstrs.scaleConstr", "xml.tags", "xml.roleElement=\"true\";xml.sequenceOffset=\"20\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleWrapperElement=\"false\";msr.id=\"SCALE-CONSTRS_TYPE__SCALE-CONSTR\";mmt.qualifiedName=\"ScaleConstrs.scaleConstr\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"-1\"", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "pureMM.minOccurs", "1", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "pureMM.maxOccurs", "-1", "xml.sequenceOffset", "0", "msr.id", "SCALE-CONSTRS_TYPE__SCALE-CONSTR", "xml.name", "SCALE-CONSTR", "xml.namePlural", "SCALE-CONSTRS", "internal-xml-sequenceOffset", "20", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.dataConstrEClass, source, new String[]{"name", "DATA-CONSTR", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getDataConstr_DataConstrRules(), source, new String[]{"name", "DATA-CONSTR-RULES", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.swConstrObjectsEClass, source, new String[]{"name", "SW-CONSTR-OBJECTS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.dataConstrRuleEClass, source, new String[]{"name", "DATA-CONSTR-RULE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getDataConstrRule_PhysConstrs(), source, new String[]{"name", "PHYS-CONSTRS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getDataConstrRule_InternalConstrs(), source, new String[]{"name", "INTERNAL-CONSTRS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.physConstrsEClass, source, new String[]{"name", "PHYS-CONSTRS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_ScaleConstrs(), source, new String[]{"name", "SCALE-CONSTRS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxGradient(), source, new String[]{"name", "MAX-GRADIENT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxDiff(), source, new String[]{"name", "MAX-DIFF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_Monotony(), source, new String[]{"name", "MONOTONY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.scaleConstrEClass, source, new String[]{"name", "SCALE-CONSTR", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_Validity(), source, new String[]{"name", "VALIDITY", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_ShortLabel(), source, new String[]{"name", "SHORT-LABEL", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_Desc(), source, new String[]{"name", "DESC", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getScaleConstr_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.internalConstrsEClass, source, new String[]{"name", "INTERNAL-CONSTRS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_ScaleConstrs(), source, new String[]{"name", "SCALE-CONSTRS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxGradient(), source, new String[]{"name", "MAX-GRADIENT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxDiff(), source, new String[]{"name", "MAX-DIFF", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_Monotony(), source, new String[]{"name", "MONOTONY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.scaleConstrsEClass, source, new String[]{"name", "SCALE-CONSTRS", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getScaleConstrs_ScaleConstrs(), source, new String[]{"name", "SCALE-CONSTR", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.dataConstrEClass, source, new String[]{"Name", "", "mmt.qualifiedName", "DataConstr->arelement", "GUID", "7E29B199-E8CE-49ac-8622-9D1BB8CDFEEB", "msr.id", "DATA-CONSTR_TYPE_ARElement", "Id", "-162318653", "xml.sequenceOffset", "0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.getDataConstr_DataConstrRules(), source, new String[]{"documentation", "This is one particular rule within the data constraints,"});
        this.addAnnotation((ENamedElement)this.swConstrObjectsEClass, source, new String[]{"documentation", "Parameters or variables can reference plausibility checks. The assignment of data to <swConstrObjects> makes the reverse direction possible.\r\n\r\nIn this way for example plausibility libraries stored in external files can be latched beneath the previous element <SW-DATA-CONSTRS> -element."});
        this.addAnnotation((ENamedElement)this.getDataConstrRule_PhysConstrs(), source, new String[]{"documentation", "Describes the limitiations applicapble on the physical domain (as opposed to the internal domain)."});
        this.addAnnotation((ENamedElement)this.getDataConstrRule_InternalConstrs(), source, new String[]{"documentation", "Describes the limitiations applicapble on the internal domain (as opposed to the physical domain)."});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_ScaleConstrs(), source, new String[]{"documentation", "This is one particular scale in which contributes to the data constraints."});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxGradient(), source, new String[]{"documentation", "This element specifies the maximum slope that may be used in maps and curves."});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_MaxDiff(), source, new String[]{"documentation", "Maximum difference that is permitted between two consecutive values if the constraint is applied to an axis."});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_Monotony(), source, new String[]{"documentation", "This specifies the monotony constraints on the data object. Note that this applies only to curves and maps."});
        this.addAnnotation((ENamedElement)this.getPhysConstrs_Unit(), source, new String[]{"documentation", "Use <unit> to enter the unit of a parameter."});
        this.addAnnotation((ENamedElement)this.getScaleConstr_Validity(), source, new String[]{"documentation", "Specifies if the values defined by the scales are considered to be valid. If the attribute is missing then the default value is \"VALID\"."});
        this.addAnnotation((ENamedElement)this.getScaleConstr_ShortLabel(), source, new String[]{"documentation", "This element specifies a short name for the scaleConstr. This can for example be used to create more specific messages of a constraint checker. The constraints cannot be associated in the metamodel, therefore shortLabel is somehow a substitute for shortName."});
        this.addAnnotation((ENamedElement)this.getScaleConstr_Desc(), source, new String[]{"documentation", "<desc> represents a general but brief description of the object in question."});
        this.addAnnotation((ENamedElement)this.getScaleConstr_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getScaleConstr_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_ScaleConstrs(), source, new String[]{"documentation", "This is one particular scale in which contributes to the data constraints."});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxGradient(), source, new String[]{"documentation", "This element specifies the maximum slope that may be used in maps and curves."});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_MaxDiff(), source, new String[]{"documentation", "Maximum difference that is permitted between two consecutive values if the constraint is applied to an axis."});
        this.addAnnotation((ENamedElement)this.getInternalConstrs_Monotony(), source, new String[]{"documentation", "This element specifies the monotony characteristics of the current internal or physical limits. The following table shows the monotony characteristics which are to be filled through the corresponding values. If the element has no contents or if it is omitted, \"no-monotony\" is the default content.\r\n"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.swConstrObjectsEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.scaleConstrValidityEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.swConstrObjectsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.dataConstrRuleEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.physConstrsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.scaleConstrEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.internalConstrsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.scaleConstrsEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

