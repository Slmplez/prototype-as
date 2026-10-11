/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gsystemconstant.GSwSystemconst
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.commonstructure.systemconstant.util;

import autosar40.commonstructure.systemconstant.SwSystemconst;
import autosar40.commonstructure.systemconstant.SystemconstantPackage;
import autosar40.commonstructure.systemconstant.util.SystemconstantSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.gsystemconstant.GSwSystemconst;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SystemconstantAdapterFactory
extends AdapterFactoryImpl {
    protected static SystemconstantPackage modelPackage;
    protected SystemconstantSwitch<Adapter> modelSwitch = new SystemconstantSwitch<Adapter>(){

        @Override
        public Adapter caseSwSystemconst(SwSystemconst object) {
            return SystemconstantAdapterFactory.this.createSwSystemconstAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SystemconstantAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SystemconstantAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SystemconstantAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return SystemconstantAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return SystemconstantAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SystemconstantAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SystemconstantAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return SystemconstantAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SystemconstantAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SystemconstantAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SystemconstantAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGSwSystemconst(GSwSystemconst object) {
            return SystemconstantAdapterFactory.this.createGSwSystemconstAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SystemconstantAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SystemconstantAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SystemconstantPackage.eINSTANCE;
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

    public Adapter createSwSystemconstAdapter() {
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

    public Adapter createCollectableElementAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGSwSystemconstAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

