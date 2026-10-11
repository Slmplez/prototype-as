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
package autosar21.swcomponent.internalbehavior.impl;

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
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.InternalbehaviorFactory;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsPackage;
import autosar21.swcomponent.internalbehavior.dataelements.impl.DataelementsPackageImpl;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaPackage;
import autosar21.swcomponent.internalbehavior.exclusivearea.impl.ExclusiveareaPackageImpl;
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

public class InternalbehaviorPackageImpl
extends EPackageImpl
implements InternalbehaviorPackage {
    private EClass internalBehaviorEClass = null;
    private EClass runnableEntityEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private InternalbehaviorPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/ib", (EFactory)InternalbehaviorFactory.eINSTANCE);
    }

    public static InternalbehaviorPackage init() {
        if (isInited) {
            return (InternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib");
        }
        InternalbehaviorPackageImpl theInternalbehaviorPackage = (InternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/ib") instanceof InternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/ib") : new InternalbehaviorPackageImpl());
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
        theInternalbehaviorPackage.createPackageContents();
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
        theInternalbehaviorPackage.initializePackageContents();
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
        theInternalbehaviorPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/ib", (Object)theInternalbehaviorPackage);
        return theInternalbehaviorPackage;
    }

    public EClass getInternalBehavior() {
        return this.internalBehaviorEClass;
    }

    public EReference getInternalBehavior_Component() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(0);
    }

    public EReference getInternalBehavior_Events() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(1);
    }

    public EReference getInternalBehavior_ExclusiveAreas() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(2);
    }

    public EReference getInternalBehavior_InterRunnableVariables() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(3);
    }

    public EReference getInternalBehavior_NVRAMMappings() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(4);
    }

    public EReference getInternalBehavior_PerInstanceCalprms() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(5);
    }

    public EReference getInternalBehavior_PerInstanceMemories() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(6);
    }

    public EReference getInternalBehavior_PortAPIOptions() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(7);
    }

    public EReference getInternalBehavior_Runnables() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(8);
    }

    public EReference getInternalBehavior_SharedCalprms() {
        return (EReference)this.internalBehaviorEClass.getEStructuralFeatures().get(9);
    }

    public EAttribute getInternalBehavior_SupportsMultipleInstantiation() {
        return (EAttribute)this.internalBehaviorEClass.getEStructuralFeatures().get(10);
    }

    public EClass getRunnableEntity() {
        return this.runnableEntityEClass;
    }

    public EReference getRunnableEntity_InternalBehavior() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(0);
    }

    public EReference getRunnableEntity_CalprmAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(1);
    }

    public EAttribute getRunnableEntity_CanBeInvokedConcurrently() {
        return (EAttribute)this.runnableEntityEClass.getEStructuralFeatures().get(2);
    }

    public EReference getRunnableEntity_DataReadAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(3);
    }

    public EReference getRunnableEntity_DataReceivePoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(4);
    }

    public EReference getRunnableEntity_DataSendPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(5);
    }

    public EReference getRunnableEntity_DataWriteAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(6);
    }

    public EReference getRunnableEntity_InsideExclusiveAreas() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(7);
    }

    public EAttribute getRunnableEntity_MinimumStartInterval() {
        return (EAttribute)this.runnableEntityEClass.getEStructuralFeatures().get(8);
    }

    public EReference getRunnableEntity_ModeSwitchPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(9);
    }

    public EReference getRunnableEntity_PerInstanceCalprmAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(10);
    }

    public EReference getRunnableEntity_ReadVariables() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(11);
    }

    public EReference getRunnableEntity_ServerCallPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(12);
    }

    public EReference getRunnableEntity_SharedCalprmAccess() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(13);
    }

    public EAttribute getRunnableEntity_Symbol() {
        return (EAttribute)this.runnableEntityEClass.getEStructuralFeatures().get(14);
    }

    public EReference getRunnableEntity_UsesExclusiveAreas() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(15);
    }

    public EReference getRunnableEntity_WaitPoints() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(16);
    }

    public EReference getRunnableEntity_WrittenVariables() {
        return (EReference)this.runnableEntityEClass.getEStructuralFeatures().get(17);
    }

    public InternalbehaviorFactory getInternalbehaviorFactory() {
        return (InternalbehaviorFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.internalBehaviorEClass = this.createEClass(0);
        this.createEReference(this.internalBehaviorEClass, 24);
        this.createEReference(this.internalBehaviorEClass, 25);
        this.createEReference(this.internalBehaviorEClass, 26);
        this.createEReference(this.internalBehaviorEClass, 27);
        this.createEReference(this.internalBehaviorEClass, 28);
        this.createEReference(this.internalBehaviorEClass, 29);
        this.createEReference(this.internalBehaviorEClass, 30);
        this.createEReference(this.internalBehaviorEClass, 31);
        this.createEReference(this.internalBehaviorEClass, 32);
        this.createEReference(this.internalBehaviorEClass, 33);
        this.createEAttribute(this.internalBehaviorEClass, 34);
        this.runnableEntityEClass = this.createEClass(1);
        this.createEReference(this.runnableEntityEClass, 27);
        this.createEReference(this.runnableEntityEClass, 28);
        this.createEAttribute(this.runnableEntityEClass, 29);
        this.createEReference(this.runnableEntityEClass, 30);
        this.createEReference(this.runnableEntityEClass, 31);
        this.createEReference(this.runnableEntityEClass, 32);
        this.createEReference(this.runnableEntityEClass, 33);
        this.createEReference(this.runnableEntityEClass, 34);
        this.createEAttribute(this.runnableEntityEClass, 35);
        this.createEReference(this.runnableEntityEClass, 36);
        this.createEReference(this.runnableEntityEClass, 37);
        this.createEReference(this.runnableEntityEClass, 38);
        this.createEReference(this.runnableEntityEClass, 39);
        this.createEReference(this.runnableEntityEClass, 40);
        this.createEAttribute(this.runnableEntityEClass, 41);
        this.createEReference(this.runnableEntityEClass, 42);
        this.createEReference(this.runnableEntityEClass, 43);
        this.createEReference(this.runnableEntityEClass, 44);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("internalbehavior");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/ib");
        PortapioptionsPackage thePortapioptionsPackage = (PortapioptionsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/papio");
        InterrunnablecommunicationPackage theInterrunnablecommunicationPackage = (InterrunnablecommunicationPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/irc");
        ExclusiveareaPackage theExclusiveareaPackage = (ExclusiveareaPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/ea");
        NvrammappingPackage theNvrammappingPackage = (NvrammappingPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/nvramm");
        ModedeclarationgroupPackage theModedeclarationgroupPackage = (ModedeclarationgroupPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/mdg");
        ServercallPackage theServercallPackage = (ServercallPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/sc");
        DataelementsPackage theDataelementsPackage = (DataelementsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/de");
        RteeventsPackage theRteeventsPackage = (RteeventsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/rtee");
        PerinstancememoryPackage thePerinstancememoryPackage = (PerinstancememoryPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/ib/pim");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        GswcinternalbehaviorPackage theGswcinternalbehaviorPackage = (GswcinternalbehaviorPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib");
        ComponentsPackage theComponentsPackage = (ComponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/components");
        CharacteristicPackage theCharacteristicPackage = (CharacteristicPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/mac/c");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        this.getESubpackages().add((Object)thePortapioptionsPackage);
        this.getESubpackages().add((Object)theInterrunnablecommunicationPackage);
        this.getESubpackages().add((Object)theExclusiveareaPackage);
        this.getESubpackages().add((Object)theNvrammappingPackage);
        this.getESubpackages().add((Object)theModedeclarationgroupPackage);
        this.getESubpackages().add((Object)theServercallPackage);
        this.getESubpackages().add((Object)theDataelementsPackage);
        this.getESubpackages().add((Object)theRteeventsPackage);
        this.getESubpackages().add((Object)thePerinstancememoryPackage);
        this.internalBehaviorEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.internalBehaviorEClass.getESuperTypes().add((Object)theGswcinternalbehaviorPackage.getGSwcInternalBehavior());
        this.runnableEntityEClass.getESuperTypes().add((Object)theIdentifiablePackage.getIdentifiable());
        this.runnableEntityEClass.getESuperTypes().add((Object)theGswcinternalbehaviorPackage.getGRunnableEntity());
        this.initEClass(this.internalBehaviorEClass, InternalBehavior.class, "InternalBehavior", false, false, true);
        this.initEReference(this.getInternalBehavior_Component(), (EClassifier)theComponentsPackage.getAtomicSoftwareComponentType(), null, "component", null, 0, 1, InternalBehavior.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getInternalBehavior_Events(), (EClassifier)theRteeventsPackage.getRTEEvent(), theRteeventsPackage.getRTEEvent_InternalBehavior(), "events", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_ExclusiveAreas(), (EClassifier)theExclusiveareaPackage.getExclusiveArea(), theExclusiveareaPackage.getExclusiveArea_InternalBehavior(), "exclusiveAreas", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_InterRunnableVariables(), (EClassifier)theInterrunnablecommunicationPackage.getInterRunnableVariable(), theInterrunnablecommunicationPackage.getInterRunnableVariable_InternalBehavior(), "interRunnableVariables", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_NVRAMMappings(), (EClassifier)theNvrammappingPackage.getNVRAMMapping(), theNvrammappingPackage.getNVRAMMapping_InternalBehavior(), "NVRAMMappings", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_PerInstanceCalprms(), (EClassifier)theCharacteristicPackage.getCalprmElementPrototype(), null, "perInstanceCalprms", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_PerInstanceMemories(), (EClassifier)thePerinstancememoryPackage.getPerInstanceMemory(), thePerinstancememoryPackage.getPerInstanceMemory_InternalBehavior(), "perInstanceMemories", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_PortAPIOptions(), (EClassifier)thePortapioptionsPackage.getPortAPIOption(), thePortapioptionsPackage.getPortAPIOption_InternalBehavior(), "portAPIOptions", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_Runnables(), (EClassifier)this.getRunnableEntity(), this.getRunnableEntity_InternalBehavior(), "runnables", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getInternalBehavior_SharedCalprms(), (EClassifier)theCharacteristicPackage.getCalprmElementPrototype(), null, "sharedCalprms", null, 0, -1, InternalBehavior.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getInternalBehavior_SupportsMultipleInstantiation(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "supportsMultipleInstantiation", "false", 0, 1, InternalBehavior.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.runnableEntityEClass, RunnableEntity.class, "RunnableEntity", false, false, true);
        this.initEReference(this.getRunnableEntity_InternalBehavior(), (EClassifier)this.getInternalBehavior(), this.getInternalBehavior_Runnables(), "internalBehavior", null, 0, 1, RunnableEntity.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_CalprmAccess(), (EClassifier)theCharacteristicPackage.getCalprmAccess(), theCharacteristicPackage.getCalprmAccess_RunnableEntity(), "calprmAccess", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getRunnableEntity_CanBeInvokedConcurrently(), (EClassifier)thePrimitivetypesPackage.getBoolean(), "canBeInvokedConcurrently", "false", 0, 1, RunnableEntity.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataReadAccess(), (EClassifier)theDataelementsPackage.getDataReadAccess(), theDataelementsPackage.getDataReadAccess_RunnableEntity(), "dataReadAccess", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataReceivePoints(), (EClassifier)theDataelementsPackage.getDataReceivePoint(), theDataelementsPackage.getDataReceivePoint_RunnableEntity(), "dataReceivePoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataSendPoints(), (EClassifier)theDataelementsPackage.getDataSendPoint(), theDataelementsPackage.getDataSendPoint_RunnableEntity(), "dataSendPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_DataWriteAccess(), (EClassifier)theDataelementsPackage.getDataWriteAccess(), theDataelementsPackage.getDataWriteAccess_RunnableEntity(), "dataWriteAccess", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_InsideExclusiveAreas(), (EClassifier)theExclusiveareaPackage.getRunnableEntityRunsInExclusiveArea(), theExclusiveareaPackage.getRunnableEntityRunsInExclusiveArea_RunnableEntity(), "insideExclusiveAreas", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getRunnableEntity_MinimumStartInterval(), (EClassifier)thePrimitivetypesPackage.getFloat(), "minimumStartInterval", "0.0", 0, 1, RunnableEntity.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ModeSwitchPoints(), (EClassifier)theModedeclarationgroupPackage.getModeSwitchPoint(), theModedeclarationgroupPackage.getModeSwitchPoint_RunnableEntity(), "modeSwitchPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_PerInstanceCalprmAccess(), (EClassifier)theCharacteristicPackage.getCalprmElementPrototype(), null, "perInstanceCalprmAccess", null, 0, -1, RunnableEntity.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ReadVariables(), (EClassifier)theInterrunnablecommunicationPackage.getInterRunnableVariable(), null, "readVariables", null, 0, -1, RunnableEntity.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getRunnableEntity_ServerCallPoints(), (EClassifier)theServercallPackage.getServerCallPoint(), theServercallPackage.getServerCallPoint_RunnableEntity(), "serverCallPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_SharedCalprmAccess(), (EClassifier)theCharacteristicPackage.getCalprmElementPrototype(), null, "sharedCalprmAccess", null, 0, -1, RunnableEntity.class, false, false, true, false, true, false, true, false, true);
        this.initEAttribute(this.getRunnableEntity_Symbol(), (EClassifier)thePrimitivetypesPackage.getString(), "symbol", "", 0, 1, RunnableEntity.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getRunnableEntity_UsesExclusiveAreas(), (EClassifier)theExclusiveareaPackage.getRunnableEntityCanEnterExclusiveArea(), theExclusiveareaPackage.getRunnableEntityCanEnterExclusiveArea_RunnableEntity(), "usesExclusiveAreas", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_WaitPoints(), (EClassifier)theRteeventsPackage.getWaitPoint(), theRteeventsPackage.getWaitPoint_RunnableEntity(), "waitPoints", null, 0, -1, RunnableEntity.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getRunnableEntity_WrittenVariables(), (EClassifier)theInterrunnablecommunicationPackage.getInterRunnableVariable(), null, "writtenVariables", null, 0, -1, RunnableEntity.class, false, false, true, false, true, false, true, false, true);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/ib");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_IdentifiableAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "InternalBehavior", "GUID", "{6A8F30F2-91E4-4d70-81D3-F4C132CEA64E}", "Id", "1086433879"});
        this.addAnnotation((ENamedElement)this.internalBehaviorEClass, source, new String[]{"Name", "InternalBehavior", "Modified", "Wed Jun 21 09:06:51 CEST 2006", "Created", "Thu May 06 10:41:58 CEST 2004", "GUID", "{F93E1AFF-0D1D-4927-B039-8C810B10887D}", "Id", "1910186586"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"Name", "supportsMultipleInstantiation", "GUID", "{251A5255-0750-4eea-8F3F-17781EFD3551}", "Id", "1089875968"});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"Name", "RunnableEntity", "Modified", "Tue May 16 10:19:36 CEST 2006", "Created", "Thu Apr 01 08:11:47 CEST 2004", "GUID", "{59B27A51-95A1-49f0-B448-79714ADF3D87}", "Id", "-2083185844"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"Name", "canBeInvokedConcurrently", "GUID", "{67A79769-B9E6-4c03-B648-8ACD95B1E2D9}", "Id", "1684483037"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_MinimumStartInterval(), source, new String[]{"Name", "minimumStartInterval", "GUID", "{27F1E6EB-EE9A-4e83-91D9-C26C20977854}", "Id", "1161953253"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"Name", "symbol", "GUID", "{0B5E9528-3723-45e1-B6F2-D811D195F0CD}", "Id", "-974706574"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "INTERNAL-BEHAVIOR", "xml.namePlural", "INTERNAL-BEHAVIORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.internalBehaviorEClass, source, new String[]{"xml.name", "INTERNAL-BEHAVIOR", "xml.namePlural", "INTERNAL-BEHAVIORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_Component(), source, new String[]{"xml.name", "COMPONENT-REF", "xml.namePlural", "COMPONENT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_Events(), source, new String[]{"xml.name", "EVENT", "xml.namePlural", "EVENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_ExclusiveAreas(), source, new String[]{"xml.name", "EXCLUSIVE-AREA", "xml.namePlural", "EXCLUSIVE-AREAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_InterRunnableVariables(), source, new String[]{"xml.name", "INTER-RUNNABLE-VARIABLE", "xml.namePlural", "INTER-RUNNABLE-VARIABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_NVRAMMappings(), source, new String[]{"xml.name", "NVRAM-MAPPING", "xml.namePlural", "NVRAM-MAPPINGS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PerInstanceCalprms(), source, new String[]{"xml.name", "PER-INSTANCE-CALPRM", "xml.namePlural", "PER-INSTANCE-CALPRMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PerInstanceMemories(), source, new String[]{"xml.name", "PER-INSTANCE-MEMORY", "xml.namePlural", "PER-INSTANCE-MEMORYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PortAPIOptions(), source, new String[]{"xml.name", "PORT-API-OPTION", "xml.namePlural", "PORT-API-OPTIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_Runnables(), source, new String[]{"xml.name", "RUNNABLE", "xml.namePlural", "RUNNABLES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_SharedCalprms(), source, new String[]{"xml.name", "SHARED-CALPRM", "xml.namePlural", "SHARED-CALPRMS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"xml.name", "SUPPORTS-MULTIPLE-INSTANTIATION", "xml.namePlural", "SUPPORTS-MULTIPLE-INSTANTIATIONS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"xml.name", "RUNNABLE-ENTITY", "xml.namePlural", "RUNNABLE-ENTITYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CalprmAccess(), source, new String[]{"xml.name", "CALPRM-ACCESS", "xml.namePlural", "CALPRM-ACCESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "0", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"xml.name", "CAN-BE-INVOKED-CONCURRENTLY", "xml.namePlural", "CAN-BE-INVOKED-CONCURRENTLYS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "1", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReadAccess(), source, new String[]{"xml.name", "DATA-READ-ACCESS", "xml.namePlural", "DATA-READ-ACCESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "2", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePoints(), source, new String[]{"xml.name", "DATA-RECEIVE-POINT", "xml.namePlural", "DATA-RECEIVE-POINTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "3", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataSendPoints(), source, new String[]{"xml.name", "DATA-SEND-POINT", "xml.namePlural", "DATA-SEND-POINTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "4", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataWriteAccess(), source, new String[]{"xml.name", "DATA-WRITE-ACCESS", "xml.namePlural", "DATA-WRITE-ACCESSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "5", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_InsideExclusiveAreas(), source, new String[]{"xml.name", "INSIDE-EXCLUSIVE-AREA", "xml.namePlural", "INSIDE-EXCLUSIVE-AREAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "6", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_MinimumStartInterval(), source, new String[]{"xml.name", "MINIMUM-START-INTERVAL", "xml.namePlural", "MINIMUM-START-INTERVALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "7", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeSwitchPoints(), source, new String[]{"xml.name", "MODE-SWITCH-POINT", "xml.namePlural", "MODE-SWITCH-POINTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "8", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_PerInstanceCalprmAccess(), source, new String[]{"xml.name", "PER-INSTANCE-CALPRM-ACCESS-REF", "xml.namePlural", "PER-INSTANCE-CALPRM-ACCESS-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "9", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ReadVariables(), source, new String[]{"xml.name", "READ-VARIABLE-REF", "xml.namePlural", "READ-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "10", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ServerCallPoints(), source, new String[]{"xml.name", "SERVER-CALL-POINT", "xml.namePlural", "SERVER-CALL-POINTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "11", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_SharedCalprmAccess(), source, new String[]{"xml.name", "SHARED-CALPRM-ACCESS-REF", "xml.namePlural", "SHARED-CALPRM-ACCESS-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "12", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"xml.name", "SYMBOL", "xml.namePlural", "SYMBOLS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "13", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_UsesExclusiveAreas(), source, new String[]{"xml.name", "USES-EXCLUSIVE-AREA", "xml.namePlural", "USES-EXCLUSIVE-AREAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "14", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WaitPoints(), source, new String[]{"xml.name", "WAIT-POINT", "xml.namePlural", "WAIT-POINTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "15", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "false", "xml.roleWrapperElement", "true", "xml.typeElement", "true", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WrittenVariables(), source, new String[]{"xml.name", "WRITTEN-VARIABLE-REF", "xml.namePlural", "WRITTEN-VARIABLE-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.sequenceOffset", "16", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "true", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.internalBehaviorEClass, source, new String[]{"name", "INTERNAL-BEHAVIOR", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_Component(), source, new String[]{"name", "COMPONENT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_Events(), source, new String[]{"name", "EVENTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_ExclusiveAreas(), source, new String[]{"name", "EXCLUSIVE-AREAS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_InterRunnableVariables(), source, new String[]{"name", "INTER-RUNNABLE-VARIABLES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_NVRAMMappings(), source, new String[]{"name", "NVRAM-MAPPINGS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PerInstanceCalprms(), source, new String[]{"name", "PER-INSTANCE-CALPRMS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PerInstanceMemories(), source, new String[]{"name", "PER-INSTANCE-MEMORYS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PortAPIOptions(), source, new String[]{"name", "PORT-API-OPTIONS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_Runnables(), source, new String[]{"name", "RUNNABLES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_SharedCalprms(), source, new String[]{"name", "SHARED-CALPRMS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"name", "SUPPORTS-MULTIPLE-INSTANTIATION", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"name", "RUNNABLE-ENTITY", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CalprmAccess(), source, new String[]{"name", "CALPRM-ACCESSS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"name", "CAN-BE-INVOKED-CONCURRENTLY", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReadAccess(), source, new String[]{"name", "DATA-READ-ACCESSS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePoints(), source, new String[]{"name", "DATA-RECEIVE-POINTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataSendPoints(), source, new String[]{"name", "DATA-SEND-POINTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataWriteAccess(), source, new String[]{"name", "DATA-WRITE-ACCESSS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_InsideExclusiveAreas(), source, new String[]{"name", "INSIDE-EXCLUSIVE-AREAS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_MinimumStartInterval(), source, new String[]{"name", "MINIMUM-START-INTERVAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeSwitchPoints(), source, new String[]{"name", "MODE-SWITCH-POINTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_PerInstanceCalprmAccess(), source, new String[]{"name", "PER-INSTANCE-CALPRM-ACCESS-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ReadVariables(), source, new String[]{"name", "READ-VARIABLE-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ServerCallPoints(), source, new String[]{"name", "SERVER-CALL-POINTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_SharedCalprmAccess(), source, new String[]{"name", "SHARED-CALPRM-ACCESS-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"name", "SYMBOL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_UsesExclusiveAreas(), source, new String[]{"name", "USES-EXCLUSIVE-AREAS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WaitPoints(), source, new String[]{"name", "WAIT-POINTS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WrittenVariables(), source, new String[]{"name", "WRITTEN-VARIABLE-REFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.internalBehaviorEClass, source, new String[]{"documentation", "The internal behavior of an atomic software component describes the RTE relevant aspects of a component, i.e. the runnable entities and the events they respond to."});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_Component(), source, new String[]{"documentation", "The component this behavior is defined for."});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_NVRAMMappings(), source, new String[]{"documentation", "Mapping of NVRAM related resources to the respective port, see class description."});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PerInstanceCalprms(), source, new String[]{"documentation", "the perInstanceCalprm is aggregated in the internal behavior, since it is read only. Therefore not protection mechanisms are necessary regardless which runnable performs the access\r\n"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PerInstanceMemories(), source, new String[]{"documentation", "The SW-C needs per-instance memory"});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_PortAPIOptions(), source, new String[]{"documentation", "Options for generating the signature of port-related calls from a runnable to the RTE and vice versa."});
        this.addAnnotation((ENamedElement)this.getInternalBehavior_SupportsMultipleInstantiation(), source, new String[]{"documentation", "Flag, whether the component can be multiply instantiated. which will result in an appropriate component API on programming language level (with or without instance handle)."});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"documentation", "The runnable entities are the smallest code-fragments that are provided by the component and are executed in the RTE. Runnables are for instance set up to respond to data reception or operation invocation on a server."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_CanBeInvokedConcurrently(), source, new String[]{"documentation", "Normally, this is FALSE.\r\nWhen this is TRUE, it is allowed that this runnable entity is invoked concurrently (even for one instance of the SW-C), which implies that it is the responsibility of the implementation of the runnable to take care of this form of concurrency.\r\n"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReadAccess(), source, new String[]{"documentation", "Runnable has read access to data element"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataReceivePoints(), source, new String[]{"documentation", "Data receive points of this runnable."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataSendPoints(), source, new String[]{"documentation", "The runnable has data send point."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_DataWriteAccess(), source, new String[]{"documentation", "Runnable has write access to data element"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_InsideExclusiveAreas(), source, new String[]{"documentation", "The runnable entity runs inside the referenced exclusive area"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_MinimumStartInterval(), source, new String[]{"documentation", "Specifies the time in seconds which two starts of a RunnableEntity are guaranteed to be separated."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ModeSwitchPoints(), source, new String[]{"documentation", "The runnable has a mode switch point."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ReadVariables(), source, new String[]{"documentation", "Inter-runnable variables that are read by this Runnable."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_ServerCallPoints(), source, new String[]{"documentation", "The runnable has server call point."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_Symbol(), source, new String[]{"documentation", "The symbol describing this runnable's entry point. This is considered the API of the runnable and is required during the RTE contract phase."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_UsesExclusiveAreas(), source, new String[]{"documentation", "This means that the runnable can enter/leave the referenced exclusive area through explicit API calls."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WaitPoints(), source, new String[]{"documentation", "The runnable has wait point."});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_WrittenVariables(), source, new String[]{"documentation", "Inter-runnable variables that are written by Runnable."});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.internalBehaviorEClass, source, new String[]{"Name", "", "GUID", "{AA0BD278-E06E-49b2-8575-AAA51D3EA0F3}", "Id", "-1386346523", "xml.sequenceOffset", "0"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.internalBehaviorEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.getRunnableEntity_PerInstanceCalprmAccess(), source, new String[]{"Stereotype", "instanceRef"});
    }

    protected void createTaggedValuesOfGeneralization_IdentifiableAnnotations() {
        String source = "TaggedValuesOfGeneralization_Identifiable";
        this.addAnnotation((ENamedElement)this.runnableEntityEClass, source, new String[]{"Name", "", "GUID", "{9B1B6D10-E7AB-4e65-946A-5F12CE9FEC93}", "Id", "-883683665", "xml.sequenceOffset", "0"});
    }
}

