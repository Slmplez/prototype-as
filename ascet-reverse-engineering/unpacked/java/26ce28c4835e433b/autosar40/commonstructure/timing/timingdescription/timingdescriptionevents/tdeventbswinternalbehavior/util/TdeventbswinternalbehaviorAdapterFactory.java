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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.util.TdeventbswinternalbehaviorSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.MultilanguageReferrable;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import gautosar.ggenericstructure.ginfrastructure.GARObject;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;

public class TdeventbswinternalbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static TdeventbswinternalbehaviorPackage modelPackage;
    protected TdeventbswinternalbehaviorSwitch<Adapter> modelSwitch = new TdeventbswinternalbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseTDEventBswInternalBehavior(TDEventBswInternalBehavior object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createTDEventBswInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTimingDescription(TimingDescription object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createTimingDescriptionAdapter();
        }

        @Override
        public Adapter caseTimingDescriptionEvent(TimingDescriptionEvent object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createTimingDescriptionEventAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TdeventbswinternalbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TdeventbswinternalbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TdeventbswinternalbehaviorPackage.eINSTANCE;
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

    public Adapter createTDEventBswInternalBehaviorAdapter() {
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

    public Adapter createTimingDescriptionAdapter() {
        return null;
    }

    public Adapter createTimingDescriptionEventAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

