/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint
 *  gautosar.gswcomponents.gswcinternalbehavior.gservercall.GSynchronousServerCallPoint
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar40.swcomponent.swcinternalbehavior.servercall.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.AsynchronousServerCallResultPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.ServercallPackage;
import autosar40.swcomponent.swcinternalbehavior.servercall.SynchronousServerCallPoint;
import autosar40.swcomponent.swcinternalbehavior.servercall.util.ServercallSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GSynchronousServerCallPoint;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ServercallAdapterFactory
extends AdapterFactoryImpl {
    protected static ServercallPackage modelPackage;
    protected ServercallSwitch<Adapter> modelSwitch = new ServercallSwitch<Adapter>(){

        @Override
        public Adapter caseAsynchronousServerCallPoint(AsynchronousServerCallPoint object) {
            return ServercallAdapterFactory.this.createAsynchronousServerCallPointAdapter();
        }

        @Override
        public Adapter caseServerCallPoint(ServerCallPoint object) {
            return ServercallAdapterFactory.this.createServerCallPointAdapter();
        }

        @Override
        public Adapter caseSynchronousServerCallPoint(SynchronousServerCallPoint object) {
            return ServercallAdapterFactory.this.createSynchronousServerCallPointAdapter();
        }

        @Override
        public Adapter caseAsynchronousServerCallResultPoint(AsynchronousServerCallResultPoint object) {
            return ServercallAdapterFactory.this.createAsynchronousServerCallResultPointAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ServercallAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ServercallAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ServercallAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return ServercallAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return ServercallAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ServercallAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ServercallAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGServerCallPoint(GServerCallPoint object) {
            return ServercallAdapterFactory.this.createGServerCallPointAdapter();
        }

        @Override
        public Adapter caseGAsynchronousServerCallPoint(GAsynchronousServerCallPoint object) {
            return ServercallAdapterFactory.this.createGAsynchronousServerCallPointAdapter();
        }

        @Override
        public Adapter caseGSynchronousServerCallPoint(GSynchronousServerCallPoint object) {
            return ServercallAdapterFactory.this.createGSynchronousServerCallPointAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ServercallAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ServercallAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ServercallPackage.eINSTANCE;
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

    public Adapter createAsynchronousServerCallPointAdapter() {
        return null;
    }

    public Adapter createServerCallPointAdapter() {
        return null;
    }

    public Adapter createSynchronousServerCallPointAdapter() {
        return null;
    }

    public Adapter createAsynchronousServerCallResultPointAdapter() {
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

    public Adapter createGServerCallPointAdapter() {
        return null;
    }

    public Adapter createGAsynchronousServerCallPointAdapter() {
        return null;
    }

    public Adapter createGSynchronousServerCallPointAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

