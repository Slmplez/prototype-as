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
package gautosar.gswcomponents.gcomponents.ginstancerefs.impl;

import gautosar.gcommonstructure.gbasetypes.GbasetypesPackage;
import gautosar.gcommonstructure.gbasetypes.impl.GbasetypesPackageImpl;
import gautosar.gcommonstructure.gconstants.GconstantsPackage;
import gautosar.gcommonstructure.gconstants.impl.GconstantsPackageImpl;
import gautosar.gcommonstructure.gdatadefproperties.GdatadefpropertiesPackage;
import gautosar.gcommonstructure.gdatadefproperties.impl.GdatadefpropertiesPackageImpl;
import gautosar.gcommonstructure.gimplementation.GimplementationPackage;
import gautosar.gcommonstructure.gimplementation.impl.GimplementationPackageImpl;
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
import gautosar.gswcomponents.gcomponents.ginstancerefs.GModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPOperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GPVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GParameterInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeGroupInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRModeInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GROperationInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GRVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GVariableInAtomicSwcIRef;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsFactory;
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
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

public class GinstancerefsPackageImpl
extends EPackageImpl
implements GinstancerefsPackage {
    private EClass gVariableInAtomicSwcIRefEClass = null;
    private EClass grVariableInAtomicSwcIRefEClass = null;
    private EClass gpVariableInAtomicSwcIRefEClass = null;
    private EClass gOperationInAtomicSwcIRefEClass = null;
    private EClass grOperationInAtomicSwcIRefEClass = null;
    private EClass gpOperationInAtomicSwcIRefEClass = null;
    private EClass gModeGroupInAtomicSwcIRefEClass = null;
    private EClass grModeGroupInAtomicSwcIRefEClass = null;
    private EClass gpModeGroupInAtomicSwcIRefEClass = null;
    private EClass gParameterInAtomicSwcIRefEClass = null;
    private EClass grModeInAtomicSwcIRefEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private GinstancerefsPackageImpl() {
        super("http://artop.org/gautosar/swc/components/ir", (EFactory)GinstancerefsFactory.eINSTANCE);
    }

    public static GinstancerefsPackage init() {
        if (isInited) {
            return (GinstancerefsPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/components/ir");
        }
        GinstancerefsPackageImpl theGinstancerefsPackage = (GinstancerefsPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/swc/components/ir") instanceof GinstancerefsPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/swc/components/ir") : new GinstancerefsPackageImpl());
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
        GimplementationPackageImpl theGimplementationPackage = (GimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/implementation") instanceof GimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/implementation") : GimplementationPackage.eINSTANCE);
        GresourceconsumptionPackageImpl theGresourceconsumptionPackage = (GresourceconsumptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/rc") instanceof GresourceconsumptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/rc") : GresourceconsumptionPackage.eINSTANCE);
        GmodedeclarationPackageImpl theGmodedeclarationPackage = (GmodedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md") instanceof GmodedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md") : GmodedeclarationPackage.eINSTANCE);
        GinternalbehaviorPackageImpl theGinternalbehaviorPackage = (GinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ib") instanceof GinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ib") : GinternalbehaviorPackage.eINSTANCE);
        GconstantsPackageImpl theGconstantsPackage = (GconstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/const") instanceof GconstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/const") : GconstantsPackage.eINSTANCE);
        GdatadefpropertiesPackageImpl theGdatadefpropertiesPackage = (GdatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp") instanceof GdatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp") : GdatadefpropertiesPackage.eINSTANCE);
        GbasetypesPackageImpl theGbasetypesPackage = (GbasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/bt") instanceof GbasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/bt") : GbasetypesPackage.eINSTANCE);
        GsystemconstantPackageImpl theGsystemconstantPackage = (GsystemconstantPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/sc") instanceof GsystemconstantPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/sc") : GsystemconstantPackage.eINSTANCE);
        GsystemPackageImpl theGsystemPackage = (GsystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/s") instanceof GsystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/s") : GsystemPackage.eINSTANCE);
        theGinstancerefsPackage.createPackageContents();
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
        theGimplementationPackage.createPackageContents();
        theGresourceconsumptionPackage.createPackageContents();
        theGmodedeclarationPackage.createPackageContents();
        theGinternalbehaviorPackage.createPackageContents();
        theGconstantsPackage.createPackageContents();
        theGdatadefpropertiesPackage.createPackageContents();
        theGbasetypesPackage.createPackageContents();
        theGsystemconstantPackage.createPackageContents();
        theGsystemPackage.createPackageContents();
        theGinstancerefsPackage.initializePackageContents();
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
        theGimplementationPackage.initializePackageContents();
        theGresourceconsumptionPackage.initializePackageContents();
        theGmodedeclarationPackage.initializePackageContents();
        theGinternalbehaviorPackage.initializePackageContents();
        theGconstantsPackage.initializePackageContents();
        theGdatadefpropertiesPackage.initializePackageContents();
        theGbasetypesPackage.initializePackageContents();
        theGsystemconstantPackage.initializePackageContents();
        theGsystemPackage.initializePackageContents();
        theGinstancerefsPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://artop.org/gautosar/swc/components/ir", (Object)theGinstancerefsPackage);
        return theGinstancerefsPackage;
    }

    public EClass getGVariableInAtomicSwcIRef() {
        return this.gVariableInAtomicSwcIRefEClass;
    }

    public EClass getGRVariableInAtomicSwcIRef() {
        return this.grVariableInAtomicSwcIRefEClass;
    }

    public EReference getGRVariableInAtomicSwcIRef_GContextRPort() {
        return (EReference)this.grVariableInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGRVariableInAtomicSwcIRef_GTargetDataElement() {
        return (EReference)this.grVariableInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGPVariableInAtomicSwcIRef() {
        return this.gpVariableInAtomicSwcIRefEClass;
    }

    public EReference getGPVariableInAtomicSwcIRef_GContextPPort() {
        return (EReference)this.gpVariableInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGPVariableInAtomicSwcIRef_GTargetDataElement() {
        return (EReference)this.gpVariableInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGOperationInAtomicSwcIRef() {
        return this.gOperationInAtomicSwcIRefEClass;
    }

    public EClass getGROperationInAtomicSwcIRef() {
        return this.grOperationInAtomicSwcIRefEClass;
    }

    public EReference getGROperationInAtomicSwcIRef_GContextRPort() {
        return (EReference)this.grOperationInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGROperationInAtomicSwcIRef_GTargetRequiredOperation() {
        return (EReference)this.grOperationInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGPOperationInAtomicSwcIRef() {
        return this.gpOperationInAtomicSwcIRefEClass;
    }

    public EReference getGPOperationInAtomicSwcIRef_GContextPPort() {
        return (EReference)this.gpOperationInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGPOperationInAtomicSwcIRef_GTargetProvidedOperation() {
        return (EReference)this.gpOperationInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGModeGroupInAtomicSwcIRef() {
        return this.gModeGroupInAtomicSwcIRefEClass;
    }

    public EClass getGRModeGroupInAtomicSwcIRef() {
        return this.grModeGroupInAtomicSwcIRefEClass;
    }

    public EReference getGRModeGroupInAtomicSwcIRef_GContextRPort() {
        return (EReference)this.grModeGroupInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGRModeGroupInAtomicSwcIRef_GTargetModeGroup() {
        return (EReference)this.grModeGroupInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGPModeGroupInAtomicSwcIRef() {
        return this.gpModeGroupInAtomicSwcIRefEClass;
    }

    public EReference getGPModeGroupInAtomicSwcIRef_GContextPPort() {
        return (EReference)this.gpModeGroupInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGPModeGroupInAtomicSwcIRef_GTargetModeGroup() {
        return (EReference)this.gpModeGroupInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGParameterInAtomicSwcIRef() {
        return this.gParameterInAtomicSwcIRefEClass;
    }

    public EReference getGParameterInAtomicSwcIRef_GContextPort() {
        return (EReference)this.gParameterInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGParameterInAtomicSwcIRef_GTargetParameter() {
        return (EReference)this.gParameterInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGRModeInAtomicSwcIRef() {
        return this.grModeInAtomicSwcIRefEClass;
    }

    public EReference getGRModeInAtomicSwcIRef_GContextRPort() {
        return (EReference)this.grModeInAtomicSwcIRefEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGRModeInAtomicSwcIRef_GContextModeDeclarationGroupPrototype() {
        return (EReference)this.grModeInAtomicSwcIRefEClass.getEStructuralFeatures().get(1);
    }

    public EReference getGRModeInAtomicSwcIRef_GTargetModeDeclaration() {
        return (EReference)this.grModeInAtomicSwcIRefEClass.getEStructuralFeatures().get(2);
    }

    public GinstancerefsFactory getGinstancerefsFactory() {
        return (GinstancerefsFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.gVariableInAtomicSwcIRefEClass = this.createEClass(0);
        this.grVariableInAtomicSwcIRefEClass = this.createEClass(1);
        this.createEReference(this.grVariableInAtomicSwcIRefEClass, 2);
        this.createEReference(this.grVariableInAtomicSwcIRefEClass, 3);
        this.gpVariableInAtomicSwcIRefEClass = this.createEClass(2);
        this.createEReference(this.gpVariableInAtomicSwcIRefEClass, 2);
        this.createEReference(this.gpVariableInAtomicSwcIRefEClass, 3);
        this.gOperationInAtomicSwcIRefEClass = this.createEClass(3);
        this.grOperationInAtomicSwcIRefEClass = this.createEClass(4);
        this.createEReference(this.grOperationInAtomicSwcIRefEClass, 2);
        this.createEReference(this.grOperationInAtomicSwcIRefEClass, 3);
        this.gpOperationInAtomicSwcIRefEClass = this.createEClass(5);
        this.createEReference(this.gpOperationInAtomicSwcIRefEClass, 2);
        this.createEReference(this.gpOperationInAtomicSwcIRefEClass, 3);
        this.gModeGroupInAtomicSwcIRefEClass = this.createEClass(6);
        this.grModeGroupInAtomicSwcIRefEClass = this.createEClass(7);
        this.createEReference(this.grModeGroupInAtomicSwcIRefEClass, 2);
        this.createEReference(this.grModeGroupInAtomicSwcIRefEClass, 3);
        this.gpModeGroupInAtomicSwcIRefEClass = this.createEClass(8);
        this.createEReference(this.gpModeGroupInAtomicSwcIRefEClass, 2);
        this.createEReference(this.gpModeGroupInAtomicSwcIRefEClass, 3);
        this.gParameterInAtomicSwcIRefEClass = this.createEClass(9);
        this.createEReference(this.gParameterInAtomicSwcIRefEClass, 2);
        this.createEReference(this.gParameterInAtomicSwcIRefEClass, 3);
        this.grModeInAtomicSwcIRefEClass = this.createEClass(10);
        this.createEReference(this.grModeInAtomicSwcIRefEClass, 2);
        this.createEReference(this.grModeInAtomicSwcIRefEClass, 3);
        this.createEReference(this.grModeInAtomicSwcIRefEClass, 4);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("ginstancerefs");
        this.setNsPrefix("");
        this.setNsURI("http://artop.org/gautosar/swc/components/ir");
        GinfrastructurePackage theGinfrastructurePackage = (GinfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in");
        GcomponentsPackage theGcomponentsPackage = (GcomponentsPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/components");
        GdataprototypesPackage theGdataprototypesPackage = (GdataprototypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/dp");
        GportinterfacePackage theGportinterfacePackage = (GportinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/pi");
        GmodedeclarationPackage theGmodedeclarationPackage = (GmodedeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md");
        this.gVariableInAtomicSwcIRefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.grVariableInAtomicSwcIRefEClass.getESuperTypes().add((Object)this.getGVariableInAtomicSwcIRef());
        this.gpVariableInAtomicSwcIRefEClass.getESuperTypes().add((Object)this.getGVariableInAtomicSwcIRef());
        this.gOperationInAtomicSwcIRefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.grOperationInAtomicSwcIRefEClass.getESuperTypes().add((Object)this.getGOperationInAtomicSwcIRef());
        this.gpOperationInAtomicSwcIRefEClass.getESuperTypes().add((Object)this.getGOperationInAtomicSwcIRef());
        this.gModeGroupInAtomicSwcIRefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.grModeGroupInAtomicSwcIRefEClass.getESuperTypes().add((Object)this.getGModeGroupInAtomicSwcIRef());
        this.gpModeGroupInAtomicSwcIRefEClass.getESuperTypes().add((Object)this.getGModeGroupInAtomicSwcIRef());
        this.gParameterInAtomicSwcIRefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.grModeInAtomicSwcIRefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.initEClass(this.gVariableInAtomicSwcIRefEClass, GVariableInAtomicSwcIRef.class, "GVariableInAtomicSwcIRef", true, true, true);
        this.initEClass(this.grVariableInAtomicSwcIRefEClass, GRVariableInAtomicSwcIRef.class, "GRVariableInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGRVariableInAtomicSwcIRef_GContextRPort(), (EClassifier)theGcomponentsPackage.getGRPortPrototype(), null, "gContextRPort", null, 0, 1, GRVariableInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGRVariableInAtomicSwcIRef_GTargetDataElement(), (EClassifier)theGdataprototypesPackage.getGVariableDataPrototype(), null, "gTargetDataElement", null, 0, 1, GRVariableInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gpVariableInAtomicSwcIRefEClass, GPVariableInAtomicSwcIRef.class, "GPVariableInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGPVariableInAtomicSwcIRef_GContextPPort(), (EClassifier)theGcomponentsPackage.getGPPortPrototype(), null, "gContextPPort", null, 0, 1, GPVariableInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGPVariableInAtomicSwcIRef_GTargetDataElement(), (EClassifier)theGdataprototypesPackage.getGVariableDataPrototype(), null, "gTargetDataElement", null, 0, 1, GPVariableInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gOperationInAtomicSwcIRefEClass, GOperationInAtomicSwcIRef.class, "GOperationInAtomicSwcIRef", true, true, true);
        this.initEClass(this.grOperationInAtomicSwcIRefEClass, GROperationInAtomicSwcIRef.class, "GROperationInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGROperationInAtomicSwcIRef_GContextRPort(), (EClassifier)theGcomponentsPackage.getGRPortPrototype(), null, "gContextRPort", null, 0, 1, GROperationInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGROperationInAtomicSwcIRef_GTargetRequiredOperation(), (EClassifier)theGportinterfacePackage.getGClientServerOperation(), null, "gTargetRequiredOperation", null, 0, 1, GROperationInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gpOperationInAtomicSwcIRefEClass, GPOperationInAtomicSwcIRef.class, "GPOperationInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGPOperationInAtomicSwcIRef_GContextPPort(), (EClassifier)theGcomponentsPackage.getGPPortPrototype(), null, "gContextPPort", null, 0, 1, GPOperationInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGPOperationInAtomicSwcIRef_GTargetProvidedOperation(), (EClassifier)theGportinterfacePackage.getGClientServerOperation(), null, "gTargetProvidedOperation", null, 0, 1, GPOperationInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gModeGroupInAtomicSwcIRefEClass, GModeGroupInAtomicSwcIRef.class, "GModeGroupInAtomicSwcIRef", true, true, true);
        this.initEClass(this.grModeGroupInAtomicSwcIRefEClass, GRModeGroupInAtomicSwcIRef.class, "GRModeGroupInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGRModeGroupInAtomicSwcIRef_GContextRPort(), (EClassifier)theGcomponentsPackage.getGRPortPrototype(), null, "gContextRPort", null, 0, 1, GRModeGroupInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGRModeGroupInAtomicSwcIRef_GTargetModeGroup(), (EClassifier)theGmodedeclarationPackage.getGModeDeclarationGroupPrototype(), null, "gTargetModeGroup", null, 0, 1, GRModeGroupInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gpModeGroupInAtomicSwcIRefEClass, GPModeGroupInAtomicSwcIRef.class, "GPModeGroupInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGPModeGroupInAtomicSwcIRef_GContextPPort(), (EClassifier)theGcomponentsPackage.getGPPortPrototype(), null, "gContextPPort", null, 0, 1, GPModeGroupInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGPModeGroupInAtomicSwcIRef_GTargetModeGroup(), (EClassifier)theGmodedeclarationPackage.getGModeDeclarationGroupPrototype(), null, "gTargetModeGroup", null, 0, 1, GPModeGroupInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gParameterInAtomicSwcIRefEClass, GParameterInAtomicSwcIRef.class, "GParameterInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGParameterInAtomicSwcIRef_GContextPort(), (EClassifier)theGcomponentsPackage.getGPortPrototype(), null, "gContextPort", null, 0, 1, GParameterInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGParameterInAtomicSwcIRef_GTargetParameter(), (EClassifier)theGdataprototypesPackage.getGDataPrototype(), null, "gTargetParameter", null, 0, 1, GParameterInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.grModeInAtomicSwcIRefEClass, GRModeInAtomicSwcIRef.class, "GRModeInAtomicSwcIRef", true, true, true);
        this.initEReference(this.getGRModeInAtomicSwcIRef_GContextRPort(), (EClassifier)theGcomponentsPackage.getGRPortPrototype(), null, "gContextRPort", null, 0, 1, GRModeInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGRModeInAtomicSwcIRef_GContextModeDeclarationGroupPrototype(), (EClassifier)theGmodedeclarationPackage.getGModeDeclarationGroupPrototype(), null, "gContextModeDeclarationGroupPrototype", null, 0, 1, GRModeInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGRModeInAtomicSwcIRef_GTargetModeDeclaration(), (EClassifier)theGmodedeclarationPackage.getGModeDeclaration(), null, "gTargetModeDeclaration", null, 0, 1, GRModeInAtomicSwcIRef.class, true, true, true, false, false, false, true, true, true);
        this.createClassAnnotations();
        this.createFeatureAnnotations();
    }

    protected void createClassAnnotations() {
        String source = "class.mapping";
        this.addAnnotation((ENamedElement)this.gVariableInAtomicSwcIRefEClass, source, new String[]{"autosar21", "NONE", "autosar3x", "NONE", "autosar40", "VariableInAtomicSwcInstanceRef, VariableInAtomicSWCTypeInstanceRef"});
        this.addAnnotation((ENamedElement)this.grVariableInAtomicSwcIRefEClass, source, new String[]{"autosar21", "DataReadAccessDataElement, DataReceivePointDataElement, DataReceivedEventData, DataReceiveErrorEventData", "autosar3x", "DataReadAccessDataElement, DataReceivePointDataElement, DataReceivedEventData, DataReceiveErrorEventData", "autosar40", "RVariableInAtomicSwcInstanceRef"});
        this.addAnnotation((ENamedElement)this.gpVariableInAtomicSwcIRefEClass, source, new String[]{"autosar21", "DataWriteAccessDataElement, DataSendPointDataElement", "autosar3x", "DataWriteAccessDataElement, DataSendPointDataElement", "autosar40", "PVariableInAtomicSwcInstanceRef"});
        this.addAnnotation((ENamedElement)this.gOperationInAtomicSwcIRefEClass, source, new String[]{"autosar21", "NONE", "autosar3x", "NONE", "autosar40", "OperationInAtomicSwcInstanceRef"});
        this.addAnnotation((ENamedElement)this.grOperationInAtomicSwcIRefEClass, source, new String[]{"autosar21", "ServerCallPointOperation", "autosar3x", "ServerCallPointOperation", "autosar40", "ROperationInAtomicSwcInstanceRef"});
        this.addAnnotation((ENamedElement)this.gpOperationInAtomicSwcIRefEClass, source, new String[]{"autosar21", "OperationInvokedEventOperation", "autosar3x", "OperationInvokedEventOperation", "autosar40", "POperationInAtomicSwcInstanceRef"});
        this.addAnnotation((ENamedElement)this.gModeGroupInAtomicSwcIRefEClass, source, new String[]{"autosar21", "NONE", "autosar3x", "NONE", "autosar40", "ModeGroupInAtomicSwcInstanceRef"});
        this.addAnnotation((ENamedElement)this.grModeGroupInAtomicSwcIRefEClass, source, new String[]{"autosar21", "NONE", "autosar3x", "NONE", "autosar40", "RModeGroupInAtomicSWCInstanceRef"});
        this.addAnnotation((ENamedElement)this.gpModeGroupInAtomicSwcIRefEClass, source, new String[]{"autosar21", "ModeSwitchPointModeGroup", "autosar3x", "ModeSwitchPointModeGroup", "autosar40", "PModeGroupInAtomicSwcInstanceRef"});
        this.addAnnotation((ENamedElement)this.gParameterInAtomicSwcIRefEClass, source, new String[]{"autosar21", "CalprmAccessCalprmElementPrototype", "autosar3x", "CalprmAccessCalprmElementPrototype", "autosar40", "ParameterInAtomicSWCTypeInstanceRef"});
        this.addAnnotation((ENamedElement)this.grModeInAtomicSwcIRefEClass, source, new String[]{"autosar21", "ModeSwitchEventMode", "autosar3x", "ModeSwitchEventMode", "autosar40", "RModeInAtomicSwcInstanceRef"});
    }

    protected void createFeatureAnnotations() {
        String source = "feature.mapping";
        this.addAnnotation((ENamedElement)this.getGRVariableInAtomicSwcIRef_GContextRPort(), source, new String[]{"autosar21", "rPortPrototype", "autosar3x", "rPortPrototype"});
        this.addAnnotation((ENamedElement)this.getGRVariableInAtomicSwcIRef_GTargetDataElement(), source, new String[]{"autosar21", "dataElementPrototype", "autosar3x", "dataElementPrototype"});
        this.addAnnotation((ENamedElement)this.getGPVariableInAtomicSwcIRef_GContextPPort(), source, new String[]{"autosar21", "pPortPrototype", "autosar3x", "pPortPrototype"});
        this.addAnnotation((ENamedElement)this.getGPVariableInAtomicSwcIRef_GTargetDataElement(), source, new String[]{"autosar21", "dataElementPrototype", "autosar3x", "dataElementPrototype"});
        this.addAnnotation((ENamedElement)this.getGROperationInAtomicSwcIRef_GContextRPort(), source, new String[]{"autosar21", "rPortPrototype", "autosar3x", "rPortPrototype"});
        this.addAnnotation((ENamedElement)this.getGROperationInAtomicSwcIRef_GTargetRequiredOperation(), source, new String[]{"autosar21", "operationPrototype", "autosar3x", "operationPrototype"});
        this.addAnnotation((ENamedElement)this.getGPOperationInAtomicSwcIRef_GContextPPort(), source, new String[]{"autosar21", "pPortPrototype", "autosar3x", "pPortPrototype"});
        this.addAnnotation((ENamedElement)this.getGPOperationInAtomicSwcIRef_GTargetProvidedOperation(), source, new String[]{"autosar21", "operationPrototype", "autosar3x", "operationPrototype"});
        this.addAnnotation((ENamedElement)this.getGPModeGroupInAtomicSwcIRef_GContextPPort(), source, new String[]{"autosar21", "pPortPrototype", "autosar3x", "pPortPrototype"});
        this.addAnnotation((ENamedElement)this.getGPModeGroupInAtomicSwcIRef_GTargetModeGroup(), source, new String[]{"autosar21", "modeDeclarationGroupPrototype", "autosar3x", "modeDeclarationGroupPrototype"});
        this.addAnnotation((ENamedElement)this.getGParameterInAtomicSwcIRef_GContextPort(), source, new String[]{"autosar21", "portPrototype", "autosar3x", "portPrototype", "autosar40", "portPrototype"});
        this.addAnnotation((ENamedElement)this.getGParameterInAtomicSwcIRef_GTargetParameter(), source, new String[]{"autosar21", "calprmElementPrototype", "autosar3x", "calprmElementPrototype", "autosar40", "targetDataPrototype"});
        this.addAnnotation((ENamedElement)this.getGRModeInAtomicSwcIRef_GContextRPort(), source, new String[]{"autosar21", "rPortPrototype", "autosar3x", "rPortPrototype", "autosar40", "contextPort"});
        this.addAnnotation((ENamedElement)this.getGRModeInAtomicSwcIRef_GContextModeDeclarationGroupPrototype(), source, new String[]{"autosar21", "modeDeclarationGroupPrototype", "autosar3x", "modeDeclarationGroupPrototype"});
        this.addAnnotation((ENamedElement)this.getGRModeInAtomicSwcIRef_GTargetModeDeclaration(), source, new String[]{"autosar21", "modeDeclaration", "autosar3x", "modeDeclaration"});
    }
}

