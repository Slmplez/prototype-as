/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.genericstructure.abstractstructure.util;

import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpClassifier;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.AtpInstanceRef;
import autosar40.genericstructure.abstractstructure.AtpPrototype;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.abstractstructure.util.AbstractstructureSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class AbstractstructureAdapterFactory
extends AdapterFactoryImpl {
    protected static AbstractstructurePackage modelPackage;
    protected AbstractstructureSwitch<Adapter> modelSwitch = new AbstractstructureSwitch<Adapter>(){

        @Override
        public Adapter caseAtpClassifier(AtpClassifier object) {
            return AbstractstructureAdapterFactory.this.createAtpClassifierAdapter();
        }

        @Override
        public Adapter caseAtpInstanceRef(AtpInstanceRef object) {
            return AbstractstructureAdapterFactory.this.createAtpInstanceRefAdapter();
        }

        @Override
        public Adapter caseAtpPrototype(AtpPrototype object) {
            return AbstractstructureAdapterFactory.this.createAtpPrototypeAdapter();
        }

        @Override
        public Adapter caseAtpFeature(AtpFeature object) {
            return AbstractstructureAdapterFactory.this.createAtpFeatureAdapter();
        }

        @Override
        public Adapter caseAtpType(AtpType object) {
            return AbstractstructureAdapterFactory.this.createAtpTypeAdapter();
        }

        @Override
        public Adapter caseAtpStructureElement(AtpStructureElement object) {
            return AbstractstructureAdapterFactory.this.createAtpStructureElementAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return AbstractstructureAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return AbstractstructureAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return AbstractstructureAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return AbstractstructureAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return AbstractstructureAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return AbstractstructureAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return AbstractstructureAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return AbstractstructureAdapterFactory.this.createEObjectAdapter();
        }
    };

    public AbstractstructureAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = AbstractstructurePackage.eINSTANCE;
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

    public Adapter createAtpClassifierAdapter() {
        return null;
    }

    public Adapter createAtpInstanceRefAdapter() {
        return null;
    }

    public Adapter createAtpPrototypeAdapter() {
        return null;
    }

    public Adapter createAtpFeatureAdapter() {
        return null;
    }

    public Adapter createAtpTypeAdapter() {
        return null;
    }

    public Adapter createAtpStructureElementAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

