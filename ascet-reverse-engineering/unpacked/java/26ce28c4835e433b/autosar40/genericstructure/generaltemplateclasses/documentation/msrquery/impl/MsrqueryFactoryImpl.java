/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryArg;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryP1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrQueryArgImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrQueryChapterImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrQueryP1Impl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrQueryPropsImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrQueryResultChapterImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrQueryResultTopic1Impl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrQueryTopic1Impl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class MsrqueryFactoryImpl
extends EFactoryImpl
implements MsrqueryFactory {
    public static MsrqueryFactory init() {
        try {
            MsrqueryFactory theMsrqueryFactory = (MsrqueryFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/mq");
            if (theMsrqueryFactory != null) {
                return theMsrqueryFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new MsrqueryFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createMsrQueryArg();
            }
            case 1: {
                return this.createMsrQueryChapter();
            }
            case 2: {
                return this.createMsrQueryResultChapter();
            }
            case 3: {
                return this.createMsrQueryProps();
            }
            case 4: {
                return this.createMsrQueryResultTopic1();
            }
            case 5: {
                return this.createMsrQueryTopic1();
            }
            case 6: {
                return this.createMsrQueryP1();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public MsrQueryArg createMsrQueryArg() {
        MsrQueryArgImpl msrQueryArg = new MsrQueryArgImpl();
        return msrQueryArg;
    }

    public MsrQueryChapter createMsrQueryChapter() {
        MsrQueryChapterImpl msrQueryChapter = new MsrQueryChapterImpl();
        return msrQueryChapter;
    }

    public MsrQueryResultChapter createMsrQueryResultChapter() {
        MsrQueryResultChapterImpl msrQueryResultChapter = new MsrQueryResultChapterImpl();
        return msrQueryResultChapter;
    }

    public MsrQueryProps createMsrQueryProps() {
        MsrQueryPropsImpl msrQueryProps = new MsrQueryPropsImpl();
        return msrQueryProps;
    }

    public MsrQueryResultTopic1 createMsrQueryResultTopic1() {
        MsrQueryResultTopic1Impl msrQueryResultTopic1 = new MsrQueryResultTopic1Impl();
        return msrQueryResultTopic1;
    }

    public MsrQueryTopic1 createMsrQueryTopic1() {
        MsrQueryTopic1Impl msrQueryTopic1 = new MsrQueryTopic1Impl();
        return msrQueryTopic1;
    }

    public MsrQueryP1 createMsrQueryP1() {
        MsrQueryP1Impl msrQueryP1 = new MsrQueryP1Impl();
        return msrQueryP1;
    }

    public MsrqueryPackage getMsrqueryPackage() {
        return (MsrqueryPackage)this.getEPackage();
    }

    @Deprecated
    public static MsrqueryPackage getPackage() {
        return MsrqueryPackage.eINSTANCE;
    }
}

