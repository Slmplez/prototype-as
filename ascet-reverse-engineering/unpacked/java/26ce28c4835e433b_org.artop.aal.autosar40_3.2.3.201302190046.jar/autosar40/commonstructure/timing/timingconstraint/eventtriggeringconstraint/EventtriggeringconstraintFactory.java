/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ArbitraryEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.BurstPatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConcretePatternEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ConfidenceInterval;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventtriggeringconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.PeriodicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.SporadicEventTriggering;
import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.impl.EventtriggeringconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EventtriggeringconstraintFactory
extends EFactory {
    public static final EventtriggeringconstraintFactory eINSTANCE = EventtriggeringconstraintFactoryImpl.init();

    public ArbitraryEventTriggering createArbitraryEventTriggering();

    public ConfidenceInterval createConfidenceInterval();

    public BurstPatternEventTriggering createBurstPatternEventTriggering();

    public ConcretePatternEventTriggering createConcretePatternEventTriggering();

    public PeriodicEventTriggering createPeriodicEventTriggering();

    public SporadicEventTriggering createSporadicEventTriggering();

    public EventtriggeringconstraintPackage getEventtriggeringconstraintPackage();
}

