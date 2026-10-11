/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.resources.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.resources.ResourceConsumption;
import autosar21.swcomponent.resources.ResourcesPackage;
import autosar21.swcomponent.resources.util.ResourcesSwitch;
import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class ResourcesAdapterFactory
extends AdapterFactoryImpl {
    protected static ResourcesPackage modelPackage;
    protected ResourcesSwitch<Adapter> modelSwitch = new ResourcesSwitch<Adapter>(){

        @Override
        public Adapter caseResourceConsumption(ResourceConsumption object) {
            return ResourcesAdapterFactory.this.createResourceConsumptionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return ResourcesAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return ResourcesAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return ResourcesAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return ResourcesAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return ResourcesAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGResourceConsumption(GResourceConsumption object) {
            return ResourcesAdapterFactory.this.createGResourceConsumptionAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return ResourcesAdapterFactory.this.createEObjectAdapter();
        }
    };

    public ResourcesAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = ResourcesPackage.eINSTANCE;
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

    public Adapter createResourceConsumptionAdapter() {
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

    public Adapter createGResourceConsumptionAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

