/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.ggenericstructure.ginfrastructure.util;

import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GPackageableElement;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.ggenericstructure.ginfrastructure.GinfrastructurePackage;
import gautosar.ggenericstructure.ginfrastructure.util.GinfrastructureSwitch;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GinfrastructureAdapterFactory
extends AdapterFactoryImpl {
    protected static GinfrastructurePackage modelPackage;
    protected GinfrastructureSwitch<Adapter> modelSwitch = new GinfrastructureSwitch<Adapter>(){

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GinfrastructureAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GinfrastructureAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseGARPackage(GARPackage object) {
            return GinfrastructureAdapterFactory.this.createGARPackageAdapter();
        }

        @Override
        public Adapter caseGAUTOSAR(GAUTOSAR object) {
            return GinfrastructureAdapterFactory.this.createGAUTOSARAdapter();
        }

        @Override
        public Adapter caseGPackageableElement(GPackageableElement object) {
            return GinfrastructureAdapterFactory.this.createGPackageableElementAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GinfrastructureAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GinfrastructureAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GinfrastructureAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GinfrastructurePackage.eINSTANCE;
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

    public Adapter createGARObjectAdapter() {
        return null;
    }

    public Adapter createGIdentifiableAdapter() {
        return null;
    }

    public Adapter createGARPackageAdapter() {
        return null;
    }

    public Adapter createGAUTOSARAdapter() {
        return null;
    }

    public Adapter createGPackageableElementAdapter() {
        return null;
    }

    public Adapter createGReferrableAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

