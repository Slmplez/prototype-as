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
package autosar21.ecucdescription.impl;

import autosar21.bswmodule.BswmodulePackage;
import autosar21.bswmodule.impl.BswmodulePackageImpl;
import autosar21.ecucdescription.BooleanValue;
import autosar21.ecucdescription.ConfigReferenceValue;
import autosar21.ecucdescription.Container;
import autosar21.ecucdescription.EcuConfiguration;
import autosar21.ecucdescription.EcucElement;
import autosar21.ecucdescription.EcucdescriptionFactory;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucdescription.EnumerationValue;
import autosar21.ecucdescription.FloatValue;
import autosar21.ecucdescription.FunctionNameValue;
import autosar21.ecucdescription.InstanceReferenceValue;
import autosar21.ecucdescription.IntegerValue;
import autosar21.ecucdescription.LinkerSymbolValue;
import autosar21.ecucdescription.ModuleConfiguration;
import autosar21.ecucdescription.ParameterValue;
import autosar21.ecucdescription.ReferenceValue;
import autosar21.ecucdescription.StringValue;
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

public class EcucdescriptionPackageImpl
extends EPackageImpl
implements EcucdescriptionPackage {
    private EClass booleanValueEClass = null;
    private EClass parameterValueEClass = null;
    private EClass configReferenceValueEClass = null;
    private EClass containerEClass = null;
    private EClass ecucElementEClass = null;
    private EClass ecuConfigurationEClass = null;
    private EClass moduleConfigurationEClass = null;
    private EClass enumerationValueEClass = null;
    private EClass floatValueEClass = null;
    private EClass functionNameValueEClass = null;
    private EClass linkerSymbolValueEClass = null;
    private EClass stringValueEClass = null;
    private EClass instanceReferenceValueEClass = null;
    private EClass integerValueEClass = null;
    private EClass referenceValueEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private EcucdescriptionPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/ecucd", (EFactory)EcucdescriptionFactory.eINSTANCE);
    }

    public static EcucdescriptionPackage init() {
        if (isInited) {
            return (EcucdescriptionPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd");
        }
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/ecucd") : new EcucdescriptionPackageImpl());
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
        autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_16 = (autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") instanceof autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") : autosar21.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        theEcucdescriptionPackage.createPackageContents();
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
        theInstancerefPackage_16.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theEcucdescriptionPackage.initializePackageContents();
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
        theInstancerefPackage_16.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theEcucdescriptionPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/ecucd", (Object)theEcucdescriptionPackage);
        return theEcucdescriptionPackage;
    }

    public EClass getBooleanValue() {
        return this.booleanValueEClass;
    }

    public EAttribute getBooleanValue_Value() {
        return (EAttribute)this.booleanValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getParameterValue() {
        return this.parameterValueEClass;
    }

    public EReference getParameterValue_Container() {
        return (EReference)this.parameterValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getParameterValue_Definition() {
        return (EReference)this.parameterValueEClass.getEStructuralFeatures().get(1);
    }

    public EClass getConfigReferenceValue() {
        return this.configReferenceValueEClass;
    }

    public EReference getConfigReferenceValue_Container() {
        return (EReference)this.configReferenceValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getConfigReferenceValue_Definition() {
        return (EReference)this.configReferenceValueEClass.getEStructuralFeatures().get(1);
    }

    public EClass getContainer() {
        return this.containerEClass;
    }

    public EReference getContainer_Definition() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(0);
    }

    public EReference getContainer_ParameterValues() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(1);
    }

    public EReference getContainer_ReferenceValues() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(2);
    }

    public EReference getContainer_SubContainers() {
        return (EReference)this.containerEClass.getEStructuralFeatures().get(3);
    }

    public EClass getEcucElement() {
        return this.ecucElementEClass;
    }

    public EClass getEcuConfiguration() {
        return this.ecuConfigurationEClass;
    }

    public EReference getEcuConfiguration_EcuExtract() {
        return (EReference)this.ecuConfigurationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getEcuConfiguration_EcuSwComposition() {
        return (EReference)this.ecuConfigurationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getEcuConfiguration_Modules() {
        return (EReference)this.ecuConfigurationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getModuleConfiguration() {
        return this.moduleConfigurationEClass;
    }

    public EReference getModuleConfiguration_Definition() {
        return (EReference)this.moduleConfigurationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getModuleConfiguration_ModuleDescription() {
        return (EReference)this.moduleConfigurationEClass.getEStructuralFeatures().get(1);
    }

    public EReference getModuleConfiguration_Containers() {
        return (EReference)this.moduleConfigurationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getEnumerationValue() {
        return this.enumerationValueEClass;
    }

    public EAttribute getEnumerationValue_Value() {
        return (EAttribute)this.enumerationValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFloatValue() {
        return this.floatValueEClass;
    }

    public EAttribute getFloatValue_Value() {
        return (EAttribute)this.floatValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getFunctionNameValue() {
        return this.functionNameValueEClass;
    }

    public EClass getLinkerSymbolValue() {
        return this.linkerSymbolValueEClass;
    }

    public EClass getStringValue() {
        return this.stringValueEClass;
    }

    public EAttribute getStringValue_Value() {
        return (EAttribute)this.stringValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getInstanceReferenceValue() {
        return this.instanceReferenceValueEClass;
    }

    public EReference getInstanceReferenceValue_Value() {
        return (EReference)this.instanceReferenceValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getIntegerValue() {
        return this.integerValueEClass;
    }

    public EAttribute getIntegerValue_Value() {
        return (EAttribute)this.integerValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getReferenceValue() {
        return this.referenceValueEClass;
    }

    public EReference getReferenceValue_Value() {
        return (EReference)this.referenceValueEClass.getEStructuralFeatures().get(0);
    }

    public EcucdescriptionFactory getEcucdescriptionFactory() {
        return (EcucdescriptionFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.booleanValueEClass = this.createEClass(0);
        this.createEAttribute(this.booleanValueEClass, 7);
        this.parameterValueEClass = this.createEClass(1);
        this.createEReference(this.parameterValueEClass, 4);
        this.createEReference(this.parameterValueEClass, 5);
        this.configReferenceValueEClass = this.createEClass(2);
        this.createEReference(this.configReferenceValueEClass, 4);
        this.createEReference(this.configReferenceValueEClass, 5);
        this.containerEClass = this.createEClass(3);
        this.createEReference(this.containerEClass, 16);
        this.createEReference(this.containerEClass, 17);
        this.createEReference(this.containerEClass, 18);
        this.createEReference(this.containerEClass, 19);
        this.ecucElementEClass = this.createEClass(4);
        this.ecuConfigurationEClass = this.createEClass(5);
        this.createEReference(this.ecuConfigurationEClass, 18);
        this.createEReference(this.ecuConfigurationEClass, 19);
        this.createEReference(this.ecuConfigurationEClass, 20);
        this.moduleConfigurationEClass = this.createEClass(6);
        this.createEReference(this.moduleConfigurationEClass, 18);
        this.createEReference(this.moduleConfigurationEClass, 19);
        this.createEReference(this.moduleConfigurationEClass, 20);
        this.enumerationValueEClass = this.createEClass(7);
        this.createEAttribute(this.enumerationValueEClass, 7);
        this.floatValueEClass = this.createEClass(8);
        this.createEAttribute(this.floatValueEClass, 7);
        this.functionNameValueEClass = this.createEClass(9);
        this.linkerSymbolValueEClass = this.createEClass(10);
        this.stringValueEClass = this.createEClass(11);
        this.createEAttribute(this.stringValueEClass, 7);
        this.instanceReferenceValueEClass = this.createEClass(12);
        this.createEReference(this.instanceReferenceValueEClass, 6);
        this.integerValueEClass = this.createEClass(13);
        this.createEAttribute(this.integerValueEClass, 7);
        this.referenceValueEClass = this.createEClass(14);
        this.createEReference(this.referenceValueEClass, 6);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ecucdescription");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/ecucd");
        autosar21.ecucdescription.instanceref.InstancerefPackage theInstancerefPackage_16 = (autosar21.ecucdescription.instanceref.InstancerefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r");
        GecucdescriptionPackage theGecucdescriptionPackage = (GecucdescriptionPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/ed");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        EcucparameterdefPackage theEcucparameterdefPackage = (EcucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        SystemPackage theSystemPackage = (SystemPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s");
        ServicesPackage theServicesPackage = (ServicesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/s");
        BswmodulePackage theBswmodulePackage = (BswmodulePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/bm");
        this.getESubpackages().add((Object)theInstancerefPackage_16);
        this.booleanValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.booleanValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGBooleanValue());
        this.parameterValueEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.parameterValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGParameterValue());
        this.configReferenceValueEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.configReferenceValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGConfigReferenceValue());
        this.containerEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.containerEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGContainer());
        this.ecucElementEClass.getESuperTypes().add((Object)theInfrastructurePackage.getSplitableElement());
        this.ecuConfigurationEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.moduleConfigurationEClass.getESuperTypes().add((Object)this.getEcucElement());
        this.moduleConfigurationEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGModuleConfiguration());
        this.enumerationValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.enumerationValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGEnumerationValue());
        this.floatValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.floatValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGFloatValue());
        this.functionNameValueEClass.getESuperTypes().add((Object)this.getLinkerSymbolValue());
        this.functionNameValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGFunctionNameValue());
        this.linkerSymbolValueEClass.getESuperTypes().add((Object)this.getStringValue());
        this.linkerSymbolValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGLinkerSymbolValue());
        this.stringValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.stringValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGStringValue());
        this.instanceReferenceValueEClass.getESuperTypes().add((Object)this.getConfigReferenceValue());
        this.instanceReferenceValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGInstanceReferenceValue());
        this.integerValueEClass.getESuperTypes().add((Object)this.getParameterValue());
        this.integerValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGIntegerValue());
        this.referenceValueEClass.getESuperTypes().add((Object)this.getConfigReferenceValue());
        this.referenceValueEClass.getESuperTypes().add((Object)theGecucdescriptionPackage.getGReferenceValue());
        this.initEClass(this.booleanValueEClass, BooleanValue.class, "BooleanValue", false, false, true);
        this.initEAttribute(this.getBooleanValue_Value(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "value", "false", 0, 1, BooleanValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.parameterValueEClass, ParameterValue.class, "ParameterValue", true, false, true);
        this.initEReference(this.getParameterValue_Container(), (EClassifier)this.getContainer(), this.getContainer_ParameterValues(), "container", null, 0, 1, ParameterValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getParameterValue_Definition(), (EClassifier)theEcucparameterdefPackage.getConfigParameter(), null, "definition", null, 0, 1, ParameterValue.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.configReferenceValueEClass, ConfigReferenceValue.class, "ConfigReferenceValue", true, false, true);
        this.initEReference(this.getConfigReferenceValue_Container(), (EClassifier)this.getContainer(), this.getContainer_ReferenceValues(), "container", null, 0, 1, ConfigReferenceValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getConfigReferenceValue_Definition(), (EClassifier)theEcucparameterdefPackage.getConfigReference(), null, "definition", null, 0, 1, ConfigReferenceValue.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.containerEClass, Container.class, "Container", false, false, true);
        this.initEReference(this.getContainer_Definition(), (EClassifier)theEcucparameterdefPackage.getParamConfContainerDef(), null, "definition", null, 0, 1, Container.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getContainer_ParameterValues(), (EClassifier)this.getParameterValue(), this.getParameterValue_Container(), "parameterValues", null, 0, -1, Container.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getContainer_ReferenceValues(), (EClassifier)this.getConfigReferenceValue(), this.getConfigReferenceValue_Container(), "referenceValues", null, 0, -1, Container.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getContainer_SubContainers(), (EClassifier)this.getContainer(), null, "subContainers", null, 0, -1, Container.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.ecucElementEClass, EcucElement.class, "EcucElement", false, false, true);
        this.initEClass(this.ecuConfigurationEClass, EcuConfiguration.class, "EcuConfiguration", false, false, true);
        this.initEReference(this.getEcuConfiguration_EcuExtract(), (EClassifier)theSystemPackage.getSystem(), null, "ecuExtract", null, 0, 1, EcuConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getEcuConfiguration_EcuSwComposition(), (EClassifier)theServicesPackage.getEcuSwComposition(), null, "ecuSwComposition", null, 0, 1, EcuConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getEcuConfiguration_Modules(), (EClassifier)this.getModuleConfiguration(), null, "modules", null, 0, -1, EcuConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEClass(this.moduleConfigurationEClass, ModuleConfiguration.class, "ModuleConfiguration", false, false, true);
        this.initEReference(this.getModuleConfiguration_Definition(), (EClassifier)theEcucparameterdefPackage.getModuleDef(), null, "definition", null, 0, 1, ModuleConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getModuleConfiguration_ModuleDescription(), (EClassifier)theBswmodulePackage.getBswModuleDescription(), null, "moduleDescription", null, 0, 1, ModuleConfiguration.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getModuleConfiguration_Containers(), (EClassifier)this.getContainer(), null, "containers", null, 0, -1, ModuleConfiguration.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.enumerationValueEClass, EnumerationValue.class, "EnumerationValue", false, false, true);
        this.initEAttribute(this.getEnumerationValue_Value(), (EClassifier)thePrimitivetypesPackage.getString(), "value", "", 0, 1, EnumerationValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.floatValueEClass, FloatValue.class, "FloatValue", false, false, true);
        this.initEAttribute(this.getFloatValue_Value(), (EClassifier)thePrimitivetypesPackage.getFloat(), "value", "0.0", 0, 1, FloatValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.functionNameValueEClass, FunctionNameValue.class, "FunctionNameValue", false, false, true);
        this.initEClass(this.linkerSymbolValueEClass, LinkerSymbolValue.class, "LinkerSymbolValue", false, false, true);
        this.initEClass(this.stringValueEClass, StringValue.class, "StringValue", false, false, true);
        this.initEAttribute(this.getStringValue_Value(), (EClassifier)thePrimitivetypesPackage.getString(), "value", "", 0, 1, StringValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.instanceReferenceValueEClass, InstanceReferenceValue.class, "InstanceReferenceValue", false, false, true);
        this.initEReference(this.getInstanceReferenceValue_Value(), (EClassifier)theInstancerefPackage_16.getInstanceReferenceValueValue(), theInstancerefPackage_16.getInstanceReferenceValueValue_InstanceReferenceValue(), "value", null, 0, 1, InstanceReferenceValue.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.integerValueEClass, IntegerValue.class, "IntegerValue", false, false, true);
        this.initEAttribute(this.getIntegerValue_Value(), (EClassifier)thePrimitivetypesPackage.getUnlimitedNatural(), "value", "0", 0, 1, IntegerValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.referenceValueEClass, ReferenceValue.class, "ReferenceValue", false, false, true);
        this.initEReference(this.getReferenceValue_Value(), (EClassifier)theIdentifiablePackage.getIdentifiable(), null, "value", null, 0, 1, ReferenceValue.class, false, false, true, false, true, false, true, false, true);
        this.createResource("http://autosar.org/2.1.5/autosar21/ecucd");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ParameterValueAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
        this.createTaggedValuesOfGeneralization_SplitableElementAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_EcucElementAnnotations();
        this.createTaggedValuesOfGeneralization_LinkerSymbolValueAnnotations();
        this.createTaggedValuesOfGeneralization_StringValueAnnotations();
        this.createTaggedValuesOfGeneralization_ConfigReferenceValueAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ECUCDescriptionTemplate", "GUID", "{9EE87A32-4FE7-4cd4-9E77-35F12CFB5B2E}", "Id", "-1100080070"});
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"Name", "BooleanValue", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Created", "Wed Apr 20 19:39:06 CEST 2005", "GUID", "{675C1621-8A23-479b-98FF-E116FD98C6C8}", "Id", "-891725214"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"Name", "value", "GUID", "{FFBC990B-1B26-4a4b-B389-EEF4D6825F84}", "Id", "2015359969"});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"Name", "ParameterValue", "Modified", "Thu Feb 16 13:35:10 CET 2006", "Created", "Thu Apr 07 10:47:31 CEST 2005", "GUID", "{E13D4458-AAFB-4af3-B576-FA65897344D0}", "Id", "1709039292"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"Name", "ConfigReferenceValue", "Modified", "Fri Dec 09 11:54:55 CET 2005", "Created", "Mon Dec 05 13:56:24 CET 2005", "GUID", "{85D2B484-BFA3-4738-B039-558B3FC6AC5F}", "Id", "-752509086"});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"Name", "Container", "Modified", "Thu Feb 16 13:35:10 CET 2006", "Created", "Thu Apr 07 10:52:20 CEST 2005", "GUID", "{A5E5B521-FF5F-4b09-9E42-FE5F1F44C0A6}", "Id", "1066185193"});
        this.addAnnotation((ENamedElement)this.ecucElementEClass, source, new String[]{"Name", "EcucElement", "Modified", "Fri Sep 29 10:10:16 CEST 2006", "Created", "Fri Sep 29 10:08:36 CEST 2006", "GUID", "{8A2C44A9-820E-4d20-8B27-D0C21ED8819D}", "Id", "804910934"});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"Name", "EcuConfiguration", "Modified", "Thu Mar 30 09:23:45 CEST 2006", "Created", "Wed Aug 03 09:40:59 CEST 2005", "GUID", "{AEE5EB74-A1CD-480c-ADF3-1F0BC75327F7}", "Id", "1123054859"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"Name", "ModuleConfiguration", "Modified", "Thu Mar 30 09:26:03 CEST 2006", "Created", "Thu Nov 03 18:13:33 CET 2005", "GUID", "{961469FE-847E-4168-806D-992C874593D5}", "Id", "1131038013"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"Name", "EnumerationValue", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Created", "Tue Jun 21 08:25:43 CEST 2005", "GUID", "{DFE25F7F-1977-4aab-81B7-E019FBB248BF}", "Id", "1119335143"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"Name", "value", "GUID", "{0837F140-ED32-4346-9917-A6D9FE4656AA}", "Id", "2109837165"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"Name", "FloatValue", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Created", "Wed Apr 20 19:38:39 CEST 2005", "GUID", "{3892CC3A-4146-45cc-A3D0-8DE2A2AEC04C}", "Id", "1196072694"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"Name", "value", "GUID", "{379E00BD-82E8-4bb8-B39D-3982F2D8650B}", "Id", "1922545172"});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"Name", "FunctionNameValue", "Modified", "Thu Aug 10 08:59:48 CEST 2006", "Created", "Wed Jun 22 13:39:23 CEST 2005", "GUID", "{3BDE35B9-C188-4b63-81A2-A9E7B36ACC3F}", "Id", "1119440363"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"Name", "LinkerSymbolValue", "Modified", "Thu Aug 10 09:00:16 CEST 2006", "Created", "Wed Jun 22 13:39:23 CEST 2005", "GUID", "{7883D532-2E89-4acb-B546-AE3CE6CCC413}", "Id", "800784029"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"Name", "StringValue", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Created", "Wed Apr 20 19:39:29 CEST 2005", "GUID", "{B358108A-9B24-45be-A59C-21EBAB3C3F87}", "Id", "713711863"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"Name", "value", "GUID", "{47B716A5-E999-41bd-9510-52A408C22149}", "Id", "-2107700870"});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"Name", "InstanceReferenceValue", "Modified", "Fri Dec 09 11:54:55 CET 2005", "Created", "Mon Dec 05 13:57:41 CET 2005", "GUID", "{4A4DA7D2-C47F-4769-8116-851BAF7011EF}", "Id", "190250209"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"Name", "IntegerValue", "Modified", "Tue Dec 13 21:58:23 CET 2005", "Created", "Thu Apr 07 10:48:38 CEST 2005", "GUID", "{E1663DB1-FD90-43f7-AEF7-4154DDB790B0}", "Id", "1092423437"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"Name", "value", "GUID", "{C22DA128-D86A-48e2-B768-6C2BB705C59A}", "Id", "-807316662"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"Name", "ReferenceValue", "Modified", "Fri Dec 09 11:54:55 CET 2005", "Created", "Thu Apr 21 10:27:37 CEST 2005", "GUID", "{01A0E8C5-EB68-4788-991B-7ABF14342D0C}", "Id", "-1703616660"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "ECUC-DESCRIPTION-TEMPLATE", "xml.namePlural", "ECUC-DESCRIPTION-TEMPLATES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"xml.name", "BOOLEAN-VALUE", "xml.namePlural", "BOOLEAN-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"xml.name", "PARAMETER-VALUE", "xml.namePlural", "PARAMETER-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getParameterValue_Definition(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"-10\"", "xml.sequenceOffset", "0", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"xml.name", "CONFIG-REFERENCE-VALUE", "xml.namePlural", "CONFIG-REFERENCE-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getConfigReferenceValue_Definition(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"-10\"", "xml.sequenceOffset", "0", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"xml.name", "CONTAINER", "xml.namePlural", "CONTAINERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_Definition(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"-10\"", "xml.sequenceOffset", "0", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_ParameterValues(), source, new String[]{"xml.name", "PARAMETER-VALUE", "xml.namePlural", "PARAMETER-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_ReferenceValues(), source, new String[]{"xml.name", "REFERENCE-VALUE", "xml.namePlural", "REFERENCE-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getContainer_SubContainers(), source, new String[]{"xml.name", "SUB-CONTAINER", "xml.namePlural", "SUB-CONTAINERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.ecucElementEClass, source, new String[]{"xml.name", "ECUC-ELEMENT", "xml.namePlural", "ECUC-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"xml.name", "ECU-CONFIGURATION", "xml.namePlural", "ECU-CONFIGURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuExtract(), source, new String[]{"xml.name", "ECU-EXTRACT-REF", "xml.namePlural", "ECU-EXTRACT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuSwComposition(), source, new String[]{"xml.name", "ECU-SW-COMPOSITION-REF", "xml.namePlural", "ECU-SW-COMPOSITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_Modules(), source, new String[]{"xml.name", "MODULE-REF", "xml.namePlural", "MODULE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"xml.name", "MODULE-CONFIGURATION", "xml.namePlural", "MODULE-CONFIGURATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Definition(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"-10\"", "xml.sequenceOffset", "0", "xml.name", "DEFINITION-REF", "xml.namePlural", "DEFINITION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ModuleDescription(), source, new String[]{"xml.sequenceOffset", "1", "xml.name", "MODULE-DESCRIPTION-REF", "xml.namePlural", "MODULE-DESCRIPTION-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Containers(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10\"", "xml.sequenceOffset", "2", "xml.name", "CONTAINER", "xml.namePlural", "CONTAINERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"xml.name", "ENUMERATION-VALUE", "xml.namePlural", "ENUMERATION-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"xml.name", "FLOAT-VALUE", "xml.namePlural", "FLOAT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"xml.name", "FUNCTION-NAME-VALUE", "xml.namePlural", "FUNCTION-NAME-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"xml.name", "LINKER-SYMBOL-VALUE", "xml.namePlural", "LINKER-SYMBOL-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"xml.name", "STRING-VALUE", "xml.namePlural", "STRING-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"xml.name", "INSTANCE-REFERENCE-VALUE", "xml.namePlural", "INSTANCE-REFERENCE-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceValue_Value(), source, new String[]{"xml.name", "VALUE-IREF", "xml.namePlural", "VALUE-IREFS", "xml.roleElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"xml.name", "INTEGER-VALUE", "xml.namePlural", "INTEGER-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"xml.name", "REFERENCE-VALUE", "xml.namePlural", "REFERENCE-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getReferenceValue_Value(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "VALUE-REF", "xml.namePlural", "VALUE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"name", "BOOLEAN-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"name", "PARAMETER-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getParameterValue_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"name", "CONFIG-REFERENCE-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getConfigReferenceValue_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"name", "CONTAINER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getContainer_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getContainer_ParameterValues(), source, new String[]{"name", "PARAMETER-VALUES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getContainer_ReferenceValues(), source, new String[]{"name", "REFERENCE-VALUES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getContainer_SubContainers(), source, new String[]{"name", "SUB-CONTAINERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ecucElementEClass, source, new String[]{"name", "ECUC-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"name", "ECU-CONFIGURATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuExtract(), source, new String[]{"name", "ECU-EXTRACT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuSwComposition(), source, new String[]{"name", "ECU-SW-COMPOSITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_Modules(), source, new String[]{"name", "MODULE-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"name", "MODULE-CONFIGURATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Definition(), source, new String[]{"name", "DEFINITION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ModuleDescription(), source, new String[]{"name", "MODULE-DESCRIPTION-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Containers(), source, new String[]{"name", "CONTAINERS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"name", "ENUMERATION-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"name", "FLOAT-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"name", "FUNCTION-NAME-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"name", "LINKER-SYMBOL-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"name", "STRING-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"name", "INSTANCE-REFERENCE-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInstanceReferenceValue_Value(), source, new String[]{"name", "VALUE-IREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"name", "INTEGER-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"name", "VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"name", "REFERENCE-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getReferenceValue_Value(), source, new String[]{"name", "VALUE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type BooleanParamDef"});
        this.addAnnotation((ENamedElement)this.getBooleanValue_Value(), source, new String[]{"documentation", "Stores the value of the Boolean parameter."});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"documentation", "Common class to all types of configuration values"});
        this.addAnnotation((ENamedElement)this.getParameterValue_Definition(), source, new String[]{"documentation", "Reference to the definition of this ParameterValue subclasses in the ECU Configuration Parameter Definition."});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"documentation", "Abstract class to be used as common parent for all reference values in the ECU Configuration Description."});
        this.addAnnotation((ENamedElement)this.getConfigReferenceValue_Definition(), source, new String[]{"documentation", "Reference to the definition of this ConfigReferenceValue subclasses in the ECU Configuration Parameter Definition."});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"documentation", "Represents a Container definition in the ECU Configuration Description."});
        this.addAnnotation((ENamedElement)this.getContainer_Definition(), source, new String[]{"documentation", "Reference to the definition of this Container in the ECU Configuration Parameter Definition."});
        this.addAnnotation((ENamedElement)this.getContainer_ParameterValues(), source, new String[]{"documentation", "Aggregates all ECU Configuration Values within this Container."});
        this.addAnnotation((ENamedElement)this.getContainer_ReferenceValues(), source, new String[]{"documentation", "Aggregates all References with this container."});
        this.addAnnotation((ENamedElement)this.getContainer_SubContainers(), source, new String[]{"documentation", "Aggregates all sub-containers within this container."});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"documentation", "This represents the anchor point of the ECU configuration description."});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_EcuExtract(), source, new String[]{"documentation", "Represents the extract of the System Configuration that is relevant for the ECU configured with that ECU Configuration Description."});
        this.addAnnotation((ENamedElement)this.getEcuConfiguration_Modules(), source, new String[]{"documentation", "References to the configuration of individual software modules that are present on this ECU."});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"documentation", "Head of the configuration of one Module. A Module can be a BSW module as well as the RTE and ECU Infrastructure.\r\n\r\nAs part of tthe BSW module description, the ModuleConfiguration has two different roles:\r\n\r\nThe recommendedConfiguration contains parameter values recommended by the BSW module vendor. \r\n\r\nThe preconfiguredConfiguration contains values for those parameters which are fixed by the implementation and cannot be changed.\r\n\r\nThese two ModuleConfigurations are used when the base ModuleConfiguration (as part of the base ECU configuration) is created to fill parameters with initial values."});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Definition(), source, new String[]{"documentation", "Reference to the definition of this ModuleConfiguration.\r\nTypically, this is a vendor specific module configuration."});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_ModuleDescription(), source, new String[]{"documentation", "Referencing the BSW module description, which this ModuleConfiguration is configuring. This is optional because the ModuleConfiguration is also used to configure the ECU infrastructure (memory map) or Application SW-Cs."});
        this.addAnnotation((ENamedElement)this.getModuleConfiguration_Containers(), source, new String[]{"documentation", "Aggregates all containers that belong to this module configuration."});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type EnumerationParamDef"});
        this.addAnnotation((ENamedElement)this.getEnumerationValue_Value(), source, new String[]{"documentation", "Stores the chosen literal."});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type FloatParamDef"});
        this.addAnnotation((ENamedElement)this.getFloatValue_Value(), source, new String[]{"documentation", "Stores the value of the Float parameter."});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type FunctionNameDef"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type LinkerSymbolDef"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type StringParamDef"});
        this.addAnnotation((ENamedElement)this.getStringValue_Value(), source, new String[]{"documentation", "Stores the value of the String parameter."});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"documentation", "Representing a configuration value of definition type IntegerParamDef"});
        this.addAnnotation((ENamedElement)this.getIntegerValue_Value(), source, new String[]{"documentation", "Stores the value of the Integer parameter."});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"documentation", "Used to represent a configuration value that has a parameter definition of type ConfigReference (used for all of its specializations excluding InstanceReferenceDef)."});
    }

    protected void createTaggedValuesOfGeneralization_ParameterValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_ParameterValue";
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"Name", "", "GUID", "{5F3DB16F-F123-462d-A3BA-E21ACB701EFA}", "Id", "637142158", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"Name", "", "GUID", "{D970E64A-4036-47bd-9A55-0439769F73BB}", "Id", "2082612266", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"Name", "", "GUID", "{238D2F88-8406-4a8f-B299-7E2B1B4E5152}", "Id", "-1824458363", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"Name", "", "GUID", "{F8F26717-196D-47e8-A1E5-7B5606DEE28F}", "Id", "-910670221", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"Name", "", "GUID", "{662B40D1-06E9-437d-84BF-46303D4337A2}", "Id", "-353915560", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.booleanValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.ecucElementEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.enumerationValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.floatValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.stringValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.integerValueEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.parameterValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.configReferenceValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.containerEClass, source, new String[]{"Name", "", "GUID", "{D16B3AC0-84F7-4b9c-A2FB-AC4491B395CA}", "Id", "-821092084", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_SplitableElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_SplitableElement";
        this.addAnnotation((ENamedElement)this.ecucElementEClass, source, new String[]{"Name", "", "GUID", "{7823D044-D331-4372-8975-04B6A0730A4D}", "Id", "-1729403455", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.ecuConfigurationEClass, source, new String[]{"Name", "", "GUID", "{41E003BE-F044-4499-9450-4245F1907CA6}", "Id", "-950842168", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_EcucElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_EcucElement";
        this.addAnnotation((ENamedElement)this.moduleConfigurationEClass, source, new String[]{"Name", "", "GUID", "{B96BED8C-F39C-42e6-A513-D61E8F1DD55C}", "Id", "-646412904", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_LinkerSymbolValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_LinkerSymbolValue";
        this.addAnnotation((ENamedElement)this.functionNameValueEClass, source, new String[]{"Name", "", "GUID", "{F75C6DD6-7218-4485-9A26-8B918EA92453}", "Id", "-1250151919", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_StringValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_StringValue";
        this.addAnnotation((ENamedElement)this.linkerSymbolValueEClass, source, new String[]{"Name", "", "GUID", "{7B33BCA9-ADA1-42d6-8370-94259A043A74}", "Id", "1381751315", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ConfigReferenceValueAnnotations() {
        String source = "TaggedValuesOfGeneralization_ConfigReferenceValue";
        this.addAnnotation((ENamedElement)this.instanceReferenceValueEClass, source, new String[]{"Name", "", "GUID", "{48FF0EF7-8993-4793-83CD-67F6FACB7C2C}", "Id", "426349164", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.referenceValueEClass, source, new String[]{"Name", "", "GUID", "{5B200526-05ED-475a-9447-32434FD95DCB}", "Id", "-1447888299", "xml.sequenceOffset", "0"});
    }
}

