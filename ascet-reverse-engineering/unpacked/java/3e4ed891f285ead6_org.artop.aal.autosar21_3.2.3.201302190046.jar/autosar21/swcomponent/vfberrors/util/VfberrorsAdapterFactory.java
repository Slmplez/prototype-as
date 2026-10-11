/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARObject
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  gautosar.gswcomponents.gportinterface.GApplicationError
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package autosar21.swcomponent.vfberrors.util;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.genericstructure.infrastructure.identifiable.Identifiable;
import autosar21.swcomponent.vfberrors.ApplicationError;
import autosar21.swcomponent.vfberrors.DevelopmentError;
import autosar21.swcomponent.vfberrors.VfberrorsPackage;
import autosar21.swcomponent.vfberrors.util.VfberrorsSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import gautosar.gswcomponents.gportinterface.GApplicationError;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class VfberrorsAdapterFactory
extends AdapterFactoryImpl {
    protected static VfberrorsPackage modelPackage;
    protected VfberrorsSwitch<Adapter> modelSwitch = new VfberrorsSwitch<Adapter>(){

        @Override
        public Adapter caseDevelopmentError(DevelopmentError object) {
            return VfberrorsAdapterFactory.this.createDevelopmentErrorAdapter();
        }

        @Override
        public Adapter caseApplicationError(ApplicationError object) {
            return VfberrorsAdapterFactory.this.createApplicationErrorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return VfberrorsAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return VfberrorsAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return VfberrorsAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return VfberrorsAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return VfberrorsAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseGApplicationError(GApplicationError object) {
            return VfberrorsAdapterFactory.this.createGApplicationErrorAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return VfberrorsAdapterFactory.this.createEObjectAdapter();
        }
    };

    public VfberrorsAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = VfberrorsPackage.eINSTANCE;
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

    public Adapter createDevelopmentErrorAdapter() {
        return null;
    }

    public Adapter createApplicationErrorAdapter() {
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

    public Adapter createGApplicationErrorAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

