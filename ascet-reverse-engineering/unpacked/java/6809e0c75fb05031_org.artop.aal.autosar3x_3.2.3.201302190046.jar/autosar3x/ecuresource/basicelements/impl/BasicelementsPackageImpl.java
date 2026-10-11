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
package autosar3x.ecuresource.basicelements.impl;

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
import autosar3x.ecuresource.basicelements.BasicelementsFactory;
import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.BootTime;
import autosar3x.ecuresource.basicelements.ElectricalRange;
import autosar3x.ecuresource.basicelements.ErrorDetectionCorrection;
import autosar3x.ecuresource.basicelements.FrequencyRange;
import autosar3x.ecuresource.basicelements.SupportsSafety;
import autosar3x.ecuresource.basicelements.SupportsSecurity;
import autosar3x.ecuresource.basicelements.Temperature;
import autosar3x.ecuresource.basicelements.TimeRange;
import autosar3x.ecuresource.basicelements.util.BasicelementsValidator;
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
    private EClass supportsSafetyEClass = null;
    private EClass supportsSecurityEClass = null;
    private EClass temperatureEClass = null;
    private EClass timeRangeEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private BasicelementsPackageImpl() {
        super("http://autosar.org/3.2.1/autosar3x/ecur/be", (EFactory)BasicelementsFactory.eINSTANCE);
    }

    public static BasicelementsPackage init() {
        if (isInited) {
            return (BasicelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/be");
        }
        BasicelementsPackageImpl theBasicelementsPackage = (BasicelementsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/ecur/be") instanceof BasicelementsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/3.2.1/autosar3x/ecur/be") : new BasicelementsPackageImpl());
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
        theBasicelementsPackage.createPackageContents();
        theEcuresourcePackage.createPackageContents();
        thePeripheralsPackage.createPackageContents();
        theEcuelectronicsPackage.createPackageContents();
        theProcessingunitPackage.createPackageContents();
        theMemoryPackage.createPackageContents();
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
        theBasicelementsPackage.initializePackageContents();
        theEcuresourcePackage.initializePackageContents();
        thePeripheralsPackage.initializePackageContents();
        theEcuelectronicsPackage.initializePackageContents();
        theProcessingunitPackage.initializePackageContents();
        theMemoryPackage.initializePackageContents();
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
        EValidator.Registry.INSTANCE.put((Object)theBasicelementsPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return BasicelementsValidator.INSTANCE;
            }
        });
        theBasicelementsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/3.2.1/autosar3x/ecur/be", (Object)theBasicelementsPackage);
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
        this.supportsSafetyEClass = this.createEClass(4);
        this.createEReference(this.supportsSafetyEClass, 4);
        this.supportsSecurityEClass = this.createEClass(5);
        this.createEReference(this.supportsSecurityEClass, 4);
        this.temperatureEClass = this.createEClass(6);
        this.createEReference(this.temperatureEClass, 4);
        this.createEAttribute(this.temperatureEClass, 5);
        this.createEAttribute(this.temperatureEClass, 6);
        this.createEAttribute(this.temperatureEClass, 7);
        this.createEAttribute(this.temperatureEClass, 8);
        this.createEAttribute(this.temperatureEClass, 9);
        this.createEAttribute(this.temperatureEClass, 10);
        this.createEAttribute(this.temperatureEClass, 11);
        this.timeRangeEClass = this.createEClass(7);
        this.createEAttribute(this.timeRangeEClass, 4);
        this.createEAttribute(this.timeRangeEClass, 5);
        this.createEAttribute(this.timeRangeEClass, 6);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("basicelements");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/3.2.1/autosar3x/ecur/be");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/i");
        ProcessingunitPackage theProcessingunitPackage = (ProcessingunitPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur/pu");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/gs/cp/pt");
        EcuresourcePackage theEcuresourcePackage = (EcuresourcePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/3.2.1/autosar3x/ecur");
        this.bootTimeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.electricalRangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.errorDetectionCorrectionEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.frequencyRangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.supportsSafetyEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.supportsSecurityEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.temperatureEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.timeRangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
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
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"GUID", "7CEFFD04-D7D6-42fc-B50C-73AE5648EF66", "Created", "Tue Apr 27 12:42:34 CEST 2004", "Modified", "Fri Sep 17 07:49:15 CEST 2004", "Id", "1420490132", "Name", "Basic Elements"});
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"GUID", "16D14B27-7B25-44ab-9FEC-9294EDD101C4", "Created", "Tue May 11 11:29:32 CEST 2004", "Modified", "Mon Jan 31 21:03:57 CET 2005", "Id", "182596795", "Name", "BootTime"});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"GUID", "4DE48098-019E-4448-8517-76EEA9BC5106", "Id", "-320649504", "Name", "coldStartTime"});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"GUID", "7C9A1E64-933C-4289-9EA9-32B99E077386", "Id", "765506913", "Name", "resetTime"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"GUID", "8F85BD23-60EF-416a-AF87-EB1776639A97", "Created", "Fri Jul 09 11:33:50 CEST 2004", "Modified", "Fri Apr 15 20:37:33 CEST 2005", "Id", "-1641862865", "Name", "ElectricalRange"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxCurrent(), source, new String[]{"GUID", "37ED818C-F1FF-47d4-BE85-0DD1B2E3E009", "Id", "213894032", "Name", "maxCurrent"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxVoltage(), source, new String[]{"GUID", "58FDD020-6B02-43bf-8B8E-5D7E968F35B0", "Id", "1829900021", "Name", "maxVoltage"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinCurrent(), source, new String[]{"GUID", "79A83D6E-F513-4f22-9F25-F791E9413DBD", "Id", "-906509781", "Name", "minCurrent"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinVoltage(), source, new String[]{"GUID", "13E4E189-1487-4eb3-8F78-DD3F1E1A0C7D", "Id", "65959748", "Name", "minVoltage"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalCurrent(), source, new String[]{"GUID", "068C11B8-9D02-4083-B43A-1B2A9CD13B4C", "Id", "-1687633839", "Name", "typicalCurrent"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalVoltage(), source, new String[]{"GUID", "004022A8-FBD3-4d4a-8BDC-9B01CFB73CDF", "Id", "433897234", "Name", "typicalVoltage"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"GUID", "A2A5C4AD-1DB4-4547-8A02-B3EFFE8FF634", "Created", "Tue May 11 11:57:56 CEST 2004", "Modified", "Thu Apr 14 08:35:44 CEST 2005", "Id", "-437664937", "Name", "ErrorDetectionCorrection"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_CorrectedBits(), source, new String[]{"GUID", "3B954DC5-48C2-4acd-B28F-684581777E3D", "Id", "1243090778", "Name", "correctedBits"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_DetectedBits(), source, new String[]{"GUID", "3C2CDA2C-7756-4268-9E64-CAA31571C890", "Id", "765842781", "Name", "detectedBits"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_ExtraBits(), source, new String[]{"GUID", "220F66E7-CFBD-4f48-8E31-524DD402A1C2", "Id", "-766017460", "Name", "extraBits"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"GUID", "F659ABBE-73DE-4b14-A2A9-895A4BD36E7C", "Created", "Fri Jul 09 11:43:32 CEST 2004", "Modified", "Fri Apr 15 21:28:20 CEST 2005", "Id", "-93471757", "Name", "FrequencyRange"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"GUID", "8072B279-52E8-4bfa-BA90-79BF9D5D7D23", "Id", "-639275175", "Name", "maxFrequency"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"GUID", "DBEF63B3-FE36-4c16-A8B2-3CB08A81FE87", "Id", "434527160", "Name", "minFrequency"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"GUID", "A1484057-D0DC-4db0-9731-D648F4BFF114", "Id", "1218349222", "Name", "typicalFrequency"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"GUID", "C8DBDCE1-2432-4659-896D-A631D81D5C22", "Created", "Fri Sep 17 07:46:57 CEST 2004", "Modified", "Tue Feb 01 16:26:08 CET 2005", "Id", "1038958232", "Name", "SupportsSafety"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"GUID", "2C141AB3-09E5-4c44-82FA-12AAB26902B6", "Created", "Fri Sep 17 07:47:08 CEST 2004", "Modified", "Tue Feb 01 16:26:08 CET 2005", "Id", "-1225748295", "Name", "SupportsSecurity"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"GUID", "C3C19C2C-782D-4eeb-BB01-A97A0260B886", "Created", "Tue Apr 27 12:48:24 CEST 2004", "Modified", "Fri Apr 15 20:41:33 CEST 2005", "Id", "543787734", "Name", "Temperature"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"GUID", "FEEF780D-BDC9-4cea-BFAA-B65EFCB0D4F4", "Id", "-1318646720", "Name", "needsCooling"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"GUID", "48191A9A-CB09-4adb-B286-BC999B7FBDE2", "Id", "-1809930431", "Name", "needsHeating"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"GUID", "3852330C-64C4-49f6-98CC-E3546387EB82", "Id", "-60553996", "Name", "operationMax"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"GUID", "6862567C-AD2D-47f6-8CD1-4BB944F02C98", "Id", "-1932940385", "Name", "operationMin"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"GUID", "B4B0BA1B-5A93-4cb2-A807-A9A2AC183958", "Id", "-1291315483", "Name", "operationTypical"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"GUID", "1BB8C892-3A21-4647-88A1-3B1D5A4AAB8F", "Id", "145673115", "Name", "storageMax"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"GUID", "570BEF48-5C9A-4566-A9ED-221D802043C0", "Id", "-1120025534", "Name", "storageMin"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"GUID", "94FE5F96-FDAC-4f7e-9DBF-BC0490417A9D", "Created", "Thu Jul 08 18:36:42 CEST 2004", "Modified", "Fri Apr 15 20:42:19 CEST 2005", "Id", "-498240470", "Name", "TimeRange"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Max(), source, new String[]{"GUID", "9498DA7E-A128-4fcf-81BD-81813BAC0012", "Id", "-1027023256", "Name", "max"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Min(), source, new String[]{"GUID", "BC1A4667-429E-4e63-A6CB-3B2EC79454D1", "Id", "377169763", "Name", "min"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Typical(), source, new String[]{"GUID", "6E99AB3A-AE94-4335-92D3-267AB82E02BB", "Id", "1193314377", "Name", "typical"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "BASIC-ELEMENTS", "xml.namePlural", "BASIC-ELEMENTSS"});
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"mmt.qualifiedName", "BootTime", "xml.tags", "mmt.qualifiedName=\"BootTime\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "BOOT-TIME", "xml.namePlural", "BOOT-TIMES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BootTime.coldStartTime\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BootTime.coldStartTime", "pureMM.maxOccurs", "1", "xml.name", "COLD-START-TIME", "xml.namePlural", "COLD-START-TIMES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"BootTime.resetTime\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "BootTime.resetTime", "pureMM.maxOccurs", "1", "xml.name", "RESET-TIME", "xml.namePlural", "RESET-TIMES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"mmt.qualifiedName", "ElectricalRange", "xml.tags", "mmt.qualifiedName=\"ElectricalRange\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ELECTRICAL-RANGE", "xml.namePlural", "ELECTRICAL-RANGES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxCurrent(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ElectricalRange.maxCurrent\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ElectricalRange.maxCurrent", "pureMM.maxOccurs", "1", "xml.name", "MAX-CURRENT", "xml.namePlural", "MAX-CURRENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxVoltage(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ElectricalRange.maxVoltage\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ElectricalRange.maxVoltage", "pureMM.maxOccurs", "1", "xml.name", "MAX-VOLTAGE", "xml.namePlural", "MAX-VOLTAGES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinCurrent(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ElectricalRange.minCurrent\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ElectricalRange.minCurrent", "pureMM.maxOccurs", "1", "xml.name", "MIN-CURRENT", "xml.namePlural", "MIN-CURRENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinVoltage(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ElectricalRange.minVoltage\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ElectricalRange.minVoltage", "pureMM.maxOccurs", "1", "xml.name", "MIN-VOLTAGE", "xml.namePlural", "MIN-VOLTAGES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalCurrent(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ElectricalRange.typicalCurrent\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ElectricalRange.typicalCurrent", "pureMM.maxOccurs", "1", "xml.name", "TYPICAL-CURRENT", "xml.namePlural", "TYPICAL-CURRENTS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalVoltage(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ElectricalRange.typicalVoltage\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "ElectricalRange.typicalVoltage", "pureMM.maxOccurs", "1", "xml.name", "TYPICAL-VOLTAGE", "xml.namePlural", "TYPICAL-VOLTAGES", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"mmt.qualifiedName", "ErrorDetectionCorrection", "xml.tags", "mmt.qualifiedName=\"ErrorDetectionCorrection\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "ERROR-DETECTION-CORRECTION", "xml.namePlural", "ERROR-DETECTION-CORRECTIONS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_CorrectedBits(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ErrorDetectionCorrection.correctedBits\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ErrorDetectionCorrection.correctedBits", "pureMM.maxOccurs", "1", "xml.name", "CORRECTED-BITS", "xml.namePlural", "CORRECTED-BITSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_DetectedBits(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ErrorDetectionCorrection.detectedBits\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ErrorDetectionCorrection.detectedBits", "pureMM.maxOccurs", "1", "xml.name", "DETECTED-BITS", "xml.namePlural", "DETECTED-BITSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_ExtraBits(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"ErrorDetectionCorrection.extraBits\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "ErrorDetectionCorrection.extraBits", "pureMM.maxOccurs", "1", "xml.name", "EXTRA-BITS", "xml.namePlural", "EXTRA-BITSS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"mmt.qualifiedName", "FrequencyRange", "xml.tags", "mmt.qualifiedName=\"FrequencyRange\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "FREQUENCY-RANGE", "xml.namePlural", "FREQUENCY-RANGES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"FrequencyRange.maxFrequency\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "FrequencyRange.maxFrequency", "pureMM.maxOccurs", "1", "xml.name", "MAX-FREQUENCY", "xml.namePlural", "MAX-FREQUENCYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"FrequencyRange.minFrequency\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "FrequencyRange.minFrequency", "pureMM.maxOccurs", "1", "xml.name", "MIN-FREQUENCY", "xml.namePlural", "MIN-FREQUENCYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"FrequencyRange.typicalFrequency\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "FrequencyRange.typicalFrequency", "pureMM.maxOccurs", "1", "xml.name", "TYPICAL-FREQUENCY", "xml.namePlural", "TYPICAL-FREQUENCYS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"mmt.qualifiedName", "SupportsSafety", "xml.tags", "mmt.qualifiedName=\"SupportsSafety\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SUPPORTS-SAFETY", "xml.namePlural", "SUPPORTS-SAFETYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"mmt.qualifiedName", "SupportsSecurity", "xml.tags", "mmt.qualifiedName=\"SupportsSecurity\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "SUPPORTS-SECURITY", "xml.namePlural", "SUPPORTS-SECURITYS", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"mmt.qualifiedName", "Temperature", "xml.tags", "mmt.qualifiedName=\"Temperature\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "TEMPERATURE", "xml.namePlural", "TEMPERATURES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Temperature.needsCooling\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "Temperature.needsCooling", "pureMM.maxOccurs", "1", "xml.name", "NEEDS-COOLING", "xml.namePlural", "NEEDS-COOLINGS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Temperature.needsHeating\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "Temperature.needsHeating", "pureMM.maxOccurs", "1", "xml.name", "NEEDS-HEATING", "xml.namePlural", "NEEDS-HEATINGS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Temperature.operationMax\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "Temperature.operationMax", "pureMM.maxOccurs", "1", "xml.name", "OPERATION-MAX", "xml.namePlural", "OPERATION-MAXS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Temperature.operationMin\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "Temperature.operationMin", "pureMM.maxOccurs", "1", "xml.name", "OPERATION-MIN", "xml.namePlural", "OPERATION-MINS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Temperature.operationTypical\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "Temperature.operationTypical", "pureMM.maxOccurs", "1", "xml.name", "OPERATION-TYPICAL", "xml.namePlural", "OPERATION-TYPICALS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Temperature.storageMax\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "Temperature.storageMax", "pureMM.maxOccurs", "1", "xml.name", "STORAGE-MAX", "xml.namePlural", "STORAGE-MAXS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"Temperature.storageMin\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "Temperature.storageMin", "pureMM.maxOccurs", "1", "xml.name", "STORAGE-MIN", "xml.namePlural", "STORAGE-MINS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"mmt.qualifiedName", "TimeRange", "xml.tags", "mmt.qualifiedName=\"TimeRange\"", "xml.nsPrefix", "AR", "xml.nsUri", "http://autosar.org/3.2.1", "xml.name", "TIME-RANGE", "xml.namePlural", "TIME-RANGES", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Max(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"TimeRange.max\";pureMM.minOccurs=\"1\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "1", "mmt.qualifiedName", "TimeRange.max", "pureMM.maxOccurs", "1", "xml.name", "MAX", "xml.namePlural", "MAXS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Min(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"TimeRange.min\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "TimeRange.min", "pureMM.maxOccurs", "1", "xml.name", "MIN", "xml.namePlural", "MINS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Typical(), source, new String[]{"xml.tags", "mmt.qualifiedName=\"TimeRange.typical\";pureMM.minOccurs=\"0\";pureMM.maxOccurs=\"1\"", "pureMM.minOccurs", "0", "mmt.qualifiedName", "TimeRange.typical", "pureMM.maxOccurs", "1", "xml.name", "TYPICAL", "xml.namePlural", "TYPICALS", "internal-xml-sequenceOffset", "null", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"name", "BOOT-TIME", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"name", "COLD-START-TIME", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"name", "RESET-TIME", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"name", "ELECTRICAL-RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxCurrent(), source, new String[]{"name", "MAX-CURRENT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MaxVoltage(), source, new String[]{"name", "MAX-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinCurrent(), source, new String[]{"name", "MIN-CURRENT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_MinVoltage(), source, new String[]{"name", "MIN-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalCurrent(), source, new String[]{"name", "TYPICAL-CURRENT", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getElectricalRange_TypicalVoltage(), source, new String[]{"name", "TYPICAL-VOLTAGE", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"name", "ERROR-DETECTION-CORRECTION", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_CorrectedBits(), source, new String[]{"name", "CORRECTED-BITS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_DetectedBits(), source, new String[]{"name", "DETECTED-BITS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getErrorDetectionCorrection_ExtraBits(), source, new String[]{"name", "EXTRA-BITS", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"name", "FREQUENCY-RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"name", "MAX-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"name", "MIN-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"name", "TYPICAL-FREQUENCY", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"name", "SUPPORTS-SAFETY", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"name", "SUPPORTS-SECURITY", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"name", "TEMPERATURE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"name", "NEEDS-COOLING", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"name", "NEEDS-HEATING", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"name", "OPERATION-MAX", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"name", "OPERATION-MIN", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"name", "OPERATION-TYPICAL", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"name", "STORAGE-MAX", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"name", "STORAGE-MIN", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"name", "TIME-RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
        this.addAnnotation((ENamedElement)this.getTimeRange_Typical(), source, new String[]{"name", "TYPICAL", "kind", "element", "namespace", "http://autosar.org/3.2.1"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"documentation", "Time information for ECU and PU startup."});
        this.addAnnotation((ENamedElement)this.getBootTime_ColdStartTime(), source, new String[]{"documentation", "Time it takes to come from a completely powered down state to the HWInit state in seconds."});
        this.addAnnotation((ENamedElement)this.getBootTime_ResetTime(), source, new String[]{"documentation", "Time it takes from the reset initiation to the HWInit state in seconds."});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"documentation", "Specifies electrical ranges for different applications within the ECU Resource Template."});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass.getEOperations().get(0), source, new String[]{"documentation", "minCurrent <= typicalCurrent <= maxCurrent"});
        this.addAnnotation((ENamedElement)((EOperation)this.electricalRangeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.electricalRangeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass.getEOperations().get(1), source, new String[]{"documentation", "minVoltage <= typicalVoltage <= maxVoltage "});
        this.addAnnotation((ENamedElement)((EOperation)this.electricalRangeEClass.getEOperations().get(1)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.electricalRangeEClass.getEOperations().get(1)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
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
        this.addAnnotation((ENamedElement)((EOperation)this.frequencyRangeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.frequencyRangeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MaxFrequency(), source, new String[]{"documentation", "Maximum frequency.\r\nUnit: Herz"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_MinFrequency(), source, new String[]{"documentation", "Minimum frequency.\r\nUnit: Herz"});
        this.addAnnotation((ENamedElement)this.getFrequencyRange_TypicalFrequency(), source, new String[]{"documentation", "Typical frequency.\r\nUnit: Herz"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"documentation", "In the current version of the ECU Resource Template the element SupportsSafety is optional. A HW Element uses this element if it provides a safety mechanism, otherwise this element is missing in the description of the HW Element."});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"documentation", "The ECU Resource Template provides the element SupportsSecurity storing the information about the supported security mechanism.\r\nIn the current version of the ECU Resource Template the element SupportsSecurity is optional. A HW Element uses this element if it provides a security mechanism otherwise this element is missing in the description of the HW Element.\r\n"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"documentation", "General element to describe temperature ranges and need for cooling/heating."});
        this.addAnnotation((ENamedElement)this.temperatureEClass.getEOperations().get(0), source, new String[]{"documentation", "operationMin <= operationTypical <= operationMax"});
        this.addAnnotation((ENamedElement)((EOperation)this.temperatureEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.temperatureEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)((EOperation)this.temperatureEClass.getEOperations().get(1)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.temperatureEClass.getEOperations().get(1)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsCooling(), source, new String[]{"documentation", "These attributes describe that there is an active cooling system required for this HW Element."});
        this.addAnnotation((ENamedElement)this.getTemperature_NeedsHeating(), source, new String[]{"documentation", "These attributes describe that there is an active heating system required for this HW Element."});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMax(), source, new String[]{"documentation", "It describes the temperature range (max) in which the HW Element can be operated.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationMin(), source, new String[]{"documentation", "It describes the temperature range (min) in which the HW Element can be operated.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_OperationTypical(), source, new String[]{"documentation", "It describes the temperature range (typical) in which the HW Element can be operated.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMax(), source, new String[]{"documentation", "The storage temperature defines maximum temperature the device is allowed to be stored. The HW Element is not in an operational state.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.getTemperature_StorageMin(), source, new String[]{"documentation", "The storage temperature defines minimum temperature the device is allowed to be stored. The HW Element is not in an operational state.\r\nUnit: Kelvin (K)"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass.getEOperations().get(0), source, new String[]{"documentation", "min <= typical <= max"});
        this.addAnnotation((ENamedElement)((EOperation)this.timeRangeEClass.getEOperations().get(0)).getEParameters().get(0), source, new String[]{"documentation", "The chain of diagnostics to which problems are to be appended."});
        this.addAnnotation((ENamedElement)((EOperation)this.timeRangeEClass.getEOperations().get(0)).getEParameters().get(1), source, new String[]{"documentation", "The cache of context-specific information."});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.bootTimeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.electricalRangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.errorDetectionCorrectionEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.frequencyRangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.supportsSafetyEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.supportsSecurityEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.temperatureEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.timeRangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

