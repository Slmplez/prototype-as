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
package autosar21.genericstructure.commonpatterns.multilanguagedata.util;

import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel1;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel10;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel2;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel3;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel4;
import autosar21.genericstructure.commonpatterns.languagedatamodel.MlDataModel5;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData1;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData10;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData2;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData3;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData3p;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData4;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MlData5;
import autosar21.genericstructure.commonpatterns.multilanguagedata.MultilanguagedataPackage;
import autosar21.genericstructure.commonpatterns.multilanguagedata.util.MultilanguagedataSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
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
        public Adapter caseMlData1(MlData1 object) {
            return MultilanguagedataAdapterFactory.this.createMlData1Adapter();
        }

        @Override
        public Adapter caseMlData10(MlData10 object) {
            return MultilanguagedataAdapterFactory.this.createMlData10Adapter();
        }

        @Override
        public Adapter caseMlData2(MlData2 object) {
            return MultilanguagedataAdapterFactory.this.createMlData2Adapter();
        }

        @Override
        public Adapter caseMlData3(MlData3 object) {
            return MultilanguagedataAdapterFactory.this.createMlData3Adapter();
        }

        @Override
        public Adapter caseMlData3p(MlData3p object) {
            return MultilanguagedataAdapterFactory.this.createMlData3pAdapter();
        }

        @Override
        public Adapter caseMlData4(MlData4 object) {
            return MultilanguagedataAdapterFactory.this.createMlData4Adapter();
        }

        @Override
        public Adapter caseMlData5(MlData5 object) {
            return MultilanguagedataAdapterFactory.this.createMlData5Adapter();
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
        public Adapter caseMlDataModel1(MlDataModel1 object) {
            return MultilanguagedataAdapterFactory.this.createMlDataModel1Adapter();
        }

        @Override
        public Adapter caseGMultiLanguageParagraph(GMultiLanguageParagraph object) {
            return MultilanguagedataAdapterFactory.this.createGMultiLanguageParagraphAdapter();
        }

        @Override
        public Adapter caseMlDataModel10(MlDataModel10 object) {
            return MultilanguagedataAdapterFactory.this.createMlDataModel10Adapter();
        }

        @Override
        public Adapter caseMlDataModel2(MlDataModel2 object) {
            return MultilanguagedataAdapterFactory.this.createMlDataModel2Adapter();
        }

        @Override
        public Adapter caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph object) {
            return MultilanguagedataAdapterFactory.this.createGMultiLanguageOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseMlDataModel3(MlDataModel3 object) {
            return MultilanguagedataAdapterFactory.this.createMlDataModel3Adapter();
        }

        @Override
        public Adapter caseMlDataModel4(MlDataModel4 object) {
            return MultilanguagedataAdapterFactory.this.createMlDataModel4Adapter();
        }

        @Override
        public Adapter caseMlDataModel5(MlDataModel5 object) {
            return MultilanguagedataAdapterFactory.this.createMlDataModel5Adapter();
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

    public Adapter createMlData1Adapter() {
        return null;
    }

    public Adapter createMlData10Adapter() {
        return null;
    }

    public Adapter createMlData2Adapter() {
        return null;
    }

    public Adapter createMlData3Adapter() {
        return null;
    }

    public Adapter createMlData3pAdapter() {
        return null;
    }

    public Adapter createMlData4Adapter() {
        return null;
    }

    public Adapter createMlData5Adapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createMlDataModel1Adapter() {
        return null;
    }

    public Adapter createGMultiLanguageParagraphAdapter() {
        return null;
    }

    public Adapter createMlDataModel10Adapter() {
        return null;
    }

    public Adapter createMlDataModel2Adapter() {
        return null;
    }

    public Adapter createGMultiLanguageOverviewParagraphAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

