/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.util;

import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import gautosar.gswcomponents.gswcinternalbehavior.GswcinternalbehaviorPackage;
import gautosar.gswcomponents.gswcinternalbehavior.util.GswcinternalbehaviorSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GswcinternalbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static GswcinternalbehaviorPackage modelPackage;
    protected GswcinternalbehaviorSwitch<Adapter> modelSwitch = new GswcinternalbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseGSwcInternalBehavior(GSwcInternalBehavior object) {
            return GswcinternalbehaviorAdapterFactory.this.createGSwcInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseGRunnableEntity(GRunnableEntity object) {
            return GswcinternalbehaviorAdapterFactory.this.createGRunnableEntityAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GswcinternalbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GswcinternalbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GswcinternalbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGInternalBehavior(GInternalBehavior object) {
            return GswcinternalbehaviorAdapterFactory.this.createGInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseGExecutableEntity(GExecutableEntity object) {
            return GswcinternalbehaviorAdapterFactory.this.createGExecutableEntityAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GswcinternalbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GswcinternalbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GswcinternalbehaviorPackage.eINSTANCE;
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

    public Adapter createGSwcInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createGRunnableEntityAdapter() {
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

    public Adapter createGInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createGExecutableEntityAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

