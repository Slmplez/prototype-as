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
package autosar21.swcomponent.datatype.computationmethod.impl;

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
import autosar21.swcomponent.datatype.computationmethod.Compu;
import autosar21.swcomponent.datatype.computationmethod.CompuConst;
import autosar21.swcomponent.datatype.computationmethod.CompuConstContent;
import autosar21.swcomponent.datatype.computationmethod.CompuConstFormulaContent;
import autosar21.swcomponent.datatype.computationmethod.CompuConstNumericContent;
import autosar21.swcomponent.datatype.computationmethod.CompuConstTextContent;
import autosar21.swcomponent.datatype.computationmethod.CompuContent;
import autosar21.swcomponent.datatype.computationmethod.CompuDefaultValue;
import autosar21.swcomponent.datatype.computationmethod.CompuGenericMath;
import autosar21.swcomponent.datatype.computationmethod.CompuMethod;
import autosar21.swcomponent.datatype.computationmethod.CompuNominatorDenominator;
import autosar21.swcomponent.datatype.computationmethod.CompuProgCode;
import autosar21.swcomponent.datatype.computationmethod.CompuRationalCoeffs;
import autosar21.swcomponent.datatype.computationmethod.CompuScale;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleConstantContents;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleContents;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleGenericMath;
import autosar21.swcomponent.datatype.computationmethod.CompuScaleRationalFormula;
import autosar21.swcomponent.datatype.computationmethod.CompuScales;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodFactory;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.computationmethod.ProgCode;
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

public class ComputationmethodPackageImpl
extends EPackageImpl
implements ComputationmethodPackage {
    private EClass compuEClass = null;
    private EClass compuContentEClass = null;
    private EClass compuConstEClass = null;
    private EClass compuConstContentEClass = null;
    private EClass compuConstFormulaContentEClass = null;
    private EClass compuConstNumericContentEClass = null;
    private EClass compuConstTextContentEClass = null;
    private EClass compuDefaultValueEClass = null;
    private EClass compuGenericMathEClass = null;
    private EClass compuMethodEClass = null;
    private EClass compuNominatorDenominatorEClass = null;
    private EClass compuProgCodeEClass = null;
    private EClass progCodeEClass = null;
    private EClass compuRationalCoeffsEClass = null;
    private EClass compuScaleEClass = null;
    private EClass compuScaleContentsEClass = null;
    private EClass compuScaleConstantContentsEClass = null;
    private EClass compuScaleGenericMathEClass = null;
    private EClass compuScaleRationalFormulaEClass = null;
    private EClass compuScalesEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private ComputationmethodPackageImpl() {
        super("http://autosar.org/2.1.5/autosar21/swc/d/cm", (EFactory)ComputationmethodFactory.eINSTANCE);
    }

    public static ComputationmethodPackage init() {
        if (isInited) {
            return (ComputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/cm");
        }
        ComputationmethodPackageImpl theComputationmethodPackage = (ComputationmethodPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/d/cm") instanceof ComputationmethodPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://autosar.org/2.1.5/autosar21/swc/d/cm") : new ComputationmethodPackageImpl());
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
        theComputationmethodPackage.createPackageContents();
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
        theComputationmethodPackage.initializePackageContents();
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
        theComputationmethodPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://autosar.org/2.1.5/autosar21/swc/d/cm", (Object)theComputationmethodPackage);
        return theComputationmethodPackage;
    }

    public EClass getCompu() {
        return this.compuEClass;
    }

    public EReference getCompu_CompuContentType() {
        return (EReference)this.compuEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompu_CompuDefaultValue() {
        return (EReference)this.compuEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCompuContent() {
        return this.compuContentEClass;
    }

    public EReference getCompuContent_Compu() {
        return (EReference)this.compuContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConst() {
        return this.compuConstEClass;
    }

    public EReference getCompuConst_CompuConstContentType() {
        return (EReference)this.compuConstEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstContent() {
        return this.compuConstContentEClass;
    }

    public EReference getCompuConstContent_CompuConst() {
        return (EReference)this.compuConstContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstFormulaContent() {
        return this.compuConstFormulaContentEClass;
    }

    public EReference getCompuConstFormulaContent_Vf() {
        return (EReference)this.compuConstFormulaContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstNumericContent() {
        return this.compuConstNumericContentEClass;
    }

    public EAttribute getCompuConstNumericContent_V() {
        return (EAttribute)this.compuConstNumericContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuConstTextContent() {
        return this.compuConstTextContentEClass;
    }

    public EReference getCompuConstTextContent_Vt() {
        return (EReference)this.compuConstTextContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuDefaultValue() {
        return this.compuDefaultValueEClass;
    }

    public EClass getCompuGenericMath() {
        return this.compuGenericMathEClass;
    }

    public EAttribute getCompuGenericMath_Levels() {
        return (EAttribute)this.compuGenericMathEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuMethod() {
        return this.compuMethodEClass;
    }

    public EReference getCompuMethod_Unit() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompuMethod_CompuInternalToPhys() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCompuMethod_CompuPhysToInternal() {
        return (EReference)this.compuMethodEClass.getEStructuralFeatures().get(2);
    }

    public EClass getCompuNominatorDenominator() {
        return this.compuNominatorDenominatorEClass;
    }

    public EReference getCompuNominatorDenominator_Vfs() {
        return (EReference)this.compuNominatorDenominatorEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCompuNominatorDenominator_Vs() {
        return (EAttribute)this.compuNominatorDenominatorEClass.getEStructuralFeatures().get(1);
    }

    public EClass getCompuProgCode() {
        return this.compuProgCodeEClass;
    }

    public EReference getCompuProgCode_ProgCode() {
        return (EReference)this.compuProgCodeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getProgCode() {
        return this.progCodeEClass;
    }

    public EReference getProgCode_CompuProgCode() {
        return (EReference)this.progCodeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuRationalCoeffs() {
        return this.compuRationalCoeffsEClass;
    }

    public EReference getCompuRationalCoeffs_CompuScaleRationalFormula() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getCompuRationalCoeffs_CompuNumerator() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCompuRationalCoeffs_CompuDenominator() {
        return (EReference)this.compuRationalCoeffsEClass.getEStructuralFeatures().get(2);
    }

    public EClass getCompuScale() {
        return this.compuScaleEClass;
    }

    public EReference getCompuScale_CompuScales() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(0);
    }

    public EAttribute getCompuScale_ShortLabel() {
        return (EAttribute)this.compuScaleEClass.getEStructuralFeatures().get(1);
    }

    public EReference getCompuScale_Desc() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(2);
    }

    public EReference getCompuScale_LowerLimit() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(3);
    }

    public EReference getCompuScale_UpperLimit() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(4);
    }

    public EReference getCompuScale_CompuScaleContentsType() {
        return (EReference)this.compuScaleEClass.getEStructuralFeatures().get(5);
    }

    public EClass getCompuScaleContents() {
        return this.compuScaleContentsEClass;
    }

    public EReference getCompuScaleContents_CompuScale() {
        return (EReference)this.compuScaleContentsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScaleConstantContents() {
        return this.compuScaleConstantContentsEClass;
    }

    public EReference getCompuScaleConstantContents_CompuConst() {
        return (EReference)this.compuScaleConstantContentsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScaleGenericMath() {
        return this.compuScaleGenericMathEClass;
    }

    public EClass getCompuScaleRationalFormula() {
        return this.compuScaleRationalFormulaEClass;
    }

    public EReference getCompuScaleRationalFormula_CompuRationalCoeffs() {
        return (EReference)this.compuScaleRationalFormulaEClass.getEStructuralFeatures().get(0);
    }

    public EClass getCompuScales() {
        return this.compuScalesEClass;
    }

    public EReference getCompuScales_CompuScales() {
        return (EReference)this.compuScalesEClass.getEStructuralFeatures().get(0);
    }

    public ComputationmethodFactory getComputationmethodFactory() {
        return (ComputationmethodFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.compuEClass = this.createEClass(0);
        this.createEReference(this.compuEClass, 5);
        this.createEReference(this.compuEClass, 6);
        this.compuContentEClass = this.createEClass(1);
        this.createEReference(this.compuContentEClass, 4);
        this.compuConstEClass = this.createEClass(2);
        this.createEReference(this.compuConstEClass, 5);
        this.compuConstContentEClass = this.createEClass(3);
        this.createEReference(this.compuConstContentEClass, 4);
        this.compuConstFormulaContentEClass = this.createEClass(4);
        this.createEReference(this.compuConstFormulaContentEClass, 5);
        this.compuConstNumericContentEClass = this.createEClass(5);
        this.createEAttribute(this.compuConstNumericContentEClass, 6);
        this.compuConstTextContentEClass = this.createEClass(6);
        this.createEReference(this.compuConstTextContentEClass, 6);
        this.compuDefaultValueEClass = this.createEClass(7);
        this.compuGenericMathEClass = this.createEClass(8);
        this.createEAttribute(this.compuGenericMathEClass, 5);
        this.compuMethodEClass = this.createEClass(9);
        this.createEReference(this.compuMethodEClass, 21);
        this.createEReference(this.compuMethodEClass, 22);
        this.createEReference(this.compuMethodEClass, 23);
        this.compuNominatorDenominatorEClass = this.createEClass(10);
        this.createEReference(this.compuNominatorDenominatorEClass, 4);
        this.createEAttribute(this.compuNominatorDenominatorEClass, 5);
        this.compuProgCodeEClass = this.createEClass(11);
        this.createEReference(this.compuProgCodeEClass, 5);
        this.progCodeEClass = this.createEClass(12);
        this.createEReference(this.progCodeEClass, 4);
        this.compuRationalCoeffsEClass = this.createEClass(13);
        this.createEReference(this.compuRationalCoeffsEClass, 6);
        this.createEReference(this.compuRationalCoeffsEClass, 7);
        this.createEReference(this.compuRationalCoeffsEClass, 8);
        this.compuScaleEClass = this.createEClass(14);
        this.createEReference(this.compuScaleEClass, 8);
        this.createEAttribute(this.compuScaleEClass, 9);
        this.createEReference(this.compuScaleEClass, 10);
        this.createEReference(this.compuScaleEClass, 11);
        this.createEReference(this.compuScaleEClass, 12);
        this.createEReference(this.compuScaleEClass, 13);
        this.compuScaleContentsEClass = this.createEClass(15);
        this.createEReference(this.compuScaleContentsEClass, 4);
        this.compuScaleConstantContentsEClass = this.createEClass(16);
        this.createEReference(this.compuScaleConstantContentsEClass, 6);
        this.compuScaleGenericMathEClass = this.createEClass(17);
        this.compuScaleRationalFormulaEClass = this.createEClass(18);
        this.createEReference(this.compuScaleRationalFormulaEClass, 6);
        this.compuScalesEClass = this.createEClass(19);
        this.createEReference(this.compuScalesEClass, 6);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("computationmethod");
        this.setNsPrefix("");
        this.setNsURI("http://autosar.org/2.1.5/autosar21/swc/d/cm");
        InfrastructurePackage theInfrastructurePackage = (InfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i");
        GcomputationmethodPackage theGcomputationmethodPackage = (GcomputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/cm");
        ValuemodelPackage theValuemodelPackage = (ValuemodelPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/vm");
        PrimitivetypesPackage thePrimitivetypesPackage = (PrimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/pt");
        IdentifiablePackage theIdentifiablePackage = (IdentifiablePackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/i/i");
        UnitsPackage theUnitsPackage = (UnitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/u");
        MultilanguagedataPackage theMultilanguagedataPackage = (MultilanguagedataPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/gs/cp/md");
        LocalconstraintsPackage theLocalconstraintsPackage = (LocalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://autosar.org/2.1.5/autosar21/swc/d/lc");
        this.compuEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompu());
        this.compuContentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuContent());
        this.compuConstEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuConstEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConst());
        this.compuConstContentEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuConstContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstContent());
        this.compuConstFormulaContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstFormulaContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstFormulaContent());
        this.compuConstNumericContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstNumericContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstNumericContent());
        this.compuConstTextContentEClass.getESuperTypes().add((Object)this.getCompuConstContent());
        this.compuConstTextContentEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuConstTextContent());
        this.compuDefaultValueEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuGenericMathEClass.getESuperTypes().add((Object)theValuemodelPackage.getValueByFormula());
        this.compuMethodEClass.getESuperTypes().add((Object)theIdentifiablePackage.getARElement());
        this.compuMethodEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuMethod());
        this.compuNominatorDenominatorEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuNominatorDenominatorEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuNominatorDenominator());
        this.compuProgCodeEClass.getESuperTypes().add((Object)this.getCompuContent());
        this.progCodeEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuRationalCoeffsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuRationalCoeffsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuRationalCoeffs());
        this.compuScaleEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuScaleEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScale());
        this.compuScaleContentsEClass.getESuperTypes().add((Object)theInfrastructurePackage.getARObject());
        this.compuScaleContentsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleContents());
        this.compuScaleConstantContentsEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleConstantContentsEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleConstantContents());
        this.compuScaleGenericMathEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleRationalFormulaEClass.getESuperTypes().add((Object)this.getCompuScaleContents());
        this.compuScaleRationalFormulaEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScaleRationalFormula());
        this.compuScalesEClass.getESuperTypes().add((Object)this.getCompuContent());
        this.compuScalesEClass.getESuperTypes().add((Object)theGcomputationmethodPackage.getGCompuScales());
        this.initEClass(this.compuEClass, Compu.class, "Compu", false, false, true);
        this.initEReference(this.getCompu_CompuContentType(), (EClassifier)this.getCompuContent(), this.getCompuContent_Compu(), "compuContentType", null, 0, 1, Compu.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompu_CompuDefaultValue(), (EClassifier)this.getCompuConst(), null, "compuDefaultValue", null, 0, 1, Compu.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuContentEClass, CompuContent.class, "CompuContent", true, false, true);
        this.initEReference(this.getCompuContent_Compu(), (EClassifier)this.getCompu(), this.getCompu_CompuContentType(), "compu", null, 0, 1, CompuContent.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuConstEClass, CompuConst.class, "CompuConst", false, false, true);
        this.initEReference(this.getCompuConst_CompuConstContentType(), (EClassifier)this.getCompuConstContent(), this.getCompuConstContent_CompuConst(), "compuConstContentType", null, 0, 1, CompuConst.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstContentEClass, CompuConstContent.class, "CompuConstContent", true, false, true);
        this.initEReference(this.getCompuConstContent_CompuConst(), (EClassifier)this.getCompuConst(), this.getCompuConst_CompuConstContentType(), "compuConst", null, 0, 1, CompuConstContent.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuConstFormulaContentEClass, CompuConstFormulaContent.class, "CompuConstFormulaContent", false, false, true);
        this.initEReference(this.getCompuConstFormulaContent_Vf(), (EClassifier)theValuemodelPackage.getVf(), null, "vf", null, 0, 1, CompuConstFormulaContent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuConstNumericContentEClass, CompuConstNumericContent.class, "CompuConstNumericContent", false, false, true);
        this.initEAttribute(this.getCompuConstNumericContent_V(), (EClassifier)thePrimitivetypesPackage.getString(), "v", "", 0, 1, CompuConstNumericContent.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.compuConstTextContentEClass, CompuConstTextContent.class, "CompuConstTextContent", false, false, true);
        this.initEReference(this.getCompuConstTextContent_Vt(), (EClassifier)theValuemodelPackage.getVt(), theValuemodelPackage.getVt_CompuConstTextContent(), "vt", null, 0, 1, CompuConstTextContent.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuDefaultValueEClass, CompuDefaultValue.class, "CompuDefaultValue", false, false, true);
        this.initEClass(this.compuGenericMathEClass, CompuGenericMath.class, "CompuGenericMath", false, false, true);
        this.initEAttribute(this.getCompuGenericMath_Levels(), (EClassifier)thePrimitivetypesPackage.getString(), "levels", "", 0, -1, CompuGenericMath.class, false, false, true, true, false, true, false, true);
        this.initEClass(this.compuMethodEClass, CompuMethod.class, "CompuMethod", false, false, true);
        this.initEReference(this.getCompuMethod_Unit(), (EClassifier)theUnitsPackage.getUnit(), null, "unit", null, 0, 1, CompuMethod.class, false, false, true, false, true, false, true, false, true);
        this.initEReference(this.getCompuMethod_CompuInternalToPhys(), (EClassifier)this.getCompu(), null, "compuInternalToPhys", null, 0, 1, CompuMethod.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuMethod_CompuPhysToInternal(), (EClassifier)this.getCompu(), null, "compuPhysToInternal", null, 0, 1, CompuMethod.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuNominatorDenominatorEClass, CompuNominatorDenominator.class, "CompuNominatorDenominator", false, false, true);
        this.initEReference(this.getCompuNominatorDenominator_Vfs(), (EClassifier)theValuemodelPackage.getVf(), null, "vfs", null, 0, -1, CompuNominatorDenominator.class, false, false, true, true, false, false, true, false, true);
        this.initEAttribute(this.getCompuNominatorDenominator_Vs(), (EClassifier)thePrimitivetypesPackage.getString(), "vs", "", 0, -1, CompuNominatorDenominator.class, false, false, true, true, false, false, false, true);
        this.initEClass(this.compuProgCodeEClass, CompuProgCode.class, "CompuProgCode", false, false, true);
        this.initEReference(this.getCompuProgCode_ProgCode(), (EClassifier)this.getProgCode(), this.getProgCode_CompuProgCode(), "progCode", null, 0, 1, CompuProgCode.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.progCodeEClass, ProgCode.class, "ProgCode", false, false, true);
        this.initEReference(this.getProgCode_CompuProgCode(), (EClassifier)this.getCompuProgCode(), this.getCompuProgCode_ProgCode(), "compuProgCode", null, 0, 1, ProgCode.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuRationalCoeffsEClass, CompuRationalCoeffs.class, "CompuRationalCoeffs", false, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuScaleRationalFormula(), (EClassifier)this.getCompuScaleRationalFormula(), this.getCompuScaleRationalFormula_CompuRationalCoeffs(), "compuScaleRationalFormula", null, 0, 1, CompuRationalCoeffs.class, true, false, true, false, false, false, true, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuNumerator(), (EClassifier)this.getCompuNominatorDenominator(), null, "compuNumerator", null, 0, 1, CompuRationalCoeffs.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuRationalCoeffs_CompuDenominator(), (EClassifier)this.getCompuNominatorDenominator(), null, "compuDenominator", null, 0, 1, CompuRationalCoeffs.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleEClass, CompuScale.class, "CompuScale", false, false, true);
        this.initEReference(this.getCompuScale_CompuScales(), (EClassifier)this.getCompuScales(), this.getCompuScales_CompuScales(), "compuScales", null, 0, 1, CompuScale.class, true, false, true, false, false, false, true, false, true);
        this.initEAttribute(this.getCompuScale_ShortLabel(), (EClassifier)thePrimitivetypesPackage.getString(), "shortLabel", "", 0, 1, CompuScale.class, false, false, true, true, false, true, false, true);
        this.initEReference(this.getCompuScale_Desc(), (EClassifier)theMultilanguagedataPackage.getMlData2(), null, "desc", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_LowerLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "lowerLimit", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_UpperLimit(), (EClassifier)theLocalconstraintsPackage.getLimit(), null, "upperLimit", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEReference(this.getCompuScale_CompuScaleContentsType(), (EClassifier)this.getCompuScaleContents(), this.getCompuScaleContents_CompuScale(), "compuScaleContentsType", null, 0, 1, CompuScale.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleContentsEClass, CompuScaleContents.class, "CompuScaleContents", true, false, true);
        this.initEReference(this.getCompuScaleContents_CompuScale(), (EClassifier)this.getCompuScale(), this.getCompuScale_CompuScaleContentsType(), "compuScale", null, 0, 1, CompuScaleContents.class, true, false, true, false, false, false, true, false, true);
        this.initEClass(this.compuScaleConstantContentsEClass, CompuScaleConstantContents.class, "CompuScaleConstantContents", false, false, true);
        this.initEReference(this.getCompuScaleConstantContents_CompuConst(), (EClassifier)this.getCompuConst(), null, "compuConst", null, 0, 1, CompuScaleConstantContents.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScaleGenericMathEClass, CompuScaleGenericMath.class, "CompuScaleGenericMath", false, false, true);
        this.initEClass(this.compuScaleRationalFormulaEClass, CompuScaleRationalFormula.class, "CompuScaleRationalFormula", false, false, true);
        this.initEReference(this.getCompuScaleRationalFormula_CompuRationalCoeffs(), (EClassifier)this.getCompuRationalCoeffs(), this.getCompuRationalCoeffs_CompuScaleRationalFormula(), "compuRationalCoeffs", null, 0, 1, CompuScaleRationalFormula.class, false, false, true, true, false, false, true, false, true);
        this.initEClass(this.compuScalesEClass, CompuScales.class, "CompuScales", false, false, true);
        this.initEReference(this.getCompuScales_CompuScales(), (EClassifier)this.getCompuScale(), this.getCompuScale_CompuScales(), "compuScales", null, 0, -1, CompuScales.class, false, false, true, true, false, false, true, false, true);
        this.createResource("http://autosar.org/2.1.5/autosar21/swc/d/cm");
        this.createMetaDataAnnotations();
        this.createTaggedValuesAnnotations();
        this.createExtendedMetaDataAnnotations();
        this.createStereotypeAnnotations();
        this.createTaggedValuesOfGeneralization_ARObjectAnnotations();
        this.createTaggedValuesOfGeneralization_CompuConstContentAnnotations();
        this.createGenModelAnnotations();
        this.createTaggedValuesOfGeneralization_ValueByFormulaAnnotations();
        this.createTaggedValuesOfGeneralization_ARElementAnnotations();
        this.createTaggedValuesOfGeneralization_CompuContentAnnotations();
        this.createTaggedValuesOfGeneralization_CompuScaleContentsAnnotations();
    }

    protected void createMetaDataAnnotations() {
        String source = "MetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"Name", "ComputationMethod", "GUID", "{9178CA75-33C0-41d5-8201-C941C58C1121}", "Id", "2117722475"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"Name", "Compu", "Modified", "Fri Sep 01 13:28:42 CEST 2006", "Created", "Fri Nov 25 19:53:28 CET 2005", "GUID", "{BC8CB1BB-3377-40fc-8191-E3666FD19131}", "Id", "-1346570927"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"Name", "CompuContent", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{7D98FBEF-AA0F-4c67-A600-CFA86444B884}", "Id", "1554908249"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"Name", "CompuConst", "Modified", "Fri Sep 01 13:28:41 CEST 2006", "Created", "Fri Nov 25 19:53:28 CET 2005", "GUID", "{391A1FD1-1EC8-4668-AB3C-BB805D74B938}", "Id", "-410633509"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"Name", "CompuConstContent", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{4BD8D9D2-D06C-4e67-88AF-F102D4C638F9}", "Id", "-1764185983"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"Name", "CompuConstFormulaContent", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{9BBA7F16-7F84-46a4-AA34-F0FFF3652B63}", "Id", "114411055"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"Name", "CompuConstNumericContent", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{7C1EAFD8-8E91-4b7f-A029-03830C3A01C4}", "Id", "1698495351"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"Name", "v", "GUID", "{C94CE836-C033-4ea4-B05E-666AE76BC4C0}", "Id", "-308981332"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"Name", "CompuConstTextContent", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{81055824-DEE2-47c2-9A93-5BD910F4CE4A}", "Id", "-1145128538"});
        this.addAnnotation((ENamedElement)this.compuDefaultValueEClass, source, new String[]{"Name", "CompuDefaultValue", "Modified", "Thu Apr 06 20:13:06 CEST 2006", "Created", "Fri Nov 25 19:52:50 CET 2005", "GUID", "{48D533A6-0D1A-4d1c-8B0C-6FE7C8C757CE}", "Id", "-80143744"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Name", "CompuGenericMath", "Modified", "Fri Sep 01 13:28:41 CEST 2006", "Created", "Mon Mar 20 20:15:50 CET 2006", "GUID", "{9D69D804-0286-4dbb-A71F-6567FFC1F2BA}", "Id", "-1951526844"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Levels(), source, new String[]{"Name", "level", "GUID", "{1CCEDA31-230D-4c3c-8BD7-E841874D9CEE}", "Id", "-152044504"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Name", "CompuMethod", "Modified", "Tue Dec 05 17:40:30 CET 2006", "Created", "Fri Nov 25 19:52:50 CET 2005", "GUID", "{35B3FBBD-0E8D-4a3e-9FC6-820F43A6E26A}", "Id", "197042282"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"Name", "CompuNominatorDenominator", "Modified", "Fri Sep 01 13:28:42 CEST 2006", "Created", "Fri Nov 25 19:53:28 CET 2005", "GUID", "{7D7963D9-F358-409e-B707-378144C109A9}", "Id", "1996186808"});
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"Name", "CompuProgCode", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{B950C832-16A8-446b-A90B-1737BE7958AE}", "Id", "-2089620336"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"Name", "ProgCode", "Modified", "Fri Sep 01 13:27:52 CEST 2006", "Created", "Fri Nov 25 19:53:00 CET 2005", "GUID", "{598C66E6-F5EC-49f0-9A12-59D316C3C9DB}", "Id", "-1013386612"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"Name", "CompuRationalCoeffs", "Modified", "Fri Sep 01 13:27:31 CEST 2006", "Created", "Fri Nov 25 19:52:51 CET 2005", "GUID", "{30AF5895-83DA-4c90-AB3F-D8A7BBDACC5E}", "Id", "-598743891"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"Name", "CompuScale", "Modified", "Fri Sep 01 13:27:32 CEST 2006", "Created", "Fri Nov 25 19:52:51 CET 2005", "GUID", "{0A255A38-15AB-452a-9B17-55883DD70C04}", "Id", "-1267547696"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"Name", "shortLabel", "GUID", "{4D6E0F54-55B1-4df1-A5E0-3C6622ABAA04}", "Id", "-1310710737"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"Name", "CompuScaleContents", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{D87177B7-35E4-47b6-AB9E-FA4F5C4B1ADE}", "Id", "668853566"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"Name", "CompuScaleConstantContents", "Modified", "Fri Sep 01 13:29:02 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{53919658-4DCF-47cc-84FB-EC3BF92B7859}", "Id", "-1588549993"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"Name", "CompuScaleGenericMath", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{514B2D8E-46DA-4d4e-B913-24BB06E32196}", "Id", "-2034662226"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"Name", "CompuScaleRationalFormula", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{768B65FA-855A-43ff-A26E-B02BFD34E3ED}", "Id", "-1647437554"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"Name", "CompuScales", "Modified", "Fri Sep 01 13:29:03 CEST 2006", "Created", "Fri Nov 25 19:53:36 CET 2005", "GUID", "{D8D3E313-B184-40b5-9BD7-D5979B4D0238}", "Id", "-143196185"});
    }

    protected void createTaggedValuesAnnotations() {
        String source = "TaggedValues";
        this.addAnnotation((ENamedElement)this, source, new String[]{"xml.name", "COMPUTATION-METHOD", "xml.namePlural", "COMPUTATION-METHODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"xml.tags", "msr.id=\"type__COMPU_TYPE\"", "msr.id", "type__COMPU_TYPE", "xml.name", "COMPU", "xml.namePlural", "COMPUS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuContentType(), source, new String[]{"xml.tags", "xml.typeWrapperElement=\"false\";xml.roleWrapperElement=\"false\";xml.sequenceOffset=\"20\";xml.typeElement=\"false\";xml.roleElement=\"false\";msr.id=\"COMPU_TYPE__COMPU_content_TYPE\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "COMPU_TYPE__COMPU_content_TYPE", "xml.roleElement", "false", "xml.name", "COMPU-CONTENT-TYPE", "xml.namePlural", "COMPU-CONTENT-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"70\";msr.id=\"COMPU_TYPE__COMPU-DEFAULT-VALUE\"", "xml.sequenceOffset", "1", "msr.id", "COMPU_TYPE__COMPU-DEFAULT-VALUE", "xml.name", "COMPU-DEFAULT-VALUE", "xml.namePlural", "COMPU-DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"xml.tags", "msr.id=\"special__COMPU_content_TYPE\";msr.isOrgroup=\"true\"", "msr.isOrgroup", "true", "msr.id", "special__COMPU_content_TYPE", "xml.name", "COMPU-CONTENT", "xml.namePlural", "COMPU-CONTENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-CONST\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-CONST_TYPE\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-CONST", "msr.id", "type__COMPU-CONST_TYPE", "xml.name", "COMPU-CONST", "xml.namePlural", "COMPU-CONSTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"10\";xml.roleWrapperElement=\"false\";xml.typeWrapperElement=\"false\";xml.typeElement=\"false\";xml.roleElement=\"false\";msr.id=\"COMPU-CONST_TYPE__COMPU-CONST_content_TYPE\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "COMPU-CONST_TYPE__COMPU-CONST_content_TYPE", "xml.roleElement", "false", "xml.name", "COMPU-CONST-CONTENT-TYPE", "xml.namePlural", "COMPU-CONST-CONTENT-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_content_TYPE\";msr.isOrgroup=\"true\"", "asam.useCase", "MDX", "msr.isOrgroup", "true", "msr.id", "special__COMPU-CONST_content_TYPE", "xml.name", "COMPU-CONST-CONTENT", "xml.namePlural", "COMPU-CONST-CONTENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_formulaContent_TYPE\"", "asam.useCase", "MDX", "msr.id", "special__COMPU-CONST_formulaContent_TYPE", "xml.name", "COMPU-CONST-FORMULA-CONTENT", "xml.namePlural", "COMPU-CONST-FORMULA-CONTENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-CONST_formulaContent_TYPE__VF\"", "xml.sequenceOffset", "0", "msr.id", "COMPU-CONST_formulaContent_TYPE__VF", "xml.name", "VF", "xml.namePlural", "VFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_numericContent_TYPE\"", "asam.useCase", "MDX", "msr.id", "special__COMPU-CONST_numericContent_TYPE", "xml.name", "COMPU-CONST-NUMERIC-CONTENT", "xml.namePlural", "COMPU-CONST-NUMERIC-CONTENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"xml.tags", "msr.id=\"COMPU-CONST_numericContent_TYPE__V\";msr.tbdString=\"true\";xml.sequenceOffset=\"50\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "msr.id", "COMPU-CONST_numericContent_TYPE__V", "xml.name", "V", "xml.namePlural", "VS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-CONST_textContent_TYPE\"", "asam.useCase", "MDX", "msr.id", "special__COMPU-CONST_textContent_TYPE", "xml.name", "COMPU-CONST-TEXT-CONTENT", "xml.namePlural", "COMPU-CONST-TEXT-CONTENTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"70\";msr.id=\"COMPU-CONST_textContent_TYPE__VT\"", "xml.sequenceOffset", "0", "msr.id", "COMPU-CONST_textContent_TYPE__VT", "xml.name", "VT", "xml.namePlural", "VTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuDefaultValueEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-DEFAULT-VALUE\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-DEFAULT-VALUE_TYPE\";msr.isGroupOnly=\"true\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-DEFAULT-VALUE", "msr.isGroupOnly", "true", "msr.id", "type__COMPU-DEFAULT-VALUE_TYPE", "xml.name", "COMPU-DEFAULT-VALUE", "xml.namePlural", "COMPU-DEFAULT-VALUES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-GENERIC-MATH\";msr.id=\"type__COMPU-GENERIC-MATH_TYPE\";msr.isGroupOnly=\"true\"", "asam.harmonizedObject", "ASAM-COMPU-GENERIC-MATH", "msr.isGroupOnly", "true", "msr.id", "type__COMPU-GENERIC-MATH_TYPE", "xml.name", "COMPU-GENERIC-MATH", "xml.namePlural", "COMPU-GENERIC-MATHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "true"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Levels(), source, new String[]{"xml.tags", "msr.id=\"COMPU-GENERIC-MATH_TYPE__COMPU-GENERIC-MATH_TYPE__LEVEL\";xml.attribute=\"true\"", "xml.attribute", "true", "msr.id", "COMPU-GENERIC-MATH_TYPE__COMPU-GENERIC-MATH_TYPE__LEVEL", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.sequenceOffset", "0", "xml.name", "LEVEL", "xml.namePlural", "LEVELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-METHOD\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-METHOD_TYPE\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-METHOD", "msr.id", "type__COMPU-METHOD_TYPE", "xml.name", "COMPU-METHOD", "xml.namePlural", "COMPU-METHODS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-METHOD_TYPE__UNIT-REF\"", "xml.sequenceOffset", "0", "msr.id", "COMPU-METHOD_TYPE__UNIT-REF", "xml.name", "UNIT-REF", "xml.namePlural", "UNIT-REFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"80\";msr.id=\"COMPU-METHOD_TYPE__COMPU-INTERNAL-TO-PHYS\"", "xml.sequenceOffset", "1", "msr.id", "COMPU-METHOD_TYPE__COMPU-INTERNAL-TO-PHYS", "xml.name", "COMPU-INTERNAL-TO-PHYS", "xml.namePlural", "COMPU-INTERNAL-TO-PHYSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"COMPU-METHOD_TYPE__COMPU-PHYS-TO-INTERNAL\"", "xml.sequenceOffset", "2", "msr.id", "COMPU-METHOD_TYPE__COMPU-PHYS-TO-INTERNAL", "xml.name", "COMPU-PHYS-TO-INTERNAL", "xml.namePlural", "COMPU-PHYS-TO-INTERNALS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"xml.tags", "msr.id=\"type__COMPU-NOMINATOR_DENOMINATOR_TYPE\";msr.isGroupOnly=\"true\"", "msr.isGroupOnly", "true", "msr.id", "type__COMPU-NOMINATOR_DENOMINATOR_TYPE", "xml.name", "COMPU-NOMINATOR-DENOMINATOR", "xml.namePlural", "COMPU-NOMINATOR-DENOMINATORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "false", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vfs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"COMPU-NOMINATOR_DENOMINATOR_TYPE__VF\"", "xml.sequenceOffset", "0", "msr.id", "COMPU-NOMINATOR_DENOMINATOR_TYPE__VF", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "VF", "xml.namePlural", "VFS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-NOMINATOR_DENOMINATOR_TYPE__V\"", "xml.sequenceOffset", "1", "msr.id", "COMPU-NOMINATOR_DENOMINATOR_TYPE__V", "xml.roleWrapperElement", "false", "xml.roleElement", "true", "xml.typeWrapperElement", "false", "xml.typeElement", "false", "xml.name", "V", "xml.namePlural", "VS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"xml.tags", "msr.id=\"special__COMPU_prog-code_TYPE\"", "msr.id", "special__COMPU_prog-code_TYPE", "xml.name", "COMPU-PROG-CODE", "xml.namePlural", "COMPU-PROG-CODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuProgCode_ProgCode(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"60\";msr.id=\"COMPU_prog-code_TYPE__PROG-CODE\"", "xml.sequenceOffset", "0", "msr.id", "COMPU_prog-code_TYPE__PROG-CODE", "xml.name", "PROG-CODE", "xml.namePlural", "PROG-CODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-PROG-CODE\";msr.id=\"type__PROG-CODE_TYPE\"", "asam.harmonizedObject", "ASAM-PROG-CODE", "msr.id", "type__PROG-CODE_TYPE", "xml.name", "PROG-CODE", "xml.namePlural", "PROG-CODES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-RATIONAL-COEFFS\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-RATIONAL-COEFFS_TYPE\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-RATIONAL-COEFFS", "msr.id", "type__COMPU-RATIONAL-COEFFS_TYPE", "xml.name", "COMPU-RATIONAL-COEFFS", "xml.namePlural", "COMPU-RATIONAL-COEFFSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"20\";msr.id=\"COMPU-RATIONAL-COEFFS_TYPE__COMPU-NUMERATOR\"", "xml.sequenceOffset", "0", "msr.id", "COMPU-RATIONAL-COEFFS_TYPE__COMPU-NUMERATOR", "xml.name", "COMPU-NUMERATOR", "xml.namePlural", "COMPU-NUMERATORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-RATIONAL-COEFFS_TYPE__COMPU-DENOMINATOR\"", "xml.sequenceOffset", "1", "msr.id", "COMPU-RATIONAL-COEFFS_TYPE__COMPU-DENOMINATOR", "xml.name", "COMPU-DENOMINATOR", "xml.namePlural", "COMPU-DENOMINATORS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"xml.tags", "asam.harmonizedObject=\"ASAM-COMPU-SCALE\";asam.useCase=\"MDX\";msr.id=\"type__COMPU-SCALE_TYPE\"", "asam.useCase", "MDX", "asam.harmonizedObject", "ASAM-COMPU-SCALE", "msr.id", "type__COMPU-SCALE_TYPE", "xml.name", "COMPU-SCALE", "xml.namePlural", "COMPU-SCALES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"xml.tags", "msr.id=\"COMPU-SCALE_TYPE__SHORT-LABEL\";msr.tbdString=\"true\";xml.sequenceOffset=\"20\"", "msr.tbdString", "true", "xml.sequenceOffset", "0", "msr.id", "COMPU-SCALE_TYPE__SHORT-LABEL", "xml.name", "SHORT-LABEL", "xml.namePlural", "SHORT-LABELS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"30\";msr.id=\"COMPU-SCALE_TYPE__DESC\"", "xml.sequenceOffset", "1", "msr.id", "COMPU-SCALE_TYPE__DESC", "xml.name", "DESC", "xml.namePlural", "DESCS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"40\";msr.id=\"COMPU-SCALE_TYPE__LOWER-LIMIT\"", "xml.sequenceOffset", "2", "msr.id", "COMPU-SCALE_TYPE__LOWER-LIMIT", "xml.name", "LOWER-LIMIT", "xml.namePlural", "LOWER-LIMITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"50\";msr.id=\"COMPU-SCALE_TYPE__UPPER-LIMIT\"", "xml.sequenceOffset", "3", "msr.id", "COMPU-SCALE_TYPE__UPPER-LIMIT", "xml.name", "UPPER-LIMIT", "xml.namePlural", "UPPER-LIMITS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContentsType(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"false\";xml.roleElement=\"false\";xml.typeWrapperElement=\"false\";xml.sequenceOffset=\"70\";xml.typeElement=\"false\";msr.id=\"COMPU-SCALE_TYPE__COMPU-SCALE_contents_TYPE\"", "xml.roleWrapperElement", "false", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "4", "xml.typeElement", "false", "msr.id", "COMPU-SCALE_TYPE__COMPU-SCALE_contents_TYPE", "xml.roleElement", "false", "xml.name", "COMPU-SCALE-CONTENTS-TYPE", "xml.namePlural", "COMPU-SCALE-CONTENTS-TYPES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_contents_TYPE\";msr.isOrgroup=\"true\"", "asam.useCase", "MDX", "msr.isOrgroup", "true", "msr.id", "special__COMPU-SCALE_contents_TYPE", "xml.name", "COMPU-SCALE-CONTENTS", "xml.namePlural", "COMPU-SCALE-CONTENTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_constantContents_TYPE\"", "asam.useCase", "MDX", "msr.id", "special__COMPU-SCALE_constantContents_TYPE", "xml.name", "COMPU-SCALE-CONSTANT-CONTENTS", "xml.namePlural", "COMPU-SCALE-CONSTANT-CONTENTSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"90\";msr.id=\"COMPU-SCALE_constantContents_TYPE__COMPU-CONST\"", "xml.sequenceOffset", "0", "msr.id", "COMPU-SCALE_constantContents_TYPE__COMPU-CONST", "xml.name", "COMPU-CONST", "xml.namePlural", "COMPU-CONSTS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_genericMath_TYPE\"", "asam.useCase", "MDX", "msr.id", "special__COMPU-SCALE_genericMath_TYPE", "xml.name", "COMPU-SCALE-GENERIC-MATH", "xml.namePlural", "COMPU-SCALE-GENERIC-MATHS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"xml.tags", "asam.useCase=\"MDX\";msr.id=\"special__COMPU-SCALE_rationalFormula_TYPE\"", "asam.useCase", "MDX", "msr.id", "special__COMPU-SCALE_rationalFormula_TYPE", "xml.name", "COMPU-SCALE-RATIONAL-FORMULA", "xml.namePlural", "COMPU-SCALE-RATIONAL-FORMULAS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"xml.tags", "xml.sequenceOffset=\"110\";msr.id=\"COMPU-SCALE_rationalFormula_TYPE__COMPU-RATIONAL-COEFFS\"", "xml.sequenceOffset", "0", "msr.id", "COMPU-SCALE_rationalFormula_TYPE__COMPU-RATIONAL-COEFFS", "xml.name", "COMPU-RATIONAL-COEFFS", "xml.namePlural", "COMPU-RATIONAL-COEFFSS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false", "xml.roleElement", "true", "xml.roleWrapperElement", "false", "xml.typeElement", "false", "xml.typeWrapperElement", "false"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"xml.tags", "msr.id=\"special__COMPU_scales_TYPE\"", "msr.id", "special__COMPU_scales_TYPE", "xml.name", "COMPU-SCALES", "xml.namePlural", "COMPU-SCALESS", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.globalElement", "false", "xml.extensionPoint", "false", "xml.ordered", "true", "xml.text", "false"});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"xml.tags", "xml.roleWrapperElement=\"true\";xml.sequenceOffset=\"40\";xml.roleElement=\"true\";xml.typeElement=\"false\";xml.typeWrapperElement=\"false\";msr.id=\"COMPU_scales_TYPE__COMPU-SCALES\"", "xml.roleWrapperElement", "true", "xml.typeWrapperElement", "false", "xml.sequenceOffset", "0", "xml.typeElement", "false", "msr.id", "COMPU_scales_TYPE__COMPU-SCALES", "xml.roleElement", "true", "xml.name", "COMPU-SCALE", "xml.namePlural", "COMPU-SCALES", "xml.nsPrefix", "AR", "xml.nsURI", "http://www.autosar.org/schema", "xml.enforceMaxMultiplicity", "true", "xml.enforceMinMultiplicity", "false", "xml.attribute", "false"});
    }

    protected void createExtendedMetaDataAnnotations() {
        String source = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
        this.addAnnotation((ENamedElement)this, source, new String[]{"qualified", "false"});
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"name", "COMPU", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuContentType(), source, new String[]{"name", "COMPU-CONTENT-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompu_CompuDefaultValue(), source, new String[]{"name", "COMPU-DEFAULT-VALUE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"name", "COMPU-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"name", "COMPU-CONST", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuConst_CompuConstContentType(), source, new String[]{"name", "COMPU-CONST-CONTENT-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"name", "COMPU-CONST-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"name", "COMPU-CONST-FORMULA-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"name", "COMPU-CONST-NUMERIC-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"name", "COMPU-CONST-TEXT-CONTENT", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"name", "VT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuDefaultValueEClass, source, new String[]{"name", "COMPU-DEFAULT-VALUE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"name", "COMPU-GENERIC-MATH", "kind", "mixed", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuGenericMath_Levels(), source, new String[]{"name", "LEVEL", "kind", "attribute"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"name", "COMPU-METHOD", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"name", "UNIT-REF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuInternalToPhys(), source, new String[]{"name", "COMPU-INTERNAL-TO-PHYS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuMethod_CompuPhysToInternal(), source, new String[]{"name", "COMPU-PHYS-TO-INTERNAL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"name", "COMPU-NOMINATOR-DENOMINATOR", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vfs(), source, new String[]{"name", "VF", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"name", "V", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"name", "COMPU-PROG-CODE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuProgCode_ProgCode(), source, new String[]{"name", "PROG-CODE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"name", "PROG-CODE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"name", "COMPU-RATIONAL-COEFFS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuNumerator(), source, new String[]{"name", "COMPU-NUMERATOR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuRationalCoeffs_CompuDenominator(), source, new String[]{"name", "COMPU-DENOMINATOR", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"name", "COMPU-SCALE", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"name", "SHORT-LABEL", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"name", "DESC", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"name", "LOWER-LIMIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"name", "UPPER-LIMIT", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScale_CompuScaleContentsType(), source, new String[]{"name", "COMPU-SCALE-CONTENTS-TYPE", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"name", "COMPU-SCALE-CONTENTS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"name", "COMPU-SCALE-CONSTANT-CONTENTS", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScaleConstantContents_CompuConst(), source, new String[]{"name", "COMPU-CONST", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"name", "COMPU-SCALE-GENERIC-MATH", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"name", "COMPU-SCALE-RATIONAL-FORMULA", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScaleRationalFormula_CompuRationalCoeffs(), source, new String[]{"name", "COMPU-RATIONAL-COEFFS", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"name", "COMPU-SCALES", "kind", "elementOnly", "namespace", "http://autosar.org/2.1.5"});
        this.addAnnotation((ENamedElement)this.getCompuScales_CompuScales(), source, new String[]{"name", "COMPU-SCALES", "kind", "element", "namespace", "http://autosar.org/2.1.5"});
    }

    protected void createStereotypeAnnotations() {
        String source = "Stereotype";
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuDefaultValueEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Stereotype", "atpMixedString"});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Stereotype", "atpIdentifiable"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"Stereotype", "atpMixed"});
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"Stereotype", "atpObject"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"Stereotype", "atpObject"});
    }

    protected void createTaggedValuesOfGeneralization_ARObjectAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARObject";
        this.addAnnotation((ENamedElement)this.compuEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstContentEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuDefaultValueEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuNominatorDenominatorEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.progCodeEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuRationalCoeffsEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleEClass, source, new String[]{"xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleContentsEClass, source, new String[]{"xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CompuConstContentAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuConstContent";
        this.addAnnotation((ENamedElement)this.compuConstFormulaContentEClass, source, new String[]{"Name", "", "GUID", "{30897B5B-87AD-40e5-85C7-6866ED496247}", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_formulaContent_TYPE", "Id", "-1305205100", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstNumericContentEClass, source, new String[]{"Name", "", "GUID", "{C8242A13-E380-43fd-9299-30F4AE1949D9}", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_numericContent_TYPE", "Id", "391529992", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuConstTextContentEClass, source, new String[]{"Name", "", "GUID", "{731D0F8E-C55A-4485-8686-C1A226FEFBB8}", "msr.id", "COMPU-CONST_content_TYPE__COMPU-CONST_textContent_TYPE", "Id", "1283439478", "xml.sequenceOffset", "0"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.getCompuConstFormulaContent_Vf(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getCompuConstNumericContent_V(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.getCompuConstTextContent_Vt(), source, new String[]{"documentation", "<vt> represents one particular textual value of the calibration item."});
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"documentation", "This represents the so called computation method describing the method how to convert between a physical value and a numerical value. See ASAM-HDO specification for details. "});
        this.addAnnotation((ENamedElement)this.getCompuMethod_Unit(), source, new String[]{"documentation", "Use <unit> to enter the unit of a parameter."});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vfs(), source, new String[]{"documentation", "Value calculated via a system constant. This element is included in every case, where parameters should be generated from numerical values during compile time (not runtime!). Thus for example, the influence of the cylinder number on conversion formulae, can be introduced in a repeatable manner."});
        this.addAnnotation((ENamedElement)this.getCompuNominatorDenominator_Vs(), source, new String[]{"documentation", "Use <v> to enter a numerical value."});
        this.addAnnotation((ENamedElement)this.getCompuScale_ShortLabel(), source, new String[]{"documentation", "This element specifies a short name for the context element. This label cannot be referenced in the same way as a <shortName> in connection with MSRSW (queries, external applications etc.)."});
        this.addAnnotation((ENamedElement)this.getCompuScale_Desc(), source, new String[]{"documentation", "<desc> represents a general but brief description of the object in question."});
        this.addAnnotation((ENamedElement)this.getCompuScale_LowerLimit(), source, new String[]{"documentation", "This element specifies the lower limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
        this.addAnnotation((ENamedElement)this.getCompuScale_UpperLimit(), source, new String[]{"documentation", "This element specifies the upper limit of a closed, half-open or open interval. It can also be set to infinity by setting the attribute INTERVAL-TYPE to INFINITE. No value has to be set in the case of an infinite interval."});
    }

    protected void createTaggedValuesOfGeneralization_ValueByFormulaAnnotations() {
        String source = "TaggedValuesOfGeneralization_ValueByFormula";
        this.addAnnotation((ENamedElement)this.compuGenericMathEClass, source, new String[]{"Name", "", "GUID", "{85BE9194-CDA2-4f0b-AB3F-FC0749B9C16A}", "msr.id", "COMPU-GENERIC-MATH_TYPE__VALUE-BY-FORMULA_TYPE", "Id", "1547414388", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_ARElementAnnotations() {
        String source = "TaggedValuesOfGeneralization_ARElement";
        this.addAnnotation((ENamedElement)this.compuMethodEClass, source, new String[]{"Name", "", "GUID", "{6F553836-C4A6-4f4b-8622-ABB4BAC20008}", "msr.id", "COMPU-METHOD_TYPE_ARElement", "Id", "-1669104551", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CompuContentAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuContent";
        this.addAnnotation((ENamedElement)this.compuProgCodeEClass, source, new String[]{"Name", "", "GUID", "{EBA1340F-4B61-4c99-8CE9-925F4CA78802}", "msr.id", "COMPU_content_TYPE__COMPU_prog-code_TYPE", "Id", "-98016358", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScalesEClass, source, new String[]{"Name", "", "GUID", "{0427C8F8-F43C-44e3-A27C-9332113907AD}", "msr.id", "COMPU_content_TYPE__COMPU_scales_TYPE", "Id", "-1965174458", "xml.sequenceOffset", "0"});
    }

    protected void createTaggedValuesOfGeneralization_CompuScaleContentsAnnotations() {
        String source = "TaggedValuesOfGeneralization_CompuScaleContents";
        this.addAnnotation((ENamedElement)this.compuScaleConstantContentsEClass, source, new String[]{"Name", "", "GUID", "{5EFEC25D-9062-49d3-9891-2D5849C7F2F2}", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_constantContents_TYPE", "Id", "278401246", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleGenericMathEClass, source, new String[]{"Name", "", "GUID", "{95747DD3-9417-4ae9-AD77-E2667E0AD0FA}", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_genericMath_TYPE", "Id", "-1140262198", "xml.sequenceOffset", "0"});
        this.addAnnotation((ENamedElement)this.compuScaleRationalFormulaEClass, source, new String[]{"Name", "", "GUID", "{049E2516-DFC5-4845-AED9-DE4A20290DDF}", "msr.id", "COMPU-SCALE_contents_TYPE__COMPU-SCALE_rationalFormula_TYPE", "Id", "-1169763918", "xml.sequenceOffset", "0"});
    }
}

