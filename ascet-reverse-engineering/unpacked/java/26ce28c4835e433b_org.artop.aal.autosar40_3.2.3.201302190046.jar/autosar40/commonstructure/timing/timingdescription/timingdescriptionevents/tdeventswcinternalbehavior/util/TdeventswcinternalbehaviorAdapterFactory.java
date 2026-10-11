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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TDEventSwcInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.TdeventswcinternalbehaviorPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventswcinternalbehavior.util.TdeventswcinternalbehaviorSwitch;
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

public class TdeventswcinternalbehaviorAdapterFactory
extends AdapterFactoryImpl {
    protected static TdeventswcinternalbehaviorPackage modelPackage;
    protected TdeventswcinternalbehaviorSwitch<Adapter> modelSwitch = new TdeventswcinternalbehaviorSwitch<Adapter>(){

        @Override
        public Adapter caseTDEventSwcInternalBehavior(TDEventSwcInternalBehavior object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createTDEventSwcInternalBehaviorAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTimingDescription(TimingDescription object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createTimingDescriptionAdapter();
        }

        @Override
        public Adapter caseTimingDescriptionEvent(TimingDescriptionEvent object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createTimingDescriptionEventAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TdeventswcinternalbehaviorAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TdeventswcinternalbehaviorAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TdeventswcinternalbehaviorPackage.eINSTANCE;
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

    public Adapter createTDEventSwcInternalBehaviorAdapter() {
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

