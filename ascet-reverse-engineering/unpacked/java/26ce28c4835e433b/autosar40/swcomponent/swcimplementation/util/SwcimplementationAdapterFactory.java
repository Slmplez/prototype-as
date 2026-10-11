/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gimplementation.GImplementation
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcimplementation.GSwcImplementation
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcimplementation.util;

import autosar40.commonstructure.implementation.Implementation;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcimplementation.PerInstanceMemorySize;
import autosar40.swcomponent.swcimplementation.SwcImplementation;
import autosar40.swcomponent.swcimplementation.SwcimplementationPackage;
import autosar40.swcomponent.swcimplementation.util.SwcimplementationSwitch;
import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class SwcimplementationAdapterFactory
extends AdapterFactoryImpl {
    protected static SwcimplementationPackage modelPackage;
    protected SwcimplementationSwitch<Adapter> modelSwitch = new SwcimplementationSwitch<Adapter>(){

        @Override
        public Adapter casePerInstanceMemorySize(PerInstanceMemorySize object) {
            return SwcimplementationAdapterFactory.this.createPerInstanceMemorySizeAdapter();
        }

        @Override
        public Adapter caseSwcImplementation(SwcImplementation object) {
            return SwcimplementationAdapterFactory.this.createSwcImplementationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SwcimplementationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SwcimplementationAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SwcimplementationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return SwcimplementationAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return SwcimplementationAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SwcimplementationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SwcimplementationAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return SwcimplementationAdapterFactory.this.createCollectableElementAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SwcimplementationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SwcimplementationAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SwcimplementationAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGImplementation(GImplementation object) {
            return SwcimplementationAdapterFactory.this.createGImplementationAdapter();
        }

        @Override
        public Adapter caseImplementation(Implementation object) {
            return SwcimplementationAdapterFactory.this.createImplementationAdapter();
        }

        @Override
        public Adapter caseGSwcImplementation(GSwcImplementation object) {
            return SwcimplementationAdapterFactory.this.createGSwcImplementationAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SwcimplementationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SwcimplementationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SwcimplementationPackage.eINSTANCE;
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

    public Adapter createPerInstanceMemorySizeAdapter() {
        return null;
    }

    public Adapter createSwcImplementationAdapter() {
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

    public Adapter createGSwcImplementationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

