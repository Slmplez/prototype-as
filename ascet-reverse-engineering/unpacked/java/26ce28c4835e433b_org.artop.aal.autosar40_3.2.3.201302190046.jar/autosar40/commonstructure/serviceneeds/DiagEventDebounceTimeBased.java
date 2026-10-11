/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.serviceneeds;

import autosar40.commonstructure.serviceneeds.DiagEventDebounceAlgorithm;

public interface DiagEventDebounceTimeBased
extends DiagEventDebounceAlgorithm {
    public Double getTimeFailedThreshold();

    public void setTimeFailedThreshold(Double var1);

    public void unsetTimeFailedThreshold();

    public boolean isSetTimeFailedThreshold();

    public Double getTimePassedThreshold();

    public void setTimePassedThreshold(Double var1);

    public void unsetTimePassedThreshold();

    public boolean isSetTimePassedThreshold();
}

