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
package autosar40.swcomponent.swcinternalbehavior.trigger.util;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import autosar40.swcomponent.swcinternalbehavior.trigger.ExternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.InternalTriggeringPoint;
import autosar40.swcomponent.swcinternalbehavior.trigger.TriggerPackage;
import autosar40.swcomponent.swcinternalbehavior.trigger.util.TriggerSwitch;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class TriggerAdapterFactory
extends AdapterFactoryImpl {
    protected static TriggerPackage modelPackage;
    protected TriggerSwitch<Adapter> modelSwitch = new TriggerSwitch<Adapter>(){

        @Override
        public Adapter caseExternalTriggeringPoint(ExternalTriggeringPoint object) {
            return TriggerAdapterFactory.this.createExternalTriggeringPointAdapter();
        }

        @Override
        public Adapter caseInternalTriggeringPoint(InternalTriggeringPoint object) {
            return TriggerAdapterFactory.this.createInternalTriggeringPointAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TriggerAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TriggerAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TriggerAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TriggerAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TriggerAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TriggerAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TriggerAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TriggerAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TriggerAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TriggerPackage.eINSTANCE;
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

    public Adapter createExternalTriggeringPointAdapter() {
        return null;
    }

    public Adapter createInternalTriggeringPointAdapter() {
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

    public Adapter createReferrableAdapter() {
        return null;
    }

    public Adapter createMultilanguageReferrableAdapter() {
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

