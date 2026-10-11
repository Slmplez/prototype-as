/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint;

import autosar40.commonstructure.internalbehavior.ExecutableEntity;
import autosar40.commonstructure.timing.timingconstraint.TimingConstraint;
import autosar40.commonstructure.timing.timingconstraint.executiontimeconstraint.ExecutionTimeTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.swcomponent.composition.instancerefs.ComponentInCompositionInstanceRef;

public interface ExecutionTimeConstraint
extends TimingConstraint {
    public ComponentInCompositionInstanceRef getComponent();

    public void setComponent(ComponentInCompositionInstanceRef var1);

    public ExecutableEntity getExecutable();

    public void setExecutable(ExecutableEntity var1);

    public ExecutionTimeTypeEnum getExecutionTimeType();

    public void setExecutionTimeType(ExecutionTimeTypeEnum var1);

    public void unsetExecutionTimeType();

    public boolean isSetExecutionTimeType();

    public MultidimensionalTime getMaximum();

    public void setMaximum(MultidimensionalTime var1);

    public MultidimensionalTime getMinimum();

    public void setMinimum(MultidimensionalTime var1);
}

