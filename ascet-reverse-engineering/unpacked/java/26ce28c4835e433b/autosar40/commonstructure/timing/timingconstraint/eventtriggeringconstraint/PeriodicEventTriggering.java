/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.EventTriggeringConstraint;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface PeriodicEventTriggering
extends EventTriggeringConstraint {
    public MultidimensionalTime getMinimumInterArrivalTime();

    public void setMinimumInterArrivalTime(MultidimensionalTime var1);

    public MultidimensionalTime getJitter();

    public void setJitter(MultidimensionalTime var1);

    public MultidimensionalTime getPeriod();

    public void setPeriod(MultidimensionalTime var1);
}

