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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.InlinetextmodelPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForLongName;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForOverviewParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForPlainText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForUnitNames;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForVerbatim;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.util.InlinetextmodelSwitch;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.languagedatamodel.WhitespaceControlled;
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
        public Adapter caseMixedContentForLongName(MixedContentForLongName object) {
            return InlinetextmodelAdapterFactory.this.createMixedContentForLongNameAdapter();
        }

        @Override
        public Adapter caseMixedContentForParagraph(MixedContentForParagraph object) {
            return InlinetextmodelAdapterFactory.this.createMixedContentForParagraphAdapter();
        }

        @Override
        public Adapter caseMixedContentForPlainText(MixedContentForPlainText object) {
            return InlinetextmodelAdapterFactory.this.createMixedContentForPlainTextAdapter();
        }

        @Override
        public Adapter caseMixedContentForVerbatim(MixedContentForVerbatim object) {
            return InlinetextmodelAdapterFactory.this.createMixedContentForVerbatimAdapter();
        }

        @Override
        public Adapter caseMixedContentForUnitNames(MixedContentForUnitNames object) {
            return InlinetextmodelAdapterFactory.this.createMixedContentForUnitNamesAdapter();
        }

        @Override
        public Adapter caseMixedContentForOverviewParagraph(MixedContentForOverviewParagraph object) {
            return InlinetextmodelAdapterFactory.this.createMixedContentForOverviewParagraphAdapter();
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
        public Adapter caseGMixedContentForParagraph(GMixedContentForParagraph object) {
            return InlinetextmodelAdapterFactory.this.createGMixedContentForParagraphAdapter();
        }

        @Override
        public Adapter caseWhitespaceControlled(WhitespaceControlled object) {
            return InlinetextmodelAdapterFactory.this.createWhitespaceControlledAdapter();
        }

        @Override
        public Adapter caseGMixedContentForOverviewParagraph(GMixedContentForOverviewParagraph object) {
            return InlinetextmodelAdapterFactory.this.createGMixedContentForOverviewParagraphAdapter();
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

    public Adapter createMixedContentForLongNameAdapter() {
        return null;
    }

    public Adapter createMixedContentForParagraphAdapter() {
        return null;
    }

    public Adapter createMixedContentForPlainTextAdapter() {
        return null;
    }

    public Adapter createMixedContentForVerbatimAdapter() {
        return null;
    }

    public Adapter createMixedContentForUnitNamesAdapter() {
        return null;
    }

    public Adapter createMixedContentForOverviewParagraphAdapter() {
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

    public Adapter createWhitespaceControlledAdapter() {
        return null;
    }

    public Adapter createGMixedContentForOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

