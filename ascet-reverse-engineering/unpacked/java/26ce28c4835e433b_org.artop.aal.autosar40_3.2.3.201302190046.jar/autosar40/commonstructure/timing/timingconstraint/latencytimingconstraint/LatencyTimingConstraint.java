/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.latencytimingconstraint.LatencyConstraintTypeEnum;
import autosar40.commonstructure.timing.timingdescription.TimingDescriptionEventChain;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface LatencyTimingConstraint
extends TimingConstraint {
    public LatencyConstraintTypeEnum getLatencyConstraintType();

    public void setLatencyConstraintType(LatencyConstraintTypeEnum var1);

    public void unsetLatencyConstraintType();

    public boolean isSetLatencyConstraintType();

    public TimingDescriptionEventChain getScope();

    public void setScope(TimingDescriptionEventChain var1);

    public MultidimensionalTime getMinimum();

    public void setMinimum(MultidimensionalTime var1);

    public MultidimensionalTime getMaximum();

    public void setMaximum(MultidimensionalTime var1);

    public MultidimensionalTime getNominal();

    public void setNominal(MultidimensionalTime var1);
}

