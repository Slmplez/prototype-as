/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryArg;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryP1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.util.MsrquerySwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class MsrqueryAdapterFactory
extends AdapterFactoryImpl {
    protected static MsrqueryPackage modelPackage;
    protected MsrquerySwitch<Adapter> modelSwitch = new MsrquerySwitch<Adapter>(){

        @Override
        public Adapter caseMsrQueryArg(MsrQueryArg object) {
            return MsrqueryAdapterFactory.this.createMsrQueryArgAdapter();
        }

        @Override
        public Adapter caseMsrQueryChapter(MsrQueryChapter object) {
            return MsrqueryAdapterFactory.this.createMsrQueryChapterAdapter();
        }

        @Override
        public Adapter caseMsrQueryResultChapter(MsrQueryResultChapter object) {
            return MsrqueryAdapterFactory.this.createMsrQueryResultChapterAdapter();
        }

        @Override
        public Adapter caseMsrQueryProps(MsrQueryProps object) {
            return MsrqueryAdapterFactory.this.createMsrQueryPropsAdapter();
        }

        @Override
        public Adapter caseMsrQueryResultTopic1(MsrQueryResultTopic1 object) {
            return MsrqueryAdapterFactory.this.createMsrQueryResultTopic1Adapter();
        }

        @Override
        public Adapter caseMsrQueryTopic1(MsrQueryTopic1 object) {
            return MsrqueryAdapterFactory.this.createMsrQueryTopic1Adapter();
        }

        @Override
        public Adapter caseMsrQueryP1(MsrQueryP1 object) {
            return MsrqueryAdapterFactory.this.createMsrQueryP1Adapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return MsrqueryAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return MsrqueryAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return MsrqueryAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return MsrqueryAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return MsrqueryAdapterFactory.this.createEObjectAdapter();
        }
    };

    public MsrqueryAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = MsrqueryPackage.eINSTANCE;
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

    public Adapter createMsrQueryArgAdapter() {
        return null;
    }

    public Adapter createMsrQueryChapterAdapter() {
        return null;
    }

    public Adapter createMsrQueryResultChapterAdapter() {
        return null;
    }

    public Adapter createMsrQueryPropsAdapter() {
        return null;
    }

    public Adapter createMsrQueryResultTopic1Adapter() {
        return null;
    }

    public Adapter createMsrQueryTopic1Adapter() {
        return null;
    }

    public Adapter createMsrQueryP1Adapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createARObjectAdapter() {
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

