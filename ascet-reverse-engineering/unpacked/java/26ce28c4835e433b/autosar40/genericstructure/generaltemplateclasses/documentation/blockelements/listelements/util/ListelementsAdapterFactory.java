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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.DefList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.IndentSample;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.Item;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledItem;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.LabeledList;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.List;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.util.ListelementsSwitch;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ListelementsAdapterFactory
extends AdapterFactoryImpl {
    protected static ListelementsPackage modelPackage;
    protected ListelementsSwitch<Adapter> modelSwitch = new ListelementsSwitch<Adapter>(){

        @Override
        public Adapter caseDefItem(DefItem object) {
            return ListelementsAdapterFactory.this.createDefItemAdapter();
        }

        @Override
        public Adapter caseDefList(DefList object) {
            return ListelementsAdapterFactory.this.createDefListAdapter();
        }

        @Override
        public Adapter caseIndentSample(IndentSample object) {
            return ListelementsAdapterFactory.this.createIndentSampleAdapter();
        }

        @Override
        public Adapter caseItem(Item object) {
            return ListelementsAdapterFactory.this.createItemAdapter();
        }

        @Override
        public Adapter caseLabeledItem(LabeledItem object) {
            return ListelementsAdapterFactory.this.createLabeledItemAdapter();
        }

        @Override
        public Adapter caseLabeledList(LabeledList object) {
            return ListelementsAdapterFactory.this.createLabeledListAdapter();
        }

        @Override
        public Adapter caseList(List object) {
            return ListelementsAdapterFactory.this.createListAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ListelementsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ListelementsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ListelementsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ListelementsAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ListelementsAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return ListelementsAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return ListelementsAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ListelementsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ListelementsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ListelementsPackage.eINSTANCE;
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

    public Adapter createDefItemAdapter() {
        return null;
    }

    public Adapter createDefListAdapter() {
        return null;
    }

    public Adapter createIndentSampleAdapter() {
        return null;
    }

    public Adapter createItemAdapter() {
        return null;
    }

    public Adapter createLabeledItemAdapter() {
        return null;
    }

    public Adapter createLabeledListAdapter() {
        return null;
    }

    public Adapter createListAdapter() {
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

