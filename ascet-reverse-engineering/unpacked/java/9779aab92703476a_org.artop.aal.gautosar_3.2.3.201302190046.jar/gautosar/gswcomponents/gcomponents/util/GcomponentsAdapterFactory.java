/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gcomponents.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gcomponents.GApplicationSwComponentType;
import gautosar.gswcomponents.gcomponents.GAtomicSwComponentType;
import gautosar.gswcomponents.gcomponents.GPPortPrototype;
import gautosar.gswcomponents.gcomponents.GPortPrototype;
import gautosar.gswcomponents.gcomponents.GRPortPrototype;
import gautosar.gswcomponents.gcomponents.GSensorActuatorSwComponentType;
import gautosar.gswcomponents.gcomponents.GServiceSwComponentType;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import gautosar.gswcomponents.gcomponents.GcomponentsPackage;
import gautosar.gswcomponents.gcomponents.util.GcomponentsSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GcomponentsAdapterFactory
extends AdapterFactoryImpl {
    protected static GcomponentsPackage modelPackage;
    protected GcomponentsSwitch<Adapter> modelSwitch = new GcomponentsSwitch<Adapter>(){

        @Override
        public Adapter caseGApplicationSwComponentType(GApplicationSwComponentType object) {
            return GcomponentsAdapterFactory.this.createGApplicationSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGAtomicSwComponentType(GAtomicSwComponentType object) {
            return GcomponentsAdapterFactory.this.createGAtomicSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGSwComponentType(GSwComponentType object) {
            return GcomponentsAdapterFactory.this.createGSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGServiceSwComponentType(GServiceSwComponentType object) {
            return GcomponentsAdapterFactory.this.createGServiceSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGSensorActuatorSwComponentType(GSensorActuatorSwComponentType object) {
            return GcomponentsAdapterFactory.this.createGSensorActuatorSwComponentTypeAdapter();
        }

        @Override
        public Adapter caseGPortPrototype(GPortPrototype object) {
            return GcomponentsAdapterFactory.this.createGPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGPPortPrototype(GPPortPrototype object) {
            return GcomponentsAdapterFactory.this.createGPPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGRPortPrototype(GRPortPrototype object) {
            return GcomponentsAdapterFactory.this.createGRPortPrototypeAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GcomponentsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GcomponentsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GcomponentsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GcomponentsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GcomponentsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GcomponentsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GcomponentsPackage.eINSTANCE;
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

    public Adapter createGApplicationSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGAtomicSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGServiceSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGSensorActuatorSwComponentTypeAdapter() {
        return null;
    }

    public Adapter createGPortPrototypeAdapter() {
        return null;
    }

    public Adapter createGPPortPrototypeAdapter() {
        return null;
    }

    public Adapter createGRPortPrototypeAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

