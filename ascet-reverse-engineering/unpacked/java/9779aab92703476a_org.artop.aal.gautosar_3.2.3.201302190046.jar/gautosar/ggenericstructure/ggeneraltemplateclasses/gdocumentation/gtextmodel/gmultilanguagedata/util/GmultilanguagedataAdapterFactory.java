/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.util;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageOverviewParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GMultiLanguageParagraph;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.util.GmultilanguagedataSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GmultilanguagedataAdapterFactory
extends AdapterFactoryImpl {
    protected static GmultilanguagedataPackage modelPackage;
    protected GmultilanguagedataSwitch<Adapter> modelSwitch = new GmultilanguagedataSwitch<Adapter>(){

        @Override
        public Adapter caseGMultiLanguageParagraph(GMultiLanguageParagraph object) {
            return GmultilanguagedataAdapterFactory.this.createGMultiLanguageParagraphAdapter();
        }

        @Override
        public Adapter caseGMultiLanguageOverviewParagraph(GMultiLanguageOverviewParagraph object) {
            return GmultilanguagedataAdapterFactory.this.createGMultiLanguageOverviewParagraphAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GmultilanguagedataAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GmultilanguagedataAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GmultilanguagedataPackage.eINSTANCE;
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

    public Adapter createGMultiLanguageParagraphAdapter() {
        return null;
    }

    public Adapter createGMultiLanguageOverviewParagraphAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

