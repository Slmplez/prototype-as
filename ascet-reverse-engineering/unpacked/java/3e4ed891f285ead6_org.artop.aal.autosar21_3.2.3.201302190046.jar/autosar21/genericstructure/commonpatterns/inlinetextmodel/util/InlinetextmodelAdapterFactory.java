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
package autosar21.genericstructure.commonpatterns.inlinetextmodel.util;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.InlinetextmodelPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent1;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent10;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent2;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent3;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent4;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.MixedContent5;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.util.InlinetextmodelSwitch;
import autosar21.genericstructure.infrastructure.ARObject;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GMixedContentForParagraph;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InlinetextmodelAdapterFactory
extends AdapterFactoryImpl {
    protected static InlinetextmodelPackage modelPackage;
    protected InlinetextmodelSwitch<Adapter> modelSwitch = new InlinetextmodelSwitch<Adapter>(){

        @Override
        public Adapter caseMixedContent10(MixedContent10 object) {
            return InlinetextmodelAdapterFactory.this.createMixedContent10Adapter();
        }

        @Override
        public Adapter caseMixedContent2(MixedContent2 object) {
            return InlinetextmodelAdapterFactory.this.createMixedContent2Adapter();
        }

        @Override
        public Adapter caseMixedContent3(MixedContent3 object) {
            return InlinetextmodelAdapterFactory.this.createMixedContent3Adapter();
        }

        @Override
        public Adapter caseMixedContent4(MixedContent4 object) {
            return InlinetextmodelAdapterFactory.this.createMixedContent4Adapter();
        }

        @Override
        public Adapter caseMixedContent5(MixedContent5 object) {
            return InlinetextmodelAdapterFactory.this.createMixedContent5Adapter();
        }

        @Override
        public Adapter caseMixedContent1(MixedContent1 object) {
            return InlinetextmodelAdapterFactory.this.createMixedContent1Adapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InlinetextmodelAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InlinetextmodelAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
            return InlinetextmodelAdapterFactory.this.createGMixedContentForOverviewParagraphAdapter();
        }

        @Override
        public Adapter caseGMixedContentForParagraph(GMixedContentForParagraph object) {
            return InlinetextmodelAdapterFactory.this.createGMixedContentForParagraphAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InlinetextmodelAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InlinetextmodelAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InlinetextmodelPackage.eINSTANCE;
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

    public Adapter createMixedContent10Adapter() {
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

    public Adapter createMixedContent1Adapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
        return null;
    }

    public Adapter createGMixedContentForOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createGMixedContentForParagraphAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

