/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ArbitraryEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.BurstPatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConcretePatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConfidenceInterval;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintFactory;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.PeriodicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.SporadicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.ArbitraryEventTriggeringImpl;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.BurstPatternEventTriggeringImpl;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.ConcretePatternEventTriggeringImpl;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.ConfidenceIntervalImpl;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.PeriodicEventTriggeringImpl;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.SporadicEventTriggeringImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class EventtriggeringconstraintFactoryImpl
extends EFactoryImpl
implements EventtriggeringconstraintFactory {
    public static EventtriggeringconstraintFactory init() {
        try {
            EventtriggeringconstraintFactory theEventtriggeringconstraintFactory = (EventtriggeringconstraintFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/t/tc/etriggeringconstraint");
            if (theEventtriggeringconstraintFactory != null) {
                return theEventtriggeringconstraintFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new EventtriggeringconstraintFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createArbitraryEventTriggering();
            }
            case 2: {
                return this.createConfidenceInterval();
            }
            case 3: {
                return this.createBurstPatternEventTriggering();
            }
            case 4: {
                return this.createConcretePatternEventTriggering();
            }
            case 5: {
                return this.createPeriodicEventTriggering();
            }
            case 6: {
                return this.createSporadicEventTriggering();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ArbitraryEventTriggering createArbitraryEventTriggering() {
        ArbitraryEventTriggeringImpl arbitraryEventTriggering = new ArbitraryEventTriggeringImpl();
        return arbitraryEventTriggering;
    }

    public ConfidenceInterval createConfidenceInterval() {
        ConfidenceIntervalImpl confidenceInterval = new ConfidenceIntervalImpl();
        return confidenceInterval;
    }

    public BurstPatternEventTriggering createBurstPatternEventTriggering() {
        BurstPatternEventTriggeringImpl burstPatternEventTriggering = new BurstPatternEventTriggeringImpl();
        return burstPatternEventTriggering;
    }

    public ConcretePatternEventTriggering createConcretePatternEventTriggering() {
        ConcretePatternEventTriggeringImpl concretePatternEventTriggering = new ConcretePatternEventTriggeringImpl();
        return concretePatternEventTriggering;
    }

    public PeriodicEventTriggering createPeriodicEventTriggering() {
        PeriodicEventTriggeringImpl periodicEventTriggering = new PeriodicEventTriggeringImpl();
        return periodicEventTriggering;
    }

    public SporadicEventTriggering createSporadicEventTriggering() {
        SporadicEventTriggeringImpl sporadicEventTriggering = new SporadicEventTriggeringImpl();
        return sporadicEventTriggering;
    }

    public EventtriggeringconstraintPackage getEventtriggeringconstraintPackage() {
        return (EventtriggeringconstraintPackage)this.getEPackage();
    }

    @Deprecated
    public static EventtriggeringconstraintPackage getPackage() {
        return EventtriggeringconstraintPackage.eINSTANCE;
    }
}

