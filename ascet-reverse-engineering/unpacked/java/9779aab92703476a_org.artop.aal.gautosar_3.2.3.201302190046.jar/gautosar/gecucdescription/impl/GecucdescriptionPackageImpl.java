/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EGenericType
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EOperation
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package gautosar.gecucdescription.impl;

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
import gautosar.gecucdescription.GBooleanValue;
import gautosar.gecucdescription.GConfigReferenceValue;
import gautosar.gecucdescription.GContainer;
import gautosar.gecucdescription.GEnumerationValue;
import gautosar.gecucdescription.GFloatValue;
import gautosar.gecucdescription.GFunctionNameValue;
import gautosar.gecucdescription.GInstanceReferenceValue;
import gautosar.gecucdescription.GIntegerValue;
import gautosar.gecucdescription.GLinkerSymbolValue;
import gautosar.gecucdescription.GModuleConfiguration;
import gautosar.gecucdescription.GParameterValue;
import gautosar.gecucdescription.GReferenceValue;
import gautosar.gecucdescription.GStringValue;
import gautosar.gecucdescription.GecucdescriptionFactory;
import gautosar.gecucdescription.GecucdescriptionPackage;
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
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EGenericType;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class GecucdescriptionPackageImpl
extends EPackageImpl
implements GecucdescriptionPackage {
    private EClass gModuleConfigurationEClass = null;
    private EClass gContainerEClass = null;
    private EClass gParameterValueEClass = null;
    private EClass gConfigReferenceValueEClass = null;
    private EClass gReferenceValueEClass = null;
    private EClass gInstanceReferenceValueEClass = null;
    private EClass gBooleanValueEClass = null;
    private EClass gEnumerationValueEClass = null;
    private EClass gIntegerValueEClass = null;
    private EClass gStringValueEClass = null;
    private EClass gLinkerSymbolValueEClass = null;
    private EClass gFunctionNameValueEClass = null;
    private EClass gFloatValueEClass = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private GecucdescriptionPackageImpl() {
        super("http://artop.org/gautosar/ed", (EFactory)GecucdescriptionFactory.eINSTANCE);
    }

    public static GecucdescriptionPackage init() {
        if (isInited) {
            return (GecucdescriptionPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/ed");
        }
        GecucdescriptionPackageImpl theGecucdescriptionPackage = (GecucdescriptionPackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/ed") instanceof GecucdescriptionPackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/ed") : new GecucdescriptionPackageImpl());
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
        theGecucdescriptionPackage.createPackageContents();
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
        theGecucdescriptionPackage.initializePackageContents();
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
        theGecucdescriptionPackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://artop.org/gautosar/ed", (Object)theGecucdescriptionPackage);
        return theGecucdescriptionPackage;
    }

    public EClass getGModuleConfiguration() {
        return this.gModuleConfigurationEClass;
    }

    public EClass getGContainer() {
        return this.gContainerEClass;
    }

    public EClass getGParameterValue() {
        return this.gParameterValueEClass;
    }

    public EClass getGConfigReferenceValue() {
        return this.gConfigReferenceValueEClass;
    }

    public EClass getGReferenceValue() {
        return this.gReferenceValueEClass;
    }

    public EClass getGInstanceReferenceValue() {
        return this.gInstanceReferenceValueEClass;
    }

    public EClass getGBooleanValue() {
        return this.gBooleanValueEClass;
    }

    public EAttribute getGBooleanValue_GValue() {
        return (EAttribute)this.gBooleanValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGEnumerationValue() {
        return this.gEnumerationValueEClass;
    }

    public EAttribute getGEnumerationValue_GValue() {
        return (EAttribute)this.gEnumerationValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGIntegerValue() {
        return this.gIntegerValueEClass;
    }

    public EAttribute getGIntegerValue_GValue() {
        return (EAttribute)this.gIntegerValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGStringValue() {
        return this.gStringValueEClass;
    }

    public EAttribute getGStringValue_GValue() {
        return (EAttribute)this.gStringValueEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGLinkerSymbolValue() {
        return this.gLinkerSymbolValueEClass;
    }

    public EClass getGFunctionNameValue() {
        return this.gFunctionNameValueEClass;
    }

    public EClass getGFloatValue() {
        return this.gFloatValueEClass;
    }

    public EAttribute getGFloatValue_GValue() {
        return (EAttribute)this.gFloatValueEClass.getEStructuralFeatures().get(0);
    }

    public GecucdescriptionFactory getGecucdescriptionFactory() {
        return (GecucdescriptionFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.gModuleConfigurationEClass = this.createEClass(0);
        this.gContainerEClass = this.createEClass(1);
        this.gParameterValueEClass = this.createEClass(2);
        this.gConfigReferenceValueEClass = this.createEClass(3);
        this.gReferenceValueEClass = this.createEClass(4);
        this.gInstanceReferenceValueEClass = this.createEClass(5);
        this.gBooleanValueEClass = this.createEClass(6);
        this.createEAttribute(this.gBooleanValueEClass, 2);
        this.gEnumerationValueEClass = this.createEClass(7);
        this.createEAttribute(this.gEnumerationValueEClass, 2);
        this.gIntegerValueEClass = this.createEClass(8);
        this.createEAttribute(this.gIntegerValueEClass, 2);
        this.gStringValueEClass = this.createEClass(9);
        this.createEAttribute(this.gStringValueEClass, 2);
        this.gLinkerSymbolValueEClass = this.createEClass(10);
        this.gFunctionNameValueEClass = this.createEClass(11);
        this.gFloatValueEClass = this.createEClass(12);
        this.createEAttribute(this.gFloatValueEClass, 2);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("gecucdescription");
        this.setNsPrefix("");
        this.setNsURI("http://artop.org/gautosar/ed");
        GinfrastructurePackage theGinfrastructurePackage = (GinfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in");
        GecucparameterdefPackage theGecucparameterdefPackage = (GecucparameterdefPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/pd");
        gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage theGprimitivetypesPackage = (gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/pt");
        this.gModuleConfigurationEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGPackageableElement());
        this.gContainerEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGIdentifiable());
        this.gParameterValueEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gConfigReferenceValueEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGARObject());
        this.gReferenceValueEClass.getESuperTypes().add((Object)this.getGConfigReferenceValue());
        this.gInstanceReferenceValueEClass.getESuperTypes().add((Object)this.getGConfigReferenceValue());
        this.gBooleanValueEClass.getESuperTypes().add((Object)this.getGParameterValue());
        this.gEnumerationValueEClass.getESuperTypes().add((Object)this.getGParameterValue());
        this.gIntegerValueEClass.getESuperTypes().add((Object)this.getGParameterValue());
        this.gStringValueEClass.getESuperTypes().add((Object)this.getGParameterValue());
        this.gLinkerSymbolValueEClass.getESuperTypes().add((Object)this.getGStringValue());
        this.gFunctionNameValueEClass.getESuperTypes().add((Object)this.getGLinkerSymbolValue());
        this.gFloatValueEClass.getESuperTypes().add((Object)this.getGParameterValue());
        this.initEClass(this.gModuleConfigurationEClass, GModuleConfiguration.class, "GModuleConfiguration", true, true, true);
        this.addEOperation(this.gModuleConfigurationEClass, (EClassifier)theGecucparameterdefPackage.getGModuleDef(), "gGetDefinition", 0, 1, true, true);
        EOperation op = this.addEOperation(this.gModuleConfigurationEClass, null, "gSetDefinition", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGecucparameterdefPackage.getGModuleDef(), "value", 0, 1, true, true);
        op = this.addEOperation(this.gModuleConfigurationEClass, null, "gGetContainers", 0, 1, true, true);
        EGenericType g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        EGenericType g2 = this.createEGenericType((EClassifier)this.getGContainer());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.initEClass(this.gContainerEClass, GContainer.class, "GContainer", true, true, true);
        this.addEOperation(this.gContainerEClass, (EClassifier)theGecucparameterdefPackage.getGContainerDef(), "gGetDefinition", 0, 1, true, true);
        op = this.addEOperation(this.gContainerEClass, null, "gSetDefinition", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGecucparameterdefPackage.getGContainerDef(), "value", 0, 1, true, true);
        op = this.addEOperation(this.gContainerEClass, null, "gGetParameterValues", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGParameterValue());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        op = this.addEOperation(this.gContainerEClass, null, "gGetReferenceValues", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGConfigReferenceValue());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        op = this.addEOperation(this.gContainerEClass, null, "gGetSubContainers", 0, 1, true, true);
        g1 = this.createEGenericType((EClassifier)this.ecorePackage.getEEList());
        g2 = this.createEGenericType((EClassifier)this.getGContainer());
        g1.getETypeArguments().add((Object)g2);
        this.initEOperation(op, g1);
        this.initEClass(this.gParameterValueEClass, GParameterValue.class, "GParameterValue", true, true, true);
        this.addEOperation(this.gParameterValueEClass, (EClassifier)theGecucparameterdefPackage.getGConfigParameter(), "gGetDefinition", 0, 1, true, true);
        op = this.addEOperation(this.gParameterValueEClass, null, "gSetDefinition", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGecucparameterdefPackage.getGConfigParameter(), "value", 0, 1, true, true);
        this.initEClass(this.gConfigReferenceValueEClass, GConfigReferenceValue.class, "GConfigReferenceValue", true, true, true);
        this.addEOperation(this.gConfigReferenceValueEClass, (EClassifier)theGecucparameterdefPackage.getGConfigReference(), "gGetDefinition", 0, 1, true, true);
        op = this.addEOperation(this.gConfigReferenceValueEClass, null, "gSetDefinition", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGecucparameterdefPackage.getGConfigReference(), "value", 0, 1, true, true);
        this.initEClass(this.gReferenceValueEClass, GReferenceValue.class, "GReferenceValue", true, true, true);
        this.addEOperation(this.gReferenceValueEClass, (EClassifier)theGinfrastructurePackage.getGIdentifiable(), "gGetValue", 0, 1, true, true);
        op = this.addEOperation(this.gReferenceValueEClass, null, "gSetValue", 0, 1, true, true);
        this.addEParameter(op, (EClassifier)theGinfrastructurePackage.getGIdentifiable(), "value", 0, 1, true, true);
        this.initEClass(this.gInstanceReferenceValueEClass, GInstanceReferenceValue.class, "GInstanceReferenceValue", true, true, true);
        this.initEClass(this.gBooleanValueEClass, GBooleanValue.class, "GBooleanValue", true, true, true);
        this.initEAttribute(this.getGBooleanValue_GValue(), (EClassifier)theGprimitivetypesPackage.getBoolean(), "gValue", null, 0, 1, GBooleanValue.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gEnumerationValueEClass, GEnumerationValue.class, "GEnumerationValue", true, true, true);
        this.initEAttribute(this.getGEnumerationValue_GValue(), (EClassifier)theGprimitivetypesPackage.getString(), "gValue", null, 0, 1, GEnumerationValue.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gIntegerValueEClass, GIntegerValue.class, "GIntegerValue", true, true, true);
        this.initEAttribute(this.getGIntegerValue_GValue(), (EClassifier)theGprimitivetypesPackage.getUnlimitedNatural(), "gValue", null, 0, 1, GIntegerValue.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gStringValueEClass, GStringValue.class, "GStringValue", true, true, true);
        this.initEAttribute(this.getGStringValue_GValue(), (EClassifier)theGprimitivetypesPackage.getString(), "gValue", null, 0, 1, GStringValue.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gLinkerSymbolValueEClass, GLinkerSymbolValue.class, "GLinkerSymbolValue", true, true, true);
        this.initEClass(this.gFunctionNameValueEClass, GFunctionNameValue.class, "GFunctionNameValue", true, true, true);
        this.initEClass(this.gFloatValueEClass, GFloatValue.class, "GFloatValue", true, true, true);
        this.initEAttribute(this.getGFloatValue_GValue(), (EClassifier)theGprimitivetypesPackage.getFloat(), "gValue", null, 0, 1, GFloatValue.class, true, true, true, true, false, true, true, true);
        this.createResource("http://artop.org/gautosar/ed");
        this.createClassAnnotations();
    }

    protected void createClassAnnotations() {
        String source = "class.mapping";
        this.addAnnotation((ENamedElement)this.gModuleConfigurationEClass, source, new String[]{"autosar40", "EcucModuleConfigurationValues"});
        this.addAnnotation((ENamedElement)this.gContainerEClass, source, new String[]{"autosar40", "EcucContainerValue"});
        this.addAnnotation((ENamedElement)this.gParameterValueEClass, source, new String[]{"autosar40", "EcucParameterValue"});
        this.addAnnotation((ENamedElement)this.gConfigReferenceValueEClass, source, new String[]{"autosar40", "EcucAbstractReferenceValue"});
        this.addAnnotation((ENamedElement)this.gReferenceValueEClass, source, new String[]{"autosar40", "EcucReferenceValue"});
        this.addAnnotation((ENamedElement)this.gInstanceReferenceValueEClass, source, new String[]{"autosar40", "EcucInstanceReferenceValue"});
        this.addAnnotation((ENamedElement)this.gBooleanValueEClass, source, new String[]{"autosar40", "NONE"});
        this.addAnnotation((ENamedElement)this.gEnumerationValueEClass, source, new String[]{"autosar40", "NONE"});
        this.addAnnotation((ENamedElement)this.gIntegerValueEClass, source, new String[]{"autosar40", "NONE"});
        this.addAnnotation((ENamedElement)this.gStringValueEClass, source, new String[]{"autosar40", "NONE"});
        this.addAnnotation((ENamedElement)this.gLinkerSymbolValueEClass, source, new String[]{"autosar40", "NONE"});
        this.addAnnotation((ENamedElement)this.gFunctionNameValueEClass, source, new String[]{"autosar40", "NONE"});
        this.addAnnotation((ENamedElement)this.gFloatValueEClass, source, new String[]{"autosar40", "NONE"});
    }
}

