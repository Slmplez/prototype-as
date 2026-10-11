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
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.PredefinedChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Topic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContentOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChapterContentImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChapterImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChapterModelImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.ChapterOrMsrQueryImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.PredefinedChapterImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.Topic1Impl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.TopicContentImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.TopicContentOrMsrQueryImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl.TopicOrMsrQueryImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ChaptersFactoryImpl
extends EFactoryImpl
implements ChaptersFactory {
    public static ChaptersFactory init() {
        try {
            ChaptersFactory theChaptersFactory = (ChaptersFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/c");
            if (theChaptersFactory != null) {
                return theChaptersFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ChaptersFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createChapter();
            }
            case 1: {
                return this.createChapterModel();
            }
            case 2: {
                return this.createTopicOrMsrQuery();
            }
            case 3: {
                return this.createTopic1();
            }
            case 4: {
                return this.createTopicContentOrMsrQuery();
            }
            case 5: {
                return this.createTopicContent();
            }
            case 6: {
                return this.createPredefinedChapter();
            }
            case 7: {
                return this.createChapterOrMsrQuery();
            }
            case 8: {
                return this.createChapterContent();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Chapter createChapter() {
        ChapterImpl chapter = new ChapterImpl();
        return chapter;
    }

    public ChapterModel createChapterModel() {
        ChapterModelImpl chapterModel = new ChapterModelImpl();
        return chapterModel;
    }

    public TopicOrMsrQuery createTopicOrMsrQuery() {
        TopicOrMsrQueryImpl topicOrMsrQuery = new TopicOrMsrQueryImpl();
        return topicOrMsrQuery;
    }

    public Topic1 createTopic1() {
        Topic1Impl topic1 = new Topic1Impl();
        return topic1;
    }

    public TopicContentOrMsrQuery createTopicContentOrMsrQuery() {
        TopicContentOrMsrQueryImpl topicContentOrMsrQuery = new TopicContentOrMsrQueryImpl();
        return topicContentOrMsrQuery;
    }

    public TopicContent createTopicContent() {
        TopicContentImpl topicContent = new TopicContentImpl();
        return topicContent;
    }

    public PredefinedChapter createPredefinedChapter() {
        PredefinedChapterImpl predefinedChapter = new PredefinedChapterImpl();
        return predefinedChapter;
    }

    public ChapterOrMsrQuery createChapterOrMsrQuery() {
        ChapterOrMsrQueryImpl chapterOrMsrQuery = new ChapterOrMsrQueryImpl();
        return chapterOrMsrQuery;
    }

    public ChapterContent createChapterContent() {
        ChapterContentImpl chapterContent = new ChapterContentImpl();
        return chapterContent;
    }

    public ChaptersPackage getChaptersPackage() {
        return (ChaptersPackage)this.getEPackage();
    }

    @Deprecated
    public static ChaptersPackage getPackage() {
        return ChaptersPackage.eINSTANCE;
    }
}

