/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint;

import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencyTimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencytimingconstraintPackage;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.impl.LatencytimingconstraintFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface LatencytimingconstraintFactory
extends EFactory {
    public static final LatencytimingconstraintFactory eINSTANCE = LatencytimingconstraintFactoryImpl.init();

    public LatencyTimingConstraint createLatencyTimingConstraint();

    public LatencytimingconstraintPackage getLatencytimingconstraintPackage();
}

