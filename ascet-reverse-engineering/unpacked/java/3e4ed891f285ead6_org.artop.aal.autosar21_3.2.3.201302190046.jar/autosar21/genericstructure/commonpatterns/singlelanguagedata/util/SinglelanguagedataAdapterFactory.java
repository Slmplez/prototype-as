/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.genericstructure.commonpatterns.singlelanguagedata.util;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent10;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent2;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent4;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent5;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SinglelanguagedataPackage;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData1;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData10;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData2;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData3;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData3p;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData4;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.SlData5;
import autosar21.genericstructure.commonpatterns.singlelanguagedata.util.SinglelanguagedataSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SinglelanguagedataAdapterFactory
extends AdapterFactoryImpl {
    protected static SinglelanguagedataPackage modelPackage;
    protected SinglelanguagedataSwitch<Adapter> modelSwitch = new SinglelanguagedataSwitch<Adapter>(){

        @Override
        public Adapter caseSlData1(SlData1 object) {
            return SinglelanguagedataAdapterFactory.this.createSlData1Adapter();
        }

        @Override
        public Adapter caseSlData10(SlData10 object) {
            return SinglelanguagedataAdapterFactory.this.createSlData10Adapter();
        }

        @Override
        public Adapter caseSlData2(SlData2 object) {
            return SinglelanguagedataAdapterFactory.this.createSlData2Adapter();
        }

        @Override
        public Adapter caseSlData3(SlData3 object) {
            return SinglelanguagedataAdapterFactory.this.createSlData3Adapter();
        }

        @Override
        public Adapter caseSlData3p(SlData3p object) {
            return SinglelanguagedataAdapterFactory.this.createSlData3pAdapter();
        }

        @Override
        public Adapter caseSlData4(SlData4 object) {
            return SinglelanguagedataAdapterFactory.this.createSlData4Adapter();
        }

        @Override
        public Adapter caseSlData5(SlData5 object) {
            return SinglelanguagedataAdapterFactory.this.createSlData5Adapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SinglelanguagedataAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SinglelanguagedataAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGMixedContentForParagraph(GMixedContentForParagraph object) {
            return SinglelanguagedataAdapterFactory.this.createGMixedContentForParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContent1(MixedContent1 object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContent1Adapter();
        }

        @Override
        public Adapter caseMixedContent10(MixedContent10 object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContent10Adapter();
        }

        @Override
        public Adapter caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
            return SinglelanguagedataAdapterFactory.this.createGMixedContentForOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContent2(MixedContent2 object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContent2Adapter();
        }

        @Override
        public Adapter caseMixedContent3(MixedContent3 object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContent3Adapter();
        }

        @Override
        public Adapter caseMixedContent4(MixedContent4 object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContent4Adapter();
        }

        @Override
        public Adapter caseMixedContent5(MixedContent5 object) {
            return SinglelanguagedataAdapterFactory.this.createMixedContent5Adapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SinglelanguagedataAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SinglelanguagedataAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SinglelanguagedataPackage.eINSTANCE;
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

    public Adapter createSlData1Adapter() {
        return null;
    }

    public Adapter createSlData10Adapter() {
        return null;
    }

    public Adapter createSlData2Adapter() {
        return null;
    }

    public Adapter createSlData3Adapter() {
        return null;
    }

    public Adapter createSlData3pAdapter() {
        return null;
    }

    public Adapter createSlData4Adapter() {
        return null;
    }

    public Adapter createSlData5Adapter() {
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

    public Adapter createMixedContent10Adapter() {
        return null;
    }

    public Adapter createGMixedContentForOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContent2Adapter() {
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

