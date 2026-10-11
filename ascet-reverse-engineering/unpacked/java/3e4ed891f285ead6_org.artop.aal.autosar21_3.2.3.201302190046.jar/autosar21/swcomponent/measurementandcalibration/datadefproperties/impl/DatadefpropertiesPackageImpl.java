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
package autosar21.swcomponent.measurementandcalibration.datadefproperties.impl;

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
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesFactory;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwArraysize;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwBitRepresentation;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwCalibrationAccessEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwComparisonVariables;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDefProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependency;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwDataDependencyArgs;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwGenericAxisParamValue;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwImplPolicyEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwPointer;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwSemaphore;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwTextProps;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableAccessImplPolicyEnum;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.SwVariableRef;
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

public class DatadefpropertiesPackageImpl
extends EPackageImpl
implements DatadefpropertiesPackage {
    private EClass swArraysizeEClass = null;
    private EClass swBitRepresentationEClass = null;
    private EClass swComparisonVariablesEClass = null;
    private EClass swGenericAxisParamValueEClass = null;
    private EClass swDataDependencyEClass = null;
    private EClass swDataDependencyArgsEClass = null;
    private EClass swPointerEClass = null;
    private EClass swSemaphoreEClass = null;
    private EClass swTextPropsEClass = null;
    private EClass swVariableRefEClass = null;
    private EClass swDataDefPropsEClass = null;
    private EEnum swCalibrationAccessEnumEEnum = null;
    private EEnum swImplPolicyEnumEEnum = null;
    private EEnum swVariableAccessImplPolicyEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private DatadefpropertiesPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/mac/ddp", (EFactory)DatadefpropertiesFactory.eINSTANCE);
    }

    public static DatadefpropertiesPackage init() {
        if (isInited) {
            return (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ddp");
        }
        DatadefpropertiesPackageImpl theDatadefpropertiesPackage = (DatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/ddp") instanceof DatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/ddp") : new DatadefpropertiesPackageImpl());
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
        theDatadefpropertiesPackage.createPackageContents();
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
        theDatadefpropertiesPackage.initializePackageContents();
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
        theDatadefpropertiesPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/mac/ddp", (Object)theDatadefpropertiesPackage);
        return theDatadefpropertiesPackage;
    }

    public EClass getSwArraysize() {
        return this.swArraysizeEClass;
    }

    public EReference getSwArraysize_Vfs() {
        return (EReference)this.swArraysizeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwArraysize_Vs() {
        return (EAttribute)this.swArraysizeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwBitRepresentation() {
        return this.swBitRepresentationEClass;
    }

    public EReference getSwBitRepresentation_SwDataDefProps() {
        return (EReference)this.swBitRepresentationEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwBitRepresentation_BitPosition() {
        return (EAttribute)this.swBitRepresentationEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwBitRepresentation_NumberOfBits() {
        return (EAttribute)this.swBitRepresentationEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwComparisonVariables() {
        return this.swComparisonVariablesEClass;
    }

    public EReference getSwComparisonVariables_SwVariableRefs() {
        return (EReference)this.swComparisonVariablesEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwGenericAxisParamValue() {
        return this.swGenericAxisParamValueEClass;
    }

    public EReference getSwGenericAxisParamValue_SwGenericAxisParam() {
        return (EReference)this.swGenericAxisParamValueEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwGenericAxisParamValue_Vfs() {
        return (EReference)this.swGenericAxisParamValueEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwGenericAxisParamValue_Vs() {
        return (EAttribute)this.swGenericAxisParamValueEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwDataDependency() {
        return this.swDataDependencyEClass;
    }

    public EReference getSwDataDependency_SwDataDefProps() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getSwDataDependency_SwDataDependencyFormula() {
        return (EAttribute)this.swDataDependencyEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDependency_SwDataDependencyArgs() {
        return (EReference)this.swDataDependencyEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwDataDependencyArgs() {
        return this.swDataDependencyArgsEClass;
    }

    public EReference getSwDataDependencyArgs_SwDataDependency() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDependencyArgs_SwCalprms() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDependencyArgs_SwVariableRefs() {
        return (EReference)this.swDataDependencyArgsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwPointer() {
        return this.swPointerEClass;
    }

    public EReference getSwPointer_SwDataDefProps() {
        return (EReference)this.swPointerEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwSemaphore() {
        return this.swSemaphoreEClass;
    }

    public EReference getSwSemaphore_SwVariableRef() {
        return (EReference)this.swSemaphoreEClass.getEStructuralFeatures().get(0);
    }

    public EClass getSwTextProps() {
        return this.swTextPropsEClass;
    }

    public EReference getSwTextProps_SwDataDefProps() {
        return (EReference)this.swTextPropsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwTextProps_SwMaxTextSize() {
        return (EReference)this.swTextPropsEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getSwTextProps_SwFillCharacter() {
        return (EAttribute)this.swTextPropsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getSwVariableRef() {
        return this.swVariableRefEClass;
    }

    public EReference getSwVariableRef_SwDataDefProps() {
        return (EReference)this.swVariableRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwVariableRef_SwVariableRef() {
        return (EReference)this.swVariableRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getSwDataDefProps() {
        return this.swDataDefPropsEClass;
    }

    public EReference getSwDataDefProps_InvalidValue() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getSwDataDefProps_SwAddrMethod() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getSwDataDefProps_BaseType() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(2);
    }

    public EReference getSwDataDefProps_SwBitRepresentation() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(3);
    }

    public EAttribute getSwDataDefProps_SwCalibrationAccess() {
        return (EAttribute)this.swDataDefPropsEClass.getEStructuralFeatures().get(4);
    }

    public EReference getSwDataDefProps_SwValueBlockSize() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(5);
    }

    public EReference getSwDataDefProps_SwCalprmAxisSet() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(6);
    }

    public EReference getSwDataDefProps_SwTextProps() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(7);
    }

    public EReference getSwDataDefProps_SwCodeSyntax() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(8);
    }

    public EReference getSwDataDefProps_CompuMethod() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(9);
    }

    public EReference getSwDataDefProps_DataConstr() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(10);
    }

    public EReference getSwDataDefProps_SwDataDependency() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(11);
    }

    public EReference getSwDataDefProps_SwHostVariable() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(12);
    }

    public EAttribute getSwDataDefProps_SwImplPolicy() {
        return (EAttribute)this.swDataDefPropsEClass.getEStructuralFeatures().get(13);
    }

    public EReference getSwDataDefProps_SwPointer() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(14);
    }

    public EReference getSwDataDefProps_SwRecordLayout() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(15);
    }

    public EReference getSwDataDefProps_Unit() {
        return (EReference)this.swDataDefPropsEClass.getEStructuralFeatures().get(16);
    }

    public EAttribute getSwDataDefProps_SwVariableAccessImplPolicy() {
        return (EAttribute)this.swDataDefPropsEClass.getEStructuralFeatures().get(17);
    }

    public EEnum getSwCalibrationAccessEnum() {
        return this.swCalibrationAccessEnumEEnum;
    }

    public EEnum getSwImplPolicyEnum() {
        return this.swImplPolicyEnumEEnum;
    }

    public EEnum getSwVariableAccessImplPolicyEnum() {
        return this.swVariableAccessImplPolicyEnumEEnum;
    }

    public DatadefpropertiesFactory getDatadefpropertiesFactory() {
        return (DatadefpropertiesFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.swArraysizeEClass = this.createEClass(0);
        this.createEReference(this.swArraysizeEClass, 4);
        this.createEAttribute(this.swArraysizeEClass, 5);
        this.swBitRepresentationEClass = this.createEClass(1);
        this.createEReference(this.swBitRepresentationEClass, 4);
        this.createEAttribute(this.swBitRepresentationEClass, 5);
        this.createEAttribute(this.swBitRepresentationEClass, 6);
        this.swComparisonVariablesEClass = this.createEClass(2);
        this.createEReference(this.swComparisonVariablesEClass, 4);
        this.swGenericAxisParamValueEClass = this.createEClass(3);
        this.createEReference(this.swGenericAxisParamValueEClass, 4);
        this.createEReference(this.swGenericAxisParamValueEClass, 5);
        this.createEAttribute(this.swGenericAxisParamValueEClass, 6);
        this.swDataDependencyEClass = this.createEClass(4);
        this.createEReference(this.swDataDependencyEClass, 4);
        this.createEAttribute(this.swDataDependencyEClass, 5);
        this.createEReference(this.swDataDependencyEClass, 6);
        this.swDataDependencyArgsEClass = this.createEClass(5);
        this.createEReference(this.swDataDependencyArgsEClass, 4);
        this.createEReference(this.swDataDependencyArgsEClass, 5);
        this.createEReference(this.swDataDependencyArgsEClass, 6);
        this.swPointerEClass = this.createEClass(6);
        this.createEReference(this.swPointerEClass, 4);
        this.swSemaphoreEClass = this.createEClass(7);
        this.createEReference(this.swSemaphoreEClass, 4);
        this.swTextPropsEClass = this.createEClass(8);
        this.createEReference(this.swTextPropsEClass, 4);
        this.createEReference(this.swTextPropsEClass, 5);
        this.createEAttribute(this.swTextPropsEClass, 6);
        this.swVariableRefEClass = this.createEClass(9);
        this.createEReference(this.swVariableRefEClass, 4);
        this.createEReference(this.swVariableRefEClass, 5);
        this.swDataDefPropsEClass = this.createEClass(10);
        this.createEReference(this.swDataDefPropsEClass, 7);
        this.createEReference(this.swDataDefPropsEClass, 8);
        this.createEReference(this.swDataDefPropsEClass, 9);
        this.createEReference(this.swDataDefPropsEClass, 10);
        this.createEAttribute(this.swDataDefPropsEClass, 11);
        this.createEReference(this.swDataDefPropsEClass, 12);
        this.createEReference(this.swDataDefPropsEClass, 13);
        this.createEReference(this.swDataDefPropsEClass, 14);
        this.createEReference(this.swDataDefPropsEClass, 15);
        this.createEReference(this.swDataDefPropsEClass, 16);
        this.createEReference(this.swDataDefPropsEClass, 17);
        this.createEReference(this.swDataDefPropsEClass, 18);
        this.createEReference(this.swDataDefPropsEClass, 19);
        this.createEAttribute(this.swDataDefPropsEClass, 20);
        this.createEReference(this.swDataDefPropsEClass, 21);
        this.createEReference(this.swDataDefPropsEClass, 22);
        this.createEReference(this.swDataDefPropsEClass, 23);
        this.createEAttribute(this.swDataDefPropsEClass, 24);
        this.swCalibrationAccessEnumEEnum = this.createEEnum(11);
        this.swImplPolicyEnumEEnum = this.createEEnum(12);
        this.swVariableAccessImplPolicyEnumEEnum = this.createEEnum(13);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("datadefproperties");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/mac/ddp");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        ValuemodelPackage theValuemodelPackage = (ValuemodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/vm");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        DatadictionaryproxiesPackage theDatadictionaryproxiesPackage = (DatadictionaryproxiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/dp");
        AxisPackage theAxisPackage = (AxisPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/a");
        GdatadefpropertiesPackage theGdatadefpropertiesPackage = (GdatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp");
        ConstantsPackage theConstantsPackage = (ConstantsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/c");
        AuxillaryobjectsPackage theAuxillaryobjectsPackage = (AuxillaryobjectsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ao");
        BasetypesPackage theBasetypesPackage = (BasetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/bt");
        CalibrationparameterPackage theCalibrationparameterPackage = (CalibrationparameterPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/cp");
        ComputationmethodPackage theComputationmethodPackage = (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/cm");
        GlobalconstraintsPackage theGlobalconstraintsPackage = (GlobalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/gc");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/u");
        this.swArraysizeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swBitRepresentationEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swComparisonVariablesEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swGenericAxisParamValueEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swDataDependencyEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swDataDependencyArgsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swPointerEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swSemaphoreEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swTextPropsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swVariableRefEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swDataDefPropsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.swDataDefPropsEClass.getESuperTypes().add((Object)theGdatadefpropertiesPackage.getGSwDataDefPropsConditional());
        this.initEClass(this.swArraysizeEClass, SwArraysize.class, "SwArraysize", false, false, true);
        this.initEReference(this.getSwArraysize_Vfs(), (EClassifier)theValuemodelPackage.getVf(), null, "vfs", null, 0, -1, SwArraysize.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwArraysize_Vs(), (EClassifier)thePrimitivetypesPackage.getString(), "vs", "", 0, -1, SwArraysize.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swBitRepresentationEClass, SwBitRepresentation.class, "SwBitRepresentation", false, false, true);
        this.initEReference(this.getSwBitRepresentation_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwBitRepresentation(), "swDataDefProps", null, 0, 1, SwBitRepresentation.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getSwBitRepresentation_BitPosition(), (EClassifier)thePrimitivetypesPackage.getString(), "bitPosition", "", 0, 1, SwBitRepresentation.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getSwBitRepresentation_NumberOfBits(), (EClassifier)thePrimitivetypesPackage.getString(), "numberOfBits", "", 0, 1, SwBitRepresentation.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swComparisonVariablesEClass, SwComparisonVariables.class, "SwComparisonVariables", false, false, true);
        this.initEReference(this.getSwComparisonVariables_SwVariableRefs(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRefs", null, 0, -1, SwComparisonVariables.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swGenericAxisParamValueEClass, SwGenericAxisParamValue.class, "SwGenericAxisParamValue", false, false, true);
        this.initEReference(this.getSwGenericAxisParamValue_SwGenericAxisParam(), (EClassifier)theAxisPackage.getSwGenericAxisParam(), theAxisPackage.getSwGenericAxisParam_SwGenericAxisParamValue(), "swGenericAxisParam", null, 0, 1, SwGenericAxisParamValue.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwGenericAxisParamValue_Vfs(), (EClassifier)theValuemodelPackage.getVf(), null, "vfs", null, 0, -1, SwGenericAxisParamValue.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwGenericAxisParamValue_Vs(), (EClassifier)thePrimitivetypesPackage.getString(), "vs", "", 0, -1, SwGenericAxisParamValue.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swDataDependencyEClass, SwDataDependency.class, "SwDataDependency", false, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwDataDependency(), "swDataDefProps", null, 0, 1, SwDataDependency.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDependency_SwDataDependencyFormula(), (EClassifier)thePrimitivetypesPackage.getString(), "swDataDependencyFormula", "", 0, 1, SwDataDependency.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDependency_SwDataDependencyArgs(), (EClassifier)this.getSwDataDependencyArgs(), this.getSwDataDependencyArgs_SwDataDependency(), "swDataDependencyArgs", null, 0, 1, SwDataDependency.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swDataDependencyArgsEClass, SwDataDependencyArgs.class, "SwDataDependencyArgs", false, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwDataDependency(), (EClassifier)this.getSwDataDependency(), this.getSwDataDependency_SwDataDependencyArgs(), "swDataDependency", null, 0, 1, SwDataDependencyArgs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwCalprms(), (EClassifier)theDatadictionaryproxiesPackage.getSwCalprmRefProxy(), null, "swCalprms", null, 0, -1, SwDataDependencyArgs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDependencyArgs_SwVariableRefs(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRefs", null, 0, -1, SwDataDependencyArgs.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swPointerEClass, SwPointer.class, "SwPointer", false, false, true);
        this.initEReference(this.getSwPointer_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), null, "swDataDefProps", null, 0, 1, SwPointer.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swSemaphoreEClass, SwSemaphore.class, "SwSemaphore", false, false, true);
        this.initEReference(this.getSwSemaphore_SwVariableRef(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRef", null, 0, 1, SwSemaphore.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swTextPropsEClass, SwTextProps.class, "SwTextProps", false, false, true);
        this.initEReference(this.getSwTextProps_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwTextProps(), "swDataDefProps", null, 0, 1, SwTextProps.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwTextProps_SwMaxTextSize(), (EClassifier)theValuemodelPackage.getVf(), null, "swMaxTextSize", null, 0, 1, SwTextProps.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwTextProps_SwFillCharacter(), (EClassifier)thePrimitivetypesPackage.getString(), "swFillCharacter", "", 0, 1, SwTextProps.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.swVariableRefEClass, SwVariableRef.class, "SwVariableRef", false, false, true);
        this.initEReference(this.getSwVariableRef_SwDataDefProps(), (EClassifier)this.getSwDataDefProps(), this.getSwDataDefProps_SwHostVariable(), "swDataDefProps", null, 0, 1, SwVariableRef.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getSwVariableRef_SwVariableRef(), (EClassifier)theDatadictionaryproxiesPackage.getSwVariableRefProxy(), null, "swVariableRef", null, 0, 1, SwVariableRef.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.swDataDefPropsEClass, SwDataDefProps.class, "SwDataDefProps", false, false, true);
        this.initEReference(this.getSwDataDefProps_InvalidValue(), (EClassifier)theConstantsPackage.getPrimitiveSpecification(), null, "invalidValue", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwAddrMethod(), (EClassifier)theAuxillaryobjectsPackage.getSwAddrMethod(), null, "swAddrMethod", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_BaseType(), (EClassifier)theBasetypesPackage.getSwBaseType(), null, "baseType", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwBitRepresentation(), (EClassifier)this.getSwBitRepresentation(), this.getSwBitRepresentation_SwDataDefProps(), "swBitRepresentation", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefProps_SwCalibrationAccess(), (EClassifier)this.getSwCalibrationAccessEnum(), "swCalibrationAccess", "READ-ONLY", 0, 1, SwDataDefProps.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwValueBlockSize(), (EClassifier)this.getSwArraysize(), null, "swValueBlockSize", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwCalprmAxisSet(), (EClassifier)theCalibrationparameterPackage.getSwCalprmAxisSet(), theCalibrationparameterPackage.getSwCalprmAxisSet_SwDataDefProps(), "swCalprmAxisSet", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwTextProps(), (EClassifier)this.getSwTextProps(), this.getSwTextProps_SwDataDefProps(), "swTextProps", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwCodeSyntax(), (EClassifier)theAuxillaryobjectsPackage.getSwCodeSyntax(), null, "swCodeSyntax", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_CompuMethod(), (EClassifier)theComputationmethodPackage.getCompuMethod(), null, "compuMethod", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_DataConstr(), (EClassifier)theGlobalconstraintsPackage.getDataConstr(), null, "dataConstr", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwDataDependency(), (EClassifier)this.getSwDataDependency(), this.getSwDataDependency_SwDataDefProps(), "swDataDependency", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwHostVariable(), (EClassifier)this.getSwVariableRef(), this.getSwVariableRef_SwDataDefProps(), "swHostVariable", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getSwDataDefProps_SwImplPolicy(), (EClassifier)this.getSwImplPolicyEnum(), "swImplPolicy", "STANDARD", 0, 1, SwDataDefProps.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwPointer(), (EClassifier)this.getSwPointer(), null, "swPointer", null, 0, 1, SwDataDefProps.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_SwRecordLayout(), (EClassifier)theAuxillaryobjectsPackage.getSwRecordLayout(), null, "swRecordLayout", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getSwDataDefProps_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, SwDataDefProps.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getSwDataDefProps_SwVariableAccessImplPolicy(), (EClassifier)this.getSwVariableAccessImplPolicyEnum(), "swVariableAccessImplPolicy", "OPTIMIZED", 0, 1, SwDataDefProps.class, false, false, true, true, false, true, false, true);
        this.initEEnum(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.class, "SwCalibrationAccessEnum");
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.READ_ONLY);
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.NOT_ACCESSIBLE);
        this.addEEnumLiteral(this.swCalibrationAccessEnumEEnum, SwCalibrationAccessEnum.READ_WRITE);
        this.initEEnum(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.class, "SwImplPolicyEnum");
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.STANDARD);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.MEASUREMENT_POINT);
        this.addEEnumLiteral(this.swImplPolicyEnumEEnum, SwImplPolicyEnum.MESSAGE);
        this.initEEnum(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.class, "SwVariableAccessImplPolicyEnum");
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.OPTIMIZED);
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.SELECTABLE);
        this.addEEnumLiteral(this.swVariableAccessImplPolicyEnumEEnum, SwVariableAccessImplPolicyEnum.DIRECT);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/mac/ddp");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "DataDefProperties", "GUID", "{F9DDEC12-AC2E-4056-8837-ADB17B4998FC}", "Id", "685992096"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"Name", "SwArraysize", "Modified", "Fri Sep 01 13:58:26 CEST 2006", "Created", "Fri Nov 25 19:53:31 CET 2005", "GUID", "{BC78CBD6-1D66-45a3-BD2A-49F413DCB7C1}", "Id", "-394049004"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"Name", "SwBitRepresentation", "Modified", "Fri Sep 01 13:58:28 CEST 2006", "Created", "Fri Nov 25 19:53:03 CET 2005", "GUID", "{22353C5D-DBD1-4200-8692-B0DE1495574D}", "Id", "-814305585"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"Name", "bitPosition", "GUID", "{AADCADB6-0ABD-4aec-B49F-8101694184AF}", "Id", "570637884"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"Name", "numberOfBits", "GUID", "{8C77C182-4887-4d18-8EE1-268D98E84532}", "Id", "611232264"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"Name", "SwCalibrationAccessEnum", "Modified", "Tue Oct 31 18:30:15 CET 2006", "Created", "Tue Oct 31 17:43:43 CET 2006", "GUID", "{B6DCF0E5-BB4D-4572-9206-EED60652C6ED}", "Id", "-253555336"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"Name", "SwComparisonVariables", "Modified", "Sat Sep 30 11:50:40 CEST 2006", "Created", "Fri Nov 25 19:53:05 CET 2005", "GUID", "{36CBAA52-EAEB-4f74-AC0E-629FA3C334CD}", "Id", "2123928077"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"Name", "SwGenericAxisParamValue", "Modified", "Fri Sep 01 19:06:48 CEST 2006", "Created", "Fri Sep 01 13:29:08 CEST 2006", "GUID", "{AF36A40F-9A23-41f0-AD05-358725375453}", "Id", "1480622739"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"Name", "SwDataDependency", "Modified", "Fri Sep 01 13:58:34 CEST 2006", "Created", "Fri Nov 25 19:53:07 CET 2005", "GUID", "{AA424E74-F150-42b8-809B-174E947EBD51}", "Id", "-1300014333"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"Name", "swDataDependencyFormula", "GUID", "{7E96429E-35B9-4589-AB2A-20914DBD2892}", "Id", "2002392984"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"Name", "SwDataDependencyArgs", "Modified", "Fri Sep 01 13:58:35 CEST 2006", "Created", "Fri Nov 25 19:53:07 CET 2005", "GUID", "{31457F7E-FDDC-4c0f-8BEF-4D95F902C6B3}", "Id", "1896107452"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"Name", "SwImplPolicyEnum", "Modified", "Tue Oct 31 18:31:30 CET 2006", "Created", "Tue Oct 31 18:23:24 CET 2006", "GUID", "{BDBF9933-D31C-4148-B588-57097F7E1AF9}", "Id", "-1085762980"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"Name", "SwPointer", "Modified", "Fri Sep 01 13:58:36 CEST 2006", "Created", "Fri Nov 25 19:53:11 CET 2005", "GUID", "{C0B728AC-330C-4f58-B108-9E574B7B3F0D}", "Id", "-190710395"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"Name", "SwSemaphore", "Modified", "Fri Sep 01 13:58:37 CEST 2006", "Created", "Fri Nov 25 19:53:12 CET 2005", "GUID", "{156EE340-A11F-4d8b-98A0-7C3174C1EDDD}", "Id", "-2119677754"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"Name", "SwTextProps", "Modified", "Tue Dec 05 17:35:17 CET 2006", "Created", "Fri Sep 01 13:28:25 CEST 2006", "GUID", "{67884C86-B255-4d5e-A648-2407CE0E0CE1}", "Id", "323874071"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"Name", "swFillCharacter", "GUID", "{35837DBA-E8F4-4d6b-9EDC-D019473656F2}", "Id", "2044007709"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"Name", "SwVariableAccessImplPolicyEnum", "Modified", "Tue Oct 31 18:32:52 CET 2006", "Created", "Tue Oct 31 18:17:52 CET 2006", "GUID", "{E9F3FFB3-C9B0-43e4-B0E1-348F59C3EC2A}", "Id", "1740585397"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"Name", "SwVariableRef", "Modified", "Fri Sep 01 13:58:37 CEST 2006", "Created", "Fri Nov 25 19:53:31 CET 2005", "GUID", "{5A39A386-3E26-4e28-BEB5-588896820060}", "Id", "1447647818"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"Name", "SwDataDefProps", "Modified", "Fri Sep 01 13:58:29 CEST 2006", "Created", "Fri Nov 25 19:53:07 CET 2005", "GUID", "{116B7194-57DC-47ce-8AA7-012CE3FF2DF4}", "Id", "-2013715423"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"Name", "swCalibrationAccess", "GUID", "{C72AE2C8-8ABE-459b-AC76-E0584A1EDD15}", "Id", "1527323383"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"Name", "swImplPolicy", "GUID", "{B048780B-7ED5-4197-99E8-F0EC419C75A2}", "Id", "-882133333"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwVariableAccessImplPolicy(), source, new String[]{"Name", "swVariableAccessImplPolicy", "GUID", "{E5969B5C-04A5-4eb0-8B91-E964DBBF05A0}", "Id", "469245911"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "DATA-DEF-PROPERTIES", "xml.namePlural", "DATA-DEF-PROPERTIESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-ARRAYSIZE_TYPE\";msr.isGroupOnly=\"true\"", "asam.useCase", "MDX", "msr.isGroupOnly", "true", "msr.id", "type__SW-ARRAYSIZE_TYPE", "xml.name", "SW-ARRAYSIZE", "xml.namePlural", "SW-ARRAYSIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vfs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"SW-ARRAYSIZE_TYPE__VF\"", "xml.sequenceOffset", "0", "msr.id", "SW-ARRAYSIZE_TYPE__VF", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "VF", "xml.namePlural", "VFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-ARRAYSIZE_TYPE__V\"", "xml.sequenceOffset", "1", "msr.id", "SW-ARRAYSIZE_TYPE__V", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "V", "xml.namePlural", "VS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-BIT-REPRESENTATION_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-BIT-REPRESENTATION_TYPE", "xml.name", "SW-BIT-REPRESENTATION", "xml.namePlural", "SW-BIT-REPRESENTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"xml.tags", "msr.id=\"SW-BIT-REPRESENTATION_TYPE__BIT-POSITION\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "msr.id", "SW-BIT-REPRESENTATION_TYPE__BIT-POSITION", "xml.name", "BIT-POSITION", "xml.namePlural", "BIT-POSITIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"xml.tags", "msr.id=\"SW-BIT-REPRESENTATION_TYPE__NUMBER-OF-BITS\";msr.tbdString=\"true\";xml.sequenceOffset=\"30\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "msr.id", "SW-BIT-REPRESENTATION_TYPE__NUMBER-OF-BITS", "xml.name", "NUMBER-OF-BITS", "xml.namePlural", "NUMBER-OF-BITSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"xml.name", "SW-CALIBRATION-ACCESS-ENUM", "xml.namePlural", "SW-CALIBRATION-ACCESS-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "READ-ONLY", "xml.namePlural", "READ-ONLYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "NOT-ACCESSIBLE", "xml.namePlural", "NOT-ACCESSIBLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "READ-WRITE", "xml.namePlural", "READ-WRITES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-COMPARISON-VARIABLES_TYPE\"", "msr.id", "type__SW-COMPARISON-VARIABLES_TYPE", "xml.name", "SW-COMPARISON-VARIABLES", "xml.namePlural", "SW-COMPARISON-VARIABLESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwComparisonVariables_SwVariableRefs(), source, new String[]{"xml.typeWrapperElement", "false", "xml.roleWrapperElement", "false", "xml.tags", "xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.sequenceOffset=\"20\";xml.roleWrapperElement=\"false\";xml.roleElement=\"false\"", "xml.sequenceOffset", "0", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"xml.tags", "msr.id=\"special__SW-GENERIC-AXIS-PARAM-VALUE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "special__SW-GENERIC-AXIS-PARAM-VALUE", "xml.name", "SW-GENERIC-AXIS-PARAM-VALUE", "xml.namePlural", "SW-GENERIC-AXIS-PARAM-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vfs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"SW-GENERIC-AXIS-PARAM-VALUE__VF\"", "xml.sequenceOffset", "0", "msr.id", "SW-GENERIC-AXIS-PARAM-VALUE__VF", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "VF", "xml.namePlural", "VFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"SW-GENERIC-AXIS-PARAM-VALUE__V\"", "xml.sequenceOffset", "1", "msr.id", "SW-GENERIC-AXIS-PARAM-VALUE__V", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "V", "xml.namePlural", "VS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-DATA-DEPENDENCY_TYPE\"", "msr.id", "type__SW-DATA-DEPENDENCY_TYPE", "xml.name", "SW-DATA-DEPENDENCY", "xml.namePlural", "SW-DATA-DEPENDENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-FORMULA\";msr.tbdString=\"true\";xml.sequenceOffset=\"30\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "msr.id", "SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-FORMULA", "xml.name", "SW-DATA-DEPENDENCY-FORMULA", "xml.namePlural", "SW-DATA-DEPENDENCY-FORMULAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-ARGS\"", "xml.sequenceOffset", "1", "msr.id", "SW-DATA-DEPENDENCY_TYPE__SW-DATA-DEPENDENCY-ARGS", "xml.name", "SW-DATA-DEPENDENCY-ARGS", "xml.namePlural", "SW-DATA-DEPENDENCY-ARGSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-DATA-DEPENDENCY-ARGS_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__SW-DATA-DEPENDENCY-ARGS_TYPE", "xml.name", "SW-DATA-DEPENDENCY-ARGS", "xml.namePlural", "SW-DATA-DEPENDENCY-ARGSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprms(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"60\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"false\"", "xml.sequenceOffset", "0", "xml.roleElement", "true", "xml.typeElement", "true", "xml.name", "SW-CALPRM", "xml.namePlural", "SW-CALPRMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariableRefs(), source, new String[]{"xml.typeWrapperElement", "false", "xml.roleWrapperElement", "false", "xml.tags", "xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.sequenceOffset=\"70\"", "xml.roleElement", "true", "xml.sequenceOffset", "1", "xml.typeElement", "true", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"xml.name", "SW-IMPL-POLICY-ENUM", "xml.namePlural", "SW-IMPL-POLICY-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "STANDARD", "xml.namePlural", "STANDARDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "MEASUREMENT-POINT", "xml.namePlural", "MEASUREMENT-POINTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "MESSAGE", "xml.namePlural", "MESSAGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-POINTER_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-POINTER_TYPE", "xml.name", "SW-POINTER", "xml.namePlural", "SW-POINTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwPointer_SwDataDefProps(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-POINTER_TYPE__SW-DATA-DEF-PROPS\"", "xml.sequenceOffset", "0", "msr.id", "SW-POINTER_TYPE__SW-DATA-DEF-PROPS", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-SEMAPHORE_TYPE\"", "msr.id", "type__SW-SEMAPHORE_TYPE", "xml.name", "SW-SEMAPHORE", "xml.namePlural", "SW-SEMAPHORES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwSemaphore_SwVariableRef(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.roleElement=\"false\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\"", "xml.sequenceOffset", "0", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"xml.tags", "msr.id=\"type__SW-TEXT-PROPS_TYPE\"", "msr.id", "type__SW-TEXT-PROPS_TYPE", "xml.name", "SW-TEXT-PROPS", "xml.namePlural", "SW-TEXT-PROPSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"SW-TEXT-PROPS_TYPE__SW-MAX-TEXT-SIZE\"", "xml.sequenceOffset", "0", "msr.id", "SW-TEXT-PROPS_TYPE__SW-MAX-TEXT-SIZE", "xml.name", "SW-MAX-TEXT-SIZE", "xml.namePlural", "SW-MAX-TEXT-SIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"xml.tags", "msr.id=\"SW-TEXT-PROPS_TYPE__SW-FILL-CHARACTER\";msr.tbdString=\"true\";xml.sequenceOffset=\"40\"", "msr.tbdString", "true", "xml.sequenceOffset", "1", "msr.id", "SW-TEXT-PROPS_TYPE__SW-FILL-CHARACTER", "xml.name", "SW-FILL-CHARACTER", "xml.namePlural", "SW-FILL-CHARACTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"xml.name", "SW-VARIABLE-ACCESS-IMPL-POLICY-ENUM", "xml.namePlural", "SW-VARIABLE-ACCESS-IMPL-POLICY-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "OPTIMIZED", "xml.namePlural", "OPTIMIZEDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "SELECTABLE", "xml.namePlural", "SELECTABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "DIRECT", "xml.namePlural", "DIRECTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-VARIABLE-REF_TYPE\"", "asam.useCase", "MDX", "msr.id", "type__SW-VARIABLE-REF_TYPE", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwVariableRef_SwVariableRef(), source, new String[]{"xml.typeWrapperElement", "false", "xml.roleWrapperElement", "false", "xml.tags", "xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.typeElement=\"false\";xml.sequenceOffset=\"20\"", "xml.roleElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "xml.name", "SW-VARIABLE-REF", "xml.namePlural", "SW-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"type__SW-DATA-DEF-PROPS_TYPE\";msr.isCond=\"true\"", "asam.useCase", "MDX", "msr.isCond", "true", "msr.id", "type__SW-DATA-DEF-PROPS_TYPE", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_InvalidValue(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "INVALID-VALUE", "xml.namePlural", "INVALID-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwAddrMethod(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-ADDR-METHOD-REF\"", "xml.sequenceOffset", "1", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-ADDR-METHOD-REF", "xml.name", "SW-ADDR-METHOD-REF", "xml.namePlural", "SW-ADDR-METHOD-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_BaseType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__BASE-TYPE-REF\"", "xml.sequenceOffset", "2", "msr.id", "SW-DATA-DEF-PROPS_TYPE__BASE-TYPE-REF", "xml.name", "BASE-TYPE-REF", "xml.namePlural", "BASE-TYPE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwBitRepresentation(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"60\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-BIT-REPRESENTATION\"", "xml.sequenceOffset", "3", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-BIT-REPRESENTATION", "xml.name", "SW-BIT-REPRESENTATION", "xml.namePlural", "SW-BIT-REPRESENTATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CALIBRATION-ACCESS\";msr.tbdString=\"true\";xml.sequenceOffset=\"70\"", "msr.tbdString", "true", "xml.sequenceOffset", "4", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CALIBRATION-ACCESS", "xml.name", "SW-CALIBRATION-ACCESS", "xml.namePlural", "SW-CALIBRATION-ACCESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwValueBlockSize(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"80\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-VALUE-BLOCK-SIZE\"", "xml.sequenceOffset", "5", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-VALUE-BLOCK-SIZE", "xml.name", "SW-VALUE-BLOCK-SIZE", "xml.namePlural", "SW-VALUE-BLOCK-SIZES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalprmAxisSet(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CALPRM-AXIS-SET\"", "xml.sequenceOffset", "6", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CALPRM-AXIS-SET", "xml.name", "SW-CALPRM-AXIS-SET", "xml.namePlural", "SW-CALPRM-AXIS-SETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwTextProps(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"120\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-TEXT-PROPS\"", "xml.sequenceOffset", "7", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-TEXT-PROPS", "xml.name", "SW-TEXT-PROPS", "xml.namePlural", "SW-TEXT-PROPSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCodeSyntax(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"160\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-CODE-SYNTAX-REF\"", "xml.sequenceOffset", "8", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-CODE-SYNTAX-REF", "xml.name", "SW-CODE-SYNTAX-REF", "xml.namePlural", "SW-CODE-SYNTAX-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_CompuMethod(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"180\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__COMPU-METHOD-REF\"", "xml.sequenceOffset", "9", "msr.id", "SW-DATA-DEF-PROPS_TYPE__COMPU-METHOD-REF", "xml.name", "COMPU-METHOD-REF", "xml.namePlural", "COMPU-METHOD-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DataConstr(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"190\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__DATA-CONSTR-REF\"", "xml.sequenceOffset", "10", "msr.id", "SW-DATA-DEF-PROPS_TYPE__DATA-CONSTR-REF", "xml.name", "DATA-CONSTR-REF", "xml.namePlural", "DATA-CONSTR-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDependency(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"200\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-DATA-DEPENDENCY\"", "xml.sequenceOffset", "11", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-DATA-DEPENDENCY", "xml.name", "SW-DATA-DEPENDENCY", "xml.namePlural", "SW-DATA-DEPENDENCYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwHostVariable(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"220\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-HOST-VARIABLE\"", "xml.sequenceOffset", "12", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-HOST-VARIABLE", "xml.name", "SW-HOST-VARIABLE", "xml.namePlural", "SW-HOST-VARIABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-IMPL-POLICY\";msr.tbdString=\"true\";xml.sequenceOffset=\"230\"", "msr.tbdString", "true", "xml.sequenceOffset", "13", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-IMPL-POLICY", "xml.name", "SW-IMPL-POLICY", "xml.namePlural", "SW-IMPL-POLICYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwPointer(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"280\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-POINTER\"", "xml.sequenceOffset", "14", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-POINTER", "xml.name", "SW-POINTER", "xml.namePlural", "SW-POINTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwRecordLayout(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"290\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-RECORD-LAYOUT-REF\"", "xml.sequenceOffset", "15", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-RECORD-LAYOUT-REF", "xml.name", "SW-RECORD-LAYOUT-REF", "xml.namePlural", "SW-RECORD-LAYOUT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Unit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"350\";msr.id=\"SW-DATA-DEF-PROPS_TYPE__UNIT-REF\"", "xml.sequenceOffset", "16", "msr.id", "SW-DATA-DEF-PROPS_TYPE__UNIT-REF", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwVariableAccessImplPolicy(), source, new String[]{"xml.tags", "msr.id=\"SW-DATA-DEF-PROPS_TYPE__SW-VARIABLE-ACCESS-IMPL-POLICY\";msr.tbdString=\"true\";xml.sequenceOffset=\"390\"", "msr.tbdString", "true", "xml.sequenceOffset", "17", "msr.id", "SW-DATA-DEF-PROPS_TYPE__SW-VARIABLE-ACCESS-IMPL-POLICY", "xml.name", "SW-VARIABLE-ACCESS-IMPL-POLICY", "xml.namePlural", "SW-VARIABLE-ACCESS-IMPL-POLICYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"name", "SW-ARRAYSIZE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vfs(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"name", "SW-BIT-REPRESENTATION", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"name", "BIT-POSITION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"name", "NUMBER-OF-BITS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"name", "SW-COMPARISON-VARIABLES", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwComparisonVariables_SwVariableRefs(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"name", "SW-GENERIC-AXIS-PARAM-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vfs(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"name", "SW-DATA-DEPENDENCY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"name", "SW-DATA-DEPENDENCY-FORMULA", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"name", "SW-DATA-DEPENDENCY-ARGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"name", "SW-DATA-DEPENDENCY-ARGS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprms(), source, new String[]{"name", "SW-CALPRM", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariableRefs(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"name", "SW-POINTER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwPointer_SwDataDefProps(), source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"name", "SW-SEMAPHORE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwSemaphore_SwVariableRef(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"name", "SW-TEXT-PROPS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwMaxTextSize(), source, new String[]{"name", "SW-MAX-TEXT-SIZE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"name", "SW-FILL-CHARACTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"name", "SW-VARIABLE-REF", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwVariableRef_SwVariableRef(), source, new String[]{"name", "SW-VARIABLE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_InvalidValue(), source, new String[]{"name", "INVALID-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwAddrMethod(), source, new String[]{"name", "SW-ADDR-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_BaseType(), source, new String[]{"name", "BASE-TYPE-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwBitRepresentation(), source, new String[]{"name", "SW-BIT-REPRESENTATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"name", "SW-CALIBRATION-ACCESS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwValueBlockSize(), source, new String[]{"name", "SW-VALUE-BLOCK-SIZE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalprmAxisSet(), source, new String[]{"name", "SW-CALPRM-AXIS-SET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwTextProps(), source, new String[]{"name", "SW-TEXT-PROPS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCodeSyntax(), source, new String[]{"name", "SW-CODE-SYNTAX-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_CompuMethod(), source, new String[]{"name", "COMPU-METHOD-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_DataConstr(), source, new String[]{"name", "DATA-CONSTR-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDependency(), source, new String[]{"name", "SW-DATA-DEPENDENCY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwHostVariable(), source, new String[]{"name", "SW-HOST-VARIABLE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"name", "SW-IMPL-POLICY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwPointer(), source, new String[]{"name", "SW-POINTER", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwRecordLayout(), source, new String[]{"name", "SW-RECORD-LAYOUT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwVariableAccessImplPolicy(), source, new String[]{"name", "SW-VARIABLE-ACCESS-IMPL-POLICY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"documentation", "The existence of <swArraysize> turns the parent element into a multidimensional object. It is then possible to create arrays of variables, parameters etc. <swArraysize> should ** to imitate stereotypes such as curves or maps since these structures are stored in the DTD itself as own elements, refer to <swCalprmAxisSet> for a <swCalprm>. Apart from that any array can be created."});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vfs(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getSwArraysize_Vs(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"documentation", "Description of the structure of a bit variable: comprises of the <bitPosition> in a memory object (e.g. <swHostVariable>, which stands parallel to <swBitRepresentation>) and the <numberOfBits> . In this way, interrelated memory areas can be described. Non-related memory areas are not supported."});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_BitPosition(), source, new String[]{"documentation", "This element is used by a Variable that actually is a part of an other Variable called Host Variable. The BIT-POSITION points out the starting point of the Variable in the Host Variable."});
        this.addAnnotation((ENamedElement)this.getSwBitRepresentation_NumberOfBits(), source, new String[]{"documentation", "Number of bits of a bit variable (described by <swBitRepresentation>), calculation based on the position specified by the parallel element <bitPosition> ."});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"documentation", "These variables can be used to display the value of a variable on the value axis of a calibration parameter (characteristic), that is currently displayed in the MCD-System. The purpose is to compare the appropriate result from the calibration parameter in question, with a value being calculated or taken from a sensor (the comparison variable).\r\n\r\nThe sole purpose of this comparison-variable is to serve the calibration process.\r\n\r\nScreen representation of comparison variable\r\n     Vs |              |\r\n                        |              |\r\n                        |              |\r\n                     V _|______________|______________\r\n                        |         /----|------\r\n                        |  /-----/     |\r\n                        | /            |\r\n                        |/             |\r\n                        |--------------|--------------\r\n                                       tx          tmot\r\n                \r\n                        tx: akt. Temperatur\r\n                        V:  akt. Geschwindigkeit eingeblendet im MCD-System\r\n                            zu Vergleichszwecken: SW-COMPARISON-VARIABLE\r\n                        Vs: Geschwindigkeitsschwelle \u00fcber Temperatur\r\n                        tmot: Motortemperatur"});
        this.addAnnotation((ENamedElement)this.getSwComparisonVariables_SwVariableRefs(), source, new String[]{"documentation", "This element references <swVariable> ."});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vfs(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getSwGenericAxisParamValue_Vs(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"documentation", "This element describes the interdependencies of variables and parameters. These can be used for example, to treat virtual parameters."});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyFormula(), source, new String[]{"documentation", "This element describes the formula with which the dependencies between the participating objects are defined. The formulae are texts which formulate first order arithmetical expressions.\r\n\r\nThe following syntax is valid:\r\n\r\nnumeric_expression ::= ( \"-\"expression ) | ( expression ( \"+\" | \"-\" | \"*\" | \"/\" | \"^\") expression )\r\n                expression ::= ( number | variable | numeric_expression | ( \"(\" expression \")\" ) | sinus_statement | cosinus_statement | sqrt_statement ) | expression {white-space}\r\n                sinus_statement ::= \"sin\" \"(\" expression \")\"\r\n                cosinus_statement ::= \"cos\" \"(\" expression \")\"\r\n                sqrt_statement ::= \"sqrt\" \"(\" expression \")\"\r\n                number ::= integer_literal | float_literal\r\n                variable ::= Any valid Object in question\r\n                integer_literal ::= ( \"1..9\" { \"0..9\" } ) | ( \"0\" \"x\" \"0..9a..f\" { \"0..9a..f\" } )\r\n                float_literal ::= ( decimal_digits \".\"  decimal_digits   exponent_part  ) | ( \".\" decimal_digits  exponent_part  ) | ( decimal_digits  exponent_part  )\r\n                decimal_digits ::= \"0..9\" { \"0..9\" }\r\n                exponent_part ::= \"e\"  \"+\" | \"-\"  decimal_digits\r\n                white-space ::= tabulator | blank | newline | carriage_return | {tabulator | blank | newline | carriage_return }\r\n                tabulator ::= \\t\r\n                blank ::= \" \"\r\n                newline ::= \\n\r\n                carriage_return ::= \\c"});
        this.addAnnotation((ENamedElement)this.getSwDataDependency_SwDataDependencyArgs(), source, new String[]{"documentation", "This element specifies the elements used in a <swDataDependency> ."});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"documentation", "This element specifies the elements used in a <swDataDependency> ."});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwCalprms(), source, new String[]{"documentation", "This element specifies the characteristics of calibration parameters in the ECU. Calibration parameters are objects that are not adapted to the run time of the vehicle. Instead, they calibrated to a greater extent in the application phase. Variables are quite the opposite ( <swVariable> s), being objects that are manipulated during the run time of the software.\r\n\r\nFor the most part, calibration parameters consist of:\r\n\r\n* Long and short names ( <longName>, <shortName> )\r\n\r\n* Short description ( <desc> )\r\n\r\n* Category ( <category> ), describing the basic structure of the parameter\r\n\r\n* Field parameter ( <swArraysize> ), in case the parameter an array\r\n\r\n* The technical characteristics ( <swDataDefProps>) These are identical to the technical characteristics of variables\r\n\r\n* Sub-structures simulated through the integration of <swCalprms> .\r\n\r\n* Comments ( <annotations> ), enabling notes to be passed on from one stage to the next, throughout the development process.\r\n\r\n* Additional information ( <addInfo>) in verbal form. Here, formal components can also be accommodated when SI -attributes are used.\r\n\r\nAllocation of <category>\r\n\r\n\r\n\r\nValue Conforms to ASAP\r\n\r\n* Meaning\r\n\r\n** Remark\r\n\r\nVALUE\r\n\r\n* Characteristic value\r\n\r\n** This represents a single value.\r\n\r\nCURVE_INDIVIDUAL\r\n\r\n* Characteristic\r\n\r\n** This represents a curve with an embedded axis.\r\n\r\nMAP_INDIVIDUAL\r\n\r\n* Map\r\n\r\n** This represents a map with embedded axes.\r\n\r\nCURVE_FIXED\r\n\r\n* Fixed characteristic\r\n\r\n** This indicates a curve where the axes are calculated by the ECU program. The algorithm is fixed and therefore the axis-points can not be calibrated. The parameters of the algorithm may in some cases be specified by applying <swAxisGeneric> .\r\n\r\nMAP_FIXED\r\n\r\n* Fixed map\r\n\r\n** This indicates a map where the axes are calculated by the ECU program. The algorithm is fixed and therefore the axis-points can not be calibrated. The parameters of the algorithm may in some cases be specified by applying <swAxisGeneric> .\r\n\r\nCURVE_GROUPED\r\n\r\n* Group characteristic\r\n\r\n** This indicates a curve which uses the axis-points of another calibration parameter which is then referred to by <swCalprmRef> in <swAxisGrouped> .\r\n\r\nMAP_GROUPED\r\n\r\n* Group map\r\n\r\n** This indicates a map which uses the axis-points of another calibration parameter which is then referred to by <swCalprmRef> in <swAxisGrouped> .\r\n\r\nASCII\r\n\r\n* Characteristic text\r\n\r\n** This indicates a parameter in text form (e.g. a message).\r\n\r\nSTRUCTURE\r\n\r\n* Parameter structure\r\n\r\n** This indicates a structure of calibration parameters. In this case, an embedded <swCalprm> should exist.\r\n\r\nVALUE_BLOCK\r\n\r\n* Characteristic values block\r\n\r\n** This indicates a homogeneous parameter set which is handled as a block. Unlike structures or arrays, the components of a value block appear in the instance tree within one <swInstance> .\r\n\r\nAXIS_VALUES\r\n\r\n* Group datapoints\r\n\r\n** This indicates the axis points of a calibration parameter, which are referenced in <SW-AXIS-GROUP> by a calibration parameter of the category MAP_GROUPED or CURVE_GROUPED ."});
        this.addAnnotation((ENamedElement)this.getSwDataDependencyArgs_SwVariableRefs(), source, new String[]{"documentation", "This element references <swVariable> ."});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"documentation", "STANDARD  no specific protection measures are taken. Usually applies to innerRunnableVariable\r\n\r\nMEASUREMENT-POINT  The data ele-ment is never read within the ecu soft-ware. It is written for measurement only\r\n\r\nMESSAGE  the access to the meas-urement must be implemented using pro-tection mechanisms. This mainly applies to interRunnableVariables.\r\n"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"documentation", "This element indicates, that the data object (which is specified by the parent element) is a reference to another data object. The properties of the referred data object are described in the <swDataDefProps> contained in the <swPointer> ."});
        this.addAnnotation((ENamedElement)this.getSwPointer_SwDataDefProps(), source, new String[]{"documentation", "This element describes all of the distinguishing characteristics of a data object (variable or parameter). <swDataDefProps> is used in every case, where characteristics of data objects must be given.\r\n\r\nIt is inevitable that not all of the inputs are useful all of the time. Hence, the process definition or the DCI has the task of implementing limitations.\r\n\r\nThe <swDataDefProps> describe the characteristics of all axes:\r\n\r\n* The characteristics of the argument axes (abscissas) are described in <swCalprmAxisSet> .\r\n\r\n* The characteristics of the value axis are described directly in <swDataDefProps> ."});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"documentation", "This element denotes a variable which servers as a semaphore variable for a particular ressource which is specified in the surrounding <swDataDefProps>"});
        this.addAnnotation((ENamedElement)this.getSwSemaphore_SwVariableRef(), source, new String[]{"documentation", "This element references <swVariable> ."});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"documentation", "The properties specific for a textual calibration parameter / variable."});
        this.addAnnotation((ENamedElement)this.getSwTextProps_SwFillCharacter(), source, new String[]{"documentation", "Filler character for text parameter to pad up to the maximum length <SwCalprmMaxTextSize> in the parent element <SwCalprmText> ."});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"documentation", "OPTIMIZED\r\nTool handles data consistency. \r\n\r\nIn <SW-SERVICE>, where message is referenced, only OPTIMIZED access (also default\r\nvalue inside <SW-SERVICE>) is possible.\r\n\r\n SELECTABLE\r\nThe user can decide inside each single service, where these message is referenced, if access to that shall be OPTIMIZED or DIRECT.\r\n\r\nDIRECT\r\nMessage with DIRECT access are read but ignored by data consistency tool. Data consistency\r\nis not guaranteed."});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"documentation", "This element references <swVariable> ."});
        this.addAnnotation((ENamedElement)this.getSwVariableRef_SwVariableRef(), source, new String[]{"documentation", "This element references <swVariable> ."});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"documentation", "This element describes all of the distinguishing characteristics of a data object (variable or parameter). <swDataDefProps> is used in every case, where characteristics of data objects must be given.\r\n\r\nIt is inevitable that not all of the inputs are useful all of the time. Hence, the process definition or the DCI has the task of implementing limitations.\r\n\r\nThe <swDataDefProps> describe the characteristics of all axes:\r\n\r\n* The characteristics of the argument axes (abscissas) are described in <swCalprmAxisSet> .\r\n\r\n* The characteristics of the value axis are described directly in <swDataDefProps> ."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_InvalidValue(), source, new String[]{"documentation", "Optional value to express invalidity of the actual data element. If given, the owning component has the API to set this data element invalid, otherwise it does not."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwAddrMethod(), source, new String[]{"documentation", "An address schematic <swAddrMethod> describes how variables or parameters are addressed in the ECU. Address methods can take the form of direct addressing or indirect addressing using a vector.\r\n\r\nThe principle role of this element is the declaration of keywords (in the subelement <shortName>) for the address calculation process. The process itself is given a verbal description (in <swAddrMethodDesc>) rather than a formal one. However, a formal reference <swCpuMemSegRef> to the memory segment concerned is issued. In future versions further formal components may be added to this, if required. . This approach was adopted as the number of possible address schematics is relatively small. A complete formal description would create unnecessary work."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwBitRepresentation(), source, new String[]{"documentation", "Description of the structure of a bit variable: comprises of the <bitPosition> in a memory object (e.g. <swHostVariable>, which stands parallel to <swBitRepresentation>) and the <numberOfBits> . In this way, interrelated memory areas can be described. Non-related memory areas are not supported."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalibrationAccess(), source, new String[]{"documentation", "Describes the applicability of parameters and variables. Valid values are:\r\n\r\n* NOT-ACCESSIBLE : The element will not appear in an ASAP file.\r\n\r\n* READ-ONLY : The element will only appear as read-only in an ASAP file.\r\n\r\n* READ-WRITE : Both read and write access."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwValueBlockSize(), source, new String[]{"documentation", "<swValueBlockSize> is used to specify the size of a VAL_BLK"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCalprmAxisSet(), source, new String[]{"documentation", "This element specifies the input parameter axes (abscissas) of parameters (and variables, if these are used adaptively)."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwCodeSyntax(), source, new String[]{"documentation", "Code syntax objects fix the representation of the variables and parameters in the program source file. These code syntax objects are defined centrally in <swCodeSyntaxes> and are connected to variables and parameters by means of <SwCodeSyntaxRef> .\r\n\r\nThe principle role of this element is the declaration of keywords (in the subelement <shortName>) for the code generation procedure. The process itself is given a verbal description (in <swCodeSyntaxDesc> ) rather than a formal one. This approach was adopted as the number of possible code syntax schematics is relatively small. A complete formal description would create unnecessary work.\r\n\r\nIt is possible however, to store a process-dependent micro syntax in <swCodeSyntaxDesc>, for example within <verbatim> and to label this through a suitable data assignment to the attribute SI ."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwDataDependency(), source, new String[]{"documentation", "This element describes the interdependencies of variables and parameters. These can be used for example, to treat virtual parameters."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwHostVariable(), source, new String[]{"documentation", "This element contains a reference <swVariableRef> to a variable, which serves as a host-variable for a bit variable <swBitRepresentation> ."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwImplPolicy(), source, new String[]{"documentation", "<swImplPolicy> enables the specification of an implementation strategy. In this way, the direction of the implementation to come, can be specified in advance in an earlier phase. The contents of the element comprise of a key word which is to be declared in the process. Examples of possible values are\r\n\r\n* MEMORY_OPTIMIZED\r\n\r\n* CPU-OPTIMIZED\r\n\r\n* INPLACE\r\n\r\n* SINGLE-INSTANCE\r\n\r\n* MULTI-INSTANCE"});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwPointer(), source, new String[]{"documentation", "This element indicates, that the data object (which is specified by the parent element) is a reference to another data object. The properties of the referred data object are described in the <swDataDefProps> contained in the <swPointer> ."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_SwRecordLayout(), source, new String[]{"documentation", "Defines how the data objects (variables, calibration parameters etc.) are to be stored in the ECU memory. As an example, this definition specifies the sequence of axis points in the ECU memory. Iterations through axis values are stored within the subelements <swRecordLayoutGroup> . These subelements might be stored embedded."});
        this.addAnnotation((ENamedElement)this.getSwDataDefProps_Unit(), source, new String[]{"documentation", "Use <unit> to enter the unit of a parameter."});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swCalibrationAccessEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.swImplPolicyEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swVariableAccessImplPolicyEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.swArraysizeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swBitRepresentationEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swComparisonVariablesEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swGenericAxisParamValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDependencyArgsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swPointerEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swSemaphoreEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swTextPropsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swVariableRefEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.swDataDefPropsEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

