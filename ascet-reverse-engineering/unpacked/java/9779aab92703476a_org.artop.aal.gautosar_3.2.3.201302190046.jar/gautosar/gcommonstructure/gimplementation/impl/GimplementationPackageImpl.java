/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package gautosar.gcommonstructure.gimplementation.impl;

import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gbasetypes.impl.GbasetypesPackageImpl;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gconstants.impl.GconstantsPackageImpl;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gdatadefproperties.impl.GdatadefpropertiesPackageImpl;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GCode;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.gcommonstructure.gimplementation.GimplementationFactory;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.ginternalbehavior.GinternalbehaviorPackage;
import gautosar.gcommonstructure.ginternalbehavior.impl.GinternalbehaviorPackageImpl;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import gautosar.gcommonstructure.gmodedeclaration.impl.GmodedeclarationPackageImpl;
import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import gautosar.gcommonstructure.gresourceconsumption.impl.GresourceconsumptionPackageImpl;
import gautosar.gcommonstructure.gsystemconstant.GsystemconstantPackage;
import gautosar.gcommonstructure.gsystemconstant.impl.GsystemconstantPackageImpl;
import gautosar.gecucdescription.GecucdescriptionPackage;
import gautosar.gecucdescription.impl.GecucdescriptionPackageImpl;
import gautosar.gecucparameterdef.GecucparameterdefPackage;
import gautosar.gecucparameterdef.impl.GecucparameterdefPackageImpl;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import gautosar.ggenericstructure.gformulalanguage.impl.GformulalanguagePackageImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.impl.GinlinetextmodelPackageImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.impl.GlanguagedatamodelPackageImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.impl.GmultilanguagedataPackageImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.impl.GdocumentationPackageImpl;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.GprimitivetypesPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gprimitivetypes.impl.GprimitivetypesPackageImpl;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import gautosar.ggenericstructure.ginfrastructure.impl.GinfrastructurePackageImpl;
import gautosar.ggenericstructure.gvarianthandling.GvarianthandlingPackage;
import gautosar.ggenericstructure.gvarianthandling.impl.GvarianthandlingPackageImpl;
import gautosar.gswcomponents.gcommunication.GcommunicationPackage;
import gautosar.gswcomponents.gcommunication.impl.GcommunicationPackageImpl;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.impl.GinstancerefsPackageImpl;
import gautosar.gswcomponents.gcomponents.impl.GcomponentsPackageImpl;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gcomposition.impl.GcompositionPackageImpl;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.impl.GcomputationmethodPackageImpl;
import gautosar.gswcomponents.gdatatype.gdataprototypes.GdataprototypesPackage;
import gautosar.gswcomponents.gdatatype.gdataprototypes.impl.GdataprototypesPackageImpl;
import gautosar.gswcomponents.gdatatype.gdatatypes.GdatatypesPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GlocalconstraintsPackage;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.impl.GlocalconstraintsPackageImpl;
import gautosar.gswcomponents.gdatatype.gdatatypes.impl.GdatatypesPackageImpl;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import gautosar.gswcomponents.gdatatype.gunits.impl.GunitsPackageImpl;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
import gautosar.gswcomponents.gportinterface.impl.GportinterfacePackageImpl;
import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import gautosar.gswcomponents.gswcimplementation.impl.GswcimplementationPackageImpl;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.GdataelementsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gdataelements.impl.GdataelementsPackageImpl;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.impl.GmodedeclarationgroupPackageImpl;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.impl.GperinstancememoryPackageImpl;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.GrteeventsPackage;
import gautosar.gswcomponents.gswcinternalbehavior.grteevents.impl.GrteeventsPackageImpl;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.impl.GservercallPackageImpl;
import gautosar.gswcomponents.gswcinternalbehavior.impl.GswcinternalbehaviorPackageImpl;
import gautosar.gsystem.GsystemPackage;
import gautosar.gsystem.impl.GsystemPackageImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class GimplementationPackageImpl
extends EPackageImpl
implements GimplementationPackage {
    private EClass gImplementationEClass = null;
    private EClass gCodeEClass = null;
    private EClass gEngineeringObjectEClass = null;
    private EClass gAutosarEngineeringObjectEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private GimplementationPackageImpl() {
        super("http://artop.org/gautosar/cs/implementation", (EFactory)GimplementationFactory.eINSTANCE);
    }

    public static GimplementationPackage init() {
        if (isInited) {
            return (GimplementationPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/implementation");
        }
        GimplementationPackageImpl theGimplementationPackage = (GimplementationPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/cs/implementation") instanceof GimplementationPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/cs/implementation") : new GimplementationPackageImpl());
        isInited = true;
        gautosar.ggenericstructure.gprimitivetypes.impl.GprimitivetypesPackageImpl theGprimitivetypesPackage = (gautosar.ggenericstructure.gprimitivetypes.impl.GprimitivetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/pt") instanceof gautosar.ggenericstructure.gprimitivetypes.impl.GprimitivetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/pt") : gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage.eINSTANCE);
        GinfrastructurePackageImpl theGinfrastructurePackage = (GinfrastructurePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in") instanceof GinfrastructurePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in") : GinfrastructurePackage.eINSTANCE);
        GdocumentationPackageImpl theGdocumentationPackage = (GdocumentationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d") instanceof GdocumentationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d") : GdocumentationPackage.eINSTANCE);
        GmultilanguagedataPackageImpl theGmultilanguagedataPackage = (GmultilanguagedataPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d/tm/mld") instanceof GmultilanguagedataPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d/tm/mld") : GmultilanguagedataPackage.eINSTANCE);
        GlanguagedatamodelPackageImpl theGlanguagedatamodelPackage = (GlanguagedatamodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d/tm/ldm") instanceof GlanguagedatamodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d/tm/ldm") : GlanguagedatamodelPackage.eINSTANCE);
        GinlinetextmodelPackageImpl theGinlinetextmodelPackage = (GinlinetextmodelPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d/itm") instanceof GinlinetextmodelPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/d/itm") : GinlinetextmodelPackage.eINSTANCE);
        GprimitivetypesPackageImpl theGprimitivetypesPackage_1 = (GprimitivetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/pt") instanceof GprimitivetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/gtc/pt") : GprimitivetypesPackage.eINSTANCE);
        GvarianthandlingPackageImpl theGvarianthandlingPackage = (GvarianthandlingPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/vh") instanceof GvarianthandlingPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/vh") : GvarianthandlingPackage.eINSTANCE);
        GformulalanguagePackageImpl theGformulalanguagePackage = (GformulalanguagePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/fl") instanceof GformulalanguagePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/fl") : GformulalanguagePackage.eINSTANCE);
        GecucparameterdefPackageImpl theGecucparameterdefPackage = (GecucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/pd") instanceof GecucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/pd") : GecucparameterdefPackage.eINSTANCE);
        GecucdescriptionPackageImpl theGecucdescriptionPackage = (GecucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/ed") instanceof GecucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/ed") : GecucdescriptionPackage.eINSTANCE);
        GcomponentsPackageImpl theGcomponentsPackage = (GcomponentsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/components") instanceof GcomponentsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/components") : GcomponentsPackage.eINSTANCE);
        GinstancerefsPackageImpl theGinstancerefsPackage = (GinstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/components/ir") instanceof GinstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/components/ir") : GinstancerefsPackage.eINSTANCE);
        GportinterfacePackageImpl theGportinterfacePackage = (GportinterfacePackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/pi") instanceof GportinterfacePackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/pi") : GportinterfacePackage.eINSTANCE);
        GdatatypesPackageImpl theGdatatypesPackage = (GdatatypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/d") instanceof GdatatypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/d") : GdatatypesPackage.eINSTANCE);
        GlocalconstraintsPackageImpl theGlocalconstraintsPackage = (GlocalconstraintsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/d/lc") instanceof GlocalconstraintsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/d/lc") : GlocalconstraintsPackage.eINSTANCE);
        GdataprototypesPackageImpl theGdataprototypesPackage = (GdataprototypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/dp") instanceof GdataprototypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/dp") : GdataprototypesPackage.eINSTANCE);
        GcomputationmethodPackageImpl theGcomputationmethodPackage = (GcomputationmethodPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/cm") instanceof GcomputationmethodPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/cm") : GcomputationmethodPackage.eINSTANCE);
        GunitsPackageImpl theGunitsPackage = (GunitsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/u") instanceof GunitsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/u") : GunitsPackage.eINSTANCE);
        GcompositionPackageImpl theGcompositionPackage = (GcompositionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/composition") instanceof GcompositionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/composition") : GcompositionPackage.eINSTANCE);
        gautosar.gswcomponents.gcomposition.ginstancerefs.impl.GinstancerefsPackageImpl theGinstancerefsPackage_1 = (gautosar.gswcomponents.gcomposition.ginstancerefs.impl.GinstancerefsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/composition/ir") instanceof gautosar.gswcomponents.gcomposition.ginstancerefs.impl.GinstancerefsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/composition/ir") : gautosar.gswcomponents.gcomposition.ginstancerefs.GinstancerefsPackage.eINSTANCE);
        GswcinternalbehaviorPackageImpl theGswcinternalbehaviorPackage = (GswcinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib") instanceof GswcinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib") : GswcinternalbehaviorPackage.eINSTANCE);
        GrteeventsPackageImpl theGrteeventsPackage = (GrteeventsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/rtee") instanceof GrteeventsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/rtee") : GrteeventsPackage.eINSTANCE);
        GdataelementsPackageImpl theGdataelementsPackage = (GdataelementsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/de") instanceof GdataelementsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/de") : GdataelementsPackage.eINSTANCE);
        GperinstancememoryPackageImpl theGperinstancememoryPackage = (GperinstancememoryPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/pim") instanceof GperinstancememoryPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/pim") : GperinstancememoryPackage.eINSTANCE);
        GmodedeclarationgroupPackageImpl theGmodedeclarationgroupPackage = (GmodedeclarationgroupPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/mdg") instanceof GmodedeclarationgroupPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/mdg") : GmodedeclarationgroupPackage.eINSTANCE);
        GservercallPackageImpl theGservercallPackage = (GservercallPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/sc") instanceof GservercallPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/sib/sc") : GservercallPackage.eINSTANCE);
        GswcimplementationPackageImpl theGswcimplementationPackage = (GswcimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/si") instanceof GswcimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/si") : GswcimplementationPackage.eINSTANCE);
        GcommunicationPackageImpl theGcommunicationPackage = (GcommunicationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/communication") instanceof GcommunicationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/communication") : GcommunicationPackage.eINSTANCE);
        GresourceconsumptionPackageImpl theGresourceconsumptionPackage = (GresourceconsumptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/rc") instanceof GresourceconsumptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/rc") : GresourceconsumptionPackage.eINSTANCE);
        GmodedeclarationPackageImpl theGmodedeclarationPackage = (GmodedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md") instanceof GmodedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md") : GmodedeclarationPackage.eINSTANCE);
        GinternalbehaviorPackageImpl theGinternalbehaviorPackage = (GinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ib") instanceof GinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ib") : GinternalbehaviorPackage.eINSTANCE);
        GconstantsPackageImpl theGconstantsPackage = (GconstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/const") instanceof GconstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/const") : GconstantsPackage.eINSTANCE);
        GdatadefpropertiesPackageImpl theGdatadefpropertiesPackage = (GdatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp") instanceof GdatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp") : GdatadefpropertiesPackage.eINSTANCE);
        GbasetypesPackageImpl theGbasetypesPackage = (GbasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/bt") instanceof GbasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/bt") : GbasetypesPackage.eINSTANCE);
        GsystemconstantPackageImpl theGsystemconstantPackage = (GsystemconstantPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/sc") instanceof GsystemconstantPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/sc") : GsystemconstantPackage.eINSTANCE);
        GsystemPackageImpl theGsystemPackage = (GsystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/s") instanceof GsystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/s") : GsystemPackage.eINSTANCE);
        theGimplementationPackage.createPackageContents();
        theGprimitivetypesPackage.createPackageContents();
        theGinfrastructurePackage.createPackageContents();
        theGdocumentationPackage.createPackageContents();
        theGmultilanguagedataPackage.createPackageContents();
        theGlanguagedatamodelPackage.createPackageContents();
        theGinlinetextmodelPackage.createPackageContents();
        theGprimitivetypesPackage_1.createPackageContents();
        theGvarianthandlingPackage.createPackageContents();
        theGformulalanguagePackage.createPackageContents();
        theGecucparameterdefPackage.createPackageContents();
        theGecucdescriptionPackage.createPackageContents();
        theGcomponentsPackage.createPackageContents();
        theGinstancerefsPackage.createPackageContents();
        theGportinterfacePackage.createPackageContents();
        theGdatatypesPackage.createPackageContents();
        theGlocalconstraintsPackage.createPackageContents();
        theGdataprototypesPackage.createPackageContents();
        theGcomputationmethodPackage.createPackageContents();
        theGunitsPackage.createPackageContents();
        theGcompositionPackage.createPackageContents();
        theGinstancerefsPackage_1.createPackageContents();
        theGswcinternalbehaviorPackage.createPackageContents();
        theGrteeventsPackage.createPackageContents();
        theGdataelementsPackage.createPackageContents();
        theGperinstancememoryPackage.createPackageContents();
        theGmodedeclarationgroupPackage.createPackageContents();
        theGservercallPackage.createPackageContents();
        theGswcimplementationPackage.createPackageContents();
        theGcommunicationPackage.createPackageContents();
        theGresourceconsumptionPackage.createPackageContents();
        theGmodedeclarationPackage.createPackageContents();
        theGinternalbehaviorPackage.createPackageContents();
        theGconstantsPackage.createPackageContents();
        theGdatadefpropertiesPackage.createPackageContents();
        theGbasetypesPackage.createPackageContents();
        theGsystemconstantPackage.createPackageContents();
        theGsystemPackage.createPackageContents();
        theGimplementationPackage.initializePackageContents();
        theGprimitivetypesPackage.initializePackageContents();
        theGinfrastructurePackage.initializePackageContents();
        theGdocumentationPackage.initializePackageContents();
        theGmultilanguagedataPackage.initializePackageContents();
        theGlanguagedatamodelPackage.initializePackageContents();
        theGinlinetextmodelPackage.initializePackageContents();
        theGprimitivetypesPackage_1.initializePackageContents();
        theGvarianthandlingPackage.initializePackageContents();
        theGformulalanguagePackage.initializePackageContents();
        theGecucparameterdefPackage.initializePackageContents();
        theGecucdescriptionPackage.initializePackageContents();
        theGcomponentsPackage.initializePackageContents();
        theGinstancerefsPackage.initializePackageContents();
        theGportinterfacePackage.initializePackageContents();
        theGdatatypesPackage.initializePackageContents();
        theGlocalconstraintsPackage.initializePackageContents();
        theGdataprototypesPackage.initializePackageContents();
        theGcomputationmethodPackage.initializePackageContents();
        theGunitsPackage.initializePackageContents();
        theGcompositionPackage.initializePackageContents();
        theGinstancerefsPackage_1.initializePackageContents();
        theGswcinternalbehaviorPackage.initializePackageContents();
        theGrteeventsPackage.initializePackageContents();
        theGdataelementsPackage.initializePackageContents();
        theGperinstancememoryPackage.initializePackageContents();
        theGmodedeclarationgroupPackage.initializePackageContents();
        theGservercallPackage.initializePackageContents();
        theGswcimplementationPackage.initializePackageContents();
        theGcommunicationPackage.initializePackageContents();
        theGresourceconsumptionPackage.initializePackageContents();
        theGmodedeclarationPackage.initializePackageContents();
        theGinternalbehaviorPackage.initializePackageContents();
        theGconstantsPackage.initializePackageContents();
        theGdatadefpropertiesPackage.initializePackageContents();
        theGbasetypesPackage.initializePackageContents();
        theGsystemconstantPackage.initializePackageContents();
        theGsystemPackage.initializePackageContents();
        theGimplementationPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://artop.org/gautosar/cs/implementation", (Object)theGimplementationPackage);
        return theGimplementationPackage;
    }

    public EClass getGImplementation() {
        return this.gImplementationEClass;
    }

    public EReference getGImplementation_GResourceConsumption() {
        return (EReference)this.gImplementationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGImplementation_GCodeDescriptors() {
        return (EReference)this.gImplementationEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGCode() {
        return this.gCodeEClass;
    }

    public EClass getGEngineeringObject() {
        return this.gEngineeringObjectEClass;
    }

    public EClass getGAutosarEngineeringObject() {
        return this.gAutosarEngineeringObjectEClass;
    }

    public GimplementationFactory getGimplementationFactory() {
        return (GimplementationFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.gImplementationEClass = this.createEClass(0);
        this.createEReference(this.gImplementationEClass, 7);
        this.createEReference(this.gImplementationEClass, 8);
        this.gCodeEClass = this.createEClass(1);
        this.gEngineeringObjectEClass = this.createEClass(2);
        this.gAutosarEngineeringObjectEClass = this.createEClass(3);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("gimplementation");
        this.setNsPrefix("");
        this.setNsURI("http://artop.org/gautosar/cs/implementation");
        GinfrastructurePackage theGinfrastructurePackage = (GinfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in");
        GresourceconsumptionPackage theGresourceconsumptionPackage = (GresourceconsumptionPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/rc");
        this.gImplementationEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGPackageableElement());
        this.gCodeEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGIdentifiable());
        this.gEngineeringObjectEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gAutosarEngineeringObjectEClass.getESuperTypes().add((Object)this.getGEngineeringObject());
        this.initEClass(this.gImplementationEClass, GImplementation.class, "GImplementation", true, true, true);
        this.initEReference(this.getGImplementation_GResourceConsumption(), (EClassifier)theGresourceconsumptionPackage.getGResourceConsumption(), null, "gResourceConsumption", null, 0, 1, GImplementation.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGImplementation_GCodeDescriptors(), (EClassifier)this.getGCode(), null, "gCodeDescriptors", null, 0, -1, GImplementation.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCodeEClass, GCode.class, "GCode", true, true, true);
        this.initEClass(this.gEngineeringObjectEClass, GEngineeringObject.class, "GEngineeringObject", true, true, true);
        this.initEClass(this.gAutosarEngineeringObjectEClass, GAutosarEngineeringObject.class, "GAutosarEngineeringObject", true, true, true);
        this.createResource("http://artop.org/gautosar/cs/implementation");
        this.createClassAnnotations();
        this.createFeatureAnnotations();
    }

    protected void createClassAnnotations() {
        String source = "class.mapping";
        this.addAnnotation((ENamedElement)this.gImplementationEClass, source, new String[]{"autosar21", "none"});
        this.addAnnotation((ENamedElement)this.gEngineeringObjectEClass, source, new String[]{"autosar21", "none", "autosar3x", "none"});
        this.addAnnotation((ENamedElement)this.gAutosarEngineeringObjectEClass, source, new String[]{"autosar21", "Xfile", "autosar3x", "Xfile"});
    }

    protected void createFeatureAnnotations() {
        String source = "feature.mapping";
        this.addAnnotation((ENamedElement)this.getGImplementation_GCodeDescriptors(), source, new String[]{"autosar21", "codeDescriptor"});
    }
}

