/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCycleStart;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayCluster;

public interface TDEventFrClusterCycleStart
extends TDEventCycleStart {
    public FlexrayCluster getFrCluster();

    public void setFrCluster(FlexrayCluster var1);
}

