/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gswcomponents.gdatatype.gunits.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gdatatype.gunits.GPhysicalDimension;
import gautosar.gswcomponents.gdatatype.gunits.GUnit;
import gautosar.gswcomponents.gdatatype.gunits.GunitsPackage;
import gautosar.gswcomponents.gdatatype.gunits.util.GunitsSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GunitsAdapterFactory
extends AdapterFactoryImpl {
    protected static GunitsPackage modelPackage;
    protected GunitsSwitch<Adapter> modelSwitch = new GunitsSwitch<Adapter>(){

        @Override
        public Adapter caseGUnit(GUnit object) {
            return GunitsAdapterFactory.this.createGUnitAdapter();
        }

        @Override
        public Adapter caseGPhysicalDimension(GPhysicalDimension object) {
            return GunitsAdapterFactory.this.createGPhysicalDimensionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GunitsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GunitsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GunitsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GunitsAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GunitsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GunitsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GunitsPackage.eINSTANCE;
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

    public Adapter createGUnitAdapter() {
        return null;
    }

    public Adapter createGPhysicalDimensionAdapter() {
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

