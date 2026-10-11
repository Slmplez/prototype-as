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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.RequirementstracingPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.StructuredReq;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceReferrable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceableText;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.util.RequirementstracingSwitch;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class RequirementstracingAdapterFactory
extends AdapterFactoryImpl {
    protected static RequirementstracingPackage modelPackage;
    protected RequirementstracingSwitch<Adapter> modelSwitch = new RequirementstracingSwitch<Adapter>(){

        @Override
        public Adapter caseStructuredReq(StructuredReq object) {
            return RequirementstracingAdapterFactory.this.createStructuredReqAdapter();
        }

        @Override
        public Adapter caseTraceReferrable(TraceReferrable object) {
            return RequirementstracingAdapterFactory.this.createTraceReferrableAdapter();
        }

        @Override
        public Adapter caseTraceableText(TraceableText object) {
            return RequirementstracingAdapterFactory.this.createTraceableTextAdapter();
        }

        @Override
        public Adapter caseTraceable(Traceable object) {
            return RequirementstracingAdapterFactory.this.createTraceableAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return RequirementstracingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return RequirementstracingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseDocumentViewSelectable(DocumentViewSelectable object) {
            return RequirementstracingAdapterFactory.this.createDocumentViewSelectableAdapter();
        }

        @Override
        public Adapter casePaginateable(Paginateable object) {
            return RequirementstracingAdapterFactory.this.createPaginateableAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return RequirementstracingAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return RequirementstracingAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return RequirementstracingAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return RequirementstracingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public RequirementstracingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = RequirementstracingPackage.eINSTANCE;
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

    public Adapter createStructuredReqAdapter() {
        return null;
    }

    public Adapter createTraceReferrableAdapter() {
        return null;
    }

    public Adapter createTraceableTextAdapter() {
        return null;
    }

    public Adapter createTraceableAdapter() {
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

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

