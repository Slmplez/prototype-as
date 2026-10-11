/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.gservercall.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GAsynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GSynchronousServerCallPoint;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.GservercallPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gservercall.util.GservercallSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GservercallAdapterFactory
extends AdapterFactoryImpl {
    protected static GservercallPackage modelPackage;
    protected GservercallSwitch<Adapter> modelSwitch = new GservercallSwitch<Adapter>(){

        @Override
        public Adapter caseGServerCallPoint(GServerCallPoint object) {
            return GservercallAdapterFactory.this.createGServerCallPointAdapter();
        }

        @Override
        public Adapter caseGAsynchronousServerCallPoint(GAsynchronousServerCallPoint object) {
            return GservercallAdapterFactory.this.createGAsynchronousServerCallPointAdapter();
        }

        @Override
        public Adapter caseGSynchronousServerCallPoint(GSynchronousServerCallPoint object) {
            return GservercallAdapterFactory.this.createGSynchronousServerCallPointAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GservercallAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GservercallAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GservercallAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GservercallAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GservercallAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GservercallPackage.eINSTANCE;
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

    public Adapter createGServerCallPointAdapter() {
        return null;
    }

    public Adapter createGAsynchronousServerCallPointAdapter() {
        return null;
    }

    public Adapter createGSynchronousServerCallPointAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

