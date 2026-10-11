/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.commonstructure.serviceneeds;

import autosar3x.commonstructure.serviceneeds.ServiceNeeds;

public interface ObdMonitorServiceNeeds
extends ServiceNeeds {
    public Integer getOnBoardMonitorId();

    public void setOnBoardMonitorId(Integer var1);

    public void unsetOnBoardMonitorId();

    public boolean isSetOnBoardMonitorId();

    public Integer getTestId();

    public void setTestId(Integer var1);

    public void unsetTestId();

    public boolean isSetTestId();

    public Integer getUnitAndScalingId();

    public void setUnitAndScalingId(Integer var1);

    public void unsetUnitAndScalingId();

    public boolean isSetUnitAndScalingId();
}

