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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.util;

import autosar40.commonstructure.timing.timingdescription.TimingDescription;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCom;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrClusterCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventFrame;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPdu;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventISignal;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventTTCanCycleStart;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.util.TdeventcomSwitch;
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

public class TdeventcomAdapterFactory
extends AdapterFactoryImpl {
    protected static TdeventcomPackage modelPackage;
    protected TdeventcomSwitch<Adapter> modelSwitch = new TdeventcomSwitch<Adapter>(){

        @Override
        public Adapter caseTDEventCom(TDEventCom object) {
            return TdeventcomAdapterFactory.this.createTDEventComAdapter();
        }

        @Override
        public Adapter caseTDEventCycleStart(TDEventCycleStart object) {
            return TdeventcomAdapterFactory.this.createTDEventCycleStartAdapter();
        }

        @Override
        public Adapter caseTDEventFrame(TDEventFrame object) {
            return TdeventcomAdapterFactory.this.createTDEventFrameAdapter();
        }

        @Override
        public Adapter caseTDEventFrClusterCycleStart(TDEventFrClusterCycleStart object) {
            return TdeventcomAdapterFactory.this.createTDEventFrClusterCycleStartAdapter();
        }

        @Override
        public Adapter caseTDEventIPdu(TDEventIPdu object) {
            return TdeventcomAdapterFactory.this.createTDEventIPduAdapter();
        }

        @Override
        public Adapter caseTDEventISignal(TDEventISignal object) {
            return TdeventcomAdapterFactory.this.createTDEventISignalAdapter();
        }

        @Override
        public Adapter caseTDEventTTCanCycleStart(TDEventTTCanCycleStart object) {
            return TdeventcomAdapterFactory.this.createTDEventTTCanCycleStartAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return TdeventcomAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return TdeventcomAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return TdeventcomAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return TdeventcomAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return TdeventcomAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return TdeventcomAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return TdeventcomAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTimingDescription(TimingDescription object) {
            return TdeventcomAdapterFactory.this.createTimingDescriptionAdapter();
        }

        @Override
        public Adapter caseTimingDescriptionEvent(TimingDescriptionEvent object) {
            return TdeventcomAdapterFactory.this.createTimingDescriptionEventAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return TdeventcomAdapterFactory.this.createEObjectAdapter();
        }
    };

    public TdeventcomAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = TdeventcomPackage.eINSTANCE;
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

    public Adapter createTDEventComAdapter() {
        return null;
    }

    public Adapter createTDEventCycleStartAdapter() {
        return null;
    }

    public Adapter createTDEventFrameAdapter() {
        return null;
    }

    public Adapter createTDEventFrClusterCycleStartAdapter() {
        return null;
    }

    public Adapter createTDEventIPduAdapter() {
        return null;
    }

    public Adapter createTDEventISignalAdapter() {
        return null;
    }

    public Adapter createTDEventTTCanCycleStartAdapter() {
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

