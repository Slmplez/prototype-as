/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcimplementation.util;

import gautosar.gcommonstructure.gimplementation.GImplementation;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcimplementation.GSwcImplementation;
import gautosar.gswcomponents.gswcimplementation.GswcimplementationPackage;
import gautosar.gswcomponents.gswcimplementation.util.GswcimplementationSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GswcimplementationAdapterFactory
extends AdapterFactoryImpl {
    protected static GswcimplementationPackage modelPackage;
    protected GswcimplementationSwitch<Adapter> modelSwitch = new GswcimplementationSwitch<Adapter>(){

        @Override
        public Adapter caseGSwcImplementation(GSwcImplementation object) {
            return GswcimplementationAdapterFactory.this.createGSwcImplementationAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GswcimplementationAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GswcimplementationAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GswcimplementationAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GswcimplementationAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter caseGImplementation(GImplementation object) {
            return GswcimplementationAdapterFactory.this.createGImplementationAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GswcimplementationAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GswcimplementationAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GswcimplementationPackage.eINSTANCE;
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

    public Adapter createGSwcImplementationAdapter() {
        return null;
    }

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createGImplementationAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

