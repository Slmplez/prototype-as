/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EGenericType
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package gautosar.gecucparameterdef.impl;

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
import gautosar.gecucparameterdef.GAbstractStringParamDef;
import gautosar.gecucparameterdef.GBooleanParamDef;
import gautosar.gecucparameterdef.GChoiceContainerDef;
import gautosar.gecucparameterdef.GChoiceReferenceDef;
import gautosar.gecucparameterdef.GCommonConfigurationAttributes;
import gautosar.gecucparameterdef.GConfigParameter;
import gautosar.gecucparameterdef.GConfigReference;
import gautosar.gecucparameterdef.GContainerDef;
import gautosar.gecucparameterdef.GEnumerationLiteralDef;
import gautosar.gecucparameterdef.GEnumerationParamDef;
import gautosar.gecucparameterdef.GFloatParamDef;
import gautosar.gecucparameterdef.GForeignReferenceDef;
import gautosar.gecucparameterdef.GFunctionNameDef;
import gautosar.gecucparameterdef.GInstanceReferenceDef;
import gautosar.gecucparameterdef.GIntegerParamDef;
import gautosar.gecucparameterdef.GLinkerSymbolDef;
import gautosar.gecucparameterdef.GModuleDef;
import gautosar.gecucparameterdef.GParamConfContainerDef;
import gautosar.gecucparameterdef.GParamConfMultiplicity;
import gautosar.gecucparameterdef.GReferenceDef;
import gautosar.gecucparameterdef.GStringParamDef;
import gautosar.gecucparameterdef.GSymbolicNameReferenceDef;
import gautosar.gecucparameterdef.GecucparameterdefFactory;
import gautosar.gecucparameterdef.GecucparameterdefPackage;
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
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class GecucparameterdefPackageImpl
extends EPackageImpl
implements GecucparameterdefPackage {
    private EClass gParamConfMultiplicityEClass = null;
    private EClass gContainerDefEClass = null;
    private EClass gModuleDefEClass = null;
    private EClass gCommonConfigurationAttributesEClass = null;
    private EClass gConfigParameterEClass = null;
    private EClass gConfigReferenceEClass = null;
    private EClass gParamConfContainerDefEClass = null;
    private EClass gChoiceContainerDefEClass = null;
    private EClass gBooleanParamDefEClass = null;
    private EClass gIntegerParamDefEClass = null;
    private EClass gFloatParamDefEClass = null;
    private EClass gEnumerationParamDefEClass = null;
    private EClass gEnumerationLiteralDefEClass = null;
    private EClass gAbstractStringParamDefEClass = null;
    private EClass gStringParamDefEClass = null;
    private EClass gLinkerSymbolDefEClass = null;
    private EClass gFunctionNameDefEClass = null;
    private EClass gReferenceDefEClass = null;
    private EClass gSymbolicNameReferenceDefEClass = null;
    private EClass gInstanceReferenceDefEClass = null;
    private EClass gForeignReferenceDefEClass = null;
    private EClass gChoiceReferenceDefEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private GecucparameterdefPackageImpl() {
        super("http://artop.org/gautosar/pd", (EFactory)GecucparameterdefFactory.eINSTANCE);
    }

    public static GecucparameterdefPackage init() {
        if (isInited) {
            return (GecucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/pd");
        }
        GecucparameterdefPackageImpl theGecucparameterdefPackage = (GecucparameterdefPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/pd") instanceof GecucparameterdefPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/pd") : new GecucparameterdefPackageImpl());
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
        GimplementationPackageImpl theGimplementationPackage = (GimplementationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/implementation") instanceof GimplementationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/implementation") : GimplementationPackage.eINSTANCE);
        GresourceconsumptionPackageImpl theGresourceconsumptionPackage = (GresourceconsumptionPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/rc") instanceof GresourceconsumptionPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/rc") : GresourceconsumptionPackage.eINSTANCE);
        GmodedeclarationPackageImpl theGmodedeclarationPackage = (GmodedeclarationPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md") instanceof GmodedeclarationPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md") : GmodedeclarationPackage.eINSTANCE);
        GinternalbehaviorPackageImpl theGinternalbehaviorPackage = (GinternalbehaviorPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ib") instanceof GinternalbehaviorPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ib") : GinternalbehaviorPackage.eINSTANCE);
        GconstantsPackageImpl theGconstantsPackage = (GconstantsPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/const") instanceof GconstantsPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/const") : GconstantsPackage.eINSTANCE);
        GdatadefpropertiesPackageImpl theGdatadefpropertiesPackage = (GdatadefpropertiesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp") instanceof GdatadefpropertiesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/ddp") : GdatadefpropertiesPackage.eINSTANCE);
        GbasetypesPackageImpl theGbasetypesPackage = (GbasetypesPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/bt") instanceof GbasetypesPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/bt") : GbasetypesPackage.eINSTANCE);
        GsystemconstantPackageImpl theGsystemconstantPackage = (GsystemconstantPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/sc") instanceof GsystemconstantPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/sc") : GsystemconstantPackage.eINSTANCE);
        GsystemPackageImpl theGsystemPackage = (GsystemPackageImpl)(EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/s") instanceof GsystemPackageImpl ? EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/s") : GsystemPackage.eINSTANCE);
        theGecucparameterdefPackage.createPackageContents();
        theGprimitivetypesPackage.createPackageContents();
        theGinfrastructurePackage.createPackageContents();
        theGdocumentationPackage.createPackageContents();
        theGmultilanguagedataPackage.createPackageContents();
        theGlanguagedatamodelPackage.createPackageContents();
        theGinlinetextmodelPackage.createPackageContents();
        theGprimitivetypesPackage_1.createPackageContents();
        theGvarianthandlingPackage.createPackageContents();
        theGformulalanguagePackage.createPackageContents();
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
        theGimplementationPackage.createPackageContents();
        theGresourceconsumptionPackage.createPackageContents();
        theGmodedeclarationPackage.createPackageContents();
        theGinternalbehaviorPackage.createPackageContents();
        theGconstantsPackage.createPackageContents();
        theGdatadefpropertiesPackage.createPackageContents();
        theGbasetypesPackage.createPackageContents();
        theGsystemconstantPackage.createPackageContents();
        theGsystemPackage.createPackageContents();
        theGecucparameterdefPackage.initializePackageContents();
        theGprimitivetypesPackage.initializePackageContents();
        theGinfrastructurePackage.initializePackageContents();
        theGdocumentationPackage.initializePackageContents();
        theGmultilanguagedataPackage.initializePackageContents();
        theGlanguagedatamodelPackage.initializePackageContents();
        theGinlinetextmodelPackage.initializePackageContents();
        theGprimitivetypesPackage_1.initializePackageContents();
        theGvarianthandlingPackage.initializePackageContents();
        theGformulalanguagePackage.initializePackageContents();
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
        theGimplementationPackage.initializePackageContents();
        theGresourceconsumptionPackage.initializePackageContents();
        theGmodedeclarationPackage.initializePackageContents();
        theGinternalbehaviorPackage.initializePackageContents();
        theGconstantsPackage.initializePackageContents();
        theGdatadefpropertiesPackage.initializePackageContents();
        theGbasetypesPackage.initializePackageContents();
        theGsystemconstantPackage.initializePackageContents();
        theGsystemPackage.initializePackageContents();
        theGecucparameterdefPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://artop.org/gautosar/pd", (Object)theGecucparameterdefPackage);
        return theGecucparameterdefPackage;
    }

    public EClass getGParamConfMultiplicity() {
        return this.gParamConfMultiplicityEClass;
    }

    public EClass getGContainerDef() {
        return this.gContainerDefEClass;
    }

    public EClass getGModuleDef() {
        return this.gModuleDefEClass;
    }

    public EClass getGCommonConfigurationAttributes() {
        return this.gCommonConfigurationAttributesEClass;
    }

    public EClass getGConfigParameter() {
        return this.gConfigParameterEClass;
    }

    public EClass getGConfigReference() {
        return this.gConfigReferenceEClass;
    }

    public EClass getGParamConfContainerDef() {
        return this.gParamConfContainerDefEClass;
    }

    public EClass getGChoiceContainerDef() {
        return this.gChoiceContainerDefEClass;
    }

    public EClass getGBooleanParamDef() {
        return this.gBooleanParamDefEClass;
    }

    public EClass getGIntegerParamDef() {
        return this.gIntegerParamDefEClass;
    }

    public EClass getGFloatParamDef() {
        return this.gFloatParamDefEClass;
    }

    public EClass getGEnumerationParamDef() {
        return this.gEnumerationParamDefEClass;
    }

    public EClass getGEnumerationLiteralDef() {
        return this.gEnumerationLiteralDefEClass;
    }

    public EClass getGAbstractStringParamDef() {
        return this.gAbstractStringParamDefEClass;
    }

    public EClass getGStringParamDef() {
        return this.gStringParamDefEClass;
    }

    public EClass getGLinkerSymbolDef() {
        return this.gLinkerSymbolDefEClass;
    }

    public EClass getGFunctionNameDef() {
        return this.gFunctionNameDefEClass;
    }

    public EClass getGReferenceDef() {
        return this.gReferenceDefEClass;
    }

    public EClass getGSymbolicNameReferenceDef() {
        return this.gSymbolicNameReferenceDefEClass;
    }

    public EClass getGInstanceReferenceDef() {
        return this.gInstanceReferenceDefEClass;
    }

    public EClass getGForeignReferenceDef() {
        return this.gForeignReferenceDefEClass;
    }

    public EClass getGChoiceReferenceDef() {
        return this.gChoiceReferenceDefEClass;
    }

    public GecucparameterdefFactory getGecucparameterdefFactory() {
        return (GecucparameterdefFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.gParamConfMultiplicityEClass = this.createEClass(0);
        this.gContainerDefEClass = this.createEClass(1);
        this.gModuleDefEClass = this.createEClass(2);
        this.gCommonConfigurationAttributesEClass = this.createEClass(3);
        this.gConfigParameterEClass = this.createEClass(4);
        this.gConfigReferenceEClass = this.createEClass(5);
        this.gParamConfContainerDefEClass = this.createEClass(6);
        this.gChoiceContainerDefEClass = this.createEClass(7);
        this.gBooleanParamDefEClass = this.createEClass(8);
        this.gIntegerParamDefEClass = this.createEClass(9);
        this.gFloatParamDefEClass = this.createEClass(10);
        this.gEnumerationParamDefEClass = this.createEClass(11);
        this.gEnumerationLiteralDefEClass = this.createEClass(12);
        this.gAbstractStringParamDefEClass = this.createEClass(13);
        this.gStringParamDefEClass = this.createEClass(14);
        this.gLinkerSymbolDefEClass = this.createEClass(15);
        this.gFunctionNameDefEClass = this.createEClass(16);
        this.gReferenceDefEClass = this.createEClass(17);
        this.gSymbolicNameReferenceDefEClass = this.createEClass(18);
        this.gInstanceReferenceDefEClass = this.createEClass(19);
        this.gForeignReferenceDefEClass = this.createEClass(20);
        this.gChoiceReferenceDefEClass = this.createEClass(21);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("gecucparameterdef");
        this.setNsPrefix("");
        this.setNsURI("http://artop.org/gautosar/pd");
        GinfrastructurePackage theGinfrastructurePackage = (GinfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in");
        gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage theGprimitivetypesPackage = (gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/pt");
        this.gParamConfMultiplicityEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gContainerDefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGIdentifiable());
        this.gContainerDefEClass.getESuperTypes().add((Object)this.getGParamConfMultiplicity());
        this.gModuleDefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGPackageableElement());
        this.gModuleDefEClass.getESuperTypes().add((Object)this.getGParamConfMultiplicity());
        this.gCommonConfigurationAttributesEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGIdentifiable());
        this.gConfigParameterEClass.getESuperTypes().add((Object)this.getGParamConfMultiplicity());
        this.gConfigParameterEClass.getESuperTypes().add((Object)this.getGCommonConfigurationAttributes());
        this.gConfigReferenceEClass.getESuperTypes().add((Object)this.getGParamConfMultiplicity());
        this.gConfigReferenceEClass.getESuperTypes().add((Object)this.getGCommonConfigurationAttributes());
        this.gParamConfContainerDefEClass.getESuperTypes().add((Object)this.getGContainerDef());
        this.gChoiceContainerDefEClass.getESuperTypes().add((Object)this.getGContainerDef());
        this.gBooleanParamDefEClass.getESuperTypes().add((Object)this.getGConfigParameter());
        this.gIntegerParamDefEClass.getESuperTypes().add((Object)this.getGConfigParameter());
        this.gFloatParamDefEClass.getESuperTypes().add((Object)this.getGConfigParameter());
        this.gEnumerationParamDefEClass.getESuperTypes().add((Object)this.getGConfigParameter());
        this.gEnumerationLiteralDefEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGIdentifiable());
        this.gAbstractStringParamDefEClass.getESuperTypes().add((Object)this.getGConfigParameter());
        this.gStringParamDefEClass.getESuperTypes().add((Object)this.getGAbstractStringParamDef());
        this.gLinkerSymbolDefEClass.getESuperTypes().add((Object)this.getGAbstractStringParamDef());
        this.gFunctionNameDefEClass.getESuperTypes().add((Object)this.getGAbstractStringParamDef());
        this.gReferenceDefEClass.getESuperTypes().add((Object)this.getGConfigReference());
        this.gSymbolicNameReferenceDefEClass.getESuperTypes().add((Object)this.getGReferenceDef());
        this.gInstanceReferenceDefEClass.getESuperTypes().add((Object)this.getGConfigReference());
        this.gForeignReferenceDefEClass.getESuperTypes().add((Object)this.getGConfigReference());
        this.gChoiceReferenceDefEClass.getESuperTypes().add((Object)this.getGConfigReference());
        this.initEClass(this.gParamConfMultiplicityEClass, GParamConfMultiplicity.class, "GParamConfMultiplicity", true, true, true);
        this.addEOperation(this.gParamConfMultiplicityEClass, (EClassifier)theGprimitivetypesPackage.getString(), "gGetLowerMultiplicityAsString", 0, 1, true, true);
        EOperation op = this.addEOperation(this.gParamConfMultiplicityEClass, null, "gSetLowerMultiplicityAsString", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getString(), "value", 0, 1, true, true);
        this.addEOperation(this.gParamConfMultiplicityEClass, (EClassifier)theGprimitivetypesPackage.getString(), "gGetUpperMultiplicityAsString", 0, 1, true, true);
        op = this.addEOperation(this.gParamConfMultiplicityEClass, null, "gSetUpperMultiplicityAsString", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getString(), "value", 0, 1, true, true);
        this.addEOperation(this.gParamConfMultiplicityEClass, (EClassifier)theGprimitivetypesPackage.getBoolean(), "gGetUpperMultiplicityInfinite", 0, 1, true, true);
        op = this.addEOperation(this.gParamConfMultiplicityEClass, null, "gSetUpperMultiplicityInfinite", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getBoolean(), "value", 0, 1, true, true);
        this.initEClass(this.gContainerDefEClass, GContainerDef.class, "GContainerDef", true, true, true);
        this.addEOperation(this.gContainerDefEClass, (EClassifier)theGprimitivetypesPackage.getBoolean(), "gGetPostBuildChangeable", 0, 1, true, true);
        op = this.addEOperation(this.gContainerDefEClass, null, "gSetPostBuildChangeable", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getBoolean(), "value", 0, 1, true, true);
        this.initEClass(this.gModuleDefEClass, GModuleDef.class, "GModuleDef", true, true, true);
        this.addEOperation(this.gModuleDefEClass, (EClassifier)this.getGModuleDef(), "gGetRefinedModuleDef", 0, 1, true, true);
        op = this.addEOperation(this.gModuleDefEClass, null, "gSetRefinedModuleDef", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.getGModuleDef(), "value", 0, 1, true, true);
        op = this.addEOperation(this.gModuleDefEClass, null, "gGetContainers", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        EGenericType g2 = this.createEGenericType((EClassifier)this.getGContainerDef());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.initEClass(this.gCommonConfigurationAttributesEClass, GCommonConfigurationAttributes.class, "GCommonConfigurationAttributes", true, true, true);
        this.addEOperation(this.gCommonConfigurationAttributesEClass, (EClassifier)theGprimitivetypesPackage.getString(), "gGetOrigin", 0, 1, true, true);
        op = this.addEOperation(this.gCommonConfigurationAttributesEClass, null, "gSetOrigin", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getString(), "value", 0, 1, true, true);
        this.initEClass(this.gConfigParameterEClass, GConfigParameter.class, "GConfigParameter", true, true, true);
        this.addEOperation(this.gConfigParameterEClass, (EClassifier)theGprimitivetypesPackage.getBoolean(), "gGetSymbolicNameValue", 0, 1, true, true);
        op = this.addEOperation(this.gConfigParameterEClass, null, "gSetSymbolicNameValue", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getBoolean(), "value", 0, 1, true, true);
        this.initEClass(this.gConfigReferenceEClass, GConfigReference.class, "GConfigReference", true, true, true);
        this.initEClass(this.gParamConfContainerDefEClass, GParamConfContainerDef.class, "GParamConfContainerDef", true, true, true);
        op = this.addEOperation(this.gParamConfContainerDefEClass, null, "gGetParameters", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGConfigParameter());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        op = this.addEOperation(this.gParamConfContainerDefEClass, null, "gGetReferences", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGConfigReference());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        op = this.addEOperation(this.gParamConfContainerDefEClass, null, "gGetSubContainers", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGContainerDef());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.initEClass(this.gChoiceContainerDefEClass, GChoiceContainerDef.class, "GChoiceContainerDef", true, true, true);
        op = this.addEOperation(this.gChoiceContainerDefEClass, null, "gGetChoices", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGParamConfContainerDef());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.initEClass(this.gBooleanParamDefEClass, GBooleanParamDef.class, "GBooleanParamDef", true, true, true);
        this.initEClass(this.gIntegerParamDefEClass, GIntegerParamDef.class, "GIntegerParamDef", true, true, true);
        this.initEClass(this.gFloatParamDefEClass, GFloatParamDef.class, "GFloatParamDef", true, true, true);
        this.initEClass(this.gEnumerationParamDefEClass, GEnumerationParamDef.class, "GEnumerationParamDef", true, true, true);
        op = this.addEOperation(this.gEnumerationParamDefEClass, null, "gGetLiterals", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGEnumerationLiteralDef());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.addEOperation(this.gEnumerationParamDefEClass, (EClassifier)theGprimitivetypesPackage.getString(), "gGetDefaultValue", 0, 1, true, true);
        op = this.addEOperation(this.gEnumerationParamDefEClass, null, "gSetDefaultValue", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getString(), "value", 0, 1, true, true);
        this.initEClass(this.gEnumerationLiteralDefEClass, GEnumerationLiteralDef.class, "GEnumerationLiteralDef", true, true, true);
        this.initEClass(this.gAbstractStringParamDefEClass, GAbstractStringParamDef.class, "GAbstractStringParamDef", true, true, true);
        this.initEClass(this.gStringParamDefEClass, GStringParamDef.class, "GStringParamDef", true, true, true);
        this.initEClass(this.gLinkerSymbolDefEClass, GLinkerSymbolDef.class, "GLinkerSymbolDef", true, true, true);
        this.initEClass(this.gFunctionNameDefEClass, GFunctionNameDef.class, "GFunctionNameDef", true, true, true);
        this.initEClass(this.gReferenceDefEClass, GReferenceDef.class, "GReferenceDef", true, true, true);
        this.addEOperation(this.gReferenceDefEClass, (EClassifier)this.getGParamConfContainerDef(), "gGetDestination", 0, 1, true, true);
        op = this.addEOperation(this.gReferenceDefEClass, null, "gSetDestination", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)this.getGParamConfContainerDef(), "value", 0, 1, true, true);
        this.initEClass(this.gSymbolicNameReferenceDefEClass, GSymbolicNameReferenceDef.class, "GSymbolicNameReferenceDef", true, true, true);
        this.initEClass(this.gInstanceReferenceDefEClass, GInstanceReferenceDef.class, "GInstanceReferenceDef", true, true, true);
        this.addEOperation(this.gInstanceReferenceDefEClass, (EClassifier)theGprimitivetypesPackage.getString(), "gGetDestinationType", 0, 1, true, true);
        op = this.addEOperation(this.gInstanceReferenceDefEClass, null, "gSetDestinationType", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getString(), "value", 0, 1, true, true);
        this.addEOperation(this.gInstanceReferenceDefEClass, (EClassifier)theGprimitivetypesPackage.getString(), "gGetDestinationContext", 0, 1, true, true);
        op = this.addEOperation(this.gInstanceReferenceDefEClass, null, "gSetDestinationContext", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getString(), "value", 0, 1, true, true);
        this.initEClass(this.gForeignReferenceDefEClass, GForeignReferenceDef.class, "GForeignReferenceDef", true, true, true);
        this.addEOperation(this.gForeignReferenceDefEClass, (EClassifier)theGprimitivetypesPackage.getString(), "gGetDestinationType", 0, 1, true, true);
        op = this.addEOperation(this.gForeignReferenceDefEClass, null, "gSetDestinationType", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGprimitivetypesPackage.getString(), "value", 0, 1, true, true);
        this.initEClass(this.gChoiceReferenceDefEClass, GChoiceReferenceDef.class, "GChoiceReferenceDef", true, true, true);
        op = this.addEOperation(this.gChoiceReferenceDefEClass, null, "gGetDestinations", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGParamConfContainerDef());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.createResource("http://artop.org/gautosar/pd");
        this.createClassAnnotations();
        this.createGenModelAnnotations();
    }

    protected void createClassAnnotations() {
        String source = "class.mapping";
        this.addAnnotation((ENamedElement)this.gParamConfMultiplicityEClass, source, new String[]{"autosar40", "EcucDefinitionElement"});
        this.addAnnotation((ENamedElement)this.gContainerDefEClass, source, new String[]{"autosar40", "EcucContainerDef"});
        this.addAnnotation((ENamedElement)this.gModuleDefEClass, source, new String[]{"autosar40", "EcucModuleDef"});
        this.addAnnotation((ENamedElement)this.gCommonConfigurationAttributesEClass, source, new String[]{"autosar40", "EcucCommonAttributes"});
        this.addAnnotation((ENamedElement)this.gConfigParameterEClass, source, new String[]{"autosar40", "EcucParameterDef"});
        this.addAnnotation((ENamedElement)this.gConfigReferenceEClass, source, new String[]{"autosar40", "EcucAbstractReferenceDef"});
        this.addAnnotation((ENamedElement)this.gParamConfContainerDefEClass, source, new String[]{"autosar40", "EcucParamConfContainerDef"});
        this.addAnnotation((ENamedElement)this.gChoiceContainerDefEClass, source, new String[]{"autosar40", "EcucChoiceContainerDef"});
        this.addAnnotation((ENamedElement)this.gBooleanParamDefEClass, source, new String[]{"autosar40", "EcucBooleanParamDef"});
        this.addAnnotation((ENamedElement)this.gIntegerParamDefEClass, source, new String[]{"autosar40", "EcucIntegerParamDef"});
        this.addAnnotation((ENamedElement)this.gFloatParamDefEClass, source, new String[]{"autosar40", "EcucFloatParamDef"});
        this.addAnnotation((ENamedElement)this.gEnumerationParamDefEClass, source, new String[]{"autosar40", "EcucEnumerationParamDef"});
        this.addAnnotation((ENamedElement)this.gEnumerationLiteralDefEClass, source, new String[]{"autosar40", "EcucEnumerationLiteralDef"});
        this.addAnnotation((ENamedElement)this.gAbstractStringParamDefEClass, source, new String[]{"autosar21", "NONE", "autosar3x", "NONE", "autosar40", "EcucAbstractStringParamDef"});
        this.addAnnotation((ENamedElement)this.gStringParamDefEClass, source, new String[]{"autosar40", "EcucStringParamDef"});
        this.addAnnotation((ENamedElement)this.gLinkerSymbolDefEClass, source, new String[]{"autosar40", "EcucLinkerSymbolDef"});
        this.addAnnotation((ENamedElement)this.gFunctionNameDefEClass, source, new String[]{"autosar40", "EcucFunctionNameDef"});
        this.addAnnotation((ENamedElement)this.gReferenceDefEClass, source, new String[]{"autosar3x", "ReferenceParamDef", "autosar40", "EcucReferenceDef"});
        this.addAnnotation((ENamedElement)this.gSymbolicNameReferenceDefEClass, source, new String[]{"autosar3x", "SymbolicNameReferenceParamDef", "autosar40", "EcucSymbolicNameReferenceDef"});
        this.addAnnotation((ENamedElement)this.gInstanceReferenceDefEClass, source, new String[]{"autosar3x", "InstanceReferenceParamDef", "autosar40", "EcucInstanceReferenceDef"});
        this.addAnnotation((ENamedElement)this.gForeignReferenceDefEClass, source, new String[]{"autosar3x", "ForeignReferenceParamDef", "autosar40", "EcucForeignReferenceDef"});
        this.addAnnotation((ENamedElement)this.gChoiceReferenceDefEClass, source, new String[]{"autosar3x", "ChoiceReferenceParamDef", "autosar40", "EcucChoiceReferenceDef"});
    }

    protected void createGenModelAnnotations() {
        String source = "http://www.eclipse.org/emf/2002/GenModel";
        this.addAnnotation((ENamedElement)this.gParamConfMultiplicityEClass.getEOperations().get(0), source, new String[]{"body", "\n\tif(lowerMultiplicity == null){\n\t\treturn null;\n\t}\n\treturn lowerMultiplicity.getMixedText();\n\t\t"});
        this.addAnnotation((ENamedElement)this.gParamConfMultiplicityEClass.getEOperations().get(1), source, new String[]{"body", "\n\t\t\t\n\tif(lowerMultiplicity == null){\n\t\tPositiveIntegerValueVariationPoint newLowerMultiplicity = autosar40.genericstructure.varianthandling.VarianthandlingFactory.eINSTANCE.createPositiveIntegerValueVariationPoint();\n\t\tnewLowerMultiplicity.setMixedText(value);\n\t\tsetLowerMultiplicity(newLowerMultiplicity);\n\t} else {\n\t\tlowerMultiplicity.setMixedText(value);\n\t}\n\t\t"});
        this.addAnnotation((ENamedElement)this.gParamConfMultiplicityEClass.getEOperations().get(2), source, new String[]{"body", "\n\tif(upperMultiplicity == null){\n\t\treturn null;\n\t}\n\treturn upperMultiplicity.getMixedText();\n\t\t"});
        this.addAnnotation((ENamedElement)this.gParamConfMultiplicityEClass.getEOperations().get(3), source, new String[]{"body", "\n\t\t\t\n\tif(upperMultiplicity == null){\n\t\tPositiveIntegerValueVariationPoint newUpperMultiplicity = autosar40.genericstructure.varianthandling.VarianthandlingFactory.eINSTANCE.createPositiveIntegerValueVariationPoint();\n\t\tnewUpperMultiplicity.setMixedText(value);\n\t\tsetUpperMultiplicity(newUpperMultiplicity);\n\t} else {\n\t\tupperMultiplicity.setMixedText(value);\n\t}\n\t\t"});
        this.addAnnotation((ENamedElement)this.gParamConfMultiplicityEClass.getEOperations().get(4), source, new String[]{"body", "\n\tif (upperMultiplicityInfinite != null) {\n\t\treturn Boolean.TRUE.toString().equals(upperMultiplicityInfinite.getMixedText()); \n\t}\n\treturn false;\n\t\t"});
        this.addAnnotation((ENamedElement)this.gParamConfMultiplicityEClass.getEOperations().get(5), source, new String[]{"body", "\n\t\t\t\n\tif (upperMultiplicityInfinite == null){ \n\t\tBooleanValueVariationPoint newUpperMultiplicityInfinite = <%autosar40.genericstructure.varianthandling.VarianthandlingFactory%>.eINSTANCE.createBooleanValueVariationPoint();\n\t\tnewUpperMultiplicityInfinite.setMixedText(value.toString());\n\t\tsetUpperMultiplicityInfinite(newUpperMultiplicityInfinite);\n\t} else { \n\t\tupperMultiplicityInfinite.setMixedText(value.toString());\n\t}\n\t\t"});
    }
}

