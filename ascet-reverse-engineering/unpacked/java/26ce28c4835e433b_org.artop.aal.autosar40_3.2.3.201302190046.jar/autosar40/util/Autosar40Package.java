/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAnnotation
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EcoreFactory
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package autosar40.util;

import autosar40.Activator;
import autosar40.autosartoplevelstructure.AutosartoplevelstructurePackage;
import autosar40.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar40.bswmodule.bswoverview.BswoverviewPackage;
import autosar40.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar40.commonstructure.calibrationvalue.CalibrationvaluePackage;
import autosar40.commonstructure.constants.ConstantsPackage;
import autosar40.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar40.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar40.commonstructure.filter.FilterPackage;
import autosar40.commonstructure.flatmap.FlatmapPackage;
import autosar40.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar40.commonstructure.implementation.ImplementationPackage;
import autosar40.commonstructure.implementationdatatypes.ImplementationdatatypesPackage;
import autosar40.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar40.commonstructure.measurementcalibrationsupport.MeasurementcalibrationsupportPackage;
import autosar40.commonstructure.modedeclaration.ModedeclarationPackage;
import autosar40.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar40.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar40.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar40.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar40.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar40.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar40.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar40.commonstructure.swcbswmapping.SwcbswmappingPackage;
import autosar40.commonstructure.swclass.SwclassPackage;
import autosar40.commonstructure.systemconstant.SystemconstantPackage;
import autosar40.commonstructure.timing.TimingPackage;
import autosar40.commonstructure.timing.timingconstraint.TimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.ageconstraint.AgeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executionorderconstraint.ExecutionorderconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutiontimeconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.offsetconstraint.OffsetconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.synchronizationtimingconstraint.SynchronizationtimingconstraintPackage;
import autosar40.commonstructure.timing.timingdescription.TimingdescriptionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcomplex.TdeventcomplexPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.TdeventoccurrenceexpressionPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefs.InstancerefsPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.triggerdeclaration.TriggerdeclarationPackage;
import autosar40.ecucdescription.EcucdescriptionPackage;
import autosar40.ecucparameterdef.EcucparameterdefPackage;
import autosar40.ecuresource.EcuresourcePackage;
import autosar40.ecuresource.hwelementcategory.HwelementcategoryPackage;
import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.documentationonm1.Documentationonm1Package;
import autosar40.genericstructure.formulalanguage.FormulalanguagePackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.anyinstanceref.AnyinstancerefPackage;
import autosar40.genericstructure.generaltemplateclasses.arobject.ArobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ArpackagePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.AnnotationPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.FigurePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.formula.FormulaPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NotePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OasisexchangetablePackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.PaginationandviewPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.singlelanguagedata.SinglelanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.ElementcollectionPackage;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringobjectPackage;
import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralannotationPackage;
import autosar40.genericstructure.generaltemplateclasses.identifiable.IdentifiablePackage;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionaltimePackage;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import autosar40.genericstructure.generaltemplateclasses.specialdata.SpecialdataPackage;
import autosar40.genericstructure.varianthandling.VarianthandlingPackage;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.blueprintdedicated.genericblueprint.GenericblueprintPackage;
import autosar40.standardization.blueprintdedicated.portinterfaceblueprint.PortinterfaceblueprintPackage;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortprotoypeblueprintPackage;
import autosar40.standardization.blueprintmapping.BlueprintmappingPackage;
import autosar40.standardization.keyword.KeywordPackage;
import autosar40.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar40.swcomponent.communication.CommunicationPackage;
import autosar40.swcomponent.components.ComponentsPackage;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar40.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar40.swcomponent.datatype.recordlayout.RecordlayoutPackage;
import autosar40.swcomponent.datatype.units.UnitsPackage;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar40.swcomponent.measurementandcalibration.calibrationparametervalues.CalibrationparametervaluesPackage;
import autosar40.swcomponent.measurementandcalibration.interpolationroutinemappingset.InterpolationroutinemappingsetPackage;
import autosar40.swcomponent.nvblockcomponent.NvblockcomponentPackage;
import autosar40.swcomponent.portinterface.PortinterfacePackage;
import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.instancerefsusage.InstancerefsusagePackage;
import autosar40.swcomponent.swcinternalbehavior.includeddatatypes.IncludeddatatypesPackage;
import autosar40.swcomponent.swcinternalbehavior.instantiationdatadefprops.InstantiationdatadefpropsPackage;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar40.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.runnableentity.RunnableentityPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
import autosar40.system.SystemPackage;
import autosar40.system.datamapping.DatamappingPackage;
import autosar40.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar40.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar40.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernettopology.EthernettopologyPackage;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar40.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar40.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar40.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar40.system.fibex.fibex4ttcan.ttcancommunication.TtcancommunicationPackage;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcantopologyPackage;
import autosar40.system.fibex.fibexcore.FibexcorePackage;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.pncmapping.PncmappingPackage;
import autosar40.system.signalpaths.SignalpathsPackage;
import autosar40.system.swmapping.SwmappingPackage;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import autosar40.util.Autosar40Factory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAnnotation;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EcoreFactory;
import org.eclipse.emf.ecore.impl.EPackageImpl;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class Autosar40Package
extends EPackageImpl {
    public static final String eNAME = "autosar40";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0";
    public static final String eCONTENT_TYPE = "org.artop.aal.autosar40.autosar40XMLFile";
    public static final Autosar40Package eINSTANCE = Autosar40Package.init();
    protected EList<EClassifier> eClassifiers = new BasicEList();
    protected EList<EPackage> eSubPackages = new BasicEList();
    protected Map<Class<?>, EClass> javaClass2eClass = null;
    private Map<String, EClass> name2eClass = null;
    private Map<EClass, List<EClass>> eSubClasses = null;

    static Autosar40Package init() {
        Autosar40Package theAutosar40Package = EPackage.Registry.INSTANCE.getEPackage(eNS_URI) instanceof Autosar40Package ? EPackage.Registry.INSTANCE.getEPackage(eNS_URI) : new Autosar40Package();
        theAutosar40Package.setNsURI(eNS_URI);
        theAutosar40Package.setName(eNAME);
        theAutosar40Package.createResource(eNS_URI);
        return theAutosar40Package;
    }

    private Autosar40Package() {
        super(eNS_URI, (EFactory)Autosar40Factory.eINSTANCE);
        EAnnotation annotation = EcoreFactory.eINSTANCE.createEAnnotation();
        annotation.getDetails().put((Object)"name", (Object)this.name);
        annotation.setSource("http:///org/eclipse/emf/ecore/util/ExtendedMetaData");
        this.getEAnnotations().add((Object)annotation);
    }

    public EClass getEClass(String simpleName) {
        if (this.name2eClass == null) {
            this.name2eClass = new HashMap<String, EClass>();
            for (EClassifier ecls : this.getEClassifiers()) {
                if (!(ecls instanceof EClass)) continue;
                String name = ecls.getName();
                if (this.name2eClass.containsKey(name)) {
                    PlatformLogUtil.logAsWarning((Plugin)Activator.getPlugin(), (Object)("getEClass(): name collision with" + name + "fully qualified name will be required)"));
                    this.name2eClass.put(String.valueOf(this.name2eClass.get(name).getInstanceClass().getPackage().getName()) + "." + name, this.name2eClass.get(name));
                    name = String.valueOf(ecls.getInstanceClass().getPackage().getName()) + "." + name;
                }
                this.name2eClass.put(name, (EClass)ecls);
                if (name.equals(ecls.getInstanceClassName())) continue;
                this.name2eClass.put(ecls.getInstanceClassName(), (EClass)ecls);
            }
        }
        return this.name2eClass.get(simpleName);
    }

    public EClass getEClass(Class<?> instanceClass) {
        if (this.javaClass2eClass == null) {
            this.javaClass2eClass = new HashMap();
            for (EClassifier ecls : this.getEClassifiers()) {
                if (!(ecls instanceof EClass)) continue;
                this.javaClass2eClass.put(ecls.getInstanceClass(), (EClass)ecls);
            }
        }
        return this.javaClass2eClass.get(instanceClass);
    }

    public Collection<EClass> getESubClasses(EClass ecls) {
        List<Object> list3;
        if (this.eSubClasses == null) {
            this.eSubClasses = new HashMap<EClass, List<EClass>>();
            for (EClassifier cls : this.getEClassifiers()) {
                if (!(cls instanceof EClass)) continue;
                EClass eclz = (EClass)cls;
                for (EClass parent : eclz.getESuperTypes()) {
                    List<EClass> list2 = this.eSubClasses.get(parent);
                    if (list2 == null) {
                        list2 = new ArrayList<EClass>();
                        this.eSubClasses.put(parent, list2);
                    }
                    list2.add(eclz);
                }
            }
            for (List<Object> list3 : this.eSubClasses.values()) {
                ((ArrayList)list3).trimToSize();
            }
        }
        if ((list3 = this.eSubClasses.get(ecls)) == null) {
            list3 = Collections.emptyList();
        }
        return Collections.unmodifiableCollection(list3);
    }

    public Collection<EClass> getEAllSubClasses(EClass ecls) {
        HashSet<EClass> ret = new HashSet<EClass>();
        LinkedList<EClass> toProcess = new LinkedList<EClass>(this.getESubClasses(ecls));
        while (!toProcess.isEmpty()) {
            EClass cls = toProcess.removeFirst();
            if (!ret.add(cls)) continue;
            toProcess.addAll(this.getESubClasses(cls));
        }
        return ret;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public EList<EClassifier> getEClassifiers() {
        Autosar40Package autosar40Package = this;
        synchronized (autosar40Package) {
            if (this.eClassifiers.size() == 0) {
                this.eClassifiers.addAll((Collection)EcuresourcePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)HwelementcategoryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FormulalanguagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AbstractstructurePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)VarianthandlingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)Documentationonm1Package.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)IdentifiablePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ChaptersPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MsrqueryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AnnotationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InlineattributeenumsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InlinetextelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SinglelanguagedataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InlinetextmodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LanguagedatamodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MultilanguagedataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BlockelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PaginationandviewPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)OasisexchangetablePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FormulaPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FigurePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)RequirementstracingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SynopsisPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GerneralparametersPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ListelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)NotePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PrimitivetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AnyinstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ArpackagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ElementcollectionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GeneralannotationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AdmindataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SpecialdataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MultidimensionaltimePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EngineeringobjectPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ArobjectPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FilterPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FlatmapPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatadefpropertiesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatadictionaryproxiesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MeasurementcalibrationsupportPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ImplementationdatatypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ModedeclarationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AxisPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CalibrationvaluePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CalibrationparameterPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BasetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GlobalconstraintsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AuxillaryobjectsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ConstantsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TriggerdeclarationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ImplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwcbswmappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServiceneedsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ResourceconsumptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MemorysectionusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)StackusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)HeapusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ExecutiontimePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServiceprocesstaskPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwclassPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TimingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TimingconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AgeconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ExecutiontimeconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EventtriggeringconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LatencytimingconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)OffsetconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SynchronizationtimingconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ExecutionorderconstraintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TimingdescriptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TdeventoccurrenceexpressionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventoccurrenceexpression.instancerefsusage.InstancerefsusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TdeventswcinternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TdeventcomPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TdeventbswPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TdeventbswinternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TdeventcomplexPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TdeventvfbPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SystemconstantPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EndtoendprotectionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InterpolationroutinemappingsetPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CalibrationparametervaluesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatatypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)RecordlayoutPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)UnitsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LocalconstraintsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ComputationmethodPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DataprototypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwcinternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServicemappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DataelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InstancerefsusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PerinstancememoryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InstantiationdatadefpropsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortapioptionsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)RteeventsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TriggerPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ModedeclarationgroupPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServercallPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.swcomponent.swcinternalbehavior.varianthandling.VarianthandlingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)IncludeddatatypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)RunnableentityPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ComponentsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.swcomponent.components.instancerefs.InstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CompositionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.swcomponent.composition.instancerefs.InstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SoftwarecomponentdocumentationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)NvblockcomponentPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ApplicationattributesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwcimplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortinterfacePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.swcomponent.portinterface.instancerefs.InstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcucdescriptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcucparameterdefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswoverviewPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.bswmodule.bswoverview.instancerefs.InstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswimplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswinterfacesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SystemPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwmappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.system.instancerefs.InstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CancommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CantopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TtcantopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TtcancommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EthernetcommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EthernettopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FlexraycommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FlexraytopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LincommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LintopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)Fibex4multiplatformPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FibexcorePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CorecommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.system.fibex.fibexcore.corecommunication.timing.TimingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CoretopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatamappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TransportprotocolsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SignalpathsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcuresourcemappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PncmappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)NetworkmanagementPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar40.system.endtoendprotection.EndtoendprotectionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GenericblueprintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortinterfaceblueprintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortprotoypeblueprintPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BlueprintmappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)KeywordPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AbstractblueprintstructurePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AutosartoplevelstructurePackage.eINSTANCE.getEClassifiers());
            }
            return this.eClassifiers;
        }
    }
}

