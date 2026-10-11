/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Br;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.EmphasisText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.FootnoteText;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.IndexEntry;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Std;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Tt;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xdoc;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xfile;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xref;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.XrefTarget;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.util.InlinetextelementsSwitch;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.SingleLanguageReferrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InlinetextelementsAdapterFactory
extends AdapterFactoryImpl {
    protected static InlinetextelementsPackage modelPackage;
    protected InlinetextelementsSwitch<Adapter> modelSwitch = new InlinetextelementsSwitch<Adapter>(){

        @Override
        public Adapter caseBr(Br object) {
            return InlinetextelementsAdapterFactory.this.createBrAdapter();
        }

        @Override
        public Adapter caseEmphasisText(EmphasisText object) {
            return InlinetextelementsAdapterFactory.this.createEmphasisTextAdapter();
        }

        @Override
        public Adapter caseFootnoteText(FootnoteText object) {
            return InlinetextelementsAdapterFactory.this.createFootnoteTextAdapter();
        }

        @Override
        public Adapter caseTt(Tt object) {
            return InlinetextelementsAdapterFactory.this.createTtAdapter();
        }

        @Override
        public Adapter caseIndexEntry(IndexEntry object) {
            return InlinetextelementsAdapterFactory.this.createIndexEntryAdapter();
        }

        @Override
        public Adapter caseStd(Std object) {
            return InlinetextelementsAdapterFactory.this.createStdAdapter();
        }

        @Override
        public Adapter caseXfile(Xfile object) {
            return InlinetextelementsAdapterFactory.this.createXfileAdapter();
        }

        @Override
        public Adapter caseXdoc(Xdoc object) {
            return InlinetextelementsAdapterFactory.this.createXdocAdapter();
        }

        @Override
        public Adapter caseXref(Xref object) {
            return InlinetextelementsAdapterFactory.this.createXrefAdapter();
        }

        @Override
        public Adapter caseXrefTarget(XrefTarget object) {
            return InlinetextelementsAdapterFactory.this.createXrefTargetAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InlinetextelementsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InlinetextelementsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return InlinetextelementsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return InlinetextelementsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseSingleLanguageReferrable(SingleLanguageReferrable object) {
            return InlinetextelementsAdapterFactory.this.createSingleLanguageReferrableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InlinetextelementsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InlinetextelementsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InlinetextelementsPackage.eINSTANCE;
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

    public Adapter createBrAdapter() {
        return null;
    }

    public Adapter createEmphasisTextAdapter() {
        return null;
    }

    public Adapter createFootnoteTextAdapter() {
        return null;
    }

    public Adapter createTtAdapter() {
        return null;
    }

    public Adapter createIndexEntryAdapter() {
        return null;
    }

    public Adapter createStdAdapter() {
        return null;
    }

    public Adapter createXfileAdapter() {
        return null;
    }

    public Adapter createXdocAdapter() {
        return null;
    }

    public Adapter createXrefAdapter() {
        return null;
    }

    public Adapter createXrefTargetAdapter() {
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

    public Adapter createSingleLanguageReferrableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

