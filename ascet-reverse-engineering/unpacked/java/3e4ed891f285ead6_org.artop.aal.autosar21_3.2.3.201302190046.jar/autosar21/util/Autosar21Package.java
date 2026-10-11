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
package autosar21.util;

import autosar21.Activator;
import autosar21.bswmodule.BswmodulePackage;
import autosar21.ecucdescription.EcucdescriptionPackage;
import autosar21.ecucparameterdef.EcucparameterdefPackage;
import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.basicelements.BasicelementsPackage;
import autosar21.ecuresource.ecuelectronics.EcuelectronicsPackage;
import autosar21.ecuresource.memory.MemoryPackage;
import autosar21.ecuresource.peripherals.PeripheralsPackage;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.sensoractuator.SensoractuatorPackage;
import autosar21.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar21.genericstructure.commonpatterns.enumerations.EnumerationsPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar21.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar21.genericstructure.commonpatterns.primitivetypes.PrimitivetypesPackage;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar21.genericstructure.commonpatterns.specialdata.SpecialdataPackage;
import autosar21.genericstructure.infrastructure.InfrastructurePackage;
import autosar21.genericstructure.infrastructure.autosar.AutosarPackage;
import autosar21.genericstructure.infrastructure.identifiable.IdentifiablePackage;
import autosar21.swcomponent.applicationattributes.ApplicationattributesPackage;
import autosar21.swcomponent.communication.filter.FilterPackage;
import autosar21.swcomponent.components.ComponentsPackage;
import autosar21.swcomponent.composition.CompositionPackage;
import autosar21.swcomponent.datatype.computationmethod.ComputationmethodPackage;
import autosar21.swcomponent.datatype.constants.ConstantsPackage;
import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.localconstraints.LocalconstraintsPackage;
import autosar21.swcomponent.datatype.units.UnitsPackage;
import autosar21.swcomponent.datatype.valuemodel.ValuemodelPackage;
import autosar21.swcomponent.implementation.ImplementationPackage;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.dataelements.DataelementsPackage;
import autosar21.swcomponent.internalbehavior.exclusivearea.ExclusiveareaPackage;
import autosar21.swcomponent.internalbehavior.interrunnablecommunication.InterrunnablecommunicationPackage;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingPackage;
import autosar21.swcomponent.internalbehavior.perinstancememory.PerinstancememoryPackage;
import autosar21.swcomponent.internalbehavior.portapioptions.PortapioptionsPackage;
import autosar21.swcomponent.internalbehavior.rteevents.RteeventsPackage;
import autosar21.swcomponent.internalbehavior.servercall.ServercallPackage;
import autosar21.swcomponent.measurementandcalibration.auxillaryobjects.AuxillaryobjectsPackage;
import autosar21.swcomponent.measurementandcalibration.axis.AxisPackage;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import autosar21.swcomponent.measurementandcalibration.byteorder.ByteorderPackage;
import autosar21.swcomponent.measurementandcalibration.calibrationparameter.CalibrationparameterPackage;
import autosar21.swcomponent.measurementandcalibration.characteristic.CharacteristicPackage;
import autosar21.swcomponent.measurementandcalibration.datadefproperties.DatadefpropertiesPackage;
import autosar21.swcomponent.measurementandcalibration.datadictionaryproxies.DatadictionaryproxiesPackage;
import autosar21.swcomponent.measurementandcalibration.globalconstraints.GlobalconstraintsPackage;
import autosar21.swcomponent.measurementandcalibration.measurementproperty.MeasurementpropertyPackage;
import autosar21.swcomponent.measurementandcalibration.variable.VariablePackage;
import autosar21.swcomponent.modedeclaration.ModedeclarationPackage;
import autosar21.swcomponent.portinterface.PortinterfacePackage;
import autosar21.swcomponent.resources.ResourcesPackage;
import autosar21.swcomponent.resources.executiontime.ExecutiontimePackage;
import autosar21.swcomponent.resources.heapusage.HeapusagePackage;
import autosar21.swcomponent.resources.objectfilesection.ObjectfilesectionPackage;
import autosar21.swcomponent.resources.perinstancememorysize.PerinstancememorysizePackage;
import autosar21.swcomponent.resources.stackusage.StackusagePackage;
import autosar21.swcomponent.services.ServicesPackage;
import autosar21.swcomponent.vfberrors.VfberrorsPackage;
import autosar21.system.SystemPackage;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communicationprotocol.CommunicationprotocolPackage;
import autosar21.system.datamapping.DatamappingPackage;
import autosar21.system.pdustructure.PdustructurePackage;
import autosar21.system.signalpaths.SignalpathsPackage;
import autosar21.system.swmapping.SwmappingPackage;
import autosar21.system.systemsignal.SystemsignalPackage;
import autosar21.system.systemsignal.instanceref.InstancerefPackage;
import autosar21.system.topology.TopologyPackage;
import autosar21.util.Autosar21Factory;
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
public class Autosar21Package
extends EPackageImpl {
    public static final String eNAME = "autosar21";
    public static final String eNS_URI = "http://autosar.org/2.1.5";
    public static final String eCONTENT_TYPE = "org.artop.aal.autosar21.autosar21XMLFile";
    public static final Autosar21Package eINSTANCE = Autosar21Package.init();
    protected EList<EClassifier> eClassifiers = new BasicEList();
    protected EList<EPackage> eSubPackages = new BasicEList();
    protected Map<Class<?>, EClass> javaClass2eClass = null;
    private Map<String, EClass> name2eClass = null;
    private Map<EClass, List<EClass>> eSubClasses = null;

    static Autosar21Package init() {
        Autosar21Package theAutosar21Package = EPackage.Registry.INSTANCE.getEPackage(eNS_URI) instanceof Autosar21Package ? EPackage.Registry.INSTANCE.getEPackage(eNS_URI) : new Autosar21Package();
        theAutosar21Package.setNsURI(eNS_URI);
        theAutosar21Package.setName(eNAME);
        theAutosar21Package.createResource(eNS_URI);
        return theAutosar21Package;
    }

    private Autosar21Package() {
        super(eNS_URI, (EFactory)Autosar21Factory.eINSTANCE);
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
        Autosar21Package autosar21Package = this;
        synchronized (autosar21Package) {
            if (this.eClassifiers.size() == 0) {
                this.eClassifiers.addAll((Collection)InfrastructurePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AutosarPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)IdentifiablePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EnumerationsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LanguagedatamodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InlinetextmodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InlinesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MultilanguagedataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AdmindataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SpecialdataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SinglelanguagedataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PrimitivetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcuresourcePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BasicelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PeripheralsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcuelectronicsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ProcessingunitPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MemoryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SensoractuatorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CharacteristicPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.measurementandcalibration.characteristic.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatadefpropertiesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatadictionaryproxiesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CalibrationparameterPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BasetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ByteorderPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AxisPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GlobalconstraintsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)VariablePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)AuxillaryobjectsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)MeasurementpropertyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.measurementandcalibration.measurementproperty.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ConstantsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ValuemodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)LocalconstraintsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ComputationmethodPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)UnitsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatatypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CompositionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.composition.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ApplicationattributesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.applicationattributes.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortinterfacePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ModedeclarationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.modedeclaration.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.communication.CommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.communication.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)FilterPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)VfberrorsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ResourcesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PerinstancememorysizePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)StackusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ExecutiontimePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ObjectfilesectionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)HeapusagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PortapioptionsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InterrunnablecommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ExclusiveareaPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)NvrammappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ModedeclarationgroupPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.internalbehavior.modedeclarationgroup.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServercallPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.internalbehavior.servercall.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DataelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.internalbehavior.dataelements.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)RteeventsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.swcomponent.internalbehavior.rteevents.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PerinstancememoryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ImplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ServicesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)ComponentsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SystemPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.system.communication.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)TopologyPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)PdustructurePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SystemsignalPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)CommunicationprotocolPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.system.communicationprotocol.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SwmappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.system.swmapping.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)DatamappingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.system.datamapping.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)SignalpathsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.system.signalpaths.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)BswmodulePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcucdescriptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)autosar21.ecucdescription.instanceref.InstancerefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)EcucparameterdefPackage.eINSTANCE.getEClassifiers());
            }
            return this.eClassifiers;
        }
    }
}

