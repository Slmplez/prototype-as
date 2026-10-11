/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
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
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ChaptersSwitch<T> {
    protected static ChaptersPackage modelPackage;

    public ChaptersSwitch() {
        if (modelPackage == null) {
            modelPackage = ChaptersPackage.eINSTANCE;
        }
    }

    public T doSwitch(EObject theEObject) {
        return this.doSwitch(theEObject.eClass(), theEObject);
    }

    protected T doSwitch(EClass theEClass, EObject theEObject) {
        if (theEClass.eContainer() == modelPackage) {
            return this.doSwitch(theEClass.getClassifierID(), theEObject);
        }
        EList eSuperTypes = theEClass.getESuperTypes();
        return eSuperTypes.isEmpty() ? this.defaultCase(theEObject) : this.doSwitch((EClass)eSuperTypes.get(0), theEObject);
    }

    protected T doSwitch(int classifierID, EObject theEObject) {
        switch (classifierID) {
            case 0: {
                Chapter chapter = (Chapter)theEObject;
                T result = this.caseChapter(chapter);
                if (result == null) {
                    result = this.caseIdentifiable(chapter);
                }
                if (result == null) {
                    result = this.casePaginateable(chapter);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(chapter);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(chapter);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(chapter);
                }
                if (result == null) {
                    result = this.caseReferrable(chapter);
                }
                if (result == null) {
                    result = this.caseARObject(chapter);
                }
                if (result == null) {
                    result = this.caseGReferrable(chapter);
                }
                if (result == null) {
                    result = this.caseGARObject(chapter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 1: {
                ChapterModel chapterModel = (ChapterModel)theEObject;
                T result = this.caseChapterModel(chapterModel);
                if (result == null) {
                    result = this.caseARObject(chapterModel);
                }
                if (result == null) {
                    result = this.caseGARObject(chapterModel);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 2: {
                TopicOrMsrQuery topicOrMsrQuery = (TopicOrMsrQuery)theEObject;
                T result = this.caseTopicOrMsrQuery(topicOrMsrQuery);
                if (result == null) {
                    result = this.caseARObject(topicOrMsrQuery);
                }
                if (result == null) {
                    result = this.caseGARObject(topicOrMsrQuery);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 3: {
                Topic1 topic1 = (Topic1)theEObject;
                T result = this.caseTopic1(topic1);
                if (result == null) {
                    result = this.caseIdentifiable(topic1);
                }
                if (result == null) {
                    result = this.casePaginateable(topic1);
                }
                if (result == null) {
                    result = this.caseMultilanguageReferrable(topic1);
                }
                if (result == null) {
                    result = this.caseGIdentifiable(topic1);
                }
                if (result == null) {
                    result = this.caseDocumentViewSelectable(topic1);
                }
                if (result == null) {
                    result = this.caseReferrable(topic1);
                }
                if (result == null) {
                    result = this.caseARObject(topic1);
                }
                if (result == null) {
                    result = this.caseGReferrable(topic1);
                }
                if (result == null) {
                    result = this.caseGARObject(topic1);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 4: {
                TopicContentOrMsrQuery topicContentOrMsrQuery = (TopicContentOrMsrQuery)theEObject;
                T result = this.caseTopicContentOrMsrQuery(topicContentOrMsrQuery);
                if (result == null) {
                    result = this.caseARObject(topicContentOrMsrQuery);
                }
                if (result == null) {
                    result = this.caseGARObject(topicContentOrMsrQuery);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 5: {
                TopicContent topicContent = (TopicContent)theEObject;
                T result = this.caseTopicContent(topicContent);
                if (result == null) {
                    result = this.caseARObject(topicContent);
                }
                if (result == null) {
                    result = this.caseGARObject(topicContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 6: {
                PredefinedChapter predefinedChapter = (PredefinedChapter)theEObject;
                T result = this.casePredefinedChapter(predefinedChapter);
                if (result == null) {
                    result = this.caseARObject(predefinedChapter);
                }
                if (result == null) {
                    result = this.caseGARObject(predefinedChapter);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 7: {
                ChapterOrMsrQuery chapterOrMsrQuery = (ChapterOrMsrQuery)theEObject;
                T result = this.caseChapterOrMsrQuery(chapterOrMsrQuery);
                if (result == null) {
                    result = this.caseARObject(chapterOrMsrQuery);
                }
                if (result == null) {
                    result = this.caseGARObject(chapterOrMsrQuery);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
            case 8: {
                ChapterContent chapterContent = (ChapterContent)theEObject;
                T result = this.caseChapterContent(chapterContent);
                if (result == null) {
                    result = this.caseARObject(chapterContent);
                }
                if (result == null) {
                    result = this.caseGARObject(chapterContent);
                }
                if (result == null) {
                    result = this.defaultCase(theEObject);
                }
                return result;
            }
        }
        return this.defaultCase(theEObject);
    }

    public T caseChapter(Chapter object) {
        return null;
    }

    public T caseChapterModel(ChapterModel object) {
        return null;
    }

    public T caseTopicOrMsrQuery(TopicOrMsrQuery object) {
        return null;
    }

    public T caseTopic1(Topic1 object) {
        return null;
    }

    public T caseTopicContentOrMsrQuery(TopicContentOrMsrQuery object) {
        return null;
    }

    public T caseTopicContent(TopicContent object) {
        return null;
    }

    public T casePredefinedChapter(PredefinedChapter object) {
        return null;
    }

    public T caseChapterOrMsrQuery(ChapterOrMsrQuery object) {
        return null;
    }

    public T caseChapterContent(ChapterContent object) {
        return null;
    }

    public T caseGARObject(GARObject object) {
        return null;
    }

    public T caseARObject(ARObject object) {
        return null;
    }

    public T caseGReferrable(GReferrable object) {
        return null;
    }

    public T caseReferrable(Referrable object) {
        return null;
    }

    public T caseMultilanguageReferrable(MultilanguageReferrable object) {
        return null;
    }

    public T caseGIdentifiable(GIdentifiable object) {
        return null;
    }

    public T caseIdentifiable(Identifiable object) {
        return null;
    }

    public T caseDocumentViewSelectable(DocumentViewSelectable object) {
        return null;
    }

    public T casePaginateable(Paginateable object) {
        return null;
    }

    public T defaultCase(EObject object) {
        return null;
    }
}

