/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity
 *  gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity
 *  gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.internalbehavior.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.NonSplitableElement;
import autosar21.genericstructure.infrastructure.PackageableElement;
import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import autosar21.swcomponent.internalbehavior.InternalbehaviorPackage;
import autosar21.swcomponent.internalbehavior.RunnableEntity;
import autosar21.swcomponent.internalbehavior.util.InternalbehaviorSwitch;
import gautosar.gcommonstructure.ginternalbehavior.GExecutableEntity;
import gautosar.gcommonstructure.ginternalbehavior.GInternalBehavior;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.GRunnableEntity;
import gautosar.gswcomponents.gswcinternalbehavior.GSwcInternalBehavior;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class InternalbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static InternalbehaviorPackage modelPackage;
    protected InternalbehaviorSwitch<Adapter> modelSwitch = new InternalbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseInternalBehavior(InternalBehavior object) {
            return InternalbehaviorAdapterFactory.this.createInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseRunnableEntity(RunnableEntity object) {
            return InternalbehaviorAdapterFactory.this.createRunnableEntityAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return InternalbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return InternalbehaviorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return InternalbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return InternalbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return InternalbehaviorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return InternalbehaviorAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return InternalbehaviorAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseNonSplitableElement(NonSplitableElement object) {
            return InternalbehaviorAdapterFactory.this.createNonSplitableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return InternalbehaviorAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGInternalBehavior(GInternalBehavior object) {
            return InternalbehaviorAdapterFactory.this.createGInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseGSwcInternalBehavior(GSwcInternalBehavior object) {
            return InternalbehaviorAdapterFactory.this.createGSwcInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseGExecutableEntity(GExecutableEntity object) {
            return InternalbehaviorAdapterFactory.this.createGExecutableEntityAdapter();
        }

        @Override
        public Adapter caseGRunnableEntity(GRunnableEntity object) {
            return InternalbehaviorAdapterFactory.this.createGRunnableEntityAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return InternalbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public InternalbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = InternalbehaviorPackage.eINSTANCE;
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

    public Adapter createInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createRunnableEntityAdapter() {
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

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createPackageableElementAdapter() {
        return null;
    }

    public Adapter createNonSplitableElementAdapter() {
        return null;
    }

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createGSwcInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createGExecutableEntityAdapter() {
        return null;
    }

    public Adapter createGRunnableEntityAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

