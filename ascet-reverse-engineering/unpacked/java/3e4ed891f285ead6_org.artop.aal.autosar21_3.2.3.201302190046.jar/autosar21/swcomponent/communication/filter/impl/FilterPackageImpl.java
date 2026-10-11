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
package autosar21.swcomponent.communication.filter.impl;

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
import autosar21.swcomponent.communication.CommunicationPackage;
import autosar21.swcomponent.communication.filter.Always;
import autosar21.swcomponent.communication.filter.DataFilter;
import autosar21.swcomponent.communication.filter.FilterFactory;
import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewDiffersX;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsMaskedOld;
import autosar21.swcomponent.communication.filter.MaskedNewEqualsX;
import autosar21.swcomponent.communication.filter.Never;
import autosar21.swcomponent.communication.filter.NewIsDifferent;
import autosar21.swcomponent.communication.filter.NewIsEqual;
import autosar21.swcomponent.communication.filter.NewIsGreater;
import autosar21.swcomponent.communication.filter.NewIsGreaterOrEqual;
import autosar21.swcomponent.communication.filter.NewIsLess;
import autosar21.swcomponent.communication.filter.NewIsLessOrEqual;
import autosar21.swcomponent.communication.filter.NewIsOutside;
import autosar21.swcomponent.communication.filter.NewIsWithin;
import autosar21.swcomponent.communication.filter.OneEveryN;
import autosar21.swcomponent.communication.filter.util.FilterValidator;
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
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EValidator;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class FilterPackageImpl
extends EPackageImpl
implements FilterPackage {
    private EClass alwaysEClass = null;
    private EClass maskedNewDiffersMaskedOldEClass = null;
    private EClass maskedNewDiffersXEClass = null;
    private EClass maskedNewEqualsMaskedOldEClass = null;
    private EClass maskedNewEqualsXEClass = null;
    private EClass neverEClass = null;
    private EClass newIsDifferentEClass = null;
    private EClass newIsEqualEClass = null;
    private EClass newIsGreaterEClass = null;
    private EClass newIsGreaterOrEqualEClass = null;
    private EClass newIsLessEClass = null;
    private EClass newIsLessOrEqualEClass = null;
    private EClass newIsOutsideEClass = null;
    private EClass newIsWithinEClass = null;
    private EClass oneEveryNEClass = null;
    private EClass dataFilterEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private FilterPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/communication/f", (EFactory)FilterFactory.eINSTANCE);
    }

    public static FilterPackage init() {
        if (isInited) {
            return (FilterPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/f");
        }
        FilterPackageImpl theFilterPackage = (FilterPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/communication/f") instanceof FilterPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/communication/f") : new FilterPackageImpl());
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
        CommunicationPackageImpl theCommunicationPackage = (CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") instanceof CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication") : CommunicationPackage.eINSTANCE);
        autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_5 = (autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/r") instanceof autosar21.swcomponent.communication.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication/r") : autosar21.swcomponent.communication.instanceref.InstancerefPackage.eINSTANCE);
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
        autosar21.system.communication.impl.CommunicationPackageImpl theCommunicationPackage_1 = (autosar21.system.communication.impl.CommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") instanceof autosar21.system.communication.impl.CommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/s/c") : autosar21.system.communication.CommunicationPackage.eINSTANCE);
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
        theFilterPackage.createPackageContents();
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
        theFilterPackage.initializePackageContents();
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
        EValidator.Registry.INSTANCE.put((Object)theFilterPackage, (Object)new EValidator.Descriptor(){

            public EValidator getEValidator() {
                return FilterValidator.INSTANCE;
            }
        });
        theFilterPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/communication/f", (Object)theFilterPackage);
        return theFilterPackage;
    }

    public EClass getAlways() {
        return this.alwaysEClass;
    }

    public EClass getMaskedNewDiffersMaskedOld() {
        return this.maskedNewDiffersMaskedOldEClass;
    }

    public EAttribute getMaskedNewDiffersMaskedOld_Mask() {
        return (EAttribute)this.maskedNewDiffersMaskedOldEClass.getEStructuralFeatures().get(0);
    }

    public EClass getMaskedNewDiffersX() {
        return this.maskedNewDiffersXEClass;
    }

    public EAttribute getMaskedNewDiffersX_Mask() {
        return (EAttribute)this.maskedNewDiffersXEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getMaskedNewDiffersX_X() {
        return (EAttribute)this.maskedNewDiffersXEClass.getEStructuralFeatures().get(1);
    }

    public EClass getMaskedNewEqualsMaskedOld() {
        return this.maskedNewEqualsMaskedOldEClass;
    }

    public EAttribute getMaskedNewEqualsMaskedOld_Mask() {
        return (EAttribute)this.maskedNewEqualsMaskedOldEClass.getEStructuralFeatures().get(0);
    }

    public EClass getMaskedNewEqualsX() {
        return this.maskedNewEqualsXEClass;
    }

    public EAttribute getMaskedNewEqualsX_Mask() {
        return (EAttribute)this.maskedNewEqualsXEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getMaskedNewEqualsX_X() {
        return (EAttribute)this.maskedNewEqualsXEClass.getEStructuralFeatures().get(1);
    }

    public EClass getNever() {
        return this.neverEClass;
    }

    public EClass getNewIsDifferent() {
        return this.newIsDifferentEClass;
    }

    public EClass getNewIsEqual() {
        return this.newIsEqualEClass;
    }

    public EClass getNewIsGreater() {
        return this.newIsGreaterEClass;
    }

    public EClass getNewIsGreaterOrEqual() {
        return this.newIsGreaterOrEqualEClass;
    }

    public EClass getNewIsLess() {
        return this.newIsLessEClass;
    }

    public EClass getNewIsLessOrEqual() {
        return this.newIsLessOrEqualEClass;
    }

    public EClass getNewIsOutside() {
        return this.newIsOutsideEClass;
    }

    public EAttribute getNewIsOutside_Max() {
        return (EAttribute)this.newIsOutsideEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getNewIsOutside_Min() {
        return (EAttribute)this.newIsOutsideEClass.getEStructuralFeatures().get(1);
    }

    public EClass getNewIsWithin() {
        return this.newIsWithinEClass;
    }

    public EAttribute getNewIsWithin_Max() {
        return (EAttribute)this.newIsWithinEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getNewIsWithin_Min() {
        return (EAttribute)this.newIsWithinEClass.getEStructuralFeatures().get(1);
    }

    public EClass getOneEveryN() {
        return this.oneEveryNEClass;
    }

    public EAttribute getOneEveryN_Occurrence() {
        return (EAttribute)this.oneEveryNEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getOneEveryN_Offset() {
        return (EAttribute)this.oneEveryNEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getOneEveryN_Period() {
        return (EAttribute)this.oneEveryNEClass.getEStructuralFeatures().get(2);
    }

    public EClass getDataFilter() {
        return this.dataFilterEClass;
    }

    public EReference getDataFilter_ReceiverComSpec() {
        return (EReference)this.dataFilterEClass.getEStructuralFeatures().get(0);
    }

    public FilterFactory getFilterFactory() {
        return (FilterFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.alwaysEClass = this.createEClass(0);
        this.maskedNewDiffersMaskedOldEClass = this.createEClass(1);
        this.createEAttribute(this.maskedNewDiffersMaskedOldEClass, 5);
        this.maskedNewDiffersXEClass = this.createEClass(2);
        this.createEAttribute(this.maskedNewDiffersXEClass, 5);
        this.createEAttribute(this.maskedNewDiffersXEClass, 6);
        this.maskedNewEqualsMaskedOldEClass = this.createEClass(3);
        this.createEAttribute(this.maskedNewEqualsMaskedOldEClass, 5);
        this.maskedNewEqualsXEClass = this.createEClass(4);
        this.createEAttribute(this.maskedNewEqualsXEClass, 5);
        this.createEAttribute(this.maskedNewEqualsXEClass, 6);
        this.neverEClass = this.createEClass(5);
        this.newIsDifferentEClass = this.createEClass(6);
        this.newIsEqualEClass = this.createEClass(7);
        this.newIsGreaterEClass = this.createEClass(8);
        this.newIsGreaterOrEqualEClass = this.createEClass(9);
        this.newIsLessEClass = this.createEClass(10);
        this.newIsLessOrEqualEClass = this.createEClass(11);
        this.newIsOutsideEClass = this.createEClass(12);
        this.createEAttribute(this.newIsOutsideEClass, 5);
        this.createEAttribute(this.newIsOutsideEClass, 6);
        this.newIsWithinEClass = this.createEClass(13);
        this.createEAttribute(this.newIsWithinEClass, 5);
        this.createEAttribute(this.newIsWithinEClass, 6);
        this.oneEveryNEClass = this.createEClass(14);
        this.createEAttribute(this.oneEveryNEClass, 5);
        this.createEAttribute(this.oneEveryNEClass, 6);
        this.createEAttribute(this.oneEveryNEClass, 7);
        this.dataFilterEClass = this.createEClass(15);
        this.createEReference(this.dataFilterEClass, 4);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("filter");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/communication/f");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        CommunicationPackage theCommunicationPackage = (CommunicationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/communication");
        this.alwaysEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.maskedNewDiffersMaskedOldEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.maskedNewDiffersXEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.maskedNewEqualsMaskedOldEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.maskedNewEqualsXEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.neverEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsDifferentEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsEqualEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsGreaterEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsGreaterOrEqualEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsLessEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsLessOrEqualEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsOutsideEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.newIsWithinEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.oneEveryNEClass.getESuperTypes().add((Object)this.getDataFilter());
        this.dataFilterEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.alwaysEClass, Always.class, "Always", false, false, true);
        this.initEClass(this.maskedNewDiffersMaskedOldEClass, MaskedNewDiffersMaskedOld.class, "MaskedNewDiffersMaskedOld", false, false, true);
        this.initEAttribute(this.getMaskedNewDiffersMaskedOld_Mask(), (EClassifier)thePrimitivetypesPackage.getInteger(), "mask", "0", 0, 1, MaskedNewDiffersMaskedOld.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.maskedNewDiffersXEClass, MaskedNewDiffersX.class, "MaskedNewDiffersX", false, false, true);
        this.initEAttribute(this.getMaskedNewDiffersX_Mask(), (EClassifier)thePrimitivetypesPackage.getInteger(), "mask", "0", 0, 1, MaskedNewDiffersX.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMaskedNewDiffersX_X(), (EClassifier)thePrimitivetypesPackage.getInteger(), "x", "0", 0, 1, MaskedNewDiffersX.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.maskedNewEqualsMaskedOldEClass, MaskedNewEqualsMaskedOld.class, "MaskedNewEqualsMaskedOld", false, false, true);
        this.initEAttribute(this.getMaskedNewEqualsMaskedOld_Mask(), (EClassifier)thePrimitivetypesPackage.getInteger(), "mask", "0", 0, 1, MaskedNewEqualsMaskedOld.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.maskedNewEqualsXEClass, MaskedNewEqualsX.class, "MaskedNewEqualsX", false, false, true);
        this.initEAttribute(this.getMaskedNewEqualsX_Mask(), (EClassifier)thePrimitivetypesPackage.getInteger(), "mask", "0", 0, 1, MaskedNewEqualsX.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getMaskedNewEqualsX_X(), (EClassifier)thePrimitivetypesPackage.getInteger(), "x", "0", 0, 1, MaskedNewEqualsX.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.neverEClass, Never.class, "Never", false, false, true);
        this.initEClass(this.newIsDifferentEClass, NewIsDifferent.class, "NewIsDifferent", false, false, true);
        this.initEClass(this.newIsEqualEClass, NewIsEqual.class, "NewIsEqual", false, false, true);
        this.initEClass(this.newIsGreaterEClass, NewIsGreater.class, "NewIsGreater", false, false, true);
        this.initEClass(this.newIsGreaterOrEqualEClass, NewIsGreaterOrEqual.class, "NewIsGreaterOrEqual", false, false, true);
        this.initEClass(this.newIsLessEClass, NewIsLess.class, "NewIsLess", false, false, true);
        this.initEClass(this.newIsLessOrEqualEClass, NewIsLessOrEqual.class, "NewIsLessOrEqual", false, false, true);
        this.initEClass(this.newIsOutsideEClass, NewIsOutside.class, "NewIsOutside", false, false, true);
        this.initEAttribute(this.getNewIsOutside_Max(), (EClassifier)thePrimitivetypesPackage.getInteger(), "max", "0", 0, 1, NewIsOutside.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNewIsOutside_Min(), (EClassifier)thePrimitivetypesPackage.getInteger(), "min", "0", 0, 1, NewIsOutside.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.newIsWithinEClass, NewIsWithin.class, "NewIsWithin", false, false, true);
        this.initEAttribute(this.getNewIsWithin_Max(), (EClassifier)thePrimitivetypesPackage.getInteger(), "max", "0", 0, 1, NewIsWithin.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getNewIsWithin_Min(), (EClassifier)thePrimitivetypesPackage.getInteger(), "min", "0", 0, 1, NewIsWithin.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.oneEveryNEClass, OneEveryN.class, "OneEveryN", false, false, true);
        this.initEAttribute(this.getOneEveryN_Occurrence(), (EClassifier)thePrimitivetypesPackage.getInteger(), "occurrence", "0", 0, 1, OneEveryN.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOneEveryN_Offset(), (EClassifier)thePrimitivetypesPackage.getInteger(), "offset", "0", 0, 1, OneEveryN.class, false, false, true, true, false, true, false, true);
        this.initEAttribute(this.getOneEveryN_Period(), (EClassifier)thePrimitivetypesPackage.getInteger(), "period", "0", 0, 1, OneEveryN.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.dataFilterEClass, DataFilter.class, "DataFilter", true, false, true);
        this.initEReference(this.getDataFilter_ReceiverComSpec(), (EClassifier)theCommunicationPackage.getReceiverComSpec(), theCommunicationPackage.getReceiverComSpec_Filter(), "receiverComSpec", null, 0, 1, DataFilter.class, true, false, true, false, false, false, true, false, true);
        EOperation op = this.addEOperation(this.dataFilterEClass, (EClassifier)this.ecorePackage.getEBoolean(), "mask0", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.ecorePackage.getEDiagnosticChain(), "diagnostics", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEMap());
        EGenericType g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        g2 = this.createEGenericType((EClassifier)this.ecorePackage.getEJavaObject());
        g1.getETypeArguments().add((Object)g2);
        this.addEParameter(op, g1, "context", 0, 1, true, true);
        op = this.addEOperation(this.dataFilterEClass, (EClassifier)this.ecorePackage.getEBoolean(), "Periodgreater0", 0, 1, true, true);
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
        this.createTaggedValuesOfGeneralization_DataFilterAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "Filter", "GUID", "{70C7DBC8-2B51-4121-BDFA-C7D45089A523}", "Id", "-800327314"});
        this.addAnnotation((ENamedElement)this.alwaysEClass, source, new String[]{"Name", "Always", "Modified", "Thu Dec 01 10:00:16 CET 2005", "Created", "Thu Nov 24 14:25:20 CET 2005", "GUID", "{9964E95C-4F60-4099-A55A-1FF6226A8D7D}", "Id", "1073336591"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersMaskedOldEClass, source, new String[]{"Name", "MaskedNewDiffersMaskedOld", "Modified", "Thu Dec 01 10:00:42 CET 2005", "Created", "Thu Nov 24 15:06:06 CET 2005", "GUID", "{06BBBD1A-FDCA-432c-B386-0040751D9762}", "Id", "-1893765482"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersMaskedOld_Mask(), source, new String[]{"Name", "mask", "GUID", "{8A5FC953-AF32-4e95-A5C7-59F89D86C8D2}", "Id", "-1654573985"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersXEClass, source, new String[]{"Name", "MaskedNewDiffersX", "Modified", "Thu Dec 01 10:00:27 CET 2005", "Created", "Thu Nov 24 14:32:25 CET 2005", "GUID", "{D2D6A74D-3F2E-477a-A85E-A8C8EE44AF4C}", "Id", "-925016484"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_Mask(), source, new String[]{"Name", "mask", "GUID", "{4149BD79-DB98-4a37-AD75-A993056B41CA}", "Id", "756505578"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_X(), source, new String[]{"Name", "x", "GUID", "{A3AF5A41-1C21-4041-B33B-F1AF26340154}", "Id", "-55558611"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsMaskedOldEClass, source, new String[]{"Name", "MaskedNewEqualsMaskedOld", "Modified", "Thu Dec 01 10:39:20 CET 2005", "Created", "Thu Nov 24 15:06:06 CET 2005", "GUID", "{B31C4F56-6363-4658-8CAE-1B9A954426EF}", "Id", "1402160078"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsMaskedOld_Mask(), source, new String[]{"Name", "mask", "GUID", "{8A5FC953-AF32-4e95-A5C7-59F89D86C8D2}", "Id", "809857959"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsXEClass, source, new String[]{"Name", "MaskedNewEqualsX", "Modified", "Thu Dec 01 10:00:24 CET 2005", "Created", "Thu Nov 24 14:32:25 CET 2005", "GUID", "{9955F38A-E3C9-468d-9BD3-98C360C5D894}", "Id", "366790343"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_Mask(), source, new String[]{"Name", "mask", "GUID", "{4149BD79-DB98-4a37-AD75-A993056B41CA}", "Id", "1499146563"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_X(), source, new String[]{"Name", "x", "GUID", "{A3AF5A41-1C21-4041-B33B-F1AF26340154}", "Id", "-1449817718"});
        this.addAnnotation((ENamedElement)this.neverEClass, source, new String[]{"Name", "Never", "Modified", "Thu Dec 01 10:00:20 CET 2005", "Created", "Thu Nov 24 14:31:08 CET 2005", "GUID", "{7634DAAD-D660-4c87-828B-D88E9F654D44}", "Id", "1105700875"});
        this.addAnnotation((ENamedElement)this.newIsDifferentEClass, source, new String[]{"Name", "NewIsDifferent", "Modified", "Thu Dec 01 10:00:35 CET 2005", "Created", "Thu Nov 24 14:44:01 CET 2005", "GUID", "{4D42FC58-E6F0-4790-954A-88A19DE65C54}", "Id", "537660456"});
        this.addAnnotation((ENamedElement)this.newIsEqualEClass, source, new String[]{"Name", "NewIsEqual", "Modified", "Thu Dec 01 10:00:31 CET 2005", "Created", "Thu Nov 24 14:44:01 CET 2005", "GUID", "{6A3E1CF7-522A-4a88-BEC6-77FB72E89D07}", "Id", "-1780965548"});
        this.addAnnotation((ENamedElement)this.newIsGreaterEClass, source, new String[]{"Name", "NewIsGreater", "Modified", "Thu Dec 01 10:00:55 CET 2005", "Created", "Thu Nov 24 15:10:17 CET 2005", "GUID", "{AE8E288B-605D-4f4d-813F-0E39AAB96AD3}", "Id", "-682159868"});
        this.addAnnotation((ENamedElement)this.newIsGreaterOrEqualEClass, source, new String[]{"Name", "NewIsGreaterOrEqual", "Modified", "Thu Dec 01 10:01:06 CET 2005", "Created", "Thu Nov 24 15:10:17 CET 2005", "GUID", "{5B53C74C-5760-4ada-9E8C-D9759E1A9C02}", "Id", "477635613"});
        this.addAnnotation((ENamedElement)this.newIsLessEClass, source, new String[]{"Name", "NewIsLess", "Modified", "Thu Dec 01 10:01:03 CET 2005", "Created", "Thu Nov 24 15:10:17 CET 2005", "GUID", "{A8573C33-0594-4ae5-88CD-B8BB2DE89191}", "Id", "-1139137513"});
        this.addAnnotation((ENamedElement)this.newIsLessOrEqualEClass, source, new String[]{"Name", "NewIsLessOrEqual", "Modified", "Thu Dec 01 10:01:00 CET 2005", "Created", "Thu Nov 24 15:10:17 CET 2005", "GUID", "{457AAD20-3175-4b61-8A7C-A96D7FB91A94}", "Id", "-1265939967"});
        this.addAnnotation((ENamedElement)this.newIsOutsideEClass, source, new String[]{"Name", "NewIsOutside", "Modified", "Wed Dec 07 09:07:39 CET 2005", "Created", "Thu Nov 24 15:08:02 CET 2005", "GUID", "{7F220AC7-B703-4c48-88E8-D757CB554FE0}", "Id", "1647693221"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Max(), source, new String[]{"Name", "max", "GUID", "{1E55A08C-A2A2-4c8e-A983-42BED2AFFF62}", "Id", "290873435"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Min(), source, new String[]{"Name", "min", "GUID", "{86113D06-AEC9-4968-851C-91A5DFB9444D}", "Id", "-1971887102"});
        this.addAnnotation((ENamedElement)this.newIsWithinEClass, source, new String[]{"Name", "NewIsWithin", "Modified", "Wed Dec 07 09:07:35 CET 2005", "Created", "Thu Nov 24 15:08:02 CET 2005", "GUID", "{60458A31-7AF0-4981-9CCB-60370049CA1C}", "Id", "985971898"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Max(), source, new String[]{"Name", "max", "GUID", "{1E55A08C-A2A2-4c8e-A983-42BED2AFFF62}", "Id", "-648426983"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Min(), source, new String[]{"Name", "min", "GUID", "{86113D06-AEC9-4968-851C-91A5DFB9444D}", "Id", "-1645110920"});
        this.addAnnotation((ENamedElement)this.oneEveryNEClass, source, new String[]{"Name", "OneEveryN", "Modified", "Thu Dec 01 10:01:10 CET 2005", "Created", "Thu Nov 24 15:12:21 CET 2005", "GUID", "{4D9ABA1D-8A99-4f17-A4B4-3B9B0D74504B}", "Id", "795209426"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Occurrence(), source, new String[]{"Name", "occurrence", "GUID", "{0221255E-2A2C-4be5-9EB7-69571E96E1E3}", "Id", "787708240"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Offset(), source, new String[]{"Name", "offset", "GUID", "{8F8E152E-4A0E-41e6-A9C9-A2605816DEF2}", "Id", "1135362046"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Period(), source, new String[]{"Name", "period", "GUID", "{EBA620B4-02CD-46eb-8623-FE2371D9B4DF}", "Id", "-1010158831"});
        this.addAnnotation((ENamedElement)this.dataFilterEClass, source, new String[]{"Name", "DataFilter", "Modified", "Mon Jul 31 15:08:50 CEST 2006", "Created", "Thu Nov 24 13:35:44 CET 2005", "GUID", "{0317DF23-9BDA-4793-945A-6D90AC19BEDA}", "Id", "-1442780250"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "FILTER", "xml.namePlural", "FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.alwaysEClass, source, new String[]{"xml.name", "ALWAYS", "xml.namePlural", "ALWAYSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersMaskedOldEClass, source, new String[]{"xml.name", "MASKED-NEW-DIFFERS-MASKED-OLD", "xml.namePlural", "MASKED-NEW-DIFFERS-MASKED-OLDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersMaskedOld_Mask(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "MASK", "xml.namePlural", "MASKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersXEClass, source, new String[]{"xml.name", "MASKED-NEW-DIFFERS-X", "xml.namePlural", "MASKED-NEW-DIFFERS-XS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_Mask(), source, new String[]{"xml.name", "MASK", "xml.namePlural", "MASKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_X(), source, new String[]{"xml.name", "X", "xml.namePlural", "XS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsMaskedOldEClass, source, new String[]{"xml.name", "MASKED-NEW-EQUALS-MASKED-OLD", "xml.namePlural", "MASKED-NEW-EQUALS-MASKED-OLDS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsMaskedOld_Mask(), source, new String[]{"xml.sequenceOffset", "0", "xml.name", "MASK", "xml.namePlural", "MASKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsXEClass, source, new String[]{"xml.name", "MASKED-NEW-EQUALS-X", "xml.namePlural", "MASKED-NEW-EQUALS-XS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_Mask(), source, new String[]{"xml.name", "MASK", "xml.namePlural", "MASKS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_X(), source, new String[]{"xml.name", "X", "xml.namePlural", "XS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.neverEClass, source, new String[]{"xml.name", "NEVER", "xml.namePlural", "NEVERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.newIsDifferentEClass, source, new String[]{"xml.name", "NEW-IS-DIFFERENT", "xml.namePlural", "NEW-IS-DIFFERENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.newIsEqualEClass, source, new String[]{"xml.name", "NEW-IS-EQUAL", "xml.namePlural", "NEW-IS-EQUALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.newIsGreaterEClass, source, new String[]{"xml.name", "NEW-IS-GREATER", "xml.namePlural", "NEW-IS-GREATERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.newIsGreaterOrEqualEClass, source, new String[]{"xml.name", "NEW-IS-GREATER-OR-EQUAL", "xml.namePlural", "NEW-IS-GREATER-OR-EQUALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.newIsLessEClass, source, new String[]{"xml.name", "NEW-IS-LESS", "xml.namePlural", "NEW-IS-LESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.newIsLessOrEqualEClass, source, new String[]{"xml.name", "NEW-IS-LESS-OR-EQUAL", "xml.namePlural", "NEW-IS-LESS-OR-EQUALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.newIsOutsideEClass, source, new String[]{"xml.name", "NEW-IS-OUTSIDE", "xml.namePlural", "NEW-IS-OUTSIDES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Max(), source, new String[]{"xml.name", "MAX", "xml.namePlural", "MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Min(), source, new String[]{"xml.name", "MIN", "xml.namePlural", "MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.newIsWithinEClass, source, new String[]{"xml.name", "NEW-IS-WITHIN", "xml.namePlural", "NEW-IS-WITHINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Max(), source, new String[]{"xml.name", "MAX", "xml.namePlural", "MAXS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Min(), source, new String[]{"xml.name", "MIN", "xml.namePlural", "MINS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.oneEveryNEClass, source, new String[]{"xml.name", "ONE-EVERY-N", "xml.namePlural", "ONE-EVERY-NS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Occurrence(), source, new String[]{"xml.name", "OCCURRENCE", "xml.namePlural", "OCCURRENCES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Offset(), source, new String[]{"xml.name", "OFFSET", "xml.namePlural", "OFFSETS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Period(), source, new String[]{"xml.name", "PERIOD", "xml.namePlural", "PERIODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.dataFilterEClass, source, new String[]{"xml.name", "DATA-FILTER", "xml.namePlural", "DATA-FILTERS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.alwaysEClass, source, new String[]{"name", "ALWAYS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersMaskedOldEClass, source, new String[]{"name", "MASKED-NEW-DIFFERS-MASKED-OLD", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersMaskedOld_Mask(), source, new String[]{"name", "MASK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersXEClass, source, new String[]{"name", "MASKED-NEW-DIFFERS-X", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_Mask(), source, new String[]{"name", "MASK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_X(), source, new String[]{"name", "X", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsMaskedOldEClass, source, new String[]{"name", "MASKED-NEW-EQUALS-MASKED-OLD", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsMaskedOld_Mask(), source, new String[]{"name", "MASK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsXEClass, source, new String[]{"name", "MASKED-NEW-EQUALS-X", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_Mask(), source, new String[]{"name", "MASK", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_X(), source, new String[]{"name", "X", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.neverEClass, source, new String[]{"name", "NEVER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsDifferentEClass, source, new String[]{"name", "NEW-IS-DIFFERENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsEqualEClass, source, new String[]{"name", "NEW-IS-EQUAL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsGreaterEClass, source, new String[]{"name", "NEW-IS-GREATER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsGreaterOrEqualEClass, source, new String[]{"name", "NEW-IS-GREATER-OR-EQUAL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsLessEClass, source, new String[]{"name", "NEW-IS-LESS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsLessOrEqualEClass, source, new String[]{"name", "NEW-IS-LESS-OR-EQUAL", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsOutsideEClass, source, new String[]{"name", "NEW-IS-OUTSIDE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.newIsWithinEClass, source, new String[]{"name", "NEW-IS-WITHIN", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Max(), source, new String[]{"name", "MAX", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Min(), source, new String[]{"name", "MIN", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.oneEveryNEClass, source, new String[]{"name", "ONE-EVERY-N", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Occurrence(), source, new String[]{"name", "OCCURRENCE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Offset(), source, new String[]{"name", "OFFSET", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getOneEveryN_Period(), source, new String[]{"name", "PERIOD", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.dataFilterEClass, source, new String[]{"name", "DATA-FILTER", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.alwaysEClass, source, new String[]{"documentation", "No filtering is performed so that the message always passes."});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersMaskedOldEClass, source, new String[]{"documentation", "Pass messages where the masked value has changed.\r\n\r\n(new_value&mask) !=(old_value&mask)\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersMaskedOld_Mask(), source, new String[]{"documentation", "mask for old and new value"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersXEClass, source, new String[]{"documentation", "Pass messages whose masked value is not equal to a specific value x\r\n\r\n(new_value&mask) != x\r\nnew_value: current value of the message"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_Mask(), source, new String[]{"documentation", "mask for the new Value"});
        this.addAnnotation((ENamedElement)this.getMaskedNewDiffersX_X(), source, new String[]{"documentation", "Value to compare with"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsMaskedOldEClass, source, new String[]{"documentation", "Pass messages where the masked value has not changed.\r\n\r\n(new_value&mask) ==(old_value&mask)\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsMaskedOld_Mask(), source, new String[]{"documentation", "mask for old and new value"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsXEClass, source, new String[]{"documentation", "Pass messages whose masked value is equal to a specific value x\r\n\r\n(new_value&mask) == x\r\nnew_value: current value of the message"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_Mask(), source, new String[]{"documentation", "mask for the new Value"});
        this.addAnnotation((ENamedElement)this.getMaskedNewEqualsX_X(), source, new String[]{"documentation", "Value to compare with"});
        this.addAnnotation((ENamedElement)this.neverEClass, source, new String[]{"documentation", "The filter removes all messages."});
        this.addAnnotation((ENamedElement)this.newIsDifferentEClass, source, new String[]{"documentation", "Pass messages which have changed.\r\n\r\nnewValue != oldValue\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.newIsEqualEClass, source, new String[]{"documentation", "Pass messages which have not changed.\r\n\r\nnewValue == oldValue\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.newIsGreaterEClass, source, new String[]{"documentation", "Pass a message if its value has increased.\r\n\r\nnew_value > old_value\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n"});
        this.addAnnotation((ENamedElement)this.newIsGreaterOrEqualEClass, source, new String[]{"documentation", "Pass a message if its value has not decreased.\r\n\r\nnew_value >= old_value\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n"});
        this.addAnnotation((ENamedElement)this.newIsLessEClass, source, new String[]{"documentation", "Pass a message if its value has decreased.\r\n\r\nnew_value < old_value\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n"});
        this.addAnnotation((ENamedElement)this.newIsLessOrEqualEClass, source, new String[]{"documentation", "Pass a message if its value has not increased.\r\n\r\nnew_value <= old_value\r\nnew_value: current value of the message\r\nold_value: last value of the message (initialised with the initial value of the message, updated with new_value if the new message value is not filtered out)\r\n"});
        this.addAnnotation((ENamedElement)this.newIsOutsideEClass, source, new String[]{"documentation", "Pass a message if its value is outside a predefined boundary.\r\n\r\n(min > new_value) OR (new_value > max)"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Max(), source, new String[]{"documentation", "Value to specify the lower bounddary"});
        this.addAnnotation((ENamedElement)this.getNewIsOutside_Min(), source, new String[]{"documentation", "Value to specify the lower bounddary"});
        this.addAnnotation((ENamedElement)this.newIsWithinEClass, source, new String[]{"documentation", "Pass a message if its value is within a predefined boundary.\r\n\r\nmin <= new_value <= max"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Max(), source, new String[]{"documentation", "Value to specify the lower bounddary"});
        this.addAnnotation((ENamedElement)this.getNewIsWithin_Min(), source, new String[]{"documentation", "Value to specify the lower bounddary"});
        this.addAnnotation((ENamedElement)this.oneEveryNEClass, source, new String[]{"documentation", "Pass a message once every N message occurrences.\r\nStart: occurrence = 0.\r\nEach time the message is received or transmitted, occurrence is incremented by 1 after filtering.\r\nLength of occurrence is 8 bit (minimum)."});
        this.addAnnotation((ENamedElement)this.dataFilterEClass, source, new String[]{"documentation", "Base class for data filters."});
        this.addAnnotation((ENamedElement)this.dataFilterEClass.getEOperations().get(1), source, new String[]{"documentation", "language: informal"});
    }

    protected void createTaggedValuesOfGeneralization_DataFilterAnnotations() {
        String source = "TaggedValuesOfGeneralization_DataFilter";
        this.addAnnotation((ENamedElement)this.alwaysEClass, source, new String[]{"Name", "", "GUID", "{243958E0-E7B0-4cae-8385-4D3B95D8E4C0}", "Id", "-1821314536", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersMaskedOldEClass, source, new String[]{"Name", "", "GUID", "{638BF569-2FDA-465d-85F6-D99D3E12953A}", "Id", "581633520", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersXEClass, source, new String[]{"Name", "", "GUID", "{4C5D27EE-B0F6-465e-9060-4EF075DDDAB2}", "Id", "-811453532", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsMaskedOldEClass, source, new String[]{"Name", "", "GUID", "{FA756E1D-A083-4bf1-BAEB-77BAFE385171}", "Id", "-1074992629", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsXEClass, source, new String[]{"Name", "", "GUID", "{975B7EA5-16F5-4b5f-9FC8-B6DB5AAD89A2}", "Id", "2092495631", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.neverEClass, source, new String[]{"Name", "", "GUID", "{132B989F-1569-4b64-9BE0-288BB1AA479D}", "Id", "-498595885", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsDifferentEClass, source, new String[]{"Name", "", "GUID", "{AD0E97ED-C9AF-4b67-95F5-D8250AE998F0}", "Id", "1543262834", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsEqualEClass, source, new String[]{"Name", "", "GUID", "{9498373B-A7BE-4cdd-892E-C862D352D406}", "Id", "-286757931", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsGreaterEClass, source, new String[]{"Name", "", "GUID", "{F8783CB0-DC11-4538-9F91-A4F3D3FD5F2F}", "Id", "-2033571641", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsGreaterOrEqualEClass, source, new String[]{"Name", "", "GUID", "{2636250D-9283-4e99-B5D1-1DB27112B1A5}", "Id", "-1639559992", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsLessEClass, source, new String[]{"Name", "", "GUID", "{96A0D887-ABD8-4770-8DF4-9C8783A3A82D}", "Id", "-627804083", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsLessOrEqualEClass, source, new String[]{"Name", "", "GUID", "{388549DC-F7A0-4b74-8BEE-65ECB0F0A074}", "Id", "1106386998", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsOutsideEClass, source, new String[]{"Name", "", "GUID", "{C8DE20C6-FE02-472b-86D6-35D90D47C4F2}", "Id", "1877810590", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.newIsWithinEClass, source, new String[]{"Name", "", "GUID", "{9EFA8D4B-290B-454a-9AD9-D8E1F280D9AD}", "Id", "-1956271311", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.oneEveryNEClass, source, new String[]{"Name", "", "GUID", "{31982C68-733B-4fbd-8201-B0D473C23638}", "Id", "1163341609", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.alwaysEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersMaskedOldEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.maskedNewDiffersXEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsMaskedOldEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.maskedNewEqualsXEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.neverEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsDifferentEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsEqualEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsGreaterEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsGreaterOrEqualEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsLessEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsLessOrEqualEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsOutsideEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.newIsWithinEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.oneEveryNEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.dataFilterEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.dataFilterEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

