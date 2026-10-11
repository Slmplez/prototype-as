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
package autosar3x.swcomponent.swcinternalbehavior.util;

import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import autosar3x.swcomponent.swcinternalbehavior.RunnableEntity;
import autosar3x.swcomponent.swcinternalbehavior.SwcinternalbehaviorPackage;
import autosar3x.swcomponent.swcinternalbehavior.util.SwcinternalbehaviorSwitch;
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

public class SwcinternalbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static SwcinternalbehaviorPackage modelPackage;
    protected SwcinternalbehaviorSwitch<Adapter> modelSwitch = new SwcinternalbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseInternalBehavior(InternalBehavior object) {
            return SwcinternalbehaviorAdapterFactory.this.createInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseRunnableEntity(RunnableEntity object) {
            return SwcinternalbehaviorAdapterFactory.this.createRunnableEntityAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return SwcinternalbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return SwcinternalbehaviorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return SwcinternalbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return SwcinternalbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return SwcinternalbehaviorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return SwcinternalbehaviorAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return SwcinternalbehaviorAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return SwcinternalbehaviorAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseGInternalBehavior(GInternalBehavior object) {
            return SwcinternalbehaviorAdapterFactory.this.createGInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseGSwcInternalBehavior(GSwcInternalBehavior object) {
            return SwcinternalbehaviorAdapterFactory.this.createGSwcInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseExecutableEntity(ExecutableEntity object) {
            return SwcinternalbehaviorAdapterFactory.this.createExecutableEntityAdapter();
        }

        @Override
        public Adapter caseGExecutableEntity(GExecutableEntity object) {
            return SwcinternalbehaviorAdapterFactory.this.createGExecutableEntityAdapter();
        }

        @Override
        public Adapter caseGRunnableEntity(GRunnableEntity object) {
            return SwcinternalbehaviorAdapterFactory.this.createGRunnableEntityAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return SwcinternalbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public SwcinternalbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = SwcinternalbehaviorPackage.eINSTANCE;
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

    public Adapter createARElementAdapter() {
        return null;
    }

    public Adapter createGInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createGSwcInternalBehaviorAdapter() {
        return null;
    }

    public Adapter createExecutableEntityAdapter() {
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

