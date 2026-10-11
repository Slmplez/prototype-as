/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.bswmodule.bswimplementation.util;

import autosar40.bswmodule.bswimplementation.BswDebugInfo;
import autosar40.bswmodule.bswimplementation.BswImplementation;
import autosar40.bswmodule.bswimplementation.BswimplementationPackage;
import autosar40.bswmodule.bswimplementation.util.BswimplementationSwitch;
import autosar40.commonstructure.implementation.Implementation;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class BswimplementationAdapterFactory
extends AdapterFactoryImpl {
    protected static BswimplementationPackage modelPackage;
    protected BswimplementationSwitch<Adapter> modelSwitch = new BswimplementationSwitch<Adapter>(){

        @Override
        public Adapter caseBswDebugInfo(BswDebugInfo object) {
            return BswimplementationAdapterFactory.this.createBswDebugInfoAdapter();
        }

        @Override
        public Adapter caseBswImplementation(BswImplementation object) {
            return BswimplementationAdapterFactory.this.createBswImplementationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return BswimplementationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return BswimplementationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return BswimplementationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return BswimplementationAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return BswimplementationAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return BswimplementationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return BswimplementationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return BswimplementationAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return BswimplementationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return BswimplementationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return BswimplementationAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGImplementation(GImplementation object) {
            return BswimplementationAdapterFactory.this.createGImplementationAdapter();
        }

        @Override
        public Adapter caseImplementation(Implementation object) {
            return BswimplementationAdapterFactory.this.createImplementationAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return BswimplementationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public BswimplementationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = BswimplementationPackage.eINSTANCE;
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

    public Adapter createBswDebugInfoAdapter() {
        return null;
    }

    public Adapter createBswImplementationAdapter() {
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

    public Adapter createGImplementationAdapter() {
        return null;
    }

    public Adapter createImplementationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

