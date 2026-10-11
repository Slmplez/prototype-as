/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomposition.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
import gautosar.gswcomponents.gcomposition.GSwConnector;
import gautosar.gswcomponents.gcomposition.GcompositionPackage;
import gautosar.gswcomponents.gcomposition.util.GcompositionSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GcompositionAdapterFactory
extends AdapterFactoryImpl {
    protected static GcompositionPackage modelPackage;
    protected GcompositionSwitch<Adapter> modelSwitch = new GcompositionSwitch<Adapter>(){

        @Override
        public Adapter caseGSwComponentPrototype(GSwComponentPrototype object) {
            return GcompositionAdapterFactory.this.createGSwComponentPrototypeAdapter();
        }

        @Override
        public Adapter caseGCompositionSwComponentType(GCompositionSwComponentType object) {
            return GcompositionAdapterFactory.this.createGCompositionSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGSwConnector(GSwConnector object) {
            return GcompositionAdapterFactory.this.createGSwConnectorAdapter();
        }

        @Override
        public Adapter caseGAssemblySwConnector(GAssemblySwConnector object) {
            return GcompositionAdapterFactory.this.createGAssemblySwConnectorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GcompositionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GcompositionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GcompositionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GcompositionAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter caseGSwComponentType(GSwComponentType object) {
            return GcompositionAdapterFactory.this.createGSwComponentTypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GcompositionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GcompositionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GcompositionPackage.eINSTANCE;
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

    public Adapter createGSwComponentPrototypeAdapter() {
        return null;
    }

    public Adapter createGCompositionSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGSwConnectorAdapter() {
        return null;
    }

    public Adapter createGAssemblySwConnectorAdapter() {
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

    public Adapter createGSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

