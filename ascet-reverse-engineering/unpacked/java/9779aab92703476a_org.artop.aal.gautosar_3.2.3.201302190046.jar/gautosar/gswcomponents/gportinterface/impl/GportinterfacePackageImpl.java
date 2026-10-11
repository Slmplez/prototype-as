/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.impl.EPackageImpl
 */
package gautosar.gswcomponents.gportinterface.impl;

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
import gautosar.gswcomponents.gportinterface.GApplicationError;
import gautosar.gswcomponents.gportinterface.GArgumentDataPrototype;
import gautosar.gswcomponents.gportinterface.GArgumentDirectionEnum;
import gautosar.gswcomponents.gportinterface.GClientServerInterface;
import gautosar.gswcomponents.gportinterface.GClientServerOperation;
import gautosar.gswcomponents.gportinterface.GModeSwitchInterface;
import gautosar.gswcomponents.gportinterface.GNvDataInterface;
import gautosar.gswcomponents.gportinterface.GParameterInterface;
import gautosar.gswcomponents.gportinterface.GPortInterface;
import gautosar.gswcomponents.gportinterface.GSenderReceiverInterface;
import gautosar.gswcomponents.gportinterface.GTriggerInterface;
import gautosar.gswcomponents.gportinterface.GportinterfaceFactory;
import gautosar.gswcomponents.gportinterface.GportinterfacePackage;
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
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.impl.EPackageImpl;

public class GportinterfacePackageImpl
extends EPackageImpl
implements GportinterfacePackage {
    private EClass gPortInterfaceEClass = null;
    private EClass gSenderReceiverInterfaceEClass = null;
    private EClass gClientServerInterfaceEClass = null;
    private EClass gParameterInterfaceEClass = null;
    private EClass gNvDataInterfaceEClass = null;
    private EClass gModeSwitchInterfaceEClass = null;
    private EClass gTriggerInterfaceEClass = null;
    private EClass gArgumentDataPrototypeEClass = null;
    private EClass gClientServerOperationEClass = null;
    private EClass gApplicationErrorEClass = null;
    private EEnum gArgumentDirectionEnumEEnum = null;
    private static boolean isInited = false;
    private boolean isCreated = false;
    private boolean isInitialized = false;

    private GportinterfacePackageImpl() {
        super("http://artop.org/gautosar/swc/pi", (EFactory)GportinterfaceFactory.eINSTANCE);
    }

    public static GportinterfacePackage init() {
        if (isInited) {
            return (GportinterfacePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/pi");
        }
        GportinterfacePackageImpl theGportinterfacePackage = (GportinterfacePackageImpl)(EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/swc/pi") instanceof GportinterfacePackageImpl ? EPackage.Registry.INSTANCE.get((Object)"http://artop.org/gautosar/swc/pi") : new GportinterfacePackageImpl());
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
        theGportinterfacePackage.createPackageContents();
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
        theGportinterfacePackage.initializePackageContents();
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
        theGportinterfacePackage.freeze();
        EPackage.Registry.INSTANCE.put((Object)"http://artop.org/gautosar/swc/pi", (Object)theGportinterfacePackage);
        return theGportinterfacePackage;
    }

    public EClass getGPortInterface() {
        return this.gPortInterfaceEClass;
    }

    public EAttribute getGPortInterface_GIsService() {
        return (EAttribute)this.gPortInterfaceEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGSenderReceiverInterface() {
        return this.gSenderReceiverInterfaceEClass;
    }

    public EReference getGSenderReceiverInterface_GDataElements() {
        return (EReference)this.gSenderReceiverInterfaceEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGClientServerInterface() {
        return this.gClientServerInterfaceEClass;
    }

    public EReference getGClientServerInterface_GOperations() {
        return (EReference)this.gClientServerInterfaceEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGClientServerInterface_GPossibleErrors() {
        return (EReference)this.gClientServerInterfaceEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGParameterInterface() {
        return this.gParameterInterfaceEClass;
    }

    public EReference getGParameterInterface_GParameters() {
        return (EReference)this.gParameterInterfaceEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGNvDataInterface() {
        return this.gNvDataInterfaceEClass;
    }

    public EClass getGModeSwitchInterface() {
        return this.gModeSwitchInterfaceEClass;
    }

    public EReference getGModeSwitchInterface_GModeGroups() {
        return (EReference)this.gModeSwitchInterfaceEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGTriggerInterface() {
        return this.gTriggerInterfaceEClass;
    }

    public EClass getGArgumentDataPrototype() {
        return this.gArgumentDataPrototypeEClass;
    }

    public EAttribute getGArgumentDataPrototype_GDirection() {
        return (EAttribute)this.gArgumentDataPrototypeEClass.getEStructuralFeatures().get(0);
    }

    public EClass getGClientServerOperation() {
        return this.gClientServerOperationEClass;
    }

    public EReference getGClientServerOperation_GArguments() {
        return (EReference)this.gClientServerOperationEClass.getEStructuralFeatures().get(0);
    }

    public EReference getGClientServerOperation_GPossibleErrors() {
        return (EReference)this.gClientServerOperationEClass.getEStructuralFeatures().get(1);
    }

    public EClass getGApplicationError() {
        return this.gApplicationErrorEClass;
    }

    public EAttribute getGApplicationError_GErrorCode() {
        return (EAttribute)this.gApplicationErrorEClass.getEStructuralFeatures().get(0);
    }

    public EEnum getGArgumentDirectionEnum() {
        return this.gArgumentDirectionEnumEEnum;
    }

    public GportinterfaceFactory getGportinterfaceFactory() {
        return (GportinterfaceFactory)this.getEFactoryInstance();
    }

    public void createPackageContents() {
        if (this.isCreated) {
            return;
        }
        this.isCreated = true;
        this.gPortInterfaceEClass = this.createEClass(0);
        this.createEAttribute(this.gPortInterfaceEClass, 7);
        this.gSenderReceiverInterfaceEClass = this.createEClass(1);
        this.createEReference(this.gSenderReceiverInterfaceEClass, 8);
        this.gClientServerInterfaceEClass = this.createEClass(2);
        this.createEReference(this.gClientServerInterfaceEClass, 8);
        this.createEReference(this.gClientServerInterfaceEClass, 9);
        this.gParameterInterfaceEClass = this.createEClass(3);
        this.createEReference(this.gParameterInterfaceEClass, 8);
        this.gNvDataInterfaceEClass = this.createEClass(4);
        this.gModeSwitchInterfaceEClass = this.createEClass(5);
        this.createEReference(this.gModeSwitchInterfaceEClass, 8);
        this.gTriggerInterfaceEClass = this.createEClass(6);
        this.gArgumentDataPrototypeEClass = this.createEClass(7);
        this.createEAttribute(this.gArgumentDataPrototypeEClass, 7);
        this.gClientServerOperationEClass = this.createEClass(8);
        this.createEReference(this.gClientServerOperationEClass, 6);
        this.createEReference(this.gClientServerOperationEClass, 7);
        this.gApplicationErrorEClass = this.createEClass(9);
        this.createEAttribute(this.gApplicationErrorEClass, 6);
        this.gArgumentDirectionEnumEEnum = this.createEEnum(10);
    }

    public void initializePackageContents() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        this.setName("gportinterface");
        this.setNsPrefix("");
        this.setNsURI("http://artop.org/gautosar/swc/pi");
        GinfrastructurePackage theGinfrastructurePackage = (GinfrastructurePackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/in");
        gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage theGprimitivetypesPackage = (gautosar.ggenericstructure.gprimitivetypes.GprimitivetypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/gs/pt");
        GdataprototypesPackage theGdataprototypesPackage = (GdataprototypesPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/swc/d/dp");
        GmodedeclarationPackage theGmodedeclarationPackage = (GmodedeclarationPackage)EPackage.Registry.INSTANCE.getEPackage("http://artop.org/gautosar/cs/md");
        this.gPortInterfaceEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGPackageableElement());
        this.gSenderReceiverInterfaceEClass.getESuperTypes().add((Object)this.getGPortInterface());
        this.gClientServerInterfaceEClass.getESuperTypes().add((Object)this.getGPortInterface());
        this.gParameterInterfaceEClass.getESuperTypes().add((Object)this.getGPortInterface());
        this.gNvDataInterfaceEClass.getESuperTypes().add((Object)this.getGPortInterface());
        this.gModeSwitchInterfaceEClass.getESuperTypes().add((Object)this.getGPortInterface());
        this.gTriggerInterfaceEClass.getESuperTypes().add((Object)this.getGPortInterface());
        this.gArgumentDataPrototypeEClass.getESuperTypes().add((Object)theGdataprototypesPackage.getGAutosarDataPrototype());
        this.gClientServerOperationEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGIdentifiable());
        this.gApplicationErrorEClass.getESuperTypes().add((Object)theGinfrastructurePackage.getGIdentifiable());
        this.initEClass(this.gPortInterfaceEClass, GPortInterface.class, "GPortInterface", true, true, true);
        this.initEAttribute(this.getGPortInterface_GIsService(), (EClassifier)theGprimitivetypesPackage.getBoolean(), "gIsService", "false", 0, 1, GPortInterface.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gSenderReceiverInterfaceEClass, GSenderReceiverInterface.class, "GSenderReceiverInterface", true, true, true);
        this.initEReference(this.getGSenderReceiverInterface_GDataElements(), (EClassifier)theGdataprototypesPackage.getGVariableDataPrototype(), null, "gDataElements", null, 0, -1, GSenderReceiverInterface.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gClientServerInterfaceEClass, GClientServerInterface.class, "GClientServerInterface", true, true, true);
        this.initEReference(this.getGClientServerInterface_GOperations(), (EClassifier)this.getGClientServerOperation(), null, "gOperations", null, 0, -1, GClientServerInterface.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGClientServerInterface_GPossibleErrors(), (EClassifier)this.getGApplicationError(), null, "gPossibleErrors", null, 0, -1, GClientServerInterface.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gParameterInterfaceEClass, GParameterInterface.class, "GParameterInterface", true, true, true);
        this.initEReference(this.getGParameterInterface_GParameters(), (EClassifier)theGdataprototypesPackage.getGParameterDataPrototype(), null, "gParameters", null, 0, -1, GParameterInterface.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gNvDataInterfaceEClass, GNvDataInterface.class, "GNvDataInterface", true, true, true);
        this.initEClass(this.gModeSwitchInterfaceEClass, GModeSwitchInterface.class, "GModeSwitchInterface", true, true, true);
        this.initEReference(this.getGModeSwitchInterface_GModeGroups(), (EClassifier)theGmodedeclarationPackage.getGModeDeclarationGroupPrototype(), null, "gModeGroups", null, 0, -1, GModeSwitchInterface.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gTriggerInterfaceEClass, GTriggerInterface.class, "GTriggerInterface", true, true, true);
        this.initEClass(this.gArgumentDataPrototypeEClass, GArgumentDataPrototype.class, "GArgumentDataPrototype", true, true, true);
        this.initEAttribute(this.getGArgumentDataPrototype_GDirection(), (EClassifier)this.getGArgumentDirectionEnum(), "gDirection", "IN", 0, 1, GArgumentDataPrototype.class, true, true, true, true, false, true, true, true);
        this.initEClass(this.gClientServerOperationEClass, GClientServerOperation.class, "GClientServerOperation", true, true, true);
        this.initEReference(this.getGClientServerOperation_GArguments(), (EClassifier)this.getGArgumentDataPrototype(), null, "gArguments", null, 0, -1, GClientServerOperation.class, true, true, true, false, false, false, true, true, true);
        this.initEReference(this.getGClientServerOperation_GPossibleErrors(), (EClassifier)this.getGApplicationError(), null, "gPossibleErrors", null, 0, -1, GClientServerOperation.class, true, true, true, false, false, false, true, true, true);
        this.initEClass(this.gApplicationErrorEClass, GApplicationError.class, "GApplicationError", true, true, true);
        this.initEAttribute(this.getGApplicationError_GErrorCode(), (EClassifier)theGprimitivetypesPackage.getInteger(), "gErrorCode", null, 0, 1, GApplicationError.class, true, true, true, true, false, true, true, true);
        this.initEEnum(this.gArgumentDirectionEnumEEnum, GArgumentDirectionEnum.class, "GArgumentDirectionEnum");
        this.addEEnumLiteral(this.gArgumentDirectionEnumEEnum, GArgumentDirectionEnum.IN);
        this.addEEnumLiteral(this.gArgumentDirectionEnumEEnum, GArgumentDirectionEnum.OUT);
        this.addEEnumLiteral(this.gArgumentDirectionEnumEEnum, GArgumentDirectionEnum.INOUT);
        this.createResource("http://artop.org/gautosar/swc/pi");
        this.createClassAnnotations();
        this.createFeatureAnnotations();
    }

    protected void createClassAnnotations() {
        String source = "class.mapping";
        this.addAnnotation((ENamedElement)this.gParameterInterfaceEClass, source, new String[]{"autosar21", "CalprmInterface", "autosar3x", "CalprmInterface"});
        this.addAnnotation((ENamedElement)this.gNvDataInterfaceEClass, source, new String[]{"autosar21", "NONE", "autosar3x", "NONE"});
        this.addAnnotation((ENamedElement)this.gModeSwitchInterfaceEClass, source, new String[]{"autosar21", "SenderReceiverInterface", "autosar3x", "SenderReceiverInterface"});
        this.addAnnotation((ENamedElement)this.gTriggerInterfaceEClass, source, new String[]{"autosar21", "NONE", "autosar3x", "NONE"});
        this.addAnnotation((ENamedElement)this.gArgumentDataPrototypeEClass, source, new String[]{"autosar21", "ArgumentPrototype", "autosar3x", "ArgumentPrototype"});
        this.addAnnotation((ENamedElement)this.gClientServerOperationEClass, source, new String[]{"autosar21", "OperationPrototype", "autosar3x", "OperationPrototype"});
    }

    protected void createFeatureAnnotations() {
        String source = "feature.mapping";
        this.addAnnotation((ENamedElement)this.getGParameterInterface_GParameters(), source, new String[]{"autosar21", "calprmElements", "autosar3x", "calprmElements"});
        this.addAnnotation((ENamedElement)this.getGModeSwitchInterface_GModeGroups(), source, new String[]{"autosar40", "modeGroup"});
    }
}

