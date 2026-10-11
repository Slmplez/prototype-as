/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery;

import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryArg;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryP1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrqueryFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface MsrqueryFactory
extends EFactory {
    public static final MsrqueryFactory eINSTANCE = MsrqueryFactoryImpl.init();

    public MsrQueryArg createMsrQueryArg();

    public MsrQueryChapter createMsrQueryChapter();

    public MsrQueryResultChapter createMsrQueryResultChapter();

    public MsrQueryProps createMsrQueryProps();

    public MsrQueryResultTopic1 createMsrQueryResultTopic1();

    public MsrQueryTopic1 createMsrQueryTopic1();

    public MsrQueryP1 createMsrQueryP1();

    public MsrqueryPackage getMsrqueryPackage();
}

