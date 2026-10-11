/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint.ageconstraint;

import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface AgeConstraint
extends TimingConstraint {
    public MultidimensionalTime getMaximum();

    public void setMaximum(MultidimensionalTime var1);

    public MultidimensionalTime getMinimum();

    public void setMinimum(MultidimensionalTime var1);

    public TDEventVariableDataPrototype getScope();

    public void setScope(TDEventVariableDataPrototype var1);
}

