/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery;

import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl.MsrqueryPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface MsrqueryPackage
extends EPackage {
    public static final String eNAME = "msrquery";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/mq";
    public static final String eNS_PREFIX = "";
    public static final MsrqueryPackage eINSTANCE = MsrqueryPackageImpl.init();
    public static final int MSR_QUERY_ARG = 0;
    public static final int MSR_QUERY_ARG__GCHECKSUM = 0;
    public static final int MSR_QUERY_ARG__GTIMESTAMP = 1;
    public static final int MSR_QUERY_ARG__CHECKSUM = 2;
    public static final int MSR_QUERY_ARG__TIMESTAMP = 3;
    public static final int MSR_QUERY_ARG__MSR_QUERY_PROPS = 4;
    public static final int MSR_QUERY_ARG__ARG = 5;
    public static final int MSR_QUERY_ARG__SI = 6;
    public static final int MSR_QUERY_ARG_FEATURE_COUNT = 7;
    public static final int MSR_QUERY_CHAPTER = 1;
    public static final int MSR_QUERY_CHAPTER__GCHECKSUM = 0;
    public static final int MSR_QUERY_CHAPTER__GTIMESTAMP = 1;
    public static final int MSR_QUERY_CHAPTER__CHECKSUM = 2;
    public static final int MSR_QUERY_CHAPTER__TIMESTAMP = 3;
    public static final int MSR_QUERY_CHAPTER__SI = 4;
    public static final int MSR_QUERY_CHAPTER__VIEW = 5;
    public static final int MSR_QUERY_CHAPTER__BREAK = 6;
    public static final int MSR_QUERY_CHAPTER__KEEP_WITH_PREVIOUS = 7;
    public static final int MSR_QUERY_CHAPTER__CHAPTER_OR_MSR_QUERY = 8;
    public static final int MSR_QUERY_CHAPTER__MSR_QUERY_PROPS = 9;
    public static final int MSR_QUERY_CHAPTER__MSR_QUERY_RESULT_CHAPTER = 10;
    public static final int MSR_QUERY_CHAPTER_FEATURE_COUNT = 11;
    public static final int MSR_QUERY_RESULT_CHAPTER = 2;
    public static final int MSR_QUERY_RESULT_CHAPTER__GCHECKSUM = 0;
    public static final int MSR_QUERY_RESULT_CHAPTER__GTIMESTAMP = 1;
    public static final int MSR_QUERY_RESULT_CHAPTER__CHECKSUM = 2;
    public static final int MSR_QUERY_RESULT_CHAPTER__TIMESTAMP = 3;
    public static final int MSR_QUERY_RESULT_CHAPTER__MSR_QUERY_CHAPTER = 4;
    public static final int MSR_QUERY_RESULT_CHAPTER__CHAPTERS = 5;
    public static final int MSR_QUERY_RESULT_CHAPTER_FEATURE_COUNT = 6;
    public static final int MSR_QUERY_PROPS = 3;
    public static final int MSR_QUERY_PROPS__GCHECKSUM = 0;
    public static final int MSR_QUERY_PROPS__GTIMESTAMP = 1;
    public static final int MSR_QUERY_PROPS__CHECKSUM = 2;
    public static final int MSR_QUERY_PROPS__TIMESTAMP = 3;
    public static final int MSR_QUERY_PROPS__MSR_QUERY_NAME = 4;
    public static final int MSR_QUERY_PROPS__MSR_QUERY_ARGS = 5;
    public static final int MSR_QUERY_PROPS__COMMENT = 6;
    public static final int MSR_QUERY_PROPS_FEATURE_COUNT = 7;
    public static final int MSR_QUERY_RESULT_TOPIC1 = 4;
    public static final int MSR_QUERY_RESULT_TOPIC1__GCHECKSUM = 0;
    public static final int MSR_QUERY_RESULT_TOPIC1__GTIMESTAMP = 1;
    public static final int MSR_QUERY_RESULT_TOPIC1__CHECKSUM = 2;
    public static final int MSR_QUERY_RESULT_TOPIC1__TIMESTAMP = 3;
    public static final int MSR_QUERY_RESULT_TOPIC1__MSR_QUERY_TOPIC1 = 4;
    public static final int MSR_QUERY_RESULT_TOPIC1__TOPIC1S = 5;
    public static final int MSR_QUERY_RESULT_TOPIC1_FEATURE_COUNT = 6;
    public static final int MSR_QUERY_TOPIC1 = 5;
    public static final int MSR_QUERY_TOPIC1__GCHECKSUM = 0;
    public static final int MSR_QUERY_TOPIC1__GTIMESTAMP = 1;
    public static final int MSR_QUERY_TOPIC1__CHECKSUM = 2;
    public static final int MSR_QUERY_TOPIC1__TIMESTAMP = 3;
    public static final int MSR_QUERY_TOPIC1__SI = 4;
    public static final int MSR_QUERY_TOPIC1__VIEW = 5;
    public static final int MSR_QUERY_TOPIC1__BREAK = 6;
    public static final int MSR_QUERY_TOPIC1__KEEP_WITH_PREVIOUS = 7;
    public static final int MSR_QUERY_TOPIC1__TOPIC_OR_MSR_QUERY = 8;
    public static final int MSR_QUERY_TOPIC1__MSR_QUERY_PROPS = 9;
    public static final int MSR_QUERY_TOPIC1__MSR_QUERY_RESULT_TOPIC1 = 10;
    public static final int MSR_QUERY_TOPIC1_FEATURE_COUNT = 11;
    public static final int MSR_QUERY_P1 = 6;
    public static final int MSR_QUERY_P1__GCHECKSUM = 0;
    public static final int MSR_QUERY_P1__GTIMESTAMP = 1;
    public static final int MSR_QUERY_P1__CHECKSUM = 2;
    public static final int MSR_QUERY_P1__TIMESTAMP = 3;
    public static final int MSR_QUERY_P1__SI = 4;
    public static final int MSR_QUERY_P1__VIEW = 5;
    public static final int MSR_QUERY_P1__BREAK = 6;
    public static final int MSR_QUERY_P1__KEEP_WITH_PREVIOUS = 7;
    public static final int MSR_QUERY_P1__TOPIC_CONTENT_OR_MSR_QUERY = 8;
    public static final int MSR_QUERY_P1__MSR_QUERY_PROPS = 9;
    public static final int MSR_QUERY_P1__MSR_QUERY_RESULT_P1 = 10;
    public static final int MSR_QUERY_P1_FEATURE_COUNT = 11;

    public EClass getMsrQueryArg();

    public EReference getMsrQueryArg_MsrQueryProps();

    public EAttribute getMsrQueryArg_Arg();

    public EAttribute getMsrQueryArg_Si();

    public EClass getMsrQueryChapter();

    public EReference getMsrQueryChapter_ChapterOrMsrQuery();

    public EReference getMsrQueryChapter_MsrQueryProps();

    public EReference getMsrQueryChapter_MsrQueryResultChapter();

    public EClass getMsrQueryResultChapter();

    public EReference getMsrQueryResultChapter_MsrQueryChapter();

    public EReference getMsrQueryResultChapter_Chapters();

    public EClass getMsrQueryProps();

    public EAttribute getMsrQueryProps_MsrQueryName();

    public EReference getMsrQueryProps_MsrQueryArgs();

    public EAttribute getMsrQueryProps_Comment();

    public EClass getMsrQueryResultTopic1();

    public EReference getMsrQueryResultTopic1_MsrQueryTopic1();

    public EReference getMsrQueryResultTopic1_Topic1s();

    public EClass getMsrQueryTopic1();

    public EReference getMsrQueryTopic1_TopicOrMsrQuery();

    public EReference getMsrQueryTopic1_MsrQueryProps();

    public EReference getMsrQueryTopic1_MsrQueryResultTopic1();

    public EClass getMsrQueryP1();

    public EReference getMsrQueryP1_TopicContentOrMsrQuery();

    public EReference getMsrQueryP1_MsrQueryProps();

    public EReference getMsrQueryP1_MsrQueryResultP1();

    public MsrqueryFactory getMsrqueryFactory();

    public static interface Literals {
        public static final EClass MSR_QUERY_ARG = eINSTANCE.getMsrQueryArg();
        public static final EReference MSR_QUERY_ARG__MSR_QUERY_PROPS = eINSTANCE.getMsrQueryArg_MsrQueryProps();
        public static final EAttribute MSR_QUERY_ARG__ARG = eINSTANCE.getMsrQueryArg_Arg();
        public static final EAttribute MSR_QUERY_ARG__SI = eINSTANCE.getMsrQueryArg_Si();
        public static final EClass MSR_QUERY_CHAPTER = eINSTANCE.getMsrQueryChapter();
        public static final EReference MSR_QUERY_CHAPTER__CHAPTER_OR_MSR_QUERY = eINSTANCE.getMsrQueryChapter_ChapterOrMsrQuery();
        public static final EReference MSR_QUERY_CHAPTER__MSR_QUERY_PROPS = eINSTANCE.getMsrQueryChapter_MsrQueryProps();
        public static final EReference MSR_QUERY_CHAPTER__MSR_QUERY_RESULT_CHAPTER = eINSTANCE.getMsrQueryChapter_MsrQueryResultChapter();
        public static final EClass MSR_QUERY_RESULT_CHAPTER = eINSTANCE.getMsrQueryResultChapter();
        public static final EReference MSR_QUERY_RESULT_CHAPTER__MSR_QUERY_CHAPTER = eINSTANCE.getMsrQueryResultChapter_MsrQueryChapter();
        public static final EReference MSR_QUERY_RESULT_CHAPTER__CHAPTERS = eINSTANCE.getMsrQueryResultChapter_Chapters();
        public static final EClass MSR_QUERY_PROPS = eINSTANCE.getMsrQueryProps();
        public static final EAttribute MSR_QUERY_PROPS__MSR_QUERY_NAME = eINSTANCE.getMsrQueryProps_MsrQueryName();
        public static final EReference MSR_QUERY_PROPS__MSR_QUERY_ARGS = eINSTANCE.getMsrQueryProps_MsrQueryArgs();
        public static final EAttribute MSR_QUERY_PROPS__COMMENT = eINSTANCE.getMsrQueryProps_Comment();
        public static final EClass MSR_QUERY_RESULT_TOPIC1 = eINSTANCE.getMsrQueryResultTopic1();
        public static final EReference MSR_QUERY_RESULT_TOPIC1__MSR_QUERY_TOPIC1 = eINSTANCE.getMsrQueryResultTopic1_MsrQueryTopic1();
        public static final EReference MSR_QUERY_RESULT_TOPIC1__TOPIC1S = eINSTANCE.getMsrQueryResultTopic1_Topic1s();
        public static final EClass MSR_QUERY_TOPIC1 = eINSTANCE.getMsrQueryTopic1();
        public static final EReference MSR_QUERY_TOPIC1__TOPIC_OR_MSR_QUERY = eINSTANCE.getMsrQueryTopic1_TopicOrMsrQuery();
        public static final EReference MSR_QUERY_TOPIC1__MSR_QUERY_PROPS = eINSTANCE.getMsrQueryTopic1_MsrQueryProps();
        public static final EReference MSR_QUERY_TOPIC1__MSR_QUERY_RESULT_TOPIC1 = eINSTANCE.getMsrQueryTopic1_MsrQueryResultTopic1();
        public static final EClass MSR_QUERY_P1 = eINSTANCE.getMsrQueryP1();
        public static final EReference MSR_QUERY_P1__TOPIC_CONTENT_OR_MSR_QUERY = eINSTANCE.getMsrQueryP1_TopicContentOrMsrQuery();
        public static final EReference MSR_QUERY_P1__MSR_QUERY_PROPS = eINSTANCE.getMsrQueryP1_MsrQueryProps();
        public static final EReference MSR_QUERY_P1__MSR_QUERY_RESULT_P1 = eINSTANCE.getMsrQueryP1_MsrQueryResultP1();
    }
}

