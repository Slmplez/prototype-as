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
package autosar21.swcomponent.datatype.datatypes.impl;

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
import autosar21.swcomponent.datatype.datatypes.ARLimit;
import autosar21.swcomponent.datatype.datatypes.ArrayElement;
import autosar21.swcomponent.datatype.datatypes.ArrayType;
import autosar21.swcomponent.datatype.datatypes.BooleanType;
import autosar21.swcomponent.datatype.datatypes.CharType;
import autosar21.swcomponent.datatype.datatypes.CompositeType;
import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import autosar21.swcomponent.datatype.datatypes.Datatype;
import autosar21.swcomponent.datatype.datatypes.DatatypesFactory;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.IntegerType;
import autosar21.swcomponent.datatype.datatypes.OpaqueType;
import autosar21.swcomponent.datatype.datatypes.PrimitiveType;
import autosar21.swcomponent.datatype.datatypes.Range;
import autosar21.swcomponent.datatype.datatypes.RealType;
import autosar21.swcomponent.datatype.datatypes.RealTypeEncodingEnum;
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.datatype.datatypes.RecordType;
import autosar21.swcomponent.datatype.datatypes.StringType;
import autosar21.swcomponent.datatype.datatypes.util.DatatypesValidator;
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
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class DatatypesPackageImpl
extends EPackageImpl
implements DatatypesPackage {
    private EClass arLimitEClass = null;
    private EClass arrayElementEClass = null;
    private EClass booleanTypeEClass = null;
    private EClass primitiveTypeEClass = null;
    private EClass datatypeEClass = null;
    private EClass compositeTypeEClass = null;
    private EClass opaqueTypeEClass = null;
    private EClass rangeEClass = null;
    private EClass recordElementEClass = null;
    private EClass stringTypeEClass = null;
    private EClass integerTypeEClass = null;
    private EClass realTypeEClass = null;
    private EClass charTypeEClass = null;
    private EClass arrayTypeEClass = null;
    private EClass recordTypeEClass = null;
    private EClass dataPrototypeEClass = null;
    private EEnum realTypeEncodingEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private DatatypesPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/d/d", (EFactory)DatatypesFactory.eINSTANCE);
    }

    public static DatatypesPackage init() {
        if (isInited) {
            return (DatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/d");
        }
        DatatypesPackageImpl theDatatypesPackage = (DatatypesPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/d/d") instanceof DatatypesPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/d/d") : new DatatypesPackageImpl());
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
        theDatatypesPackage.createPackageContents();
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
        theDatatypesPackage.initializePackageContents();
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
        EValidator.Registry.INSTANCE.put((Object)theDatatypesPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return DatatypesValidator.INSTANCE;
            }
        });
        theDatatypesPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/d/d", (Object)theDatatypesPackage);
        return theDatatypesPackage;
    }

    public EClass getARLimit() {
        return this.arLimitEClass;
    }

    public EAttribute getARLimit_IntervalType() {
        return (EAttribute)this.arLimitEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getARLimit_Value() {
        return (EAttribute)this.arLimitEClass.getEStructuralFeatures().get(1);
    }

    public EClass getArrayElement() {
        return this.arrayElementEClass;
    }

    public EReference getArrayElement_ArrayType() {
        return (EReference)this.arrayElementEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getArrayElement_MaxNumberOfElements() {
        return (EAttribute)this.arrayElementEClass.getEStructuralFeatures().get(1);
    }

    public EClass getBooleanType() {
        return this.booleanTypeEClass;
    }

    public EClass getPrimitiveType() {
        return this.primitiveTypeEClass;
    }

    public EReference getPrimitiveType_SwDataDefProps() {
        return (EReference)this.primitiveTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDatatype() {
        return this.datatypeEClass;
    }

    public EClass getCompositeType() {
        return this.compositeTypeEClass;
    }

    public EClass getOpaqueType() {
        return this.opaqueTypeEClass;
    }

    public EAttribute getOpaqueType_NumberOfBits() {
        return (EAttribute)this.opaqueTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getRange() {
        return this.rangeEClass;
    }

    public EReference getRange_LowerLimit() {
        return (EReference)this.rangeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRange_UpperLimit() {
        return (EReference)this.rangeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getRecordElement() {
        return this.recordElementEClass;
    }

    public EReference getRecordElement_RecordType() {
        return (EReference)this.recordElementEClass.getEStructuralFeatures().get(0);
    }

    public EClass getStringType() {
        return this.stringTypeEClass;
    }

    public EAttribute getStringType_Encoding() {
        return (EAttribute)this.stringTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getStringType_MaxNumberOfChars() {
        return (EAttribute)this.stringTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getIntegerType() {
        return this.integerTypeEClass;
    }

    public EClass getRealType() {
        return this.realTypeEClass;
    }

    public EAttribute getRealType_AllowNaN() {
        return (EAttribute)this.realTypeEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getRealType_Encoding() {
        return (EAttribute)this.realTypeEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCharType() {
        return this.charTypeEClass;
    }

    public EAttribute getCharType_Encoding() {
        return (EAttribute)this.charTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getArrayType() {
        return this.arrayTypeEClass;
    }

    public EReference getArrayType_Element() {
        return (EReference)this.arrayTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getRecordType() {
        return this.recordTypeEClass;
    }

    public EReference getRecordType_Elements() {
        return (EReference)this.recordTypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getDataPrototype() {
        return this.dataPrototypeEClass;
    }

    public EReference getDataPrototype_SwDataDefProps() {
        return (EReference)this.dataPrototypeEClass.getEStructuralFeatures().get(0);
    }

    public EReference getDataPrototype_Type() {
        return (EReference)this.dataPrototypeEClass.getEStructuralFeatures().get(1);
    }

    public EEnum getRealTypeEncodingEnum() {
        return this.realTypeEncodingEnumEEnum;
    }

    public DatatypesFactory getDatatypesFactory() {
        return (DatatypesFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.arLimitEClass = this.createEClass(0);
        this.createEAttribute(this.arLimitEClass, 6);
        this.createEAttribute(this.arLimitEClass, 7);
        this.arrayElementEClass = this.createEClass(1);
        this.createEReference(this.arrayElementEClass, 20);
        this.createEAttribute(this.arrayElementEClass, 21);
        this.booleanTypeEClass = this.createEClass(2);
        this.primitiveTypeEClass = this.createEClass(3);
        this.createEReference(this.primitiveTypeEClass, 18);
        this.datatypeEClass = this.createEClass(4);
        this.compositeTypeEClass = this.createEClass(5);
        this.opaqueTypeEClass = this.createEClass(6);
        this.createEAttribute(this.opaqueTypeEClass, 19);
        this.rangeEClass = this.createEClass(7);
        this.createEReference(this.rangeEClass, 4);
        this.createEReference(this.rangeEClass, 5);
        this.recordElementEClass = this.createEClass(8);
        this.createEReference(this.recordElementEClass, 20);
        this.stringTypeEClass = this.createEClass(9);
        this.createEAttribute(this.stringTypeEClass, 19);
        this.createEAttribute(this.stringTypeEClass, 20);
        this.integerTypeEClass = this.createEClass(10);
        this.realTypeEClass = this.createEClass(11);
        this.createEAttribute(this.realTypeEClass, 21);
        this.createEAttribute(this.realTypeEClass, 22);
        this.charTypeEClass = this.createEClass(12);
        this.createEAttribute(this.charTypeEClass, 19);
        this.arrayTypeEClass = this.createEClass(13);
        this.createEReference(this.arrayTypeEClass, 18);
        this.recordTypeEClass = this.createEClass(14);
        this.createEReference(this.recordTypeEClass, 19);
        this.dataPrototypeEClass = this.createEClass(15);
        this.createEReference(this.dataPrototypeEClass, 18);
        this.createEReference(this.dataPrototypeEClass, 19);
        this.realTypeEncodingEnumEEnum = this.createEEnum(16);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("datatypes");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/d/d");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        GdatatypesPackage theGdatatypesPackage = (GdatatypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/d");
        LocalconstraintsPackage theLocalconstraintsPackage = (LocalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/lc");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        DatadefpropertiesPackage theDatadefpropertiesPackage = (DatadefpropertiesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/ddp");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        GdataprototypesPackage theGdataprototypesPackage = (GdataprototypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/dp");
        this.arLimitEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.arLimitEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGARLimit());
        this.arrayElementEClass.getESuperTypes().add((Object)this.getDataPrototype());
        this.booleanTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.primitiveTypeEClass.getESuperTypes().add((Object)this.getDatatype());
        this.primitiveTypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationPrimitiveDataType());
        this.datatypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.datatypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationDataType());
        this.compositeTypeEClass.getESuperTypes().add((Object)this.getDatatype());
        this.compositeTypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationCompositeDataType());
        this.opaqueTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.rangeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.recordElementEClass.getESuperTypes().add((Object)this.getDataPrototype());
        this.recordElementEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGApplicationRecordElement());
        this.stringTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.integerTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.integerTypeEClass.getESuperTypes().add((Object)this.getRange());
        this.realTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.realTypeEClass.getESuperTypes().add((Object)this.getRange());
        this.charTypeEClass.getESuperTypes().add((Object)this.getPrimitiveType());
        this.arrayTypeEClass.getESuperTypes().add((Object)this.getCompositeType());
        this.recordTypeEClass.getESuperTypes().add((Object)this.getCompositeType());
        this.recordTypeEClass.getESuperTypes().add((Object)theGdatatypesPackage.getGApplicationRecordDataType());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGAutosarDataPrototype());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGDataPrototype());
        this.dataPrototypeEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGApplicationCompositeElementDataPrototype());
        this.initEClass(this.arLimitEClass, ARLimit.class, "ARLimit", false, false, true);
        this.initEAttribute(this.getARLimit_IntervalType(), (EClassifier)theLocalconstraintsPackage.getIntervalTypeEnum(), "intervalType", "OPEN", 0, 1, ARLimit.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getARLimit_Value(), (EClassifier)thePrimitivetypesPackage.getString(), "value", "", 0, 1, ARLimit.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.arrayElementEClass, ArrayElement.class, "ArrayElement", false, false, true);
        this.initEReference(this.getArrayElement_ArrayType(), (EClassifier)this.getArrayType(), this.getArrayType_Element(), "arrayType", null, 0, 1, ArrayElement.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getArrayElement_MaxNumberOfElements(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxNumberOfElements", "0", 0, 1, ArrayElement.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.booleanTypeEClass, BooleanType.class, "BooleanType", false, false, true);
        EOperation op = this.addEOperation(this.booleanTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesTRUEFALSE", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        EGenericType g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.primitiveTypeEClass, PrimitiveType.class, "PrimitiveType", true, false, true);
        this.initEReference(this.getPrimitiveType_SwDataDefProps(), (EClassifier)theDatadefpropertiesPackage.getSwDataDefProps(), null, "swDataDefProps", null, 0, 1, PrimitiveType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.datatypeEClass, Datatype.class, "Datatype", true, false, true);
        op = this.addEOperation(this.datatypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesSetOclAny", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.compositeTypeEClass, CompositeType.class, "CompositeType", true, false, true);
        this.initEClass(this.opaqueTypeEClass, OpaqueType.class, "OpaqueType", false, false, true);
        this.initEAttribute(this.getOpaqueType_NumberOfBits(), (EClassifier)thePrimitivetypesPackage.getInteger(), "numberOfBits", "0", 0, 1, OpaqueType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.opaqueTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "numberOfBits0", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.rangeEClass, Range.class, "Range", true, false, true);
        this.initEReference(this.getRange_LowerLimit(), (EClassifier)this.getARLimit(), null, "lowerLimit", null, 0, 1, Range.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRange_UpperLimit(), (EClassifier)this.getARLimit(), null, "upperLimit", null, 0, 1, Range.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.rangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesInRangeSetFloat", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        op = this.addEOperation(this.rangeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "lowerLimitupperLimit", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.recordElementEClass, RecordElement.class, "RecordElement", false, false, true);
        this.initEReference(this.getRecordElement_RecordType(), (EClassifier)this.getRecordType(), this.getRecordType_Elements(), "recordType", null, 0, 1, RecordElement.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.stringTypeEClass, StringType.class, "StringType", false, false, true);
        this.initEAttribute(this.getStringType_Encoding(), (EClassifier)thePrimitivetypesPackage.getString(), "encoding", "", 0, 1, StringType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getStringType_MaxNumberOfChars(), (EClassifier)thePrimitivetypesPackage.getInteger(), "maxNumberOfChars", "0", 0, 1, StringType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.stringTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "maxLength0", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.integerTypeEClass, IntegerType.class, "IntegerType", false, false, true);
        op = this.addEOperation(this.integerTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesvaluesInRangeintersectInteger", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.realTypeEClass, RealType.class, "RealType", false, false, true);
        this.initEAttribute(this.getRealType_AllowNaN(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "allowNaN", "false", 0, 1, RealType.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getRealType_Encoding(), (EClassifier)this.getRealTypeEncodingEnum(), "encoding", "SINGLE", 0, 1, RealType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.realTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defallRealsSetRealdefinedbyencoding", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        op = this.addEOperation(this.realTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "defvaluesvaluesInRangeintersectallReals", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.charTypeEClass, CharType.class, "CharType", false, false, true);
        this.initEAttribute(this.getCharType_Encoding(), (EClassifier)thePrimitivetypesPackage.getString(), "encoding", "", 0, 1, CharType.class, false, false, true, true, false, true, false, true);
        op = this.addEOperation(this.charTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "TBDnamingconventionforencoding", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.arrayTypeEClass, ArrayType.class, "ArrayType", false, false, true);
        this.initEReference(this.getArrayType_Element(), (EClassifier)this.getArrayElement(), this.getArrayElement_ArrayType(), "element", null, 0, 1, ArrayType.class, false, false, true, true, false, false, true, false, true);
        op = this.addEOperation(this.arrayTypeEClass, (EClassifier)this.ecorePackage.getEBoolean(), "numberOfElements0", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        this.initEClass(this.recordTypeEClass, RecordType.class, "RecordType", false, false, true);
        this.initEReference(this.getRecordType_Elements(), (EClassifier)this.getRecordElement(), this.getRecordElement_RecordType(), "elements", null, 0, -1, RecordType.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.dataPrototypeEClass, DataPrototype.class, "DataPrototype", true, false, true);
        this.initEReference(this.getDataPrototype_SwDataDefProps(), (EClassifier)theDatadefpropertiesPackage.getSwDataDefProps(), null, "swDataDefProps", null, 0, 1, DataPrototype.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getDataPrototype_Type(), (EClassifier)this.getDatatype(), null, "type", null, 0, 1, DataPrototype.class, false, false, true, false, true, false, true, false, true);
        this.initEEnum(this.realTypeEncodingEnumEEnum, RealTypeEncodingEnum.class, "RealTypeEncodingEnum");
        this.addEEnumLiteral(this.realTypeEncodingEnumEEnum, RealTypeEncodingEnum.SINGLE);
        this.addEEnumLiteral(this.realTypeEncodingEnumEEnum, RealTypeEncodingEnum.DOUBLE);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/d/d");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_DataPrototypeAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_PrimitiveTypeAnnotations();
        this.createTaggedValuesOfGeneralization_DatatypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_RangeAnnotations();
        this.createTaggedValuesOfGeneralization_CompositeTypeAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Datatypes", "GUID", "{1D020A77-14BB-4697-91D0-5A0329247C19}", "Id", "707438285"});
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"Name", "ARLimit", "Modified", "Wed Jan 24 14:52:02 CET 2007", "Created", "Wed Jan 24 14:51:14 CET 2007", "GUID", "{466E4801-76E2-42ba-82BC-1D3969F95D7F}", "Id", "-1192156390"});
        this.addAnnotation((ENamedElement)this.getARLimit_IntervalType(), source, new String[]{"Name", "intervalType", "GUID", "{DAB95A9C-CBC0-41cd-9698-C94B3CA6FCBC}", "Id", "769369081"});
        this.addAnnotation((ENamedElement)this.getARLimit_Value(), source, new String[]{"Name", "value", "GUID", "{C40CE886-89CB-4064-91C9-2171BBA19107}", "Id", "1177389254"});
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"Name", "ArrayElement", "Modified", "Fri Sep 29 18:41:12 CEST 2006", "Created", "Fri Sep 29 18:41:03 CEST 2006", "GUID", "{AE434591-1829-4f5d-92AB-5883D9F8654B}", "Id", "1159548063"});
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"Name", "maxNumberOfElements", "GUID", "{9F2FC0CB-431C-4afa-A308-F345A79FD1E2}", "Id", "870231074"});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"Name", "BooleanType", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Created", "Mon Feb 23 00:47:32 CET 2004", "GUID", "{033BC600-54FC-4cbd-A786-5A65B12B14AF}", "Id", "765165578"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"Name", "PrimitiveType", "Modified", "Tue May 16 10:15:53 CEST 2006", "Created", "Tue Feb 17 07:52:56 CET 2004", "GUID", "{7D5DBD9C-54B1-4085-9A45-064DFAC83FA8}", "Id", "1626350036"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"Name", "Datatype", "Modified", "Wed Jun 21 10:14:20 CEST 2006", "Created", "Mon Feb 16 09:01:40 CET 2004", "GUID", "{25355E8E-7679-4851-97FD-10EBA8F3B931}", "Id", "660744191"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"Name", "CompositeType", "Modified", "Fri Sep 29 20:57:38 CEST 2006", "Created", "Thu Feb 19 16:26:41 CET 2004", "GUID", "{EFE6966E-B5BD-475d-A1F9-55C81F4269BC}", "Id", "631326121"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"Name", "OpaqueType", "Modified", "Thu Jun 23 16:23:09 CEST 2005", "Created", "Sun May 02 19:02:18 CEST 2004", "GUID", "{0D2350ED-78A6-41a3-96F5-06382CAB2C50}", "Id", "714341094"});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"Name", "numberOfBits", "GUID", "{1A9FE4E5-DB83-482b-B476-6BF08F727F7E}", "Id", "720223855"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"Name", "Range", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Created", "Sun May 02 19:59:17 CEST 2004", "GUID", "{E4B27CF1-0865-4bfa-9835-308B7DA9E2EA}", "Id", "1596921014"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"Name", "RecordElement", "Modified", "Wed Aug 23 12:07:44 CEST 2006", "Created", "Mon Nov 28 13:15:56 CET 2005", "GUID", "{99547850-73D7-42b3-AB0B-1EA1125C5D52}", "Id", "-1241121027"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"Name", "StringType", "Modified", "Wed Dec 07 11:49:50 CET 2005", "Created", "Sun May 02 18:56:55 CEST 2004", "GUID", "{94D517F8-6681-4d02-88C7-4E37DFEF5D56}", "Id", "-311209158"});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"Name", "encoding", "GUID", "{4E89B605-8A33-4763-93F5-8FA199775C6E}", "Id", "-2037662413"});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"Name", "maxNumberOfChars", "GUID", "{5A019904-AFF3-4e9c-9792-4169BCE54AEF}", "Id", "-1068755976"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"Name", "IntegerType", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Created", "Tue Feb 17 08:00:40 CET 2004", "GUID", "{DA7F0DC1-A985-4de9-A9FE-2197C99E9114}", "Id", "189451771"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"Name", "RealType", "Modified", "Thu Jul 28 10:26:16 CEST 2005", "Created", "Tue Feb 17 08:02:14 CET 2004", "GUID", "{B52D42CF-AF6E-49c8-9AD3-43A61A836E32}", "Id", "150320928"});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"Name", "allowNaN", "GUID", "{91EE06DA-8A15-499c-B56F-AB088F6CA1C0}", "Id", "516289102"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"Name", "encoding", "GUID", "{912B61AF-837B-41e0-9736-F094AF1AE634}", "Id", "2109206689"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"Name", "CharType", "Modified", "Thu Jun 30 07:28:28 CEST 2005", "Created", "Tue Feb 17 09:27:34 CET 2004", "GUID", "{25F947CE-6B8E-48e5-8DE0-7532BF3FC068}", "Id", "-1197631188"});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"Name", "encoding", "GUID", "{54C367A7-E1DD-46d2-841B-D5183CA62404}", "Id", "2052158653"});
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"Name", "ArrayType", "Modified", "Thu Jul 21 16:16:26 CEST 2005", "Created", "Tue Feb 17 07:53:22 CET 2004", "GUID", "{E9A40D08-10B0-492c-858A-986808073962}", "Id", "429550149"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"Name", "RecordType", "Modified", "Thu Jul 21 16:16:26 CEST 2005", "Created", "Tue Feb 17 08:12:31 CET 2004", "GUID", "{08B3F740-9055-416c-A274-D5ECC29AFC0B}", "Id", "-839013449"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"Name", "DataPrototype", "Modified", "Fri Jul 07 15:40:31 CEST 2006", "Created", "Wed May 12 13:40:54 CEST 2004", "GUID", "{11167B2D-0629-40e5-B1E4-AEB76114D0D1}", "Id", "-710790268"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "DATATYPES", "xml.namePlural", "DATATYPESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"xml.name", "AR-LIMIT", "xml.namePlural", "AR-LIMITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getARLimit_IntervalType(), source, new String[]{"xml.tags", "xml.attribute=\"true\"", "xml.attribute", "true", "xml.name", "INTERVAL-TYPE", "xml.namePlural", "INTERVAL-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.getARLimit_Value(), source, new String[]{"xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.tags", "xml.roleElement=\"false\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\"", "xml.roleElement", "false", "xml.typeElement", "false", "xml.name", "VALUE", "xml.namePlural", "VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"xml.name", "ARRAY-ELEMENT", "xml.namePlural", "ARRAY-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "MAX-NUMBER-OF-ELEMENTS", "xml.namePlural", "MAX-NUMBER-OF-ELEMENTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"xml.tags", "java.instanceClass=\"java.lang.Boolean\"", "java.instanceClass", "java.lang.Boolean", "xml.name", "BOOLEAN-TYPE", "xml.namePlural", "BOOLEAN-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"xml.name", "PRIMITIVE-TYPE", "xml.namePlural", "PRIMITIVE-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getPrimitiveType_SwDataDefProps(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"xml.name", "DATATYPE", "xml.namePlural", "DATATYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"xml.name", "COMPOSITE-TYPE", "xml.namePlural", "COMPOSITE-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"xml.tags", "java.instanceClass=\"java.lang.String\"", "java.instanceClass", "java.lang.String", "xml.name", "OPAQUE-TYPE", "xml.namePlural", "OPAQUE-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "NUMBER-OF-BITS", "xml.namePlural", "NUMBER-OF-BITSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"xml.name", "RANGE", "xml.namePlural", "RANGES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRange_LowerLimit(), source, new String[]{"xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRange_UpperLimit(), source, new String[]{"xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"xml.name", "RECORD-ELEMENT", "xml.namePlural", "RECORD-ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"xml.tags", "java.instanceClass=\"java.lang.String\"", "java.instanceClass", "java.lang.String", "xml.name", "STRING-TYPE", "xml.namePlural", "STRING-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"xml.name", "ENCODING", "xml.namePlural", "ENCODINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"xml.name", "MAX-NUMBER-OF-CHARS", "xml.namePlural", "MAX-NUMBER-OF-CHARSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"xml.tags", "java.instanceClass=\"java.lang.Integer\"", "java.instanceClass", "java.lang.Integer", "xml.name", "INTEGER-TYPE", "xml.namePlural", "INTEGER-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"xml.tags", "java.instanceClass=\"java.lang.Float\"", "java.instanceClass", "java.lang.Float", "xml.name", "REAL-TYPE", "xml.namePlural", "REAL-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"xml.tags", "xml.name=\"ALLOW-NAN\"", "xml.name", "ALLOW-NAN", "xml.sequenceOffset", "0", "xml.namePlural", "ALLOW-NA-NS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"xml.name", "ENCODING", "xml.namePlural", "ENCODINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum, source, new String[]{"xml.name", "REAL-TYPE-ENCODING-ENUM", "xml.namePlural", "REAL-TYPE-ENCODING-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "SINGLE", "xml.namePlural", "SINGLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.realTypeEncodingEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "DOUBLE", "xml.namePlural", "DOUBLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"xml.tags", "java.instanceClass=\"java.lang.Character\"", "java.instanceClass", "java.lang.Character", "xml.name", "CHAR-TYPE", "xml.namePlural", "CHAR-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "ENCODING", "xml.namePlural", "ENCODINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"xml.name", "ARRAY-TYPE", "xml.namePlural", "ARRAY-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getArrayType_Element(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "ELEMENT", "xml.namePlural", "ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"xml.name", "RECORD-TYPE", "xml.namePlural", "RECORD-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRecordType_Elements(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "ELEMENT", "xml.namePlural", "ELEMENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"xml.name", "DATA-PROTOTYPE", "xml.namePlural", "DATA-PROTOTYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false", "artop.abstract", "true"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_SwDataDefProps(), source, new String[]{"xml.name", "SW-DATA-DEF-PROPS", "xml.namePlural", "SW-DATA-DEF-PROPSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_Type(), source, new String[]{"xml.name", "TYPE-TREF", "xml.namePlural", "TYPE-TREFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"name", "AR-LIMIT", "kind", "simple", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getARLimit_IntervalType(), source, new String[]{"name", "INTERVAL-TYPE", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.getARLimit_Value(), source, new String[]{"name", ":0", "kind", "simple", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"name", "ARRAY-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"name", "MAX-NUMBER-OF-ELEMENTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"name", "BOOLEAN-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"name", "PRIMITIVE-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getPrimitiveType_SwDataDefProps(), source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"name", "DATATYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"name", "COMPOSITE-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"name", "OPAQUE-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"name", "NUMBER-OF-BITS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"name", "RANGE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRange_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRange_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"name", "RECORD-ELEMENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"name", "STRING-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"name", "ENCODING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"name", "MAX-NUMBER-OF-CHARS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"name", "INTEGER-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"name", "REAL-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"name", "ALLOW-NAN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"name", "ENCODING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"name", "CHAR-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"name", "ENCODING", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"name", "ARRAY-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getArrayType_Element(), source, new String[]{"name", "ELEMENT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"name", "RECORD-TYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRecordType_Elements(), source, new String[]{"name", "ELEMENTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"name", "DATA-PROTOTYPE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_SwDataDefProps(), source, new String[]{"name", "SW-DATA-DEF-PROPS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_Type(), source, new String[]{"name", "TYPE-TREF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"Stereotype", "atpPrototype"});
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"Stereotype", "atpMaxMultiplicity"});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"Stereotype", "atpPrototype"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"Stereotype", "atpType"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"Stereotype", "atpPrototype"});
        this.addAnnotation((ENamedElement)this.getDataPrototype_Type(), source, new String[]{"Stereotype", "isOfType"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.arLimitEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DataPrototypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_DataPrototype";
        this.addAnnotation((ENamedElement)this.arrayElementEClass, source, new String[]{"Name", "", "GUID", "{16357359-5458-4be4-856B-493496B1E222}", "Id", "-1830248475", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"Name", "", "GUID", "{2B15E6BB-C153-42f7-AAD2-4ECA037DD8CC}", "Id", "1500795251", "xml.sequenceOffset", "0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.getArrayElement_MaxNumberOfElements(), source, new String[]{"documentation", "The maximum number of elements that the array can contain."});
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"documentation", "This datatype represents a set containing the logical value true and false\r\n"});
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"documentation", "A primitive datatype consists of a set of allowed values."});
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"documentation", "Abstract base class for user defined (and AUTOSAR predefined) datatypes."});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"documentation", "This Datatype represents an array of exactly numberOfBits bits.  It is called \"opaque\" because this array of bits should be transported \"as is\" by the AUTOSAR RTE.\r\n"});
        this.addAnnotation((ENamedElement)this.getOpaqueType_NumberOfBits(), source, new String[]{"documentation", "The number of bits that are used to make up the opaque type."});
        this.addAnnotation((ENamedElement)this.rangeEClass, source, new String[]{"documentation", "Abstract class for specifying a range from lower limit to upper limit. "});
        this.addAnnotation((ENamedElement)this.getRange_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getRange_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.recordElementEClass, source, new String[]{"documentation", "An element in a record. "});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"documentation", "This represents a string of characters out of the character-set specified by the given encoding.\r\nThe maxNumberOfChars is the maximal number of characters which can be stored within the String. The actual number of bytes that is required to represent the string can be calculated out of maxNumberOfChars and the encoding:\r\n\r\nbytes required to represent the string =\r\nmaxNumberOfChars * (max bytes per character using the given encoding) + 1 (terminating null)\r\n"});
        this.addAnnotation((ENamedElement)this.getStringType_Encoding(), source, new String[]{"documentation", "Specification of character encoding, e. g. ISO-8859-1."});
        this.addAnnotation((ENamedElement)this.getStringType_MaxNumberOfChars(), source, new String[]{"documentation", "The maxNumberOfChars is the maximum number of characters that can be stored in the string. "});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"documentation", "This data-type are the integers in the interval defined by the Range."});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"documentation", "This represents a range of reals that can be represented by either the IEEE 754 \"Single Precision\" (encoding is \"Single\") or IEEE 754 \"Double Precision\" (encoding is \"Double\") arithmetic.\r\nNote that these standards include representations for +infinity, -infinity, QNaN and SNaN.  When defining a RealType, one must indicate whether these special values are allowed or not. \r\n\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.getRealType_AllowNaN(), source, new String[]{"documentation", "Denotes whether this data type permits for \"not a number\" being represented by the type"});
        this.addAnnotation((ENamedElement)this.getRealType_Encoding(), source, new String[]{"documentation", "Denotes whether single or double precision is used."});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"documentation", "This represents a character belonging to the character-set specified in the encoding.  The semantics are built-in into this datatype."});
        this.addAnnotation((ENamedElement)this.getCharType_Encoding(), source, new String[]{"documentation", "Specification of character encoding, e.g. ISO-8859-1"});
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"documentation", "Base class for prototypical roles of a datatype."});
        this.addAnnotation((ENamedElement)this.getDataPrototype_SwDataDefProps(), source, new String[]{"documentation", "This element describes all of the distinguishing characteristics of a data object (variable or parameter). <swDataDefProps> is used in every case, where characteristics of data objects must be given.\r\n\r\nIt is inevitable that not all of the inputs are useful all of the time. Hence, the process definition or the DCI has the task of implementing limitations.\r\n\r\nThe <swDataDefProps> describe the characteristics of all axes:\r\n\r\n* The characteristics of the argument axes (abscissas) are described in <swCalprmAxisSet> .\r\n\r\n* The characteristics of the value axis are described directly in <swDataDefProps> ."});
    }

    protected void createTaggedValuesOfGeneralization_PrimitiveTypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_PrimitiveType";
        this.addAnnotation((ENamedElement)this.booleanTypeEClass, source, new String[]{"Name", "", "GUID", "{EADD8654-57AA-4ae2-8A5E-135D6A682339}", "Id", "1253389466", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.opaqueTypeEClass, source, new String[]{"Name", "", "GUID", "{148C092C-3E14-40d9-8BC9-0E8F62B79223}", "Id", "-1988865619", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.stringTypeEClass, source, new String[]{"Name", "", "GUID", "{27C6F22A-A297-472c-B453-651B1986A9B5}", "Id", "-955944996", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"Name", "", "GUID", "{FAF88942-A52D-4cb9-9116-9F0AFD4E825B}", "Id", "-1564151088", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"Name", "", "GUID", "{7B088FF0-6842-4646-84DE-7127B3374C68}", "Id", "-99592834", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.charTypeEClass, source, new String[]{"Name", "", "GUID", "{560DAD22-510F-4f3f-A029-4D7D0A0E97E7}", "Id", "187579175", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_DatatypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_Datatype";
        this.addAnnotation((ENamedElement)this.primitiveTypeEClass, source, new String[]{"Name", "", "GUID", "{ECC77238-0C92-4ebe-919B-5FBC9573F9FD}", "Id", "602907555", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compositeTypeEClass, source, new String[]{"Name", "", "GUID", "{EDA79A89-1D9C-47f6-B839-57031E8ED9CC}", "Id", "-680622719", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.datatypeEClass, source, new String[]{"Name", "", "GUID", "{1685F822-225D-410e-9694-2F40A026A5FF}", "Id", "755312288", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_RangeAnnotations() {
        String source = "TaggedValuesOfGeneralization_Range";
        this.addAnnotation((ENamedElement)this.integerTypeEClass, source, new String[]{"Name", "", "GUID", "{3801D1EF-91A8-45d0-A20C-4F85BD8C5B07}", "Id", "745918757", "xml.sequenceOffset", "1"});
        this.addAnnotation((ENamedElement)this.realTypeEClass, source, new String[]{"Name", "", "GUID", "{34891DE3-AC07-4710-8028-4897C1251946}", "Id", "-86179454", "xml.sequenceOffset", "1"});
    }

    protected void createTaggedValuesOfGeneralization_CompositeTypeAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompositeType";
        this.addAnnotation((ENamedElement)this.arrayTypeEClass, source, new String[]{"Name", "", "GUID", "{84D22C56-80B9-4d97-847D-DF2465D7DF36}", "Id", "-21753893", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.recordTypeEClass, source, new String[]{"Name", "", "GUID", "{6F50F70C-366C-4814-AB89-34FC1BC0092C}", "Id", "2074446720", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.dataPrototypeEClass, source, new String[]{"Name", "", "GUID", "{57B4A8D7-2C93-413e-844F-53E4D27D4BD8}", "Id", "1359952852", "xml.sequenceOffset", "0"});
    }
}

