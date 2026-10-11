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
package autosar21.swcomponent.internalbehavior.nvrammapping.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.internalbehavior.nvrammapping.NVRAMMapping;
import autosar21.swcomponent.internalbehavior.nvrammapping.NvrammappingPackage;
import autosar21.swcomponent.internalbehavior.nvrammapping.util.NvrammappingSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class NvrammappingAdapterFactory
extends AdapterFactoryImpl {
    protected static NvrammappingPackage modelPackage;
    protected NvrammappingSwitch<Adapter> modelSwitch = new NvrammappingSwitch<Adapter>(){

        @Override
        public Adapter caseNVRAMMapping(NVRAMMapping object) {
            return NvrammappingAdapterFactory.this.createNVRAMMappingAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return NvrammappingAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return NvrammappingAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return NvrammappingAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return NvrammappingAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return NvrammappingAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return NvrammappingAdapterFactory.this.createEObjectAdapter();
        }
    };

    public NvrammappingAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = NvrammappingPackage.eINSTANCE;
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

    public Adapter createNVRAMMappingAdapter() {
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

    public Adapter createEObjectAdapter() {
        return null;
    }
}

