/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters;

import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.PredefinedChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Topic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContentOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChaptersFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface ChaptersFactory
extends EFactory {
    public static final ChaptersFactory eINSTANCE = ChaptersFactoryImpl.init();

    public Chapter createChapter();

    public ChapterModel createChapterModel();

    public TopicOrMsrQuery createTopicOrMsrQuery();

    public Topic1 createTopic1();

    public TopicContentOrMsrQuery createTopicContentOrMsrQuery();

    public TopicContent createTopicContent();

    public PredefinedChapter createPredefinedChapter();

    public ChapterOrMsrQuery createChapterOrMsrQuery();

    public ChapterContent createChapterContent();

    public ChaptersPackage getChaptersPackage();
}

