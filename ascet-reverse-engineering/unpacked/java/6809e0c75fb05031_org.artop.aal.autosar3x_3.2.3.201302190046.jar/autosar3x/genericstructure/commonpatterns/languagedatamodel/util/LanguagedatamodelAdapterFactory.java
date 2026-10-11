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
package autosar3x.genericstructure.commonpatterns.languagedatamodel.util;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent10;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent2;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent4;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.MixedContent5;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L1;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L10;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L2;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L3;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L4;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.L5;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.LanguagedatamodelPackage;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel1;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel10;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel2;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel3;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel4;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlDataModel5;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.MlGraphic;
import autosar3x.genericstructure.commonpatterns.languagedatamodel.util.LanguagedatamodelSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
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
        public Adapter caseL1(L1 object) {
            return LanguagedatamodelAdapterFactory.this.createL1Adapter();
        }

        @Override
        public Adapter caseL10(L10 object) {
            return LanguagedatamodelAdapterFactory.this.createL10Adapter();
        }

        @Override
        public Adapter caseL2(L2 object) {
            return LanguagedatamodelAdapterFactory.this.createL2Adapter();
        }

        @Override
        public Adapter caseL3(L3 object) {
            return LanguagedatamodelAdapterFactory.this.createL3Adapter();
        }

        @Override
        public Adapter caseL4(L4 object) {
            return LanguagedatamodelAdapterFactory.this.createL4Adapter();
        }

        @Override
        public Adapter caseL5(L5 object) {
            return LanguagedatamodelAdapterFactory.this.createL5Adapter();
        }

        @Override
        public Adapter caseMlDataModel10(MlDataModel10 object) {
            return LanguagedatamodelAdapterFactory.this.createMlDataModel10Adapter();
        }

        @Override
        public Adapter caseMlDataModel2(MlDataModel2 object) {
            return LanguagedatamodelAdapterFactory.this.createMlDataModel2Adapter();
        }

        @Override
        public Adapter caseMlDataModel3(MlDataModel3 object) {
            return LanguagedatamodelAdapterFactory.this.createMlDataModel3Adapter();
        }

        @Override
        public Adapter caseMlDataModel4(MlDataModel4 object) {
            return LanguagedatamodelAdapterFactory.this.createMlDataModel4Adapter();
        }

        @Override
        public Adapter caseMlDataModel5(MlDataModel5 object) {
            return LanguagedatamodelAdapterFactory.this.createMlDataModel5Adapter();
        }

        @Override
        public Adapter caseMlGraphic(MlGraphic object) {
            return LanguagedatamodelAdapterFactory.this.createMlGraphicAdapter();
        }

        @Override
        public Adapter caseMlDataModel1(MlDataModel1 object) {
            return LanguagedatamodelAdapterFactory.this.createMlDataModel1Adapter();
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
        public Adapter caseGMixedContentForParagraph(GMixedContentForParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGMixedContentForParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContent1(MixedContent1 object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContent1Adapter();
        }

        @Override
        public Adapter caseGLParagraph(GLParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGLParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContent10(MixedContent10 object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContent10Adapter();
        }

        @Override
        public Adapter caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGMixedContentForOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContent2(MixedContent2 object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContent2Adapter();
        }

        @Override
        public Adapter caseGLOverviewParagraph(GLOverviewParagraph object) {
            return LanguagedatamodelAdapterFactory.this.createGLOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContent3(MixedContent3 object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContent3Adapter();
        }

        @Override
        public Adapter caseMixedContent4(MixedContent4 object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContent4Adapter();
        }

        @Override
        public Adapter caseMixedContent5(MixedContent5 object) {
            return LanguagedatamodelAdapterFactory.this.createMixedContent5Adapter();
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

    public Adapter createL1Adapter() {
        return null;
    }

    public Adapter createL10Adapter() {
        return null;
    }

    public Adapter createL2Adapter() {
        return null;
    }

    public Adapter createL3Adapter() {
        return null;
    }

    public Adapter createL4Adapter() {
        return null;
    }

    public Adapter createL5Adapter() {
        return null;
    }

    public Adapter createMlDataModel10Adapter() {
        return null;
    }

    public Adapter createMlDataModel2Adapter() {
        return null;
    }

    public Adapter createMlDataModel3Adapter() {
        return null;
    }

    public Adapter createMlDataModel4Adapter() {
        return null;
    }

    public Adapter createMlDataModel5Adapter() {
        return null;
    }

    public Adapter createMlGraphicAdapter() {
        return null;
    }

    public Adapter createMlDataModel1Adapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGMixedContentForParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContent1Adapter() {
        return null;
    }

    public Adapter createGLParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContent10Adapter() {
        return null;
    }

    public Adapter createGMixedContentForOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContent2Adapter() {
        return null;
    }

    public Adapter createGLOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContent3Adapter() {
        return null;
    }

    public Adapter createMixedContent4Adapter() {
        return null;
    }

    public Adapter createMixedContent5Adapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

