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
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.util;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ArbitraryEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.BurstPatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConcretePatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConfidenceInterval;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventTriggeringConstraint;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.PeriodicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.SporadicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.util.EventtriggeringconstraintSwitch;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
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

public class EventtriggeringconstraintAdapterFactory
extends AdapterFactoryImpl {
    protected static EventtriggeringconstraintPackage modelPackage;
    protected EventtriggeringconstraintSwitch<Adapter> modelSwitch = new EventtriggeringconstraintSwitch<Adapter>(){

        @Override
        public Adapter caseArbitraryEventTriggering(ArbitraryEventTriggering object) {
            return EventtriggeringconstraintAdapterFactory.this.createArbitraryEventTriggeringAdapter();
        }

        @Override
        public Adapter caseEventTriggeringConstraint(EventTriggeringConstraint object) {
            return EventtriggeringconstraintAdapterFactory.this.createEventTriggeringConstraintAdapter();
        }

        @Override
        public Adapter caseConfidenceInterval(ConfidenceInterval object) {
            return EventtriggeringconstraintAdapterFactory.this.createConfidenceIntervalAdapter();
        }

        @Override
        public Adapter caseBurstPatternEventTriggering(BurstPatternEventTriggering object) {
            return EventtriggeringconstraintAdapterFactory.this.createBurstPatternEventTriggeringAdapter();
        }

        @Override
        public Adapter caseConcretePatternEventTriggering(ConcretePatternEventTriggering object) {
            return EventtriggeringconstraintAdapterFactory.this.createConcretePatternEventTriggeringAdapter();
        }

        @Override
        public Adapter casePeriodicEventTriggering(PeriodicEventTriggering object) {
            return EventtriggeringconstraintAdapterFactory.this.createPeriodicEventTriggeringAdapter();
        }

        @Override
        public Adapter caseSporadicEventTriggering(SporadicEventTriggering object) {
            return EventtriggeringconstraintAdapterFactory.this.createSporadicEventTriggeringAdapter();
        }

        @Override
        public Adapter caseGARObject(GARObject object) {
            return EventtriggeringconstraintAdapterFactory.this.createGARObjectAdapter();
        }

        @Override
        public Adapter caseARObject(ARObject object) {
            return EventtriggeringconstraintAdapterFactory.this.createARObjectAdapter();
        }

        @Override
        public Adapter caseGReferrable(GReferrable object) {
            return EventtriggeringconstraintAdapterFactory.this.createGReferrableAdapter();
        }

        @Override
        public Adapter caseReferrable(Referrable object) {
            return EventtriggeringconstraintAdapterFactory.this.createReferrableAdapter();
        }

        @Override
        public Adapter caseMultilanguageReferrable(MultilanguageReferrable object) {
            return EventtriggeringconstraintAdapterFactory.this.createMultilanguageReferrableAdapter();
        }

        @Override
        public Adapter caseGIdentifiable(GIdentifiable object) {
            return EventtriggeringconstraintAdapterFactory.this.createGIdentifiableAdapter();
        }

        @Override
        public Adapter caseIdentifiable(Identifiable object) {
            return EventtriggeringconstraintAdapterFactory.this.createIdentifiableAdapter();
        }

        @Override
        public Adapter caseTraceable(Traceable object) {
            return EventtriggeringconstraintAdapterFactory.this.createTraceableAdapter();
        }

        @Override
        public Adapter caseTimingConstraint(TimingConstraint object) {
            return EventtriggeringconstraintAdapterFactory.this.createTimingConstraintAdapter();
        }

        @Override
        public Adapter defaultCase(EObject object) {
            return EventtriggeringconstraintAdapterFactory.this.createEObjectAdapter();
        }
    };

    public EventtriggeringconstraintAdapterFactory() {
        if (modelPackage == null) {
            modelPackage = EventtriggeringconstraintPackage.eINSTANCE;
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

    public Adapter createArbitraryEventTriggeringAdapter() {
        return null;
    }

    public Adapter createEventTriggeringConstraintAdapter() {
        return null;
    }

    public Adapter createConfidenceIntervalAdapter() {
        return null;
    }

    public Adapter createBurstPatternEventTriggeringAdapter() {
        return null;
    }

    public Adapter createConcretePatternEventTriggeringAdapter() {
        return null;
    }

    public Adapter createPeriodicEventTriggeringAdapter() {
        return null;
    }

    public Adapter createSporadicEventTriggeringAdapter() {
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

    public Adapter createTraceableAdapter() {
        return null;
    }

    public Adapter createTimingConstraintAdapter() {
        return null;
    }

    public Adapter createEObjectAdapter() {
        return null;
    }
}

