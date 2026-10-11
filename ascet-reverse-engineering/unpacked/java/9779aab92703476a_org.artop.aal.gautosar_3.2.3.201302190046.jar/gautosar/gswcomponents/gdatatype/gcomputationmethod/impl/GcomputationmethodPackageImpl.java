/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package gautosar.gswcomponents.gdatatype.gcomputationmethod.impl;

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
import gautosar.gswcomponents.gcomponents.ginstancerefs.GinstancerefsPackage;
import gautosar.gswcomponents.gcomponents.ginstancerefs.impl.GinstancerefsPackageImpl;
import gautosar.gswcomponents.gcomponents.impl.GcomponentsPackageImpl;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gcomposition.impl.GcompositionPackageImpl;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompu;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConst;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstFormulaContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstNumericContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuConstTextContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuContent;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuMethod;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuRationalCoeffs;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScale;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleConstantContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleContents;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScaleRationalFormula;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuScales;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodFactory;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GcomputationmethodPackage;
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
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class GcomputationmethodPackageImpl
extends EPackageImpl
implements GcomputationmethodPackage {
    private EClass gCompuMethodEClass = null;
    private EClass gCompuEClass = null;
    private EClass gCompuContentEClass = null;
    private EClass gCompuScalesEClass = null;
    private EClass gCompuScaleEClass = null;
    private EClass gCompuScaleContentsEClass = null;
    private EClass gCompuScaleConstantContentsEClass = null;
    private EClass gCompuScaleRationalFormulaEClass = null;
    private EClass gCompuConstEClass = null;
    private EClass gCompuConstContentEClass = null;
    private EClass gCompuConstTextContentEClass = null;
    private EClass gCompuConstNumericContentEClass = null;
    private EClass gCompuConstFormulaContentEClass = null;
    private EClass gCompuRationalCoeffsEClass = null;
    private EClass gCompuNominatorDenominatorEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private GcomputationmethodPackageImpl() {
        super("http://artop.org/gautosar/swc/d/cm", (EFactory)GcomputationmethodFactory.eINSTANCE);
    }

    public static GcomputationmethodPackage init() {
        if (isInited) {
            return (GcomputationmethodPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/cm");
        }
        GcomputationmethodPackageImpl theGcomputationmethodPackage = (GcomputationmethodPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/swc/d/cm") instanceof GcomputationmethodPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/swc/d/cm") : new GcomputationmethodPackageImpl());
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
        theGcomputationmethodPackage.createPackageContents();
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
        theGcomputationmethodPackage.initializePackageContents();
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
        theGcomputationmethodPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://artop.org/gautosar/swc/d/cm", (Object)theGcomputationmethodPackage);
        return theGcomputationmethodPackage;
    }

    public EClass getGCompuMethod() {
        return this.gCompuMethodEClass;
    }

    public EReference getGCompuMethod_GCompuPhysToInternal() {
        return (EReference)this.gCompuMethodEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGCompuMethod_GCompuInternalToPhys() {
        return (EReference)this.gCompuMethodEClass.getEStructuralFeatures().get(1);
    }

    public EReference getGCompuMethod_GUnit() {
        return (EReference)this.gCompuMethodEClass.getEStructuralFeatures().get(2);
    }

    public EClass getGCompu() {
        return this.gCompuEClass;
    }

    public EReference getGCompu_GCompuContent() {
        return (EReference)this.gCompuEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGCompuContent() {
        return this.gCompuContentEClass;
    }

    public EClass getGCompuScales() {
        return this.gCompuScalesEClass;
    }

    public EReference getGCompuScales_GCompuScales() {
        return (EReference)this.gCompuScalesEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGCompuScale() {
        return this.gCompuScaleEClass;
    }

    public EReference getGCompuScale_GCompuScaleContents() {
        return (EReference)this.gCompuScaleEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGCompuScale_GLowerLimit() {
        return (EReference)this.gCompuScaleEClass.getEStructuralFeatures().get(1);
    }

    public EReference getGCompuScale_GUpperLimit() {
        return (EReference)this.gCompuScaleEClass.getEStructuralFeatures().get(2);
    }

    public EAttribute getGCompuScale_GShortLabel() {
        return (EAttribute)this.gCompuScaleEClass.getEStructuralFeatures().get(3);
    }

    public EClass getGCompuScaleContents() {
        return this.gCompuScaleContentsEClass;
    }

    public EClass getGCompuScaleConstantContents() {
        return this.gCompuScaleConstantContentsEClass;
    }

    public EReference getGCompuScaleConstantContents_GCompuConst() {
        return (EReference)this.gCompuScaleConstantContentsEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGCompuScaleRationalFormula() {
        return this.gCompuScaleRationalFormulaEClass;
    }

    public EReference getGCompuScaleRationalFormula_GCompuRationalCoeffs() {
        return (EReference)this.gCompuScaleRationalFormulaEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGCompuConst() {
        return this.gCompuConstEClass;
    }

    public EReference getGCompuConst_GCompuConstContentType() {
        return (EReference)this.gCompuConstEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGCompuConstContent() {
        return this.gCompuConstContentEClass;
    }

    public EClass getGCompuConstTextContent() {
        return this.gCompuConstTextContentEClass;
    }

    public EAttribute getGCompuConstTextContent_GVt() {
        return (EAttribute)this.gCompuConstTextContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGCompuConstNumericContent() {
        return this.gCompuConstNumericContentEClass;
    }

    public EAttribute getGCompuConstNumericContent_GV() {
        return (EAttribute)this.gCompuConstNumericContentEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGCompuConstFormulaContent() {
        return this.gCompuConstFormulaContentEClass;
    }

    public EClass getGCompuRationalCoeffs() {
        return this.gCompuRationalCoeffsEClass;
    }

    public EReference getGCompuRationalCoeffs_GCompuNumerator() {
        return (EReference)this.gCompuRationalCoeffsEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGCompuRationalCoeffs_GCompuDenominator() {
        return (EReference)this.gCompuRationalCoeffsEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGCompuNominatorDenominator() {
        return this.gCompuNominatorDenominatorEClass;
    }

    public GcomputationmethodFactory getGcomputationmethodFactory() {
        return (GcomputationmethodFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.gCompuMethodEClass = this.createEClass(0);
        this.createEReference(this.gCompuMethodEClass, 7);
        this.createEReference(this.gCompuMethodEClass, 8);
        this.createEReference(this.gCompuMethodEClass, 9);
        this.gCompuEClass = this.createEClass(1);
        this.createEReference(this.gCompuEClass, 2);
        this.gCompuContentEClass = this.createEClass(2);
        this.gCompuScalesEClass = this.createEClass(3);
        this.createEReference(this.gCompuScalesEClass, 2);
        this.gCompuScaleEClass = this.createEClass(4);
        this.createEReference(this.gCompuScaleEClass, 2);
        this.createEReference(this.gCompuScaleEClass, 3);
        this.createEReference(this.gCompuScaleEClass, 4);
        this.createEAttribute(this.gCompuScaleEClass, 5);
        this.gCompuScaleContentsEClass = this.createEClass(5);
        this.gCompuScaleConstantContentsEClass = this.createEClass(6);
        this.createEReference(this.gCompuScaleConstantContentsEClass, 2);
        this.gCompuScaleRationalFormulaEClass = this.createEClass(7);
        this.createEReference(this.gCompuScaleRationalFormulaEClass, 2);
        this.gCompuConstEClass = this.createEClass(8);
        this.createEReference(this.gCompuConstEClass, 2);
        this.gCompuConstContentEClass = this.createEClass(9);
        this.gCompuConstTextContentEClass = this.createEClass(10);
        this.createEAttribute(this.gCompuConstTextContentEClass, 2);
        this.gCompuConstNumericContentEClass = this.createEClass(11);
        this.createEAttribute(this.gCompuConstNumericContentEClass, 2);
        this.gCompuConstFormulaContentEClass = this.createEClass(12);
        this.gCompuRationalCoeffsEClass = this.createEClass(13);
        this.createEReference(this.gCompuRationalCoeffsEClass, 2);
        this.createEReference(this.gCompuRationalCoeffsEClass, 3);
        this.gCompuNominatorDenominatorEClass = this.createEClass(14);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("gcomputationmethod");
        this.setNsPrefix("gcm");
        this.setNsURI("http://artop.org/gautosar/swc/d/cm");
        GinfrastructurePackage theGinfrastructurePackage = (GinfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in");
        GunitsPackage theGunitsPackage = (GunitsPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/u");
        GlocalconstraintsPackage theGlocalconstraintsPackage = (GlocalconstraintsPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/d/lc");
        gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage theGprimitivetypesPackage = (gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/pt");
        this.gCompuMethodEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGPackageableElement());
        this.gCompuEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gCompuContentEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gCompuScalesEClass.getESuperTypes().add((Object)this.getGCompuContent());
        this.gCompuScaleEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gCompuScaleContentsEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gCompuScaleConstantContentsEClass.getESuperTypes().add((Object)this.getGCompuScaleContents());
        this.gCompuScaleRationalFormulaEClass.getESuperTypes().add((Object)this.getGCompuScaleContents());
        this.gCompuConstEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gCompuConstContentEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gCompuConstTextContentEClass.getESuperTypes().add((Object)this.getGCompuConstContent());
        this.gCompuConstNumericContentEClass.getESuperTypes().add((Object)this.getGCompuConstContent());
        this.gCompuConstFormulaContentEClass.getESuperTypes().add((Object)this.getGCompuConstContent());
        this.gCompuRationalCoeffsEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gCompuNominatorDenominatorEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.initEClass(this.gCompuMethodEClass, GCompuMethod.class, "GCompuMethod", true, true, true);
        this.initEReference(this.getGCompuMethod_GCompuPhysToInternal(), (EClassifier)this.getGCompu(), null, "gCompuPhysToInternal", null, 0, 1, GCompuMethod.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGCompuMethod_GCompuInternalToPhys(), (EClassifier)this.getGCompu(), null, "gCompuInternalToPhys", null, 0, 1, GCompuMethod.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGCompuMethod_GUnit(), (EClassifier)theGunitsPackage.getGUnit(), null, "gUnit", null, 0, 1, GCompuMethod.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCompuEClass, GCompu.class, "GCompu", true, true, true);
        this.initEReference(this.getGCompu_GCompuContent(), (EClassifier)this.getGCompuContent(), null, "gCompuContent", null, 0, 1, GCompu.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCompuContentEClass, GCompuContent.class, "GCompuContent", true, true, true);
        this.initEClass(this.gCompuScalesEClass, GCompuScales.class, "GCompuScales", true, true, true);
        this.initEReference(this.getGCompuScales_GCompuScales(), (EClassifier)this.getGCompuScale(), null, "gCompuScales", null, 0, -1, GCompuScales.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCompuScaleEClass, GCompuScale.class, "GCompuScale", true, true, true);
        this.initEReference(this.getGCompuScale_GCompuScaleContents(), (EClassifier)this.getGCompuScaleContents(), null, "gCompuScaleContents", null, 0, 1, GCompuScale.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGCompuScale_GLowerLimit(), (EClassifier)theGlocalconstraintsPackage.getGLimit(), null, "gLowerLimit", null, 0, 1, GCompuScale.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGCompuScale_GUpperLimit(), (EClassifier)theGlocalconstraintsPackage.getGLimit(), null, "gUpperLimit", null, 0, 1, GCompuScale.class, true, true, true, false, false, false, true, true, true);
        this.initEAttribute(this.getGCompuScale_GShortLabel(), (EClassifier)theGprimitivetypesPackage.getIdentifier(), "gShortLabel", null, 0, 1, GCompuScale.class, true, true, true, true, false, false, true, true);
        this.initEClass(this.gCompuScaleContentsEClass, GCompuScaleContents.class, "GCompuScaleContents", true, true, true);
        this.initEClass(this.gCompuScaleConstantContentsEClass, GCompuScaleConstantContents.class, "GCompuScaleConstantContents", true, true, true);
        this.initEReference(this.getGCompuScaleConstantContents_GCompuConst(), (EClassifier)this.getGCompuConst(), null, "gCompuConst", null, 0, 1, GCompuScaleConstantContents.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCompuScaleRationalFormulaEClass, GCompuScaleRationalFormula.class, "GCompuScaleRationalFormula", true, true, true);
        this.initEReference(this.getGCompuScaleRationalFormula_GCompuRationalCoeffs(), (EClassifier)this.getGCompuRationalCoeffs(), null, "gCompuRationalCoeffs", null, 0, 1, GCompuScaleRationalFormula.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCompuConstEClass, GCompuConst.class, "GCompuConst", true, true, true);
        this.initEReference(this.getGCompuConst_GCompuConstContentType(), (EClassifier)this.getGCompuConstContent(), null, "gCompuConstContentType", null, 0, 1, GCompuConst.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCompuConstContentEClass, GCompuConstContent.class, "GCompuConstContent", true, true, true);
        this.initEClass(this.gCompuConstTextContentEClass, GCompuConstTextContent.class, "GCompuConstTextContent", true, true, true);
        this.initEAttribute(this.getGCompuConstTextContent_GVt(), (EClassifier)theGprimitivetypesPackage.getVerbatimString(), "gVt", null, 0, 1, GCompuConstTextContent.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gCompuConstNumericContentEClass, GCompuConstNumericContent.class, "GCompuConstNumericContent", true, true, true);
        this.initEAttribute(this.getGCompuConstNumericContent_GV(), (EClassifier)theGprimitivetypesPackage.getNumerical(), "gV", null, 0, 1, GCompuConstNumericContent.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gCompuConstFormulaContentEClass, GCompuConstFormulaContent.class, "GCompuConstFormulaContent", true, true, true);
        this.initEClass(this.gCompuRationalCoeffsEClass, GCompuRationalCoeffs.class, "GCompuRationalCoeffs", true, true, true);
        this.initEReference(this.getGCompuRationalCoeffs_GCompuNumerator(), (EClassifier)this.getGCompuNominatorDenominator(), null, "gCompuNumerator", null, 0, 1, GCompuRationalCoeffs.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGCompuRationalCoeffs_GCompuDenominator(), (EClassifier)this.getGCompuNominatorDenominator(), null, "gCompuDenominator", null, 0, 1, GCompuRationalCoeffs.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gCompuNominatorDenominatorEClass, GCompuNominatorDenominator.class, "GCompuNominatorDenominator", true, true, true);
        this.createResource("http://artop.org/gautosar/swc/d/cm");
        this.createFeatureAnnotations();
    }

    protected void createFeatureAnnotations() {
        String source = "feature.mapping";
        this.addAnnotation((ENamedElement)this.getGCompu_GCompuContent(), source, new String[]{"autosar20", "compuContentType", "autosar21", "compuContentType", "autosar3x", "compuContentType"});
        this.addAnnotation((ENamedElement)this.getGCompuScale_GCompuScaleContents(), source, new String[]{"autosar20", "compuScaleContentsType", "autosar21", "compuScaleContentsType", "autosar3x", "compuScaleContentsType"});
        this.addAnnotation((ENamedElement)this.getGCompuConstTextContent_GVt(), source, new String[]{"autosar21", "vt/mixedText", "autosar3x", "vt/mixedText"});
    }
}

