/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package gautosar.gcommonstructure.gresourceconsumption.util;

import gautosar.gcommonstructure.gresourceconsumption.GResourceConsumption;
import gautosar.gcommonstructure.gresourceconsumption.GresourceconsumptionPackage;
import gautosar.gcommonstructure.gresourceconsumption.util.GresourceconsumptionSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class GresourceconsumptionAdapterFactory
extends AdapterFactoryImpl {
    protected static GresourceconsumptionPackage modelPackage;
    protected GresourceconsumptionSwitch<Adapter> modelSwitch = new GresourceconsumptionSwitch<Adapter>(){

        @Override
        public Adapter caseGResourceConsumption(GResourceConsumption object) {
            return GresourceconsumptionAdapterFactory.this.createGResourceConsumptionAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return GresourceconsumptionAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return GresourceconsumptionAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return GresourceconsumptionAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return GresourceconsumptionAdapterFactory.this.createEObjectAdapter();
        }
    };

    public GresourceconsumptionAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = GresourceconsumptionPackage.eINSTANCE;
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

    public Adapter createGResourceConsumptionAdapter() {
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

