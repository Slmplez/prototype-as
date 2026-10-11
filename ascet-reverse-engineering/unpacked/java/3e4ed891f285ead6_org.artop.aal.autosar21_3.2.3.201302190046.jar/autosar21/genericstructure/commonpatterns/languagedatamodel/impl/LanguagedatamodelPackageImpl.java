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
package autosar21.genericstructure.commonpatterns.languagedatamodel.impl;

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
import autosar21.genericstructure.commonpatterns.languagedatamodel.L1;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L10;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L3;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.L5;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LEnum;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelFactory;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel1;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel10;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel3;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel5;
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
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class LanguagedatamodelPackageImpl
extends EPackageImpl
implements LanguagedatamodelPackage {
    private EClass l1EClass = null;
    private EClass l10EClass = null;
    private EClass l2EClass = null;
    private EClass l3EClass = null;
    private EClass l4EClass = null;
    private EClass l5EClass = null;
    private EClass mlDataModel1EClass = null;
    private EClass mlDataModel10EClass = null;
    private EClass mlDataModel2EClass = null;
    private EClass mlDataModel3EClass = null;
    private EClass mlDataModel4EClass = null;
    private EClass mlDataModel5EClass = null;
    private EEnum lEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private LanguagedatamodelPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/gs/cp/ldm", (EFactory)LanguagedatamodelFactory.eINSTANCE);
    }

    public static LanguagedatamodelPackage init() {
        if (isInited) {
            return (LanguagedatamodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/ldm");
        }
        LanguagedatamodelPackageImpl theLanguagedatamodelPackage = (LanguagedatamodelPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/gs/cp/ldm") instanceof LanguagedatamodelPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/gs/cp/ldm") : new LanguagedatamodelPackageImpl());
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
        EcucdescriptionPackageImpl theEcucdescriptionPackage = (EcucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") instanceof EcucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd") : EcucdescriptionPackage.eINSTANCE);
        autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl theInstancerefPackage_16 = (autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") instanceof autosar21.ecucdescription.instanceref.impl.InstancerefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucd/r") : autosar21.ecucdescription.instanceref.InstancerefPackage.eINSTANCE);
        EcucparameterdefPackageImpl theEcucparameterdefPackage = (EcucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") instanceof EcucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/ecucpd") : EcucparameterdefPackage.eINSTANCE);
        theLanguagedatamodelPackage.createPackageContents();
        theInfrastructurePackage.createPackageContents();
        theAutosarPackage.createPackageContents();
        theIdentifiablePackage.createPackageContents();
        theEnumerationsPackage.createPackageContents();
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
        theEcucdescriptionPackage.createPackageContents();
        theInstancerefPackage_16.createPackageContents();
        theEcucparameterdefPackage.createPackageContents();
        theLanguagedatamodelPackage.initializePackageContents();
        theInfrastructurePackage.initializePackageContents();
        theAutosarPackage.initializePackageContents();
        theIdentifiablePackage.initializePackageContents();
        theEnumerationsPackage.initializePackageContents();
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
        theEcucdescriptionPackage.initializePackageContents();
        theInstancerefPackage_16.initializePackageContents();
        theEcucparameterdefPackage.initializePackageContents();
        theLanguagedatamodelPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/gs/cp/ldm", (Object)theLanguagedatamodelPackage);
        return theLanguagedatamodelPackage;
    }

    public EClass getL1() {
        return this.l1EClass;
    }

    public EReference getL1_MlDataModel1() {
        return (EReference)this.l1EClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getL1_L() {
        return (EAttribute)this.l1EClass.getEStructuralFeatures().get(1);
    }

    public EClass getL10() {
        return this.l10EClass;
    }

    public EReference getL10_MlDataModel10() {
        return (EReference)this.l10EClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getL10_L() {
        return (EAttribute)this.l10EClass.getEStructuralFeatures().get(1);
    }

    public EClass getL2() {
        return this.l2EClass;
    }

    public EReference getL2_MlDataModel2() {
        return (EReference)this.l2EClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getL2_L() {
        return (EAttribute)this.l2EClass.getEStructuralFeatures().get(1);
    }

    public EClass getL3() {
        return this.l3EClass;
    }

    public EReference getL3_MlDataModel3() {
        return (EReference)this.l3EClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getL3_L() {
        return (EAttribute)this.l3EClass.getEStructuralFeatures().get(1);
    }

    public EClass getL4() {
        return this.l4EClass;
    }

    public EReference getL4_MlDataModel4() {
        return (EReference)this.l4EClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getL4_L() {
        return (EAttribute)this.l4EClass.getEStructuralFeatures().get(1);
    }

    public EClass getL5() {
        return this.l5EClass;
    }

    public EReference getL5_MlDataModel5() {
        return (EReference)this.l5EClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getL5_L() {
        return (EAttribute)this.l5EClass.getEStructuralFeatures().get(1);
    }

    public EClass getMlDataModel1() {
        return this.mlDataModel1EClass;
    }

    public EReference getMlDataModel1_L1s() {
        return (EReference)this.mlDataModel1EClass.getEStructuralFeatures().get(0);
    }

    public EClass getMlDataModel10() {
        return this.mlDataModel10EClass;
    }

    public EReference getMlDataModel10_L10s() {
        return (EReference)this.mlDataModel10EClass.getEStructuralFeatures().get(0);
    }

    public EClass getMlDataModel2() {
        return this.mlDataModel2EClass;
    }

    public EReference getMlDataModel2_L2s() {
        return (EReference)this.mlDataModel2EClass.getEStructuralFeatures().get(0);
    }

    public EClass getMlDataModel3() {
        return this.mlDataModel3EClass;
    }

    public EReference getMlDataModel3_L3s() {
        return (EReference)this.mlDataModel3EClass.getEStructuralFeatures().get(0);
    }

    public EClass getMlDataModel4() {
        return this.mlDataModel4EClass;
    }

    public EReference getMlDataModel4_L4s() {
        return (EReference)this.mlDataModel4EClass.getEStructuralFeatures().get(0);
    }

    public EClass getMlDataModel5() {
        return this.mlDataModel5EClass;
    }

    public EReference getMlDataModel5_L5s() {
        return (EReference)this.mlDataModel5EClass.getEStructuralFeatures().get(0);
    }

    public EEnum getLEnum() {
        return this.lEnumEEnum;
    }

    public LanguagedatamodelFactory getLanguagedatamodelFactory() {
        return (LanguagedatamodelFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.l1EClass = this.createEClass(0);
        this.createEReference(this.l1EClass, 5);
        this.createEAttribute(this.l1EClass, 6);
        this.l10EClass = this.createEClass(1);
        this.createEReference(this.l10EClass, 5);
        this.createEAttribute(this.l10EClass, 6);
        this.l2EClass = this.createEClass(2);
        this.createEReference(this.l2EClass, 5);
        this.createEAttribute(this.l2EClass, 6);
        this.l3EClass = this.createEClass(3);
        this.createEReference(this.l3EClass, 5);
        this.createEAttribute(this.l3EClass, 6);
        this.l4EClass = this.createEClass(4);
        this.createEReference(this.l4EClass, 5);
        this.createEAttribute(this.l4EClass, 6);
        this.l5EClass = this.createEClass(5);
        this.createEReference(this.l5EClass, 5);
        this.createEAttribute(this.l5EClass, 6);
        this.mlDataModel1EClass = this.createEClass(6);
        this.createEReference(this.mlDataModel1EClass, 4);
        this.mlDataModel10EClass = this.createEClass(7);
        this.createEReference(this.mlDataModel10EClass, 4);
        this.mlDataModel2EClass = this.createEClass(8);
        this.createEReference(this.mlDataModel2EClass, 4);
        this.mlDataModel3EClass = this.createEClass(9);
        this.createEReference(this.mlDataModel3EClass, 4);
        this.mlDataModel4EClass = this.createEClass(10);
        this.createEReference(this.mlDataModel4EClass, 4);
        this.mlDataModel5EClass = this.createEClass(11);
        this.createEReference(this.mlDataModel5EClass, 4);
        this.lEnumEEnum = this.createEEnum(12);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("languagedatamodel");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/gs/cp/ldm");
        InlinetextmodelPackage theInlinetextmodelPackage = (InlinetextmodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/itm");
        GlanguagedatamodelPackage theGlanguagedatamodelPackage = (GlanguagedatamodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d/tm/ldm");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        this.l1EClass.getESuperTypes().add((Object)theInlinetextmodelPackage.getMixedContent1());
        this.l1EClass.getESuperTypes().add((Object)theGlanguagedatamodelPackage.getGLParagraph());
        this.l10EClass.getESuperTypes().add((Object)theInlinetextmodelPackage.getMixedContent10());
        this.l2EClass.getESuperTypes().add((Object)theInlinetextmodelPackage.getMixedContent2());
        this.l2EClass.getESuperTypes().add((Object)theGlanguagedatamodelPackage.getGLOverviewParagraph());
        this.l3EClass.getESuperTypes().add((Object)theInlinetextmodelPackage.getMixedContent3());
        this.l4EClass.getESuperTypes().add((Object)theInlinetextmodelPackage.getMixedContent4());
        this.l5EClass.getESuperTypes().add((Object)theInlinetextmodelPackage.getMixedContent5());
        this.mlDataModel1EClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.mlDataModel10EClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.mlDataModel2EClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.mlDataModel3EClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.mlDataModel4EClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.mlDataModel5EClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.initEClass(this.l1EClass, L1.class, "L1", false, false, true);
        this.initEReference(this.getL1_MlDataModel1(), (EClassifier)this.getMlDataModel1(), this.getMlDataModel1_L1s(), "mlDataModel1", null, 0, 1, L1.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getL1_L(), (EClassifier)this.getLEnum(), "l", "FR", 0, 1, L1.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.l10EClass, L10.class, "L10", false, false, true);
        this.initEReference(this.getL10_MlDataModel10(), (EClassifier)this.getMlDataModel10(), this.getMlDataModel10_L10s(), "mlDataModel10", null, 0, 1, L10.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getL10_L(), (EClassifier)this.getLEnum(), "l", "FR", 0, 1, L10.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.l2EClass, L2.class, "L2", false, false, true);
        this.initEReference(this.getL2_MlDataModel2(), (EClassifier)this.getMlDataModel2(), this.getMlDataModel2_L2s(), "mlDataModel2", null, 0, 1, L2.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getL2_L(), (EClassifier)this.getLEnum(), "l", "FR", 0, 1, L2.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.l3EClass, L3.class, "L3", false, false, true);
        this.initEReference(this.getL3_MlDataModel3(), (EClassifier)this.getMlDataModel3(), this.getMlDataModel3_L3s(), "mlDataModel3", null, 0, 1, L3.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getL3_L(), (EClassifier)this.getLEnum(), "l", "FR", 0, 1, L3.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.l4EClass, L4.class, "L4", false, false, true);
        this.initEReference(this.getL4_MlDataModel4(), (EClassifier)this.getMlDataModel4(), this.getMlDataModel4_L4s(), "mlDataModel4", null, 0, 1, L4.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getL4_L(), (EClassifier)this.getLEnum(), "l", "FR", 0, 1, L4.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.l5EClass, L5.class, "L5", false, false, true);
        this.initEReference(this.getL5_MlDataModel5(), (EClassifier)this.getMlDataModel5(), this.getMlDataModel5_L5s(), "mlDataModel5", null, 0, 1, L5.class, true, true, true, false, false, false, false, true, true);
        this.initEAttribute(this.getL5_L(), (EClassifier)this.getLEnum(), "l", "FR", 0, 1, L5.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.mlDataModel1EClass, MlDataModel1.class, "MlDataModel1", true, false, true);
        this.initEReference(this.getMlDataModel1_L1s(), (EClassifier)this.getL1(), this.getL1_MlDataModel1(), "l1s", null, 0, -1, MlDataModel1.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.mlDataModel10EClass, MlDataModel10.class, "MlDataModel10", true, false, true);
        this.initEReference(this.getMlDataModel10_L10s(), (EClassifier)this.getL10(), this.getL10_MlDataModel10(), "l10s", null, 0, -1, MlDataModel10.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.mlDataModel2EClass, MlDataModel2.class, "MlDataModel2", true, false, true);
        this.initEReference(this.getMlDataModel2_L2s(), (EClassifier)this.getL2(), this.getL2_MlDataModel2(), "l2s", null, 0, -1, MlDataModel2.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.mlDataModel3EClass, MlDataModel3.class, "MlDataModel3", true, false, true);
        this.initEReference(this.getMlDataModel3_L3s(), (EClassifier)this.getL3(), this.getL3_MlDataModel3(), "l3s", null, 0, -1, MlDataModel3.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.mlDataModel4EClass, MlDataModel4.class, "MlDataModel4", true, false, true);
        this.initEReference(this.getMlDataModel4_L4s(), (EClassifier)this.getL4(), this.getL4_MlDataModel4(), "l4s", null, 0, -1, MlDataModel4.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.mlDataModel5EClass, MlDataModel5.class, "MlDataModel5", true, false, true);
        this.initEReference(this.getMlDataModel5_L5s(), (EClassifier)this.getL5(), this.getL5_MlDataModel5(), "l5s", null, 0, -1, MlDataModel5.class, false, false, true, true, false, false, true, false, true);
        this.initEEnum(this.lEnumEEnum, LEnum.class, "LEnum");
        this.addEEnumLiteral(this.lEnumEEnum, LEnum.FR);
        this.addEEnumLiteral(this.lEnumEEnum, LEnum.DE);
        this.addEEnumLiteral(this.lEnumEEnum, LEnum.FOR_ALL);
        this.addEEnumLiteral(this.lEnumEEnum, LEnum.EN);
        this.addEEnumLiteral(this.lEnumEEnum, LEnum.IT);
        this.createResource("http://autosar.org/2.1.5/autosar21/gs/cp/ldm");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_MixedContent1Annotations();
        this.createTaggedValuesOfGeneralization_MixedContent10Annotations();
        this.createTaggedValuesOfGeneralization_MixedContent2Annotations();
        this.createTaggedValuesOfGeneralization_MixedContent3Annotations();
        this.createTaggedValuesOfGeneralization_MixedContent4Annotations();
        this.createTaggedValuesOfGeneralization_MixedContent5Annotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "LanguageDataModel", "GUID", "{D75C57C3-5EAF-4c19-AC93-90276388CA34}", "Id", "1251310291"});
        this.addAnnotation((ENamedElement)this.l1EClass, source, new String[]{"Name", "L1", "Modified", "Tue Oct 31 15:01:17 CET 2006", "Created", "Mon Mar 20 20:15:58 CET 2006", "GUID", "{9DE019E5-3587-4063-B98A-6E51AC3B006A}", "Id", "868299268"});
        this.addAnnotation((ENamedElement)this.getL1_L(), source, new String[]{"Name", "l", "GUID", "{9BE44469-745D-44ae-B694-A3B7938392BE}", "Id", "-1721686869"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum, source, new String[]{"Name", "LEnum", "Modified", "Tue Oct 31 17:37:48 CET 2006", "Created", "Mon Mar 20 20:17:39 CET 2006", "GUID", "{19122CE8-6550-45c2-B889-BB7E2A74D160}", "Id", "-982006059"});
        this.addAnnotation((ENamedElement)this.l10EClass, source, new String[]{"Name", "L10", "Modified", "Tue Oct 31 15:28:22 CET 2006", "Created", "Mon Mar 20 20:15:58 CET 2006", "GUID", "{9DAC5393-6BE1-4e8c-9798-288A6A4E12B7}", "Id", "1203808888"});
        this.addAnnotation((ENamedElement)this.getL10_L(), source, new String[]{"Name", "l", "GUID", "{CA628C05-9310-4a75-94D5-09B344281ABD}", "Id", "1534583727"});
        this.addAnnotation((ENamedElement)this.l2EClass, source, new String[]{"Name", "L2", "Modified", "Tue Oct 31 15:28:39 CET 2006", "Created", "Mon Mar 20 20:15:59 CET 2006", "GUID", "{FB5B3AED-707D-4575-8E68-17CA1AC5A952}", "Id", "1116854526"});
        this.addAnnotation((ENamedElement)this.getL2_L(), source, new String[]{"Name", "l", "GUID", "{406F5DE3-7E26-41ff-AEB7-0020E6B0A294}", "Id", "1898728807"});
        this.addAnnotation((ENamedElement)this.l3EClass, source, new String[]{"Name", "L3", "Modified", "Tue Oct 31 15:29:00 CET 2006", "Created", "Mon Mar 20 20:16:00 CET 2006", "GUID", "{4406CDC3-3134-4d56-A2D2-D360EBB4E0E2}", "Id", "458098373"});
        this.addAnnotation((ENamedElement)this.getL3_L(), source, new String[]{"Name", "l", "GUID", "{FA9E922E-A8AF-4fc5-8E18-178D7FD83F89}", "Id", "-398108189"});
        this.addAnnotation((ENamedElement)this.l4EClass, source, new String[]{"Name", "L4", "Modified", "Tue Oct 31 15:29:17 CET 2006", "Created", "Mon Mar 20 20:16:00 CET 2006", "GUID", "{7FB7F518-2794-416c-B494-F22BDD9FFC94}", "Id", "909526956"});
        this.addAnnotation((ENamedElement)this.getL4_L(), source, new String[]{"Name", "l", "GUID", "{067B4BE9-009D-4fb9-B98A-AE24A6E9A706}", "Id", "1454376479"});
        this.addAnnotation((ENamedElement)this.l5EClass, source, new String[]{"Name", "L5", "Modified", "Tue Oct 31 15:29:35 CET 2006", "Created", "Mon Mar 20 20:16:01 CET 2006", "GUID", "{032468C1-5C2B-4bd8-8058-CBF150CF6612}", "Id", "1046489368"});
        this.addAnnotation((ENamedElement)this.getL5_L(), source, new String[]{"Name", "l", "GUID", "{FA855B21-BA93-4959-BC7D-5D56F093CFAD}", "Id", "-1107046885"});
        this.addAnnotation((ENamedElement)this.mlDataModel1EClass, source, new String[]{"Name", "MlDataModel1", "Modified", "Tue Oct 31 15:31:36 CET 2006", "Created", "Fri Nov 25 19:53:33 CET 2005", "GUID", "{5AC8BF90-2C72-4444-90C9-F884B7B39175}", "Id", "-1989894962"});
        this.addAnnotation((ENamedElement)this.mlDataModel10EClass, source, new String[]{"Name", "MlDataModel10", "Modified", "Tue Oct 31 15:32:13 CET 2006", "Created", "Fri Nov 25 19:53:33 CET 2005", "GUID", "{E0AFE2BA-B674-4e7e-9522-E67858DFCE78}", "Id", "1716103760"});
        this.addAnnotation((ENamedElement)this.mlDataModel2EClass, source, new String[]{"Name", "MlDataModel2", "Modified", "Tue Oct 31 15:31:51 CET 2006", "Created", "Fri Nov 25 19:53:33 CET 2005", "GUID", "{0CC190E6-F317-4e93-9668-3AB692536CA9}", "Id", "-1163208028"});
        this.addAnnotation((ENamedElement)this.mlDataModel3EClass, source, new String[]{"Name", "MlDataModel3", "Modified", "Tue Oct 31 15:31:58 CET 2006", "Created", "Fri Nov 25 19:53:33 CET 2005", "GUID", "{4E2F59C7-49AA-43d3-993C-EBE345ABDF56}", "Id", "-901622495"});
        this.addAnnotation((ENamedElement)this.mlDataModel4EClass, source, new String[]{"Name", "MlDataModel4", "Modified", "Tue Oct 31 15:32:03 CET 2006", "Created", "Fri Nov 25 19:53:33 CET 2005", "GUID", "{F26604F9-F0E1-414c-93EC-D17C2636F893}", "Id", "771149841"});
        this.addAnnotation((ENamedElement)this.mlDataModel5EClass, source, new String[]{"Name", "MlDataModel5", "Modified", "Tue Oct 31 15:32:10 CET 2006", "Created", "Fri Nov 25 19:53:33 CET 2005", "GUID", "{7ABDB23D-2F68-48ba-9EB6-BD0469ACD250}", "Id", "957391927"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "LANGUAGE-DATA-MODEL", "xml.namePlural", "LANGUAGE-DATA-MODELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.l1EClass, source, new String[]{"xml.tags", "msr.id=\"type__L-1_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__L-1_TYPE", "xml.name", "L-1", "xml.namePlural", "L-1S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getL1_L(), source, new String[]{"xml.tags", "msr.id=\"L-1_TYPE__L-1_TYPE__L\";xml.attribute=\"true\"", "xml.attribute", "true", "msr.id", "L-1_TYPE__L-1_TYPE__L", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "L", "xml.namePlural", "LS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum, source, new String[]{"xml.tags", "msr.id=\"L_enum\"", "msr.id", "L_enum", "xml.name", "L-ENUM", "xml.namePlural", "L-ENUMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum.getELiterals().get(0), source, new String[]{"xml.name", "FR", "xml.namePlural", "FRS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum.getELiterals().get(1), source, new String[]{"xml.name", "DE", "xml.namePlural", "DES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum.getELiterals().get(2), source, new String[]{"xml.name", "FOR-ALL", "xml.namePlural", "FOR-ALLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum.getELiterals().get(3), source, new String[]{"xml.name", "EN", "xml.namePlural", "ENS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum.getELiterals().get(4), source, new String[]{"xml.name", "IT", "xml.namePlural", "ITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.l10EClass, source, new String[]{"xml.tags", "msr.id=\"type__L-10_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__L-10_TYPE", "xml.name", "L-10", "xml.namePlural", "L-10S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getL10_L(), source, new String[]{"xml.tags", "msr.id=\"L-10_TYPE__L-10_TYPE__L\";xml.attribute=\"true\"", "xml.attribute", "true", "msr.id", "L-10_TYPE__L-10_TYPE__L", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "L", "xml.namePlural", "LS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.l2EClass, source, new String[]{"xml.tags", "msr.id=\"type__L-2_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__L-2_TYPE", "xml.name", "L-2", "xml.namePlural", "L-2S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getL2_L(), source, new String[]{"xml.tags", "msr.id=\"L-2_TYPE__L-2_TYPE__L\";xml.attribute=\"true\"", "xml.attribute", "true", "msr.id", "L-2_TYPE__L-2_TYPE__L", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "L", "xml.namePlural", "LS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.l3EClass, source, new String[]{"xml.tags", "msr.id=\"type__L-3_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__L-3_TYPE", "xml.name", "L-3", "xml.namePlural", "L-3S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getL3_L(), source, new String[]{"xml.tags", "msr.id=\"L-3_TYPE__L-3_TYPE__L\";xml.attribute=\"true\"", "xml.attribute", "true", "msr.id", "L-3_TYPE__L-3_TYPE__L", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "L", "xml.namePlural", "LS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.l4EClass, source, new String[]{"xml.tags", "msr.id=\"type__L-4_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__L-4_TYPE", "xml.name", "L-4", "xml.namePlural", "L-4S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getL4_L(), source, new String[]{"xml.tags", "msr.id=\"L-4_TYPE__L-4_TYPE__L\";xml.attribute=\"true\"", "xml.attribute", "true", "msr.id", "L-4_TYPE__L-4_TYPE__L", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "L", "xml.namePlural", "LS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.l5EClass, source, new String[]{"xml.tags", "msr.id=\"type__L-5_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__L-5_TYPE", "xml.name", "L-5", "xml.namePlural", "L-5S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getL5_L(), source, new String[]{"xml.tags", "msr.id=\"L-5_TYPE__L-5_TYPE__L\";xml.attribute=\"true\"", "xml.attribute", "true", "msr.id", "L-5_TYPE__L-5_TYPE__L", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "L", "xml.namePlural", "LS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.mlDataModel1EClass, source, new String[]{"xml.tags", "msr.id=\"type__ml-data-model-1\";msr.isMaster=\"true\"", "msr.isMaster", "true", "msr.id", "type__ml-data-model-1", "xml.name", "ML-DATA-MODEL-1", "xml.namePlural", "ML-DATA-MODEL-1S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMlDataModel1_L1s(), source, new String[]{"xml.tags", "xml.typeWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.typeElement=\"false\";xml.roleWrapperElement=\"false\";xml.roleElement=\"true\";msr.id=\"ml-data-model-1__L-1\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "ml-data-model-1__L-1", "xml.roleElement", "true", "xml.name", "L-1", "xml.namePlural", "L-1S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.mlDataModel10EClass, source, new String[]{"xml.tags", "msr.id=\"type__ml-data-model-10\";msr.isMaster=\"true\"", "msr.isMaster", "true", "msr.id", "type__ml-data-model-10", "xml.name", "ML-DATA-MODEL-10", "xml.namePlural", "ML-DATA-MODEL-10S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMlDataModel10_L10s(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";xml.roleWrapperElement=\"false\";xml.roleElement=\"true\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";msr.id=\"ml-data-model-10__L-10\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "ml-data-model-10__L-10", "xml.roleElement", "true", "xml.name", "L-10", "xml.namePlural", "L-10S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.mlDataModel2EClass, source, new String[]{"xml.tags", "msr.id=\"type__ml-data-model-2\";msr.isMaster=\"true\"", "msr.isMaster", "true", "msr.id", "type__ml-data-model-2", "xml.name", "ML-DATA-MODEL-2", "xml.namePlural", "ML-DATA-MODEL-2S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMlDataModel2_L2s(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";msr.id=\"ml-data-model-2__L-2\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "ml-data-model-2__L-2", "xml.roleElement", "true", "xml.name", "L-2", "xml.namePlural", "L-2S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.mlDataModel3EClass, source, new String[]{"xml.tags", "msr.id=\"type__ml-data-model-3\";msr.isMaster=\"true\"", "msr.isMaster", "true", "msr.id", "type__ml-data-model-3", "xml.name", "ML-DATA-MODEL-3", "xml.namePlural", "ML-DATA-MODEL-3S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMlDataModel3_L3s(), source, new String[]{"xml.tags", "xml.typeWrapperElement=\"false\";xml.roleElement=\"true\";xml.sequenceOffset=\"20\";xml.roleWrapperElement=\"false\";xml.typeElement=\"false\";msr.id=\"ml-data-model-3__L-3\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "ml-data-model-3__L-3", "xml.roleElement", "true", "xml.name", "L-3", "xml.namePlural", "L-3S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.mlDataModel4EClass, source, new String[]{"xml.tags", "msr.id=\"type__ml-data-model-4\";msr.isMaster=\"true\"", "msr.isMaster", "true", "msr.id", "type__ml-data-model-4", "xml.name", "ML-DATA-MODEL-4", "xml.namePlural", "ML-DATA-MODEL-4S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMlDataModel4_L4s(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"false\";xml.roleElement=\"true\";xml.typeWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.typeElement=\"false\";msr.id=\"ml-data-model-4__L-4\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "ml-data-model-4__L-4", "xml.roleElement", "true", "xml.name", "L-4", "xml.namePlural", "L-4S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.mlDataModel5EClass, source, new String[]{"xml.tags", "msr.id=\"type__ml-data-model-5\";msr.isMaster=\"true\"", "msr.isMaster", "true", "msr.id", "type__ml-data-model-5", "xml.name", "ML-DATA-MODEL-5", "xml.namePlural", "ML-DATA-MODEL-5S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getMlDataModel5_L5s(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";xml.typeElement=\"false\";xml.roleElement=\"true\";xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";msr.id=\"ml-data-model-5__L-5\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "ml-data-model-5__L-5", "xml.roleElement", "true", "xml.name", "L-5", "xml.namePlural", "L-5S", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.l1EClass, source, new String[]{"name", "L-1", "kind", "mixed", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getL1_MlDataModel1(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getL1_L(), source, new String[]{"name", "L", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.l10EClass, source, new String[]{"name", "L-10", "kind", "mixed", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getL10_MlDataModel10(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getL10_L(), source, new String[]{"name", "L", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.l2EClass, source, new String[]{"name", "L-2", "kind", "mixed", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getL2_MlDataModel2(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getL2_L(), source, new String[]{"name", "L", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.l3EClass, source, new String[]{"name", "L-3", "kind", "mixed", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getL3_MlDataModel3(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getL3_L(), source, new String[]{"name", "L", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.l4EClass, source, new String[]{"name", "L-4", "kind", "mixed", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getL4_MlDataModel4(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getL4_L(), source, new String[]{"name", "L", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.l5EClass, source, new String[]{"name", "L-5", "kind", "mixed", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getL5_MlDataModel5(), source, new String[]{"group", "#:mixed"});
        this.addAnnotation((ENamedElement)this.getL5_L(), source, new String[]{"name", "L", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.mlDataModel1EClass, source, new String[]{"name", "ML-DATA-MODEL-1", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMlDataModel1_L1s(), source, new String[]{"name", "L-1", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.mlDataModel10EClass, source, new String[]{"name", "ML-DATA-MODEL-10", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMlDataModel10_L10s(), source, new String[]{"name", "L-10", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.mlDataModel2EClass, source, new String[]{"name", "ML-DATA-MODEL-2", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMlDataModel2_L2s(), source, new String[]{"name", "L-2", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.mlDataModel3EClass, source, new String[]{"name", "ML-DATA-MODEL-3", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMlDataModel3_L3s(), source, new String[]{"name", "L-3", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.mlDataModel4EClass, source, new String[]{"name", "ML-DATA-MODEL-4", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMlDataModel4_L4s(), source, new String[]{"name", "L-4", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.mlDataModel5EClass, source, new String[]{"name", "ML-DATA-MODEL-5", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getMlDataModel5_L5s(), source, new String[]{"name", "L-5", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.l1EClass, source, new String[]{"documentation", "ParagraphInOneParticularLanguage\r\n\r\nThis is the text for a paragraph in one particular language. The language is denoted in the attribute l."});
        this.addAnnotation((ENamedElement)this.lEnumEEnum, source, new String[]{"documentation", "This denotes the possible language designators"});
        this.addAnnotation((ENamedElement)this.l10EClass, source, new String[]{"documentation", "MixedContentForPlainText in one particular language. The language is dentoted in the attribute l.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.l2EClass, source, new String[]{"documentation", "MixedContentForOverviewParagraph in one particular language. The language is dentoted in the attribute l.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.l3EClass, source, new String[]{"documentation", "MixedContentForUnitNames in one particular language. The language is dentoted in the attribute l.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.l4EClass, source, new String[]{"documentation", " MixedContentForLongNames  in one particular language. The language is dentoted in the attribute l.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.l5EClass, source, new String[]{"documentation", "\r\nMixedContentForVerbatim in one particular language. The language is dentoted in the attribute l.\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.mlDataModel1EClass, source, new String[]{"documentation", "\r\nMultilanguageDataModelForParagraph\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.mlDataModel10EClass, source, new String[]{"documentation", "\r\nMultilanguageDataModelForPlainText\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.mlDataModel2EClass, source, new String[]{"documentation", "MultilanguageDataModelForOverviewParagraph\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.mlDataModel3EClass, source, new String[]{"documentation", "\r\nMultilanguageDataModelForUnitNames\r\n"});
        this.addAnnotation((ENamedElement)this.mlDataModel4EClass, source, new String[]{"documentation", "\r\nMultilanguageDataModelForLongNames\r\n\r\n"});
        this.addAnnotation((ENamedElement)this.mlDataModel5EClass, source, new String[]{"documentation", "MultilanguageDataModelForVerbatim\r\n"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.l1EClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.lEnumEEnum, source, new String[]{"Stereotype", "enumeration"});
        this.addAnnotation((ENamedElement)this.l10EClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.l2EClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.l3EClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.l4EClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.l5EClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.mlDataModel1EClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.mlDataModel10EClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.mlDataModel2EClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.mlDataModel3EClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.mlDataModel4EClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.mlDataModel5EClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_MixedContent1Annotations() {
        String source = "TaggedValuesOfGeneralization_MixedContent1";
        this.addAnnotation((ENamedElement)this.l1EClass, source, new String[]{"Name", "", "GUID", "{F6EE1FC6-8946-4ac8-A05D-3B85B7171A14}", "msr.id", "L-1_TYPE__mixed-content-1", "Id", "-19024724", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_MixedContent10Annotations() {
        String source = "TaggedValuesOfGeneralization_MixedContent10";
        this.addAnnotation((ENamedElement)this.l10EClass, source, new String[]{"Name", "", "GUID", "{2B6230B5-092B-4e9b-89E5-7F8CE7773467}", "msr.id", "L-10_TYPE__mixed-content-10", "Id", "-1193785756", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_MixedContent2Annotations() {
        String source = "TaggedValuesOfGeneralization_MixedContent2";
        this.addAnnotation((ENamedElement)this.l2EClass, source, new String[]{"Name", "", "GUID", "{690BD63C-DC6B-454b-8EAE-E1B58E9C7A3E}", "msr.id", "L-2_TYPE__mixed-content-2", "Id", "-1930357408", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_MixedContent3Annotations() {
        String source = "TaggedValuesOfGeneralization_MixedContent3";
        this.addAnnotation((ENamedElement)this.l3EClass, source, new String[]{"Name", "", "GUID", "{E765B9BE-5ECE-43f5-A9A0-ED523B76874C}", "msr.id", "L-3_TYPE__mixed-content-3", "Id", "-1004974764", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_MixedContent4Annotations() {
        String source = "TaggedValuesOfGeneralization_MixedContent4";
        this.addAnnotation((ENamedElement)this.l4EClass, source, new String[]{"Name", "", "GUID", "{2E728BE1-1E7E-4733-82F8-826159225954}", "msr.id", "L-4_TYPE__mixed-content-4", "Id", "-979305890", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_MixedContent5Annotations() {
        String source = "TaggedValuesOfGeneralization_MixedContent5";
        this.addAnnotation((ENamedElement)this.l5EClass, source, new String[]{"Name", "", "GUID", "{05257604-E293-416a-84D9-256FA50FCB69}", "msr.id", "L-5_TYPE__mixed-content-5", "Id", "1434480652", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.mlDataModel1EClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.mlDataModel10EClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.mlDataModel2EClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.mlDataModel3EClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.mlDataModel4EClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.mlDataModel5EClass, source, new String[]{"xml.sequenceOffset", "0"});
    }
}

