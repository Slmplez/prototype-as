/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
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
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.util.ChaptersSwitch;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ChaptersAdapterFactory
extends AdapterFactoryImpl {
    protected static ChaptersPackage modelPackage;
    protected ChaptersSwitch<Adapter> modelSwitch = new ChaptersSwitch<Adapter>(){

        @Override
        public Adapter caseChapter(Chapter object) {
            return ChaptersAdapterFactory.this.createChapterAdapter();
        }

        @Override
        public Adapter caseChapterModel(ChapterModel object) {
            return ChaptersAdapterFactory.this.createChapterModelAdapter();
        }

        @Override
        public Adapter caseTopicOrMsrQuery(TopicOrMsrQuery object) {
            return ChaptersAdapterFactory.this.createTopicOrMsrQueryAdapter();
        }

        @Override
        public Adapter caseTopic1(Topic1 object) {
            return ChaptersAdapterFactory.this.createTopic1Adapter();
        }

        @Override
        public Adapter caseTopicContentOrMsrQuery(TopicContentOrMsrQuery object) {
            return ChaptersAdapterFactory.this.createTopicContentOrMsrQueryAdapter();
        }

        @Override
        public Adapter caseTopicContent(TopicContent object) {
            return ChaptersAdapterFactory.this.createTopicContentAdapter();
        }

        @Override
        public Adapter casePredefinedChapter(PredefinedChapter object) {
            return ChaptersAdapterFactory.this.createPredefinedChapterAdapter();
        }

        @Override
        public Adapter caseChapterOrMsrQuery(ChapterOrMsrQuery object) {
            return ChaptersAdapterFactory.this.createChapterOrMsrQueryAdapter();
        }

        @Override
        public Adapter caseChapterContent(ChapterContent object) {
            return ChaptersAdapterFactory.this.createChapterContentAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ChaptersAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ChaptersAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ChaptersAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ChaptersAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ChaptersAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ChaptersAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ChaptersAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return ChaptersAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return ChaptersAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ChaptersAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ChaptersAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ChaptersPackage.eINSTANCE;
        }
    }

    public boolean isFactoryForType(Object object) {
        if (object == modelPackage) {
            return true;
        }
        if (object instanceof EObject) {
            return ((EObject)object).eClass().getEPackage() == modelPackage;
        }
        return false;
    }

    public Adapter createAdapter(Notifier target) {
        return this.modelSwitch.doSwitch((EObject)target);
    }

    public Adapter createChapterAdapter() {
        return null;
    }

    public Adapter createChapterModelAdapter() {
        return null;
    }

    public Adapter createTopicOrMsrQueryAdapter() {
        return null;
    }

    public Adapter createTopic1Adapter() {
        return null;
    }

    public Adapter createTopicContentOrMsrQueryAdapter() {
        return null;
    }

    public Adapter createTopicContentAdapter() {
        return null;
    }

    public Adapter createPredefinedChapterAdapter() {
        return null;
    }

    public Adapter createChapterOrMsrQueryAdapter() {
        return null;
    }

    public Adapter createChapterContentAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createDocumentViewSelectableAdapter() {
        return null;
    }

    public Adapter createPaginateableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

