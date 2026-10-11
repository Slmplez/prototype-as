/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint.offsetconstraint;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEvent;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface OffsetTimingConstraint
extends TimingConstraint {
    public TimingDescriptionEvent getSource();

    public void setSource(TimingDescriptionEvent var1);

    public TimingDescriptionEvent getTarget();

    public void setTarget(TimingDescriptionEvent var1);

    public MultidimensionalTime getMinimum();

    public void setMinimum(MultidimensionalTime var1);

    public MultidimensionalTime getMaximum();

    public void setMaximum(MultidimensionalTime var1);
}

