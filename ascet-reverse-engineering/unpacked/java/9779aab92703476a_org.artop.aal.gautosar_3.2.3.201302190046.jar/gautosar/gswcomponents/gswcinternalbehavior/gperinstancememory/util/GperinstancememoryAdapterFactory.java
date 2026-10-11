/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GPerInstanceMemory;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.GperinstancememoryPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gperinstancememory.util.GperinstancememorySwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GperinstancememoryAdapterFactory
extends AdapterFactoryImpl {
    protected static GperinstancememoryPackage modelPackage;
    protected GperinstancememorySwitch<Adapter> modelSwitch = new GperinstancememorySwitch<Adapter>(){

        @Override
        public Adapter caseGPerInstanceMemory(GPerInstanceMemory object) {
            return GperinstancememoryAdapterFactory.this.createGPerInstanceMemoryAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GperinstancememoryAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GperinstancememoryAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GperinstancememoryAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GperinstancememoryAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GperinstancememoryAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GperinstancememoryPackage.eINSTANCE;
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

    public Adapter createGPerInstanceMemoryAdapter() {
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

