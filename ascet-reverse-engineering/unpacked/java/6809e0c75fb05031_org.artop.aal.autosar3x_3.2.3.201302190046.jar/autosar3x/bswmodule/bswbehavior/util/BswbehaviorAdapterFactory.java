/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GPackageableElement
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar3x.bswmodule.bswbehavior.util;

import autosar3x.bswmodule.bswbehavior.BswBehavior;
import autosar3x.bswmodule.bswbehavior.BswCyclicEvent;
import autosar3x.bswmodule.bswbehavior.BswEvent;
import autosar3x.bswmodule.bswbehavior.BswInterruptEntity;
import autosar3x.bswmodule.bswbehavior.BswModuleEntity;
import autosar3x.bswmodule.bswbehavior.BswSchedulableEntity;
import autosar3x.bswmodule.bswbehavior.BswSporadicEvent;
import autosar3x.bswmodule.bswbehavior.BswbehaviorPackage;
import autosar3x.bswmodule.bswbehavior.util.BswbehaviorSwitch;
import autosar3x.commonstructure.internalbehavior.ExecutableEntity;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.genericstructure.infrastructure.identifiable.ARElement;
import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.genericstructure.infrastructure.identifiable.PackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class BswbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static BswbehaviorPackage modelPackage;
    protected BswbehaviorSwitch<Adapter> modelSwitch = new BswbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseBswBehavior(BswBehavior object) {
            return BswbehaviorAdapterFactory.this.createBswBehaviorAdapter();
        }

        @Override
        public Adapter caseBswEvent(BswEvent object) {
            return BswbehaviorAdapterFactory.this.createBswEventAdapter();
        }

        @Override
        public Adapter caseBswSchedulableEntity(BswSchedulableEntity object) {
            return BswbehaviorAdapterFactory.this.createBswSchedulableEntityAdapter();
        }

        @Override
        public Adapter caseBswCyclicEvent(BswCyclicEvent object) {
            return BswbehaviorAdapterFactory.this.createBswCyclicEventAdapter();
        }

        @Override
        public Adapter caseBswInterruptEntity(BswInterruptEntity object) {
            return BswbehaviorAdapterFactory.this.createBswInterruptEntityAdapter();
        }

        @Override
        public Adapter caseBswSporadicEvent(BswSporadicEvent object) {
            return BswbehaviorAdapterFactory.this.createBswSporadicEventAdapter();
        }

        @Override
        public Adapter caseBswModuleEntity(BswModuleEntity object) {
            return BswbehaviorAdapterFactory.this.createBswModuleEntityAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return BswbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return BswbehaviorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return BswbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return BswbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return BswbehaviorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return BswbehaviorAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter casePackageableElement(PackageableElement object) {
            return BswbehaviorAdapterFactory.this.createPackageableElementAdapter();
        }

        @Override
        public Adapter caseARElement(ARElement object) {
            return BswbehaviorAdapterFactory.this.createARElementAdapter();
        }

        @Override
        public Adapter caseExecutableEntity(ExecutableEntity object) {
            return BswbehaviorAdapterFactory.this.createExecutableEntityAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return BswbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public BswbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = BswbehaviorPackage.eINSTANCE;
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

    public Adapter createBswBehaviorAdapter() {
        return null;
    }

    public Adapter createBswEventAdapter() {
        return null;
    }

    public Adapter createBswSchedulableEntityAdapter() {
        return null;
    }

    public Adapter createBswCyclicEventAdapter() {
        return null;
    }

    public Adapter createBswInterruptEntityAdapter() {
        return null;
    }

    public Adapter createBswSporadicEventAdapter() {
        return null;
    }

    public Adapter createBswModuleEntityAdapter() {
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

    public Adapter createExecutableEntityAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

