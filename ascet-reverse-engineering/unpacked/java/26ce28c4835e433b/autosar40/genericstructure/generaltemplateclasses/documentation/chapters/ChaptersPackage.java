/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EReference
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters;

import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChaptersPackageImpl;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

public interface ChaptersPackage
extends EPackage {
    public static final String eNAME = "chapters";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/c";
    public static final String eNS_PREFIX = "";
    public static final ChaptersPackage eINSTANCE = ChaptersPackageImpl.init();
    public static final int CHAPTER = 0;
    public static final int CHAPTER__GCHECKSUM = 0;
    public static final int CHAPTER__GTIMESTAMP = 1;
    public static final int CHAPTER__CHECKSUM = 2;
    public static final int CHAPTER__TIMESTAMP = 3;
    public static final int CHAPTER__GSHORT_NAME = 4;
    public static final int CHAPTER__SHORT_NAME = 5;
    public static final int CHAPTER__LONG_NAME = 6;
    public static final int CHAPTER__GUUID = 7;
    public static final int CHAPTER__GCATEGORY = 8;
    public static final int CHAPTER__GDESC = 9;
    public static final int CHAPTER__DESC = 10;
    public static final int CHAPTER__CATEGORY = 11;
    public static final int CHAPTER__ADMIN_DATA = 12;
    public static final int CHAPTER__INTRODUCTION = 13;
    public static final int CHAPTER__ANNOTATIONS = 14;
    public static final int CHAPTER__UUID = 15;
    public static final int CHAPTER__ALL_EXTENSIONS = 16;
    public static final int CHAPTER__CONTAINED_EXTENSIONS = 17;
    public static final int CHAPTER__SI = 18;
    public static final int CHAPTER__VIEW = 19;
    public static final int CHAPTER__BREAK = 20;
    public static final int CHAPTER__KEEP_WITH_PREVIOUS = 21;
    public static final int CHAPTER__CHAPTER_MODEL = 22;
    public static final int CHAPTER__HELP_ENTRY = 23;
    public static final int CHAPTER__VARIATION_POINT = 24;
    public static final int CHAPTER_FEATURE_COUNT = 25;
    public static final int CHAPTER_MODEL = 1;
    public static final int CHAPTER_MODEL__GCHECKSUM = 0;
    public static final int CHAPTER_MODEL__GTIMESTAMP = 1;
    public static final int CHAPTER_MODEL__CHECKSUM = 2;
    public static final int CHAPTER_MODEL__TIMESTAMP = 3;
    public static final int CHAPTER_MODEL__CHAPTER_CONTENT = 4;
    public static final int CHAPTER_MODEL__TOPIC1 = 5;
    public static final int CHAPTER_MODEL__CHAPTER = 6;
    public static final int CHAPTER_MODEL_FEATURE_COUNT = 7;
    public static final int TOPIC_OR_MSR_QUERY = 2;
    public static final int TOPIC_OR_MSR_QUERY__GCHECKSUM = 0;
    public static final int TOPIC_OR_MSR_QUERY__GTIMESTAMP = 1;
    public static final int TOPIC_OR_MSR_QUERY__CHECKSUM = 2;
    public static final int TOPIC_OR_MSR_QUERY__TIMESTAMP = 3;
    public static final int TOPIC_OR_MSR_QUERY__CHAPTER_MODEL = 4;
    public static final int TOPIC_OR_MSR_QUERY__TOPIC1S = 5;
    public static final int TOPIC_OR_MSR_QUERY__MSR_QUERY_TOPIC1S = 6;
    public static final int TOPIC_OR_MSR_QUERY_FEATURE_COUNT = 7;
    public static final int TOPIC1 = 3;
    public static final int TOPIC1__GCHECKSUM = 0;
    public static final int TOPIC1__GTIMESTAMP = 1;
    public static final int TOPIC1__CHECKSUM = 2;
    public static final int TOPIC1__TIMESTAMP = 3;
    public static final int TOPIC1__GSHORT_NAME = 4;
    public static final int TOPIC1__SHORT_NAME = 5;
    public static final int TOPIC1__LONG_NAME = 6;
    public static final int TOPIC1__GUUID = 7;
    public static final int TOPIC1__GCATEGORY = 8;
    public static final int TOPIC1__GDESC = 9;
    public static final int TOPIC1__DESC = 10;
    public static final int TOPIC1__CATEGORY = 11;
    public static final int TOPIC1__ADMIN_DATA = 12;
    public static final int TOPIC1__INTRODUCTION = 13;
    public static final int TOPIC1__ANNOTATIONS = 14;
    public static final int TOPIC1__UUID = 15;
    public static final int TOPIC1__ALL_EXTENSIONS = 16;
    public static final int TOPIC1__CONTAINED_EXTENSIONS = 17;
    public static final int TOPIC1__SI = 18;
    public static final int TOPIC1__VIEW = 19;
    public static final int TOPIC1__BREAK = 20;
    public static final int TOPIC1__KEEP_WITH_PREVIOUS = 21;
    public static final int TOPIC1__HELP_ENTRY = 22;
    public static final int TOPIC1__TOPIC_CONTENT = 23;
    public static final int TOPIC1__VARIATION_POINT = 24;
    public static final int TOPIC1_FEATURE_COUNT = 25;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY = 4;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY__GCHECKSUM = 0;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY__GTIMESTAMP = 1;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY__CHECKSUM = 2;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY__TIMESTAMP = 3;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY__MSR_QUERY_P1S = 4;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY__TOPIC_CONTENTS = 5;
    public static final int TOPIC_CONTENT_OR_MSR_QUERY_FEATURE_COUNT = 6;
    public static final int TOPIC_CONTENT = 5;
    public static final int TOPIC_CONTENT__GCHECKSUM = 0;
    public static final int TOPIC_CONTENT__GTIMESTAMP = 1;
    public static final int TOPIC_CONTENT__CHECKSUM = 2;
    public static final int TOPIC_CONTENT__TIMESTAMP = 3;
    public static final int TOPIC_CONTENT__BLOCK_LEVEL_CONTENTS = 4;
    public static final int TOPIC_CONTENT__TABLES = 5;
    public static final int TOPIC_CONTENT_FEATURE_COUNT = 6;
    public static final int PREDEFINED_CHAPTER = 6;
    public static final int PREDEFINED_CHAPTER__GCHECKSUM = 0;
    public static final int PREDEFINED_CHAPTER__GTIMESTAMP = 1;
    public static final int PREDEFINED_CHAPTER__CHECKSUM = 2;
    public static final int PREDEFINED_CHAPTER__TIMESTAMP = 3;
    public static final int PREDEFINED_CHAPTER__DOCUMENTATION = 4;
    public static final int PREDEFINED_CHAPTER__CHAPTER_MODEL = 5;
    public static final int PREDEFINED_CHAPTER_FEATURE_COUNT = 6;
    public static final int CHAPTER_OR_MSR_QUERY = 7;
    public static final int CHAPTER_OR_MSR_QUERY__GCHECKSUM = 0;
    public static final int CHAPTER_OR_MSR_QUERY__GTIMESTAMP = 1;
    public static final int CHAPTER_OR_MSR_QUERY__CHECKSUM = 2;
    public static final int CHAPTER_OR_MSR_QUERY__TIMESTAMP = 3;
    public static final int CHAPTER_OR_MSR_QUERY__CHAPTER_MODEL = 4;
    public static final int CHAPTER_OR_MSR_QUERY__CHAPTERS = 5;
    public static final int CHAPTER_OR_MSR_QUERY__MSR_QUERY_CHAPTERS = 6;
    public static final int CHAPTER_OR_MSR_QUERY_FEATURE_COUNT = 7;
    public static final int CHAPTER_CONTENT = 8;
    public static final int CHAPTER_CONTENT__GCHECKSUM = 0;
    public static final int CHAPTER_CONTENT__GTIMESTAMP = 1;
    public static final int CHAPTER_CONTENT__CHECKSUM = 2;
    public static final int CHAPTER_CONTENT__TIMESTAMP = 3;
    public static final int CHAPTER_CONTENT__CHAPTER_MODEL = 4;
    public static final int CHAPTER_CONTENT__TOPIC_CONTENTS = 5;
    public static final int CHAPTER_CONTENT__PRMS = 6;
    public static final int CHAPTER_CONTENT_FEATURE_COUNT = 7;

    public EClass getChapter();

    public EReference getChapter_ChapterModel();

    public EAttribute getChapter_HelpEntry();

    public EReference getChapter_VariationPoint();

    public EClass getChapterModel();

    public EReference getChapterModel_ChapterContent();

    public EReference getChapterModel_Topic1();

    public EReference getChapterModel_Chapter();

    public EClass getTopicOrMsrQuery();

    public EReference getTopicOrMsrQuery_ChapterModel();

    public EReference getTopicOrMsrQuery_Topic1s();

    public EReference getTopicOrMsrQuery_MsrQueryTopic1s();

    public EClass getTopic1();

    public EAttribute getTopic1_HelpEntry();

    public EReference getTopic1_TopicContent();

    public EReference getTopic1_VariationPoint();

    public EClass getTopicContentOrMsrQuery();

    public EReference getTopicContentOrMsrQuery_MsrQueryP1s();

    public EReference getTopicContentOrMsrQuery_TopicContents();

    public EClass getTopicContent();

    public EReference getTopicContent_BlockLevelContents();

    public EReference getTopicContent_Tables();

    public EClass getPredefinedChapter();

    public EReference getPredefinedChapter_Documentation();

    public EReference getPredefinedChapter_ChapterModel();

    public EClass getChapterOrMsrQuery();

    public EReference getChapterOrMsrQuery_ChapterModel();

    public EReference getChapterOrMsrQuery_Chapters();

    public EReference getChapterOrMsrQuery_MsrQueryChapters();

    public EClass getChapterContent();

    public EReference getChapterContent_ChapterModel();

    public EReference getChapterContent_TopicContents();

    public EReference getChapterContent_Prms();

    public ChaptersFactory getChaptersFactory();

    public static interface Literals {
        public static final EClass CHAPTER = eINSTANCE.getChapter();
        public static final EReference CHAPTER__CHAPTER_MODEL = eINSTANCE.getChapter_ChapterModel();
        public static final EAttribute CHAPTER__HELP_ENTRY = eINSTANCE.getChapter_HelpEntry();
        public static final EReference CHAPTER__VARIATION_POINT = eINSTANCE.getChapter_VariationPoint();
        public static final EClass CHAPTER_MODEL = eINSTANCE.getChapterModel();
        public static final EReference CHAPTER_MODEL__CHAPTER_CONTENT = eINSTANCE.getChapterModel_ChapterContent();
        public static final EReference CHAPTER_MODEL__TOPIC1 = eINSTANCE.getChapterModel_Topic1();
        public static final EReference CHAPTER_MODEL__CHAPTER = eINSTANCE.getChapterModel_Chapter();
        public static final EClass TOPIC_OR_MSR_QUERY = eINSTANCE.getTopicOrMsrQuery();
        public static final EReference TOPIC_OR_MSR_QUERY__CHAPTER_MODEL = eINSTANCE.getTopicOrMsrQuery_ChapterModel();
        public static final EReference TOPIC_OR_MSR_QUERY__TOPIC1S = eINSTANCE.getTopicOrMsrQuery_Topic1s();
        public static final EReference TOPIC_OR_MSR_QUERY__MSR_QUERY_TOPIC1S = eINSTANCE.getTopicOrMsrQuery_MsrQueryTopic1s();
        public static final EClass TOPIC1 = eINSTANCE.getTopic1();
        public static final EAttribute TOPIC1__HELP_ENTRY = eINSTANCE.getTopic1_HelpEntry();
        public static final EReference TOPIC1__TOPIC_CONTENT = eINSTANCE.getTopic1_TopicContent();
        public static final EReference TOPIC1__VARIATION_POINT = eINSTANCE.getTopic1_VariationPoint();
        public static final EClass TOPIC_CONTENT_OR_MSR_QUERY = eINSTANCE.getTopicContentOrMsrQuery();
        public static final EReference TOPIC_CONTENT_OR_MSR_QUERY__MSR_QUERY_P1S = eINSTANCE.getTopicContentOrMsrQuery_MsrQueryP1s();
        public static final EReference TOPIC_CONTENT_OR_MSR_QUERY__TOPIC_CONTENTS = eINSTANCE.getTopicContentOrMsrQuery_TopicContents();
        public static final EClass TOPIC_CONTENT = eINSTANCE.getTopicContent();
        public static final EReference TOPIC_CONTENT__BLOCK_LEVEL_CONTENTS = eINSTANCE.getTopicContent_BlockLevelContents();
        public static final EReference TOPIC_CONTENT__TABLES = eINSTANCE.getTopicContent_Tables();
        public static final EClass PREDEFINED_CHAPTER = eINSTANCE.getPredefinedChapter();
        public static final EReference PREDEFINED_CHAPTER__DOCUMENTATION = eINSTANCE.getPredefinedChapter_Documentation();
        public static final EReference PREDEFINED_CHAPTER__CHAPTER_MODEL = eINSTANCE.getPredefinedChapter_ChapterModel();
        public static final EClass CHAPTER_OR_MSR_QUERY = eINSTANCE.getChapterOrMsrQuery();
        public static final EReference CHAPTER_OR_MSR_QUERY__CHAPTER_MODEL = eINSTANCE.getChapterOrMsrQuery_ChapterModel();
        public static final EReference CHAPTER_OR_MSR_QUERY__CHAPTERS = eINSTANCE.getChapterOrMsrQuery_Chapters();
        public static final EReference CHAPTER_OR_MSR_QUERY__MSR_QUERY_CHAPTERS = eINSTANCE.getChapterOrMsrQuery_MsrQueryChapters();
        public static final EClass CHAPTER_CONTENT = eINSTANCE.getChapterContent();
        public static final EReference CHAPTER_CONTENT__CHAPTER_MODEL = eINSTANCE.getChapterContent_ChapterModel();
        public static final EReference CHAPTER_CONTENT__TOPIC_CONTENTS = eINSTANCE.getChapterContent_TopicContents();
        public static final EReference CHAPTER_CONTENT__PRMS = eINSTANCE.getChapterContent_Prms();
    }
}

