/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventCycleStart;
import autosar40.system.fibex.fibex4ttcan.ttcantopology.TtcanCluster;

public interface TDEventTTCanCycleStart
extends TDEventCycleStart {
    public TtcanCluster getTtCanCluster();

    public void setTtCanCluster(TtcanCluster var1);
}

