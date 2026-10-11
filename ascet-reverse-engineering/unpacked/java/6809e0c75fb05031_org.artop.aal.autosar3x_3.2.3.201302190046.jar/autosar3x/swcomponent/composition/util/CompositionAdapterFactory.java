/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  gautosar.gswcomponents.gcomposition.GAssemblySwConnector
 *  gautosar.gswcomponents.gcomposition.GCompositionSwComponentType
 *  gautosar.gswcomponents.gcomposition.GSwComponentPrototype
 *  gautosar.gswcomponents.gcomposition.GSwConnector
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.swcomponent.composition.util;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.components.ComponentType;
import autosar3x.swcomponent.composition.AssemblyConnectorPrototype;
import autosar3x.swcomponent.composition.ComponentPrototype;
import autosar3x.swcomponent.composition.CompositionPackage;
import autosar3x.swcomponent.composition.CompositionType;
import autosar3x.swcomponent.composition.ConnectorPrototype;
import autosar3x.swcomponent.composition.DelegationConnectorPrototype;
import autosar3x.swcomponent.composition.ServiceConnectorPrototype;
import autosar3x.swcomponent.composition.util.CompositionSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import gautosar.gswcomponents.gcomposition.GAssemblySwConnector;
import gautosar.gswcomponents.gcomposition.GCompositionSwComponentType;
import gautosar.gswcomponents.gcomposition.GSwComponentPrototype;
import gautosar.gswcomponents.gcomposition.GSwConnector;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class CompositionAdapterFactory
extends AdapterFactoryImpl {
    protected static CompositionPackage modelPackage;
    protected CompositionSwitch<Adapter> modelSwitch = new CompositionSwitch<Adapter>(){

        @Override
        public Adapter caseServiceConnectorPrototype(ServiceConnectorPrototype object) {
            return CompositionAdapterFactory.this.createServiceConnectorPrototypeAdapter();
        }

        @Override
        public Adapter caseConnectorPrototype(ConnectorPrototype object) {
            return CompositionAdapterFactory.this.createConnectorPrototypeAdapter();
        }

        @Override
        public Adapter caseCompositionType(CompositionType object) {
            return CompositionAdapterFactory.this.createCompositionTypeAdapter();
        }

        @Override
        public Adapter caseAssemblyConnectorPrototype(AssemblyConnectorPrototype object) {
            return CompositionAdapterFactory.this.createAssemblyConnectorPrototypeAdapter();
        }

        @Override
        public Adapter caseDelegationConnectorPrototype(DelegationConnectorPrototype object) {
            return CompositionAdapterFactory.this.createDelegationConnectorPrototypeAdapter();
        }

        @Override
        public Adapter caseComponentPrototype(ComponentPrototype object) {
            return CompositionAdapterFactory.this.createComponentPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return CompositionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return CompositionAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return CompositionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return CompositionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return CompositionAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGSwConnector(GSwConnector object) {
            return CompositionAdapterFactory.this.createGSwConnectorAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return CompositionAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return CompositionAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return CompositionAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGSwComponentType(GSwComponentType object) {
            return CompositionAdapterFactory.this.createGSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseComponentType(ComponentType object) {
            return CompositionAdapterFactory.this.createComponentTypeAdapter();
        }

        @Override
        public Adapter caseGCompositionSwComponentType(GCompositionSwComponentType object) {
            return CompositionAdapterFactory.this.createGCompositionSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGAssemblySwConnector(GAssemblySwConnector object) {
            return CompositionAdapterFactory.this.createGAssemblySwConnectorAdapter();
        }

        @Override
        public Adapter caseGSwComponentPrototype(GSwComponentPrototype object) {
            return CompositionAdapterFactory.this.createGSwComponentPrototypeAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return CompositionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public CompositionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = CompositionPackage.eINSTANCE;
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

    public Adapter createServiceConnectorPrototypeAdapter() {
        return null;
    }

    public Adapter createConnectorPrototypeAdapter() {
        return null;
    }

    public Adapter createCompositionTypeAdapter() {
        return null;
    }

    public Adapter createAssemblyConnectorPrototypeAdapter() {
        return null;
    }

    public Adapter createDelegationConnectorPrototypeAdapter() {
        return null;
    }

    public Adapter createComponentPrototypeAdapter() {
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

    public Adapter createGSwConnectorAdapter() {
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

    public Adapter createGSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createComponentTypeAdapter() {
        return null;
    }

    public Adapter createGCompositionSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGAssemblySwConnectorAdapter() {
        return null;
    }

    public Adapter createGSwComponentPrototypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

