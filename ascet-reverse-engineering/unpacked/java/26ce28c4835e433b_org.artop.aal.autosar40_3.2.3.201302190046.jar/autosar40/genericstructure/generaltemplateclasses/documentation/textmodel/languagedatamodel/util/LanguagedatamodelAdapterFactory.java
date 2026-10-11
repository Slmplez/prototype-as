/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguageSpecific;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.LanguagedatamodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.util.LanguagedatamodelSwitch;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GLParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class LanguagedatamodelAdapterFactory
extends AdapterFactoryImpl {
    protected static LanguagedatamodelPackage modelPackage;
    protected LanguagedatamodelSwitch<Adapter> modelSwitch = new LanguagedatamodelSwitch<Adapter>(){

        @Override
        public Adapter caseLLongName(LLongName object) {
            return LanguagedatamodelAdapterFactory.this.createLLongNameAdapter();
        }

        @Override
        public Adapter caseLanguageSpecific(LanguageSpecific object) {
            return LanguagedatamodelAdapterFactory.this.createLanguageSpecificAdapter();
        }

        @Override
        public Adapter caseLOverviewParagraph(LOverviewParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createLOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseLParagraph(LParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createLParagraphAdapter();
        }

        @Override
        public Adapter caseLPlainText(LPlainText object) {
            return LanguagedatamodelAdapterFactory.this.createLPlainTextAdapter();
        }

        @Override
        public Adapter caseLVerbatim(LVerbatim object) {
            return LanguagedatamodelAdapterFactory.this.createLVerbatimAdapter();
        }

        @Override
        public Adapter caseWhitespaceControlled(WhitespaceControlled object) {
            return LanguagedatamodelAdapterFactory.this.createWhitespaceControlledAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return LanguagedatamodelAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return LanguagedatamodelAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseMixedContentForLongName(MixedContentForLongName object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContentForLongNameAdapter();
        }

        @Override
        public Adapter caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGMixedContentForOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContentForOverviewParagraph(MixedContentForOverviewParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContentForOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseGLOverviewParagraph(GLOverviewParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGLOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseGMixedContentForParagraph(GMixedContentForParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGMixedContentForParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContentForParagraph(MixedContentForParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContentForParagraphAdapter();
        }

        @Override
        public Adapter caseGLParagraph(GLParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGLParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContentForPlainText(MixedContentForPlainText object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContentForPlainTextAdapter();
        }

        @Override
        public Adapter caseMixedContentForVerbatim(MixedContentForVerbatim object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContentForVerbatimAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return LanguagedatamodelAdapterFactory.this.createEObjectAdapter();
        }
    };

    public LanguagedatamodelAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = LanguagedatamodelPackage.eINSTANCE;
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

    public Adapter createLLongNameAdapter() {
        return null;
    }

    public Adapter createLanguageSpecificAdapter() {
        return null;
    }

    public Adapter createLOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createLParagraphAdapter() {
        return null;
    }

    public Adapter createLPlainTextAdapter() {
        return null;
    }

    public Adapter createLVerbatimAdapter() {
        return null;
    }

    public Adapter createWhitespaceControlledAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createMixedContentForLongNameAdapter() {
        return null;
    }

    public Adapter createGMixedContentForOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContentForOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createGLOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createGMixedContentForParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContentForParagraphAdapter() {
        return null;
    }

    public Adapter createGLParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContentForPlainTextAdapter() {
        return null;
    }

    public Adapter createMixedContentForVerbatimAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

