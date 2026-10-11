/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint;

import autosar40.commonstructure.timing.timingconstraint.eventtriggeringconstraint.ArbitraryEventTriggering;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;

public interface ConfidenceInterval
extends ARObject {
    public ArbitraryEventTriggering getArbitraryEventTriggering();

    public void setArbitraryEventTriggering(ArbitraryEventTriggering var1);

    public MultidimensionalTime getLowerBound();

    public void setLowerBound(MultidimensionalTime var1);

    public Double getPropability();

    public void setPropability(Double var1);

    public void unsetPropability();

    public boolean isSetPropability();

    public MultidimensionalTime getUpperBound();

    public void setUpperBound(MultidimensionalTime var1);
}

