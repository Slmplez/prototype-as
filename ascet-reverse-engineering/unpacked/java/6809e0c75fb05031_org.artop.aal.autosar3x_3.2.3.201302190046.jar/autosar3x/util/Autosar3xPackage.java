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
package autosar3x.util;

import autosar3x.Activator;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswimplementation.BswimplementationPackage;
import autosar3x.bswmodule.bswinterfaces.BswinterfacesPackage;
import autosar3x.bswmodule.bswoverview.BswoverviewPackage;
import autosar3x.commonstructure.auxillaryobjects.AuxillaryobjectsPackage;
import autosar3x.commonstructure.axis.AxisPackage;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.byteorder.ByteorderPackage;
import autosar3x.commonstructure.calibrationparameter.CalibrationparameterPackage;
import autosar3x.commonstructure.datadefproperties.DatadefpropertiesPackage;
import autosar3x.commonstructure.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar3x.commonstructure.filter.FilterPackage;
import autosar3x.commonstructure.globalconstraints.GlobalconstraintsPackage;
import autosar3x.commonstructure.implementation.ImplementationPackage;
import autosar3x.commonstructure.internalbehavior.InternalbehaviorPackage;
import autosar3x.commonstructure.resourceconsumption.ResourceconsumptionPackage;
import autosar3x.commonstructure.resourceconsumption.executiontime.ExecutiontimePackage;
import autosar3x.commonstructure.resourceconsumption.heapusage.HeapusagePackage;
import autosar3x.commonstructure.resourceconsumption.memorysectionusage.MemorysectionusagePackage;
import autosar3x.commonstructure.resourceconsumption.stackusage.StackusagePackage;
import autosar3x.commonstructure.serviceneeds.ServiceneedsPackage;
import autosar3x.commonstructure.serviceprocesstask.ServiceprocesstaskPackage;
import autosar3x.commonstructure.swclass.SwclassPackage;
import autosar3x.ecucdescription.EcucdescriptionPackage;
import autosar3x.ecucparameterdef.EcucparameterdefPackage;
import autosar3x.ecuresource.EcuresourcePackage;
import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar3x.ecuresource.memory.MemoryPackage;
import autosar3x.ecuresource.peripherals.PeripheralsPackage;
import autosar3x.ecuresource.processingunit.ProcessingunitPackage;
import autosar3x.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar3x.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar3x.genericstructure.commonpatterns.annotation.AnnotationPackage;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockPackage;
import autosar3x.genericstructure.commonpatterns.enumerations.EnumerationsPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar3x.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar3x.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar3x.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar3x.genericstructure.infrastructure.InfrastructurePackage;
import autosar3x.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar3x.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar3x.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar3x.swcomponent.communication.CommunicationPackage;
import autosar3x.swcomponent.components.ComponentsPackage;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar3x.swcomponent.datatype.constants.ConstantsPackage;
import autosar3x.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar3x.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar3x.swcomponent.datatype.units.UnitsPackage;
import autosar3x.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar3x.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar3x.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar3x.swcomponent.portinterface.PortinterfacePackage;
import autosar3x.swcomponent.services.ServicesPackage;
import autosar3x.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar3x.swcomponent.swcinternalbehavior.componentlocalcalprm.ComponentlocalcalprmPackage;
import autosar3x.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar3x.swcomponent.swcinternalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar3x.swcomponent.swcinternalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar3x.swcomponent.swcinternalbehavior.portapioptions.PortapioptionsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar3x.swcomponent.swcinternalbehavior.servicemapping.ServicemappingPackage;
import autosar3x.system.SystemPackage;
import autosar3x.system.datamapping.DatamappingPackage;
import autosar3x.system.ecuresourcemapping.EcuresourcemappingPackage;
import autosar3x.system.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.system.fibex.fibex4can.cancommunication.CancommunicationPackage;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibex4flexray.Fibex4flexrayPackage;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar3x.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import autosar3x.system.fibex.fibex4lin.lincommunication.LincommunicationPackage;
import autosar3x.system.fibex.fibex4lin.lintopology.LintopologyPackage;
import autosar3x.system.fibex.fibex4multiplatform.Fibex4multiplatformPackage;
import autosar3x.system.fibex.fibexcore.FibexcorePackage;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.timing.TimingPackage;
import autosar3x.system.fibex.fibexcore.coretopology.CoretopologyPackage;
import autosar3x.system.signalpaths.SignalpathsPackage;
import autosar3x.system.swmapping.SwmappingPackage;
import autosar3x.system.transportprotocols.TransportprotocolsPackage;
import autosar3x.util.Autosar3xFactory;
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
public class Autosar3xPackage
extends EPackageImpl {
    public static final String eNAME = "autosar3x";
    public static final String eNS_URI = "http://autosar.org/3.2.1";
    public static final String eCONTENT_TYPE = "org.artop.aal.autosar3x.autosar3xXMLFile";
    public static final Autosar3xPackage eINSTANCE = Autosar3xPackage.init();
    protected EList<EClassifier> eClassifiers = new BasicEList();
    protected EList<EPackage> eSubPackages = new BasicEList();
    protected Map<Class<?>, EClass> javaClass2eClass = null;
    private Map<String, EClass> name2eClass = null;
    private Map<EClass, List<EClass>> eSubClasses = null;

    static Autosar3xPackage init() {
        Autosar3xPackage theAutosar3xPackage = EPackage.Registry.INSTANCE.getEPackage(eNS_URI) instanceof Autosar3xPackage ? EPackage.Registry.INSTANCE.getEPackage(eNS_URI) : new Autosar3xPackage();
        theAutosar3xPackage.setNsURI(eNS_URI);
        theAutosar3xPackage.setName(eNAME);
        theAutosar3xPackage.createResource(eNS_URI);
        return theAutosar3xPackage;
    }

    private Autosar3xPackage() {
        super(eNS_URI, (EFactory)Autosar3xFactory.eINSTANCE);
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
        Autosar3xPackage autosar3xPackage = this;
        synchronized (autosar3xPackage) {
            if (this.eClassifiers.size() == 0) {
                this.eClassifiers.addAll((Collection)EcuresourcePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PeripheralsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcuelectronicsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ProcessingunitPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MemoryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BasicelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SensoractuatorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InfrastructurePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)IdentifiablePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AutosarPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EnumerationsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InlinetextmodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InlinesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MultilanguagedataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LanguagedatamodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SinglelanguagedataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AdmindataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SpecialdataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DocumentationblockPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AnnotationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PrimitivetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FilterPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServiceneedsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ImplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ResourceconsumptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MemorysectionusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)StackusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)HeapusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ExecutiontimePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AuxillaryobjectsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AxisPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatadictionaryproxiesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CalibrationparameterPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatadefpropertiesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwclassPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServiceprocesstaskPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GlobalconstraintsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BasetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ByteorderPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CompositionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.composition.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ComponentsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.components.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ApplicationattributesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MeasurementpropertyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CharacteristicPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortinterfacePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ModedeclarationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.modedeclaration.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwcinternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)RteeventsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ModedeclarationgroupPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServercallPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.swcinternalbehavior.servercall.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DataelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.swcomponent.swcinternalbehavior.dataelements.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InterrunnablecommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PerinstancememoryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortapioptionsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServicemappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ComponentlocalcalprmPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServicesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwcimplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ConstantsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatatypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LocalconstraintsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)UnitsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ComputationmethodPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ValuemodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcucdescriptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.ecucdescription.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcucparameterdefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswimplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswoverviewPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswinterfacesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SystemPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwmappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.system.swmapping.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CancommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CantopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)Fibex4flexrayPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FlexraycommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FlexraytopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LincommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LintopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)Fibex4multiplatformPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FibexcorePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CorecommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TimingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CoretopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TransportprotocolsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcuresourcemappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatamappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.system.datamapping.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SignalpathsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar3x.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EndtoendprotectionPackage.eINSTANCE.getEClassifiers());
            }
            return this.eClassifiers;
        }
    }
}

