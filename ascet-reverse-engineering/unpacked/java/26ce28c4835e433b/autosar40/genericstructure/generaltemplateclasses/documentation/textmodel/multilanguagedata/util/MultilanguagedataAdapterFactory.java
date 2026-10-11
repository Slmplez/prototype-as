/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguagePlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultiLanguageVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguagedataPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.util.MultilanguagedataSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class MultilanguagedataAdapterFactory
extends AdapterFactoryImpl {
    protected static MultilanguagedataPackage modelPackage;
    protected MultilanguagedataSwitch<Adapter> modelSwitch = new MultilanguagedataSwitch<Adapter>(){

        @Override
        public Adapter caseMultilanguageLongName(MultilanguageLongName object) {
            return MultilanguagedataAdapterFactory.this.createMultilanguageLongNameAdapter();
        }

        @Override
        public Adapter caseMultiLanguageOverviewParagraph(MultiLanguageOverviewParagraph object) {
            return MultilanguagedataAdapterFactory.this.createMultiLanguageOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseMultiLanguageParagraph(MultiLanguageParagraph object) {
            return MultilanguagedataAdapterFactory.this.createMultiLanguageParagraphAdapter();
        }

        @Override
        public Adapter caseMultiLanguagePlainText(MultiLanguagePlainText object) {
            return MultilanguagedataAdapterFactory.this.createMultiLanguagePlainTextAdapter();
        }

        @Override
        public Adapter caseMultiLanguageVerbatim(MultiLanguageVerbatim object) {
            return MultilanguagedataAdapterFactory.this.createMultiLanguageVerbatimAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return MultilanguagedataAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return MultilanguagedataAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph object) {
            return MultilanguagedataAdapterFactory.this.createGMultiLanguageOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return MultilanguagedataAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return MultilanguagedataAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter caseGMultiLanguageParagraph(GMultiLanguageParagraph object) {
            return MultilanguagedataAdapterFactory.this.createGMultiLanguageParagraphAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return MultilanguagedataAdapterFactory.this.createEObjectAdapter();
        }
    };

    public MultilanguagedataAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = MultilanguagedataPackage.eINSTANCE;
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

    public Adapter createMultilanguageLongNameAdapter() {
        return null;
    }

    public Adapter createMultiLanguageOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createMultiLanguageParagraphAdapter() {
        return null;
    }

    public Adapter createMultiLanguagePlainTextAdapter() {
        return null;
    }

    public Adapter createMultiLanguageVerbatimAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGMultiLanguageOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createDocumentViewSelectableAdapter() {
        return null;
    }

    public Adapter createPaginateableAdapter() {
        return null;
    }

    public Adapter createGMultiLanguageParagraphAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

