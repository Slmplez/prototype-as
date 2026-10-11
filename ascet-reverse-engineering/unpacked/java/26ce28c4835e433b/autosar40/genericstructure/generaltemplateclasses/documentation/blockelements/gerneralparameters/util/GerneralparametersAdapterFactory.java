/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmChar;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharAbsTol;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharMinTypMax;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalValue;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharTextualContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.util.GerneralparametersSwitch;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GerneralparametersAdapterFactory
extends AdapterFactoryImpl {
    protected static GerneralparametersPackage modelPackage;
    protected GerneralparametersSwitch<Adapter> modelSwitch = new GerneralparametersSwitch<Adapter>(){

        @Override
        public Adapter caseGeneralParameter(GeneralParameter object) {
            return GerneralparametersAdapterFactory.this.createGeneralParameterAdapter();
        }

        @Override
        public Adapter casePrmChar(PrmChar object) {
            return GerneralparametersAdapterFactory.this.createPrmCharAdapter();
        }

        @Override
        public Adapter casePrmCharContents(PrmCharContents object) {
            return GerneralparametersAdapterFactory.this.createPrmCharContentsAdapter();
        }

        @Override
        public Adapter casePrmCharAbsTol(PrmCharAbsTol object) {
            return GerneralparametersAdapterFactory.this.createPrmCharAbsTolAdapter();
        }

        @Override
        public Adapter casePrmCharNumericalValue(PrmCharNumericalValue object) {
            return GerneralparametersAdapterFactory.this.createPrmCharNumericalValueAdapter();
        }

        @Override
        public Adapter casePrmCharMinTypMax(PrmCharMinTypMax object) {
            return GerneralparametersAdapterFactory.this.createPrmCharMinTypMaxAdapter();
        }

        @Override
        public Adapter casePrmCharNumericalContents(PrmCharNumericalContents object) {
            return GerneralparametersAdapterFactory.this.createPrmCharNumericalContentsAdapter();
        }

        @Override
        public Adapter casePrmCharTextualContents(PrmCharTextualContents object) {
            return GerneralparametersAdapterFactory.this.createPrmCharTextualContentsAdapter();
        }

        @Override
        public Adapter casePrms(Prms object) {
            return GerneralparametersAdapterFactory.this.createPrmsAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GerneralparametersAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return GerneralparametersAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GerneralparametersAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return GerneralparametersAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return GerneralparametersAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GerneralparametersAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return GerneralparametersAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return GerneralparametersAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return GerneralparametersAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GerneralparametersAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GerneralparametersAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GerneralparametersPackage.eINSTANCE;
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

    public Adapter createGeneralParameterAdapter() {
        return null;
    }

    public Adapter createPrmCharAdapter() {
        return null;
    }

    public Adapter createPrmCharContentsAdapter() {
        return null;
    }

    public Adapter createPrmCharAbsTolAdapter() {
        return null;
    }

    public Adapter createPrmCharNumericalValueAdapter() {
        return null;
    }

    public Adapter createPrmCharMinTypMaxAdapter() {
        return null;
    }

    public Adapter createPrmCharNumericalContentsAdapter() {
        return null;
    }

    public Adapter createPrmCharTextualContentsAdapter() {
        return null;
    }

    public Adapter createPrmsAdapter() {
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

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
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

