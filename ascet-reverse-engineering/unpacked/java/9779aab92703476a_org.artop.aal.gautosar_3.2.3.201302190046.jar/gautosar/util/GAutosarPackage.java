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
package gautosar.util;

import gautosar.Activator;
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
import gautosar.util.GAutosarFactory;
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
public class GAutosarPackage
extends EPackageImpl {
    public static final String eNAME = "gautosar";
    public static final String eNS_URI = "http://artop.org/gautosar";
    public static final GAutosarPackage eINSTANCE = GAutosarPackage.init();
    protected EList<EClassifier> eClassifiers = new BasicEList();
    protected EList<EPackage> eSubPackages = new BasicEList();
    protected Map<Class<?>, EClass> javaClass2eClass = null;
    private Map<String, EClass> name2eClass = null;
    private Map<EClass, List<EClass>> eSubClasses = null;

    static GAutosarPackage init() {
        GAutosarPackage theGAutosarPackage = EPackage.Registry.INSTANCE.getEPackage(eNS_URI) instanceof GAutosarPackage ? EPackage.Registry.INSTANCE.getEPackage(eNS_URI) : new GAutosarPackage();
        theGAutosarPackage.setNsURI(eNS_URI);
        theGAutosarPackage.setName(eNAME);
        theGAutosarPackage.createResource(eNS_URI);
        return theGAutosarPackage;
    }

    private GAutosarPackage() {
        super(eNS_URI, (EFactory)GAutosarFactory.eINSTANCE);
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
        GAutosarPackage gAutosarPackage = this;
        synchronized (gAutosarPackage) {
            if (this.eClassifiers.size() == 0) {
                this.eClassifiers.addAll((Collection)gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GinfrastructurePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GdocumentationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GmultilanguagedataPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GlanguagedatamodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GinlinetextmodelPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GprimitivetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GvarianthandlingPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GformulalanguagePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GecucparameterdefPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GecucdescriptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GcomponentsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GinstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GportinterfacePackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GdatatypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GlocalconstraintsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GdataprototypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GcomputationmethodPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GunitsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GcompositionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GswcinternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GrteeventsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GdataelementsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GperinstancememoryPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GmodedeclarationgroupPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GservercallPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GswcimplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GcommunicationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GimplementationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GresourceconsumptionPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GmodedeclarationPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GinternalbehaviorPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GconstantsPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GdatadefpropertiesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GbasetypesPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GsystemconstantPackage.eINSTANCE.getEClassifiers());
                this.eClassifiers.addAll((Collection)GsystemPackage.eINSTANCE.getEClassifiers());
            }
            return this.eClassifiers;
        }
    }
}

