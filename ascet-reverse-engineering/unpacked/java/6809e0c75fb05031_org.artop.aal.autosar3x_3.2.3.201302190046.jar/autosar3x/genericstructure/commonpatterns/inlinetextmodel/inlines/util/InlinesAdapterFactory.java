/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject
 *  gautosar.gcommonstructure.gimplementation.GEngineeringObject
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.util;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Br;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.EType;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Ft;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Ie;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Std;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Tt;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xdoc;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xref;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.XrefTarget;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.util.InlinesSwitch;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import gautosar.gcommonstructure.gimplementation.GAutosarEngineeringObject;
import gautosar.gcommonstructure.gimplementation.GEngineeringObject;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InlinesAdapterFactory
extends AdapterFactoryImpl {
    protected static InlinesPackage modelPackage;
    protected InlinesSwitch<Adapter> modelSwitch = new InlinesSwitch<Adapter>(){

        @Override
        public Adapter caseBr(Br object) {
            return InlinesAdapterFactory.this.createBrAdapter();
        }

        @Override
        public Adapter caseEType(EType object) {
            return InlinesAdapterFactory.this.createETypeAdapter();
        }

        @Override
        public Adapter caseFt(Ft object) {
            return InlinesAdapterFactory.this.createFtAdapter();
        }

        @Override
        public Adapter caseTt(Tt object) {
            return InlinesAdapterFactory.this.createTtAdapter();
        }

        @Override
        public Adapter caseIe(Ie object) {
            return InlinesAdapterFactory.this.createIeAdapter();
        }

        @Override
        public Adapter caseStd(Std object) {
            return InlinesAdapterFactory.this.createStdAdapter();
        }

        @Override
        public Adapter caseXrefTarget(XrefTarget object) {
            return InlinesAdapterFactory.this.createXrefTargetAdapter();
        }

        @Override
        public Adapter caseXref(Xref object) {
            return InlinesAdapterFactory.this.createXrefAdapter();
        }

        @Override
        public Adapter caseUrl(Url object) {
            return InlinesAdapterFactory.this.createUrlAdapter();
        }

        @Override
        public Adapter caseXfile(Xfile object) {
            return InlinesAdapterFactory.this.createXfileAdapter();
        }

        @Override
        public Adapter caseXdoc(Xdoc object) {
            return InlinesAdapterFactory.this.createXdocAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InlinesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InlinesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return InlinesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return InlinesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return InlinesAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGEngineeringObject(GEngineeringObject object) {
            return InlinesAdapterFactory.this.createGEngineeringObjectAdapter();
        }

        @Override
        public Adapter caseGAutosarEngineeringObject(GAutosarEngineeringObject object) {
            return InlinesAdapterFactory.this.createGAutosarEngineeringObjectAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InlinesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InlinesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InlinesPackage.eINSTANCE;
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

    public Adapter createETypeAdapter() {
        return null;
    }

    public Adapter createFtAdapter() {
        return null;
    }

    public Adapter createTtAdapter() {
        return null;
    }

    public Adapter createIeAdapter() {
        return null;
    }

    public Adapter createStdAdapter() {
        return null;
    }

    public Adapter createXrefTargetAdapter() {
        return null;
    }

    public Adapter createXrefAdapter() {
        return null;
    }

    public Adapter createUrlAdapter() {
        return null;
    }

    public Adapter createXfileAdapter() {
        return null;
    }

    public Adapter createXdocAdapter() {
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

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createIdentifiableAdapter() {
        return null;
    }

    public Adapter createGEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createGAutosarEngineeringObjectAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

