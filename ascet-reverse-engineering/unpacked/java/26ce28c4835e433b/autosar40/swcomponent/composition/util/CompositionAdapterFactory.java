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
package autosar40.swcomponent.composition.util;

import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.PackageableElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.components.SwComponentType;
import autosar40.swcomponent.composition.AssemblySwConnector;
import autosar40.swcomponent.composition.CompositionPackage;
import autosar40.swcomponent.composition.CompositionSwComponentType;
import autosar40.swcomponent.composition.DelegationSwConnector;
import autosar40.swcomponent.composition.SwComponentPrototype;
import autosar40.swcomponent.composition.SwConnector;
import autosar40.swcomponent.composition.util.CompositionSwitch;
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
        public Adapter caseAssemblySwConnector(AssemblySwConnector object) {
            return CompositionAdapterFactory.this.createAssemblySwConnectorAdapter();
        }

        @Override
        public Adapter caseSwConnector(SwConnector object) {
            return CompositionAdapterFactory.this.createSwConnectorAdapter();
        }

        @Override
        public Adapter caseSwComponentPrototype(SwComponentPrototype object) {
            return CompositionAdapterFactory.this.createSwComponentPrototypeAdapter();
        }

        @Override
        public Adapter caseDelegationSwConnector(DelegationSwConnector object) {
            return CompositionAdapterFactory.this.createDelegationSwConnectorAdapter();
        }

        @Override
        public Adapter caseCompositionSwComponentType(CompositionSwComponentType object) {
            return CompositionAdapterFactory.this.createCompositionSwComponentTypeAdapter();
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
        public Adapter caseReferrable(Referrable object) {
            return CompositionAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return CompositionAdapterFactory.this.createMultilanguageReferrableAdapter();
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
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return CompositionAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return CompositionAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return CompositionAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseGSwConnector(GSwConnector object) {
            return CompositionAdapterFactory.this.createGSwConnectorAdapter();
        }

        @Override
        public Adapter caseGAssemblySwConnector(GAssemblySwConnector object) {
            return CompositionAdapterFactory.this.createGAssemblySwConnectorAdapter();
        }

        @Override
        public Adapter caseAtpPrototype(AtpPrototype object) {
            return CompositionAdapterFactory.this.createAtpPrototypeAdapter();
        }

        @Override
        public Adapter caseGSwComponentPrototype(GSwComponentPrototype object) {
            return CompositionAdapterFactory.this.createGSwComponentPrototypeAdapter();
        }

        @Override
        public Adapter caseCollectableElement(CollectableElement object) {
            return CompositionAdapterFactory.this.createCollectableElementAdapter();
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
        public Adapter caseAtpBlueprint(AtpBlueprint object) {
            return CompositionAdapterFactory.this.createAtpBlueprintAdapter();
        }

        @Override
        public Adapter caseAtpBlueprintable(AtpBlueprintable object) {
            return CompositionAdapterFactory.this.createAtpBlueprintableAdapter();
        }

        @Override
        public Adapter caseAtpType(AtpType object) {
            return CompositionAdapterFactory.this.createAtpTypeAdapter();
        }

        @Override
        public Adapter caseGSwComponentType(GSwComponentType object) {
            return CompositionAdapterFactory.this.createGSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseSwComponentType(SwComponentType object) {
            return CompositionAdapterFactory.this.createSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGCompositionSwComponentType(GCompositionSwComponentType object) {
            return CompositionAdapterFactory.this.createGCompositionSwComponentTypeAdapter();
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

    public Adapter createAssemblySwConnectorAdapter() {
        return null;
    }

    public Adapter createSwConnectorAdapter() {
        return null;
    }

    public Adapter createSwComponentPrototypeAdapter() {
        return null;
    }

    public Adapter createDelegationSwConnectorAdapter() {
        return null;
    }

    public Adapter createCompositionSwComponentTypeAdapter() {
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

    public Adapter createAtpClassifierAdapter() {
        return null;
    }

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
        return null;
    }

    public Adapter createGSwConnectorAdapter() {
        return null;
    }

    public Adapter createGAssemblySwConnectorAdapter() {
        return null;
    }

    public Adapter createAtpPrototypeAdapter() {
        return null;
    }

    public Adapter createGSwComponentPrototypeAdapter() {
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

    public Adapter createAtpBlueprintAdapter() {
        return null;
    }

    public Adapter createAtpBlueprintableAdapter() {
        return null;
    }

    public Adapter createAtpTypeAdapter() {
        return null;
    }

    public Adapter createGSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGCompositionSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

